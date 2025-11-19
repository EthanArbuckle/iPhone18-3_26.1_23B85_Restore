@interface SuggestionNotificationManager
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation SuggestionNotificationManager

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v12 = self;
  v11.super.isa = v10;
  specialized SuggestionNotificationManager.userNotificationCenter(_:didReceive:withCompletionHandler:)(v11, v12, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end