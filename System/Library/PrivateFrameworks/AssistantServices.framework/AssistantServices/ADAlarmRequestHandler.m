@interface ADAlarmRequestHandler
- (void)handleSiriRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation ADAlarmRequestHandler

- (void)handleSiriRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v7 = a5;
  if (a4)
  {
    (*(a4 + 2))(a4);
  }

  [v8 _ad_handleAlarmRequestWithCompletionHandler:v7];
}

@end