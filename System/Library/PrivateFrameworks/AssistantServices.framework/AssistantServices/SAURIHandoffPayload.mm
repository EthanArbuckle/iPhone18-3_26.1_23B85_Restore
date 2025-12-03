@interface SAURIHandoffPayload
- (void)_ad_setPayloadOnRequestInfo:(id)info;
@end

@implementation SAURIHandoffPayload

- (void)_ad_setPayloadOnRequestInfo:(id)info
{
  infoCopy = info;
  link = [(SAURIHandoffPayload *)self link];
  absoluteString = [link absoluteString];
  [infoCopy setHandoffURLString:absoluteString];
}

@end