@interface LibrarySearchBar.Coordinator
- (BOOL)textFieldShouldClear:(id)clear;
- (_TtCV4Maps16LibrarySearchBar11Coordinator)init;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
@end

@implementation LibrarySearchBar.Coordinator

- (void)searchBar:(id)bar textDidChange:(id)change
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10191EF28);
  Binding.wrappedValue.setter();
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1000CE6B8(&qword_10191D8E0);
  Binding.wrappedValue.setter();
  sub_1003C92D8(editingCopy);
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  [editingCopy resignFirstResponder];
  sub_1003C92D8(editingCopy);
}

- (BOOL)textFieldShouldClear:(id)clear
{
  clearCopy = clear;
  selfCopy = self;
  sub_1003C957C(clearCopy);

  return 0;
}

- (_TtCV4Maps16LibrarySearchBar11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end