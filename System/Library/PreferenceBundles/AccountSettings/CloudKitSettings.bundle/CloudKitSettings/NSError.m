@interface NSError
- (BOOL)isCKAuthenticationUserCancelled;
- (BOOL)isCKVettedToSelfError;
@end

@implementation NSError

- (BOOL)isCKVettedToSelfError
{
  v3 = [(NSError *)self domain];
  v4 = [v3 isEqualToString:CKErrorDomain];

  if (!v4)
  {
    return 0;
  }

  v5 = [(NSError *)self userInfo];
  v6 = [v5 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v7 = [v6 code] == &loc_1F44 + 3;
  return v7;
}

- (BOOL)isCKAuthenticationUserCancelled
{
  v3 = [(NSError *)self domain];
  v4 = [v3 isEqualToString:CKErrorDomain];

  if (!v4)
  {
    return 0;
  }

  v5 = [(NSError *)self userInfo];
  v6 = [v5 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if ([v6 code] == &loc_1F48 + 3 || objc_msgSend(v6, "code") == &stru_790.reserved3)
  {
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v9 = [v8 code] == -7003;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end