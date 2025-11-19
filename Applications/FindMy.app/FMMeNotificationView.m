@interface FMMeNotificationView
- (void)handleClearTags;
- (void)handleEditFindMyNotificationsLabel;
- (void)handleEditSafetyAlertsNotificationsLabel;
- (void)handleFriendTapWithGestureRecognizer:(id)a3;
- (void)setupSubviews;
@end

@implementation FMMeNotificationView

- (void)setupSubviews
{
  v2 = self;
  sub_1002E1864();
}

- (void)handleEditFindMyNotificationsLabel
{
  v2 = self;
  sub_1002E4848(0xD000000000000031, 0x800000010057BF90);
}

- (void)handleEditSafetyAlertsNotificationsLabel
{
  v2 = self;
  sub_1002E4848(0xD00000000000004ALL, 0x800000010058F130);
}

- (void)handleClearTags
{
  v2 = self;
  sub_1002E41C0();
}

- (void)handleFriendTapWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002E4324(v4);
}

@end