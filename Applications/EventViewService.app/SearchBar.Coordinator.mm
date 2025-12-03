@interface SearchBar.Coordinator
- (_TtCV16EventViewService9SearchBar11Coordinator)init;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
@end

@implementation SearchBar.Coordinator

- (void)searchBar:(id)bar textDidChange:(id)change
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000024C4(&qword_100226588);
  Binding.wrappedValue.setter();
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  v3 = objc_opt_self();
  v5[4] = sub_1000F5624;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100185774;
  v5[3] = &unk_1002162B0;
  v4 = _Block_copy(v5);
  [v3 animateWithDuration:0 delay:v4 options:0 animations:0.3 completion:0.0];
  _Block_release(v4);
}

- (_TtCV16EventViewService9SearchBar11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end