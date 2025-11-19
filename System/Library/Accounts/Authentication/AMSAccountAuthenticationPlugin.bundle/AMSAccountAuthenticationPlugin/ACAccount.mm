@interface ACAccount
- (NSDate)ams_lastAuthenticated;
@end

@implementation ACAccount

- (NSDate)ams_lastAuthenticated
{
  v2 = [(ACAccount *)self objectForKeyedSubscript:@"lastAuthenticated"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end