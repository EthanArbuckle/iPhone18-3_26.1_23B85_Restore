@interface ATVHighSecurityAccountVerifyCodeResponse
- (BOOL)success;
- (int64_t)errorCode;
@end

@implementation ATVHighSecurityAccountVerifyCodeResponse

- (BOOL)success
{
  v2 = [(NSDictionary *)self->super._responseDictionary objectForKey:@"success"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)errorCode
{
  v2 = [(NSDictionary *)self->super._responseDictionary objectForKey:@"errorCode"];
  v3 = [v2 integerValue];

  return v3;
}

@end