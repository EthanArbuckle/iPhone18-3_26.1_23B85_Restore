@interface SearchController
- (BOOL)searchBarShouldClear:(id)clear;
- (NSArray)keyCommands;
- (UISearchBar)searchBar;
- (_TtC8AppStore16SearchController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8AppStore16SearchController)initWithSearchResultsController:(id)controller;
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
  v3 = sub_10038CC0C();

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
  sub_10038DBE0();
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore16SearchController_filterButton);
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
  sub_10038DE7C(container, x, y, width, height);
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = sub_10038D56C();

  if (v3)
  {
    sub_100005744(0, &qword_100982610);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
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
  sub_10038E294();
}

- (_TtC8AppStore16SearchController)initWithSearchResultsController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_10038E37C(controller);

  return v5;
}

- (_TtC8AppStore16SearchController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10038D788(v5, v7, bundle);
}

@end