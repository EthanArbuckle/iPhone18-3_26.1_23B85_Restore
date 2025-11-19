@interface ATVHighSecurityAccountDeviceListResponse
- (int64_t)errorCode;
@end

@implementation ATVHighSecurityAccountDeviceListResponse

- (int64_t)errorCode
{
  v2 = [(NSDictionary *)self->super._responseDictionary objectForKey:@"errorCode"];
  v3 = [v2 integerValue];

  return v3;
}

@end