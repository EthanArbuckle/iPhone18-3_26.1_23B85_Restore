@interface FMAccessoryNameTextField
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC6FindMy24FMAccessoryNameTextField)initWithFrame:(CGRect)frame;
- (void)clearTextView;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation FMAccessoryNameTextField

- (void)clearTextView
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text) = xmmword_100556540;
  selfCopy = self;

  v2 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_displayTextView);
  v3 = String._bridgeToObjectiveC()();
  [v2 setText:v3];

  sub_10017B490();
  [(FMAccessoryNameTextField *)selfCopy sendActionsForControlEvents:4096];
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10017B5B8(changeCopy);
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_10017C9D0();
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_10017B8EC(viewCopy, v13, length, v8, v10);

  return length & 1;
}

- (_TtC6FindMy24FMAccessoryNameTextField)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end