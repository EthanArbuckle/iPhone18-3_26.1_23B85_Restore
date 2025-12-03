@interface SANPAddOutputDevicesToGroupResponse
- (int64_t)resultCallbackCode;
@end

@implementation SANPAddOutputDevicesToGroupResponse

- (int64_t)resultCallbackCode
{
  routeResponse = [(SANPAddOutputDevicesToGroupResponse *)self routeResponse];
  v3 = [routeResponse isEqualToString:SAMPRemoteCommandOutcomeSUCCESSValue] - 1;

  return v3;
}

@end