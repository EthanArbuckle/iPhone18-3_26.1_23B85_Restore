@interface ATVHighSecurityAccountDeviceListResponse
- (int64_t)errorCode;
@end

@implementation ATVHighSecurityAccountDeviceListResponse

- (int64_t)errorCode
{
  v2 = [(NSDictionary *)self->super._responseDictionary objectForKey:@"errorCode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

@end