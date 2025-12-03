@interface HMMutableReportContext
+ (id)reportContextWithDomain:(id)domain requestInfo:(id)info timeout:(double)timeout;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableReportContext

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableReportContext allocWithZone:zone];
  reportDomain = [(HMReportContext *)self reportDomain];
  requestInfo = [(HMReportContext *)self requestInfo];
  [(HMReportContext *)self reportTimeout];
  v7 = [(HMReportContext *)v4 initWithReportDomain:reportDomain requestInfo:requestInfo timeout:?];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMReportContext allocWithZone:zone];
  reportDomain = [(HMReportContext *)self reportDomain];
  requestInfo = [(HMReportContext *)self requestInfo];
  [(HMReportContext *)self reportTimeout];
  v7 = [(HMReportContext *)v4 initWithReportDomain:reportDomain requestInfo:requestInfo timeout:?];

  return v7;
}

+ (id)reportContextWithDomain:(id)domain requestInfo:(id)info timeout:(double)timeout
{
  infoCopy = info;
  domainCopy = domain;
  v9 = [(HMReportContext *)[HMMutableReportContext alloc] initWithReportDomain:domainCopy requestInfo:infoCopy timeout:timeout];

  return v9;
}

@end