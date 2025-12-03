@interface ACAccount(AppleIDInternal)
- (void)storeOriginalUsername;
@end

@implementation ACAccount(AppleIDInternal)

- (void)storeOriginalUsername
{
  accountProperties = [self accountProperties];
  v5 = [accountProperties objectForKeyedSubscript:@"originalUsername"];

  v3 = v5;
  if (!v5)
  {
    username = [self username];
    [self setAccountProperty:username forKey:@"originalUsername"];

    v3 = 0;
  }
}

@end