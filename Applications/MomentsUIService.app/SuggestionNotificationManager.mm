@interface SuggestionNotificationManager
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation SuggestionNotificationManager

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  v11.super.isa = responseCopy;
  specialized SuggestionNotificationManager.userNotificationCenter(_:didReceive:withCompletionHandler:)(v11, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end