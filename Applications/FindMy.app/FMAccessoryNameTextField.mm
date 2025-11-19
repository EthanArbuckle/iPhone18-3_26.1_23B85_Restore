@interface FMAccessoryNameTextField
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC6FindMy24FMAccessoryNameTextField)initWithFrame:(CGRect)a3;
- (void)clearTextView;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation FMAccessoryNameTextField

- (void)clearTextView
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text) = xmmword_100556540;
  v4 = self;

  v2 = *(&v4->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_displayTextView);
  v3 = String._bridgeToObjectiveC()();
  [v2 setText:v3];

  sub_10017B490();
  [(FMAccessoryNameTextField *)v4 sendActionsForControlEvents:4096];
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10017B5B8(v4);
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10017C9D0();
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a3;
  v12 = self;
  LOBYTE(length) = sub_10017B8EC(v11, v13, length, v8, v10);

  return length & 1;
}

- (_TtC6FindMy24FMAccessoryNameTextField)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end