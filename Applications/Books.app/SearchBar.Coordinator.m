@interface SearchBar.Coordinator
- (_TtCV5Books9SearchBar11Coordinator)init;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarSearchButtonClicked:(id)a3;
@end

@implementation SearchBar.Coordinator

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  sub_1007A2254();
  sub_1001F1160(&qword_100AEE3F0);
  sub_10079E1D4();
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV5Books9SearchBar11Coordinator_searchAction);
  v5 = self;

  v3(v4);
}

- (_TtCV5Books9SearchBar11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end