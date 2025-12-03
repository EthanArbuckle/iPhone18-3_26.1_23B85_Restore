@interface NSError
- (BOOL)isCKAuthenticationUserCancelled;
- (BOOL)isCKVettedToSelfError;
@end

@implementation NSError

- (BOOL)isCKVettedToSelfError
{
  domain = [(NSError *)self domain];
  v4 = [domain isEqualToString:CKErrorDomain];

  if (!v4)
  {
    return 0;
  }

  userInfo = [(NSError *)self userInfo];
  v6 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  v7 = [v6 code] == &loc_1F44 + 3;
  return v7;
}

- (BOOL)isCKAuthenticationUserCancelled
{
  domain = [(NSError *)self domain];
  v4 = [domain isEqualToString:CKErrorDomain];

  if (!v4)
  {
    return 0;
  }

  userInfo = [(NSError *)self userInfo];
  v6 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  if ([v6 code] == &loc_1F48 + 3 || objc_msgSend(v6, "code") == &stru_790.reserved3)
  {
    userInfo2 = [v6 userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v9 = [v8 code] == -7003;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end