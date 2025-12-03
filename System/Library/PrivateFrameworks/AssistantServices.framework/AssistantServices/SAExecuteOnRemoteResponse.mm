@interface SAExecuteOnRemoteResponse
- (int64_t)resultCallbackCode;
@end

@implementation SAExecuteOnRemoteResponse

- (int64_t)resultCallbackCode
{
  result = [(SAExecuteOnRemoteResponse *)self result];
  v3 = result;
  if (result)
  {
    resultCallbackCode = [result resultCallbackCode];
  }

  else
  {
    resultCallbackCode = -1;
  }

  return resultCallbackCode;
}

@end