@interface LiveSpeechTextView.Coordinator
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator)init;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
@end

@implementation LiveSpeechTextView.Coordinator

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_33BA0(v4);
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v7 = sub_BAFD0();
  v9 = v8;
  v10 = a3;
  v11 = self;
  sub_350D0(v10, v7, v9);
  LOBYTE(v7) = v12;

  return v7 & 1;
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_33E18(v4);
}

- (_TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end