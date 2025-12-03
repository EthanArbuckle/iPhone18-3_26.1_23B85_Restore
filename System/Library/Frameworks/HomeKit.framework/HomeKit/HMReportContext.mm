@interface HMReportContext
+ (id)reportContextWithDomain:(id)domain requestInfo:(id)info timeout:(double)timeout;
- (HMReportContext)initWithReportDomain:(id)domain requestInfo:(id)info timeout:(double)timeout;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HMReportContext

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableReportContext allocWithZone:zone];
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
  v9 = [[HMReportContext alloc] initWithReportDomain:domainCopy requestInfo:infoCopy timeout:timeout];

  return v9;
}

- (HMReportContext)initWithReportDomain:(id)domain requestInfo:(id)info timeout:(double)timeout
{
  domainCopy = domain;
  infoCopy = info;
  if (!domainCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = infoCopy;
  if (!infoCopy)
  {
LABEL_7:
    v17 = _HMFPreconditionFailure();
    [(HMBatchRequest *)v17 .cxx_destruct];
    return result;
  }

  v19.receiver = self;
  v19.super_class = HMReportContext;
  v11 = [(HMReportContext *)&v19 init];
  if (v11)
  {
    v12 = [domainCopy copy];
    reportDomain = v11->_reportDomain;
    v11->_reportDomain = v12;

    v14 = [v10 copy];
    requestInfo = v11->_requestInfo;
    v11->_requestInfo = v14;

    v11->_reportTimeout = timeout;
  }

  return v11;
}

@end