@interface DebugActionsController
- (_TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122DebugActionsController)init;
- (void)clearAll;
- (void)presentDebugSettings;
- (void)sendMostRecentNotification;
- (void)sendOldestNotification;
- (void)sendRandomNotification;
@end

@implementation DebugActionsController

- (_TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122DebugActionsController)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(DebugActionsController *)&v3 init];
}

- (void)sendRandomNotification
{
  selfCopy = self;
  sub_100250970(&unk_1004E7248, sub_10025282C, &unk_1004E7260);
}

- (void)sendMostRecentNotification
{
  selfCopy = self;
  sub_100250970(&unk_1004E71A8, sub_100252818, &unk_1004E71C0);
}

- (void)sendOldestNotification
{
  selfCopy = self;
  sub_100250970(&unk_1004E7108, sub_100252808, &unk_1004E7120);
}

- (void)clearAll
{
  currentNotificationCenter = [objc_opt_self() currentNotificationCenter];
  [currentNotificationCenter removeAllDeliveredNotifications];
  [currentNotificationCenter removeAllPendingNotificationRequests];
}

- (void)presentDebugSettings
{
  selfCopy = self;
  sub_100250EA4();
}

@end