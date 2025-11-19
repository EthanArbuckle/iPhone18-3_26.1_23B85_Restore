@interface TTRIRemindersListEditableSectionNameViewController
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (_TtC9Reminders50TTRIRemindersListEditableSectionNameViewController)init;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation TTRIRemindersListEditableSectionNameViewController

- (_TtC9Reminders50TTRIRemindersListEditableSectionNameViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100277380();

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100276E20(v4);
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 10 && v6 == 0xE100000000000000)
  {
    v7 = self;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    self;

    if ((v8 & 1) == 0)
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListEditableSectionNamePresenterType.requestHandleDisplayNameTextChange()();
      v9 = 1;
      goto LABEL_7;
    }
  }

  swift_getObjectType();
  dispatch thunk of TTRRemindersListEditableSectionNamePresenterType.requestHandleReturn()();
  v9 = 0;
LABEL_7:

  return v9;
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002770D8(v4);
}

@end