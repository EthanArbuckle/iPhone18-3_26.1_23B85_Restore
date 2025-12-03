@interface SANPRemoveOutputDevicesFromGroupResponse
- (int64_t)resultCallbackCode;
@end

@implementation SANPRemoveOutputDevicesFromGroupResponse

- (int64_t)resultCallbackCode
{
  routeResponse = [(SANPRemoveOutputDevicesFromGroupResponse *)self routeResponse];
  v3 = [routeResponse isEqualToString:SAMPRemoteCommandOutcomeSUCCESSValue] - 1;

  return v3;
}

@end