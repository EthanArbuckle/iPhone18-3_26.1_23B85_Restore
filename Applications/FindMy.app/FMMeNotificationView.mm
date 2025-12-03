@interface FMMeNotificationView
- (void)handleClearTags;
- (void)handleEditFindMyNotificationsLabel;
- (void)handleEditSafetyAlertsNotificationsLabel;
- (void)handleFriendTapWithGestureRecognizer:(id)recognizer;
- (void)setupSubviews;
@end

@implementation FMMeNotificationView

- (void)setupSubviews
{
  selfCopy = self;
  sub_1002E1864();
}

- (void)handleEditFindMyNotificationsLabel
{
  selfCopy = self;
  sub_1002E4848(0xD000000000000031, 0x800000010057BF90);
}

- (void)handleEditSafetyAlertsNotificationsLabel
{
  selfCopy = self;
  sub_1002E4848(0xD00000000000004ALL, 0x800000010058F130);
}

- (void)handleClearTags
{
  selfCopy = self;
  sub_1002E41C0();
}

- (void)handleFriendTapWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1002E4324(recognizerCopy);
}

@end