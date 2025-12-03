@interface SearchExtensionHelper
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldClear:(id)clear;
- (_TtC23ShelfKitCollectionViews21SearchExtensionHelper)init;
- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidEndEditing:(id)editing;
@end

@implementation SearchExtensionHelper

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_DA67C(editingCopy);

  return 1;
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_DA9C8(editingCopy);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  sub_30C0D8();
  barCopy = bar;
  selfCopy = self;
  sub_DAE54(barCopy);
}

- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change
{
  barCopy = bar;
  selfCopy = self;
  sub_DCAB8(change);
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_DB074(clickedCopy);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  *(&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCancel) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCommit) = 0;
  selfCopy = self;
  sub_309948();
  sub_DA2A8(v6);

  sub_EB68(v6, &qword_401918);
}

- (BOOL)textFieldShouldClear:(id)clear
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  selfCopy = self;
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