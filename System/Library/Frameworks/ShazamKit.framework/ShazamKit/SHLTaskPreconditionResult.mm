@interface SHLTaskPreconditionResult
+ (id)failedResult;
+ (id)fulfilledResult;
+ (id)resultWithError:(id)error;
- (SHLTaskPreconditionResult)initWithResult:(BOOL)result error:(id)error;
@end

@implementation SHLTaskPreconditionResult

+ (id)fulfilledResult
{
  v2 = [[SHLTaskPreconditionResult alloc] initWithResult:1 error:0];

  return v2;
}

+ (id)failedResult
{
  v2 = [[SHLTaskPreconditionResult alloc] initWithResult:0 error:0];

  return v2;
}

+ (id)resultWithError:(id)error
{
  errorCopy = error;
  v4 = [[SHLTaskPreconditionResult alloc] initWithResult:0 error:errorCopy];

  return v4;
}

- (SHLTaskPreconditionResult)initWithResult:(BOOL)result error:(id)error
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = SHLTaskPreconditionResult;
  v8 = [(SHLTaskPreconditionResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_satisfied = result;
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

@end