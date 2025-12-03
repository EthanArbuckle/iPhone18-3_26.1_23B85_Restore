@interface TTRISECreateRemindersListPickerCell
- (NSString)accessibilityLabel;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation TTRISECreateRemindersListPickerCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_10004C2F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C2E0();
  selfCopy = self;
  sub_10001727C();

  (*(v5 + 8))(v9, v4);
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_100018214();
  v4 = v3;

  if (v4)
  {
    v5 = sub_10004C680();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end