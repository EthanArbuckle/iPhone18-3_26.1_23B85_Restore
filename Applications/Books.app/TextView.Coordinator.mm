@interface TextView.Coordinator
- (_TtCV5BooksP33_B79FF19A106F9D407BB73D2F778CFAEA8TextView11Coordinator)init;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation TextView.Coordinator

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10076E59C(v4);
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10076E6E0(v4);
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10076E860(v4);
}

- (_TtCV5BooksP33_B79FF19A106F9D407BB73D2F778CFAEA8TextView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end