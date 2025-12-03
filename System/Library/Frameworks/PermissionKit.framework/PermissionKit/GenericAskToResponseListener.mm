@interface GenericAskToResponseListener
- (void)didReceiveResponse:(id)response;
@end

@implementation GenericAskToResponseListener

- (void)didReceiveResponse:(id)response
{
  responseCopy = response;

  sub_23A62C62C(responseCopy);
}

@end