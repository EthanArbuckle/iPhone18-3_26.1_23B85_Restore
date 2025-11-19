@interface SAUISayIt
- (void)_adui_notifyOthersOfArrival;
@end

@implementation SAUISayIt

- (void)_adui_notifyOthersOfArrival
{
  v3 = +[ADUserNotificationAnnouncementSpeakingStatePublisher sharedPublisher];
  [v3 publishObjectHasArrived:self];
}

@end