@interface SADialog
- (void)_adui_notifyOthersOfArrival;
@end

@implementation SADialog

- (void)_adui_notifyOthersOfArrival
{
  v3 = +[ADUserNotificationAnnouncementSpeakingStatePublisher sharedPublisher];
  [v3 publishObjectHasArrived:self];
}

@end