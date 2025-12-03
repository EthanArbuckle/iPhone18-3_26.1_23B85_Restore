@interface ADAcePassthroughRequestTransformer
- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler;
@end

@implementation ADAcePassthroughRequestTransformer

- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  commandCopy = command;
  v8 = [[ADAcePassthroughSiriRequest alloc] initWithClientBoundCommand:commandCopy];

  (*(handler + 2))(handlerCopy, v8);
}

@end