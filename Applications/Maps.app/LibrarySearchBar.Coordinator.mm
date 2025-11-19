@interface LibrarySearchBar.Coordinator
- (BOOL)textFieldShouldClear:(id)a3;
- (_TtCV4Maps16LibrarySearchBar11Coordinator)init;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
@end

@implementation LibrarySearchBar.Coordinator

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10191EF28);
  Binding.wrappedValue.setter();
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000CE6B8(&qword_10191D8E0);
  Binding.wrappedValue.setter();
  sub_1003C92D8(v4);
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 resignFirstResponder];
  sub_1003C92D8(v4);
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003C957C(v4);

  return 0;
}

- (_TtCV4Maps16LibrarySearchBar11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end