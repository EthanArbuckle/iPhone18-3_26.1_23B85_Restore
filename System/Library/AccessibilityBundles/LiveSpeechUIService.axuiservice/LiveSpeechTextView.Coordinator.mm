@interface LiveSpeechTextView.Coordinator
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator)init;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
@end

@implementation LiveSpeechTextView.Coordinator

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_33BA0(editingCopy);
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  v7 = sub_BAFD0();
  v9 = v8;
  viewCopy = view;
  selfCopy = self;
  sub_350D0(viewCopy, v7, v9);
  LOBYTE(v7) = v12;

  return v7 & 1;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_33E18(changeCopy);
}

- (_TtCV19LiveSpeechUIService18LiveSpeechTextView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end