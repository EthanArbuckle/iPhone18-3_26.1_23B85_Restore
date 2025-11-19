@interface SAURIHandoffPayload
- (void)_ad_setPayloadOnRequestInfo:(id)a3;
@end

@implementation SAURIHandoffPayload

- (void)_ad_setPayloadOnRequestInfo:(id)a3
{
  v4 = a3;
  v6 = [(SAURIHandoffPayload *)self link];
  v5 = [v6 absoluteString];
  [v4 setHandoffURLString:v5];
}

@end