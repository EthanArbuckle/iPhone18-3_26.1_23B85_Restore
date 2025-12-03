@interface TextView.Coordinator
- (_TtCV5BooksP33_B79FF19A106F9D407BB73D2F778CFAEA8TextView11Coordinator)init;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation TextView.Coordinator

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_10076E59C(editingCopy);
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_10076E6E0(editingCopy);
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10076E860(changeCopy);
}

- (_TtCV5BooksP33_B79FF19A106F9D407BB73D2F778CFAEA8TextView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end