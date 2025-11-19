@interface SAExecuteOnRemoteResponse
- (int64_t)resultCallbackCode;
@end

@implementation SAExecuteOnRemoteResponse

- (int64_t)resultCallbackCode
{
  v2 = [(SAExecuteOnRemoteResponse *)self result];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 resultCallbackCode];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

@end