@interface HMReportContext
+ (id)reportContextWithDomain:(id)a3 requestInfo:(id)a4 timeout:(double)a5;
- (HMReportContext)initWithReportDomain:(id)a3 requestInfo:(id)a4 timeout:(double)a5;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMReportContext

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableReportContext allocWithZone:a3];
  v5 = [(HMReportContext *)self reportDomain];
  v6 = [(HMReportContext *)self requestInfo];
  [(HMReportContext *)self reportTimeout];
  v7 = [(HMReportContext *)v4 initWithReportDomain:v5 requestInfo:v6 timeout:?];

  return v7;
}

+ (id)reportContextWithDomain:(id)a3 requestInfo:(id)a4 timeout:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[HMReportContext alloc] initWithReportDomain:v8 requestInfo:v7 timeout:a5];

  return v9;
}

- (HMReportContext)initWithReportDomain:(id)a3 requestInfo:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = v9;
  if (!v9)
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
    v12 = [v8 copy];
    reportDomain = v11->_reportDomain;
    v11->_reportDomain = v12;

    v14 = [v10 copy];
    requestInfo = v11->_requestInfo;
    v11->_requestInfo = v14;

    v11->_reportTimeout = a5;
  }

  return v11;
}

@end