@interface SANPAddOutputDevicesToGroupResponse
- (int64_t)resultCallbackCode;
@end

@implementation SANPAddOutputDevicesToGroupResponse

- (int64_t)resultCallbackCode
{
  v2 = [(SANPAddOutputDevicesToGroupResponse *)self routeResponse];
  v3 = [v2 isEqualToString:SAMPRemoteCommandOutcomeSUCCESSValue] - 1;

  return v3;
}

@end