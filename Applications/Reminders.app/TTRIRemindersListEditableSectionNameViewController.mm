@interface TTRIRemindersListEditableSectionNameViewController
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (_TtC9Reminders50TTRIRemindersListEditableSectionNameViewController)init;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation TTRIRemindersListEditableSectionNameViewController

- (_TtC9Reminders50TTRIRemindersListEditableSectionNameViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  LOBYTE(self) = sub_100277380();

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_100276E20(editingCopy);
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 10 && v6 == 0xE100000000000000)
  {
    selfCopy = self;
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

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1002770D8(editingCopy);
}

@end