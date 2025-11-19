@interface ACAccount(AppleIDInternal)
- (void)storeOriginalUsername;
@end

@implementation ACAccount(AppleIDInternal)

- (void)storeOriginalUsername
{
  v2 = [a1 accountProperties];
  v5 = [v2 objectForKeyedSubscript:@"originalUsername"];

  v3 = v5;
  if (!v5)
  {
    v4 = [a1 username];
    [a1 setAccountProperty:v4 forKey:@"originalUsername"];

    v3 = 0;
  }
}

@end