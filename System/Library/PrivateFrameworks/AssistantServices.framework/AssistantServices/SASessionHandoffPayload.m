@interface SASessionHandoffPayload
- (void)_ad_setPayloadOnRequestInfo:(id)a3;
@end

@implementation SASessionHandoffPayload

- (void)_ad_setPayloadOnRequestInfo:(id)a3
{
  v4 = a3;
  v5 = [(SASessionHandoffPayload *)self sessionHandoffData];
  [v4 setHandoffRequestData:v5];
}

@end