@interface HMMutableReportContext
+ (id)reportContextWithDomain:(id)a3 requestInfo:(id)a4 timeout:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableReportContext

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableReportContext allocWithZone:a3];
  v5 = [(HMReportContext *)self reportDomain];
  v6 = [(HMReportContext *)self requestInfo];
  [(HMReportContext *)self reportTimeout];
  v7 = [(HMReportContext *)v4 initWithReportDomain:v5 requestInfo:v6 timeout:?];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMReportContext allocWithZone:a3];
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
  v9 = [(HMReportContext *)[HMMutableReportContext alloc] initWithReportDomain:v8 requestInfo:v7 timeout:a5];

  return v9;
}

@end