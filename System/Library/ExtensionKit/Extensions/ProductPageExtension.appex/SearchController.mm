@interface SearchController
- (BOOL)searchBarShouldClear:(id)clear;
- (NSArray)keyCommands;
- (UISearchBar)searchBar;
- (_TtC20ProductPageExtension16SearchController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC20ProductPageExtension16SearchController)initWithSearchResultsController:(id)controller;
- (void)_searchBarWillLayoutSubviews:(id)subviews inSearchFieldContainer:(id)container searchTextFieldFrame:(CGRect)frame cancelButtonFrame:(CGRect)buttonFrame;
- (void)handleCancelKeyCommandWithCommand:(id)command;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)viewWillLayoutSubviews;
@end

@implementation SearchController

- (UISearchBar)searchBar
{
  selfCopy = self;
  v3 = sub_1001ACDAC();

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for SearchController();
  [(SearchController *)&v2 viewWillLayoutSubviews];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  selfCopy = self;
  searchBar = [(SearchController *)selfCopy searchBar];
  [(UISearchBar *)searchBar _setDisableDictationButton:0];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_1001ADDB8();
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton);
  selfCopy = self;
  [v3 setEnabled:0];
  if ([(SearchController *)selfCopy delegate])
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      (*(v5 + 8))(ObjectType, v5);
    }

    swift_unknownObjectRelease();
  }

  [(SearchController *)selfCopy setActive:0];
}

- (BOOL)searchBarShouldClear:(id)clear
{
  selfCopy = self;
  if ([(SearchController *)selfCopy delegate])
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (!v5)
    {

      swift_unknownObjectRelease();
      return 1;
    }

    (*(v5 + 16))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return 1;
}

- (void)_searchBarWillLayoutSubviews:(id)subviews inSearchFieldContainer:(id)container searchTextFieldFrame:(CGRect)frame cancelButtonFrame:(CGRect)buttonFrame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  subviewsCopy = subviews;
  containerCopy = container;
  selfCopy = self;
  sub_1001AE054(container, x, y, width, height);
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = sub_1001AD70C();

  if (v3)
  {
    sub_100016F40(0, &unk_10094C270);
    v4.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)handleCancelKeyCommandWithCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1001AE46C();
}

- (_TtC20ProductPageExtension16SearchController)initWithSearchResultsController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_1001AE554(controller);

  return v5;
}

- (_TtC20ProductPageExtension16SearchController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10076FF9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1001AD928(v5, v7, bundle);
}

@end