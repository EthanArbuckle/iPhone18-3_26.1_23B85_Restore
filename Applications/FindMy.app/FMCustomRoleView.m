@interface FMCustomRoleView
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC6FindMy16FMCustomRoleView)initWithFrame:(CGRect)a3;
- (void)clearTextView;
- (void)customizeEmoji;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation FMCustomRoleView

- (void)customizeEmoji
{
  v2 = self;
  sub_1002ECA8C();
}

- (void)clearTextView
{
  v2 = self;
  sub_1002ECBD4();
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002ECD34(v4);
}

- (void)textViewDidBeginEditing:(id)a3
{
  sub_10000905C(0, &qword_1006B4980);
  v5 = a3;
  v7 = self;
  if (static NSObject.== infix(_:_:)())
  {
    v6 = [*(&v7->super.super.super.isa + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiBackground) layer];
    [v6 setBorderWidth:3.0];
  }
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002ED1B4(v4);
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a3;
  v12 = self;
  LOBYTE(length) = sub_1002ED488(v11, v13, length, v8, v10);

  return length & 1;
}

- (_TtC6FindMy16FMCustomRoleView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end