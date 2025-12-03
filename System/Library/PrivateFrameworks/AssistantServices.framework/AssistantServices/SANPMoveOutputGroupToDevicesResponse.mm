@interface SANPMoveOutputGroupToDevicesResponse
- (int64_t)resultCallbackCode;
@end

@implementation SANPMoveOutputGroupToDevicesResponse

- (int64_t)resultCallbackCode
{
  routeResponse = [(SANPMoveOutputGroupToDevicesResponse *)self routeResponse];
  v3 = [routeResponse isEqualToString:SAMPRemoteCommandOutcomeSUCCESSValue] - 1;

  return v3;
}

@end