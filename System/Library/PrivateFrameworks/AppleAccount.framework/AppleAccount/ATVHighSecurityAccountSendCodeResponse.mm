@interface ATVHighSecurityAccountSendCodeResponse
- (BOOL)success;
- (int64_t)errorCode;
@end

@implementation ATVHighSecurityAccountSendCodeResponse

- (BOOL)success
{
  v2 = [(NSDictionary *)self->super._responseDictionary objectForKey:@"success"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)errorCode
{
  v2 = [(NSDictionary *)self->super._responseDictionary objectForKey:@"errorCode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

@end