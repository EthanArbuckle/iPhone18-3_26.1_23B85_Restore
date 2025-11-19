@interface SASmsDraftShow
- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)a3;
@end

@implementation SASmsDraftShow

- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [STShowDraftMessageRequest alloc];
    v8 = [(SASmsDraftShow *)self smsIdentifier];
    v7 = [v6 _initWithDraftMessageIdentifier:v8];
    (*(a3 + 2))(v5, v7);
  }
}

@end