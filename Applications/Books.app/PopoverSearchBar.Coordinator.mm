@interface PopoverSearchBar.Coordinator
- (_TtCV5BooksP33_86D993C5768548B01F8EDC3BAEFB8CB116PopoverSearchBar11Coordinator)init;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
@end

@implementation PopoverSearchBar.Coordinator

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v5 = sub_1007A2254();
  v7 = v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtCV5BooksP33_86D993C5768548B01F8EDC3BAEFB8CB116PopoverSearchBar11Coordinator_textDidChange);
  selfCopy = self;

  v8(v5, v7);
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV5BooksP33_86D993C5768548B01F8EDC3BAEFB8CB116PopoverSearchBar11Coordinator_searchButtonClicked);
  selfCopy = self;

  v3(v4);
}

- (_TtCV5BooksP33_86D993C5768548B01F8EDC3BAEFB8CB116PopoverSearchBar11Coordinator)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtCV5BooksP33_86D993C5768548B01F8EDC3BAEFB8CB116PopoverSearchBar11Coordinator_textDidChange);
  *v4 = BKAppDelegate.enableMetricsInspectorOnDebugMode();
  v4[1] = 0;
  v5 = (self + OBJC_IVAR____TtCV5BooksP33_86D993C5768548B01F8EDC3BAEFB8CB116PopoverSearchBar11Coordinator_searchButtonClicked);
  *v5 = BKAppDelegate.enableMetricsInspectorOnDebugMode();
  v5[1] = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(PopoverSearchBar.Coordinator *)&v7 init];
}

@end