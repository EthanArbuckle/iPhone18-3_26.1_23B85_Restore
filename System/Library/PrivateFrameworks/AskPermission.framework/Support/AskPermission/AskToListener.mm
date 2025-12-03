@interface AskToListener
- (void)didReceiveResponse:(id)response;
@end

@implementation AskToListener

- (void)didReceiveResponse:(id)response
{
  responseCopy = response;

  sub_10002DDF4(responseCopy);
}

@end