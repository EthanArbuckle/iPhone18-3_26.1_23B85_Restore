@interface SASmsDraftShow
- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)handler;
@end

@implementation SASmsDraftShow

- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v6 = [STShowDraftMessageRequest alloc];
    smsIdentifier = [(SASmsDraftShow *)self smsIdentifier];
    v7 = [v6 _initWithDraftMessageIdentifier:smsIdentifier];
    (*(handler + 2))(handlerCopy, v7);
  }
}

@end