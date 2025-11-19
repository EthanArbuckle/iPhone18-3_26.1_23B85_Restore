@interface SearchExtensionHelper
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldClear:(id)a3;
- (_TtC23ShelfKitCollectionViews21SearchExtensionHelper)init;
- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
@end

@implementation SearchExtensionHelper

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_DA67C(v4);

  return 1;
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_DA9C8(v4);
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  sub_30C0D8();
  v6 = a3;
  v7 = self;
  sub_DAE54(v6);
}

- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_DCAB8(a4);
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_DB074(v4);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  *(&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCancel) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCommit) = 0;
  v7 = self;
  sub_309948();
  sub_DA2A8(v6);

  sub_EB68(v6, &qword_401918);
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = self;
  sub_309948();
  sub_DA2A8(v6);

  sub_EB68(v6, &qword_401918);
  return 1;
}

- (_TtC23ShelfKitCollectionViews21SearchExtensionHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end