% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/genotype_sim.R
\name{or_solve}
\alias{or_solve}
\title{or_solve}
\usage{
or_solve(mafs, ors, n1 = 1000, n2 = 1000)
}
\arguments{
\item{mafs}{list of 'population' minor allele frequencies}

\item{ors}{list of 'population' odds ratios}

\item{n1}{size of group 1}

\item{n2}{size of group 2}
}
\value{
n x 2 array where n=length(mafs); n[,1] is MAFs in group 1, n[,2] MAFS in group 2.
}
\description{
Given a list of 'population' minor allele frequencies 'mafs' and population odds ratios 'ors', for two groups of size n1, n2 generates lists of MAFs m1, m2 such that
}
\details{
OR(m1,m2)=m1(1-m2)/(m2(1-m1))=ors
(m1 n1 + m2 n2)/(n1+n2) = mafs
}
\examples{
N=5000
mafs=runif(N,0.01,0.5); ors=exp(rnorm(N,sd=0.2)); n1=1000;n2=2000
mm=or_solve(mafs,ors,n1,n2)
plot((n1*mm[,1] + n2*mm[,2])/(n1+n2),mafs)
plot(mm[,1]*(1-mm[,2])/(mm[,2]*(1-mm[,1])),ors)
}

