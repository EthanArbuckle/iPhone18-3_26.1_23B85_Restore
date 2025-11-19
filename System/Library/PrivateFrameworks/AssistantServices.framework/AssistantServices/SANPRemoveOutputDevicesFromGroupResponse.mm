@interface SANPRemoveOutputDevicesFromGroupResponse
- (int64_t)resultCallbackCode;
@end

@implementation SANPRemoveOutputDevicesFromGroupResponse

- (int64_t)resultCallbackCode
{
  v2 = [(SANPRemoveOutputDevicesFromGroupResponse *)self routeResponse];
  v3 = [v2 isEqualToString:SAMPRemoteCommandOutcomeSUCCESSValue] - 1;

  return v3;
}

@end