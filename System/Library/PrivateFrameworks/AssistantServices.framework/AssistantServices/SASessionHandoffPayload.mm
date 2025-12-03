@interface SASessionHandoffPayload
- (void)_ad_setPayloadOnRequestInfo:(id)info;
@end

@implementation SASessionHandoffPayload

- (void)_ad_setPayloadOnRequestInfo:(id)info
{
  infoCopy = info;
  sessionHandoffData = [(SASessionHandoffPayload *)self sessionHandoffData];
  [infoCopy setHandoffRequestData:sessionHandoffData];
}

@end