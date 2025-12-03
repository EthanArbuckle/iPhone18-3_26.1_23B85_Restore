@interface SACommandFailed
- (id)ad_error;
- (id)description;
- (int64_t)resultCallbackCode;
@end

@implementation SACommandFailed

- (int64_t)resultCallbackCode
{
  result = [(SACommandFailed *)self errorCode];
  if (!result)
  {
    return -1;
  }

  return result;
}

- (id)ad_error
{
  v2 = AFSiriAceErrorDomain;
  errorCode = [(SACommandFailed *)self errorCode];

  return [NSError errorWithDomain:v2 code:errorCode userInfo:0];
}

- (id)description
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = SACommandFailed;
  v4 = [(SACommandFailed *)&v9 description];
  errorCode = [(SACommandFailed *)self errorCode];
  reason = [(SACommandFailed *)self reason];
  v7 = [v3 initWithFormat:@"%@ errorCode: %ld reason: %@", v4, errorCode, reason];

  return v7;
}

@end