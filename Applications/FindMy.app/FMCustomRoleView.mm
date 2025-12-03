@interface FMCustomRoleView
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC6FindMy16FMCustomRoleView)initWithFrame:(CGRect)frame;
- (void)clearTextView;
- (void)customizeEmoji;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation FMCustomRoleView

- (void)customizeEmoji
{
  selfCopy = self;
  sub_1002ECA8C();
}

- (void)clearTextView
{
  selfCopy = self;
  sub_1002ECBD4();
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1002ECD34(changeCopy);
}

- (void)textViewDidBeginEditing:(id)editing
{
  sub_10000905C(0, &qword_1006B4980);
  editingCopy = editing;
  selfCopy = self;
  if (static NSObject.== infix(_:_:)())
  {
    layer = [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiBackground) layer];
    [layer setBorderWidth:3.0];
  }
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1002ED1B4(editingCopy);
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_1002ED488(viewCopy, v13, length, v8, v10);

  return length & 1;
}

- (_TtC6FindMy16FMCustomRoleView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end