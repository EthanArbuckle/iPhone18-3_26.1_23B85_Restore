@interface CommLimitsResponseListener
- (void)didReceiveResponse:(id)response;
@end

@implementation CommLimitsResponseListener

- (void)didReceiveResponse:(id)response
{
  responseCopy = response;

  sub_1000215F8(responseCopy);
}

@end