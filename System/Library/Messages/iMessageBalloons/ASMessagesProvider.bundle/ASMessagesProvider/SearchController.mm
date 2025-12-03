@interface SearchController
- (BOOL)searchBarShouldClear:(id)clear;
- (NSArray)keyCommands;
- (UISearchBar)searchBar;
- (_TtC18ASMessagesProvider16SearchController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC18ASMessagesProvider16SearchController)initWithSearchResultsController:(id)controller;
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
  v3 = sub_1E9B04();

  return v3;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  searchBar = [(SearchController *)selfCopy searchBar];
  [(UISearchBar *)searchBar setShowsCancelButton:1];

  [(SearchController *)selfCopy setActive:1];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for SearchController();
  [(SearchController *)&v4 viewWillLayoutSubviews];
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
  sub_1EAC50();
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton);
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

  else
  {
  }
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
  sub_1EAEEC(container, x, y, width, height);
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = sub_1EA500();

  if (v3)
  {
    sub_BE70(0, &unk_949C60);
    v4.super.isa = sub_769450().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)handleCancelKeyCommandWithCommand:(id)command
{
  selfCopy = self;

  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton) setEnabled:0];
  if ([(SearchController *)selfCopy delegate])
  {
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      (*(v4 + 8))(ObjectType, v4);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC18ASMessagesProvider16SearchController)initWithSearchResultsController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_1EB3BC(controller);

  return v5;
}

- (_TtC18ASMessagesProvider16SearchController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_769240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1EA7C0(v5, v7, bundle);
}

@end