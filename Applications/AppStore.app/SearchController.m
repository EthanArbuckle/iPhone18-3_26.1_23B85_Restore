@interface SearchController
- (BOOL)searchBarShouldClear:(id)a3;
- (NSArray)keyCommands;
- (UISearchBar)searchBar;
- (_TtC8AppStore16SearchController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8AppStore16SearchController)initWithSearchResultsController:(id)a3;
- (void)_searchBarWillLayoutSubviews:(id)a3 inSearchFieldContainer:(id)a4 searchTextFieldFrame:(CGRect)a5 cancelButtonFrame:(CGRect)a6;
- (void)handleCancelKeyCommandWithCommand:(id)a3;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SearchController

- (UISearchBar)searchBar
{
  v2 = self;
  v3 = sub_10038CC0C();

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for SearchController();
  [(SearchController *)&v2 viewWillLayoutSubviews];
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = self;
  v3 = [(SearchController *)v4 searchBar];
  [(UISearchBar *)v3 _setDisableDictationButton:0];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10038DBE0();
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore16SearchController_filterButton);
  v6 = self;
  [v3 setEnabled:0];
  if ([(SearchController *)v6 delegate])
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      (*(v5 + 8))(ObjectType, v5);
    }

    swift_unknownObjectRelease();
  }

  [(SearchController *)v6 setActive:0];
}

- (BOOL)searchBarShouldClear:(id)a3
{
  v3 = self;
  if ([(SearchController *)v3 delegate])
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

- (void)_searchBarWillLayoutSubviews:(id)a3 inSearchFieldContainer:(id)a4 searchTextFieldFrame:(CGRect)a5 cancelButtonFrame:(CGRect)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_10038DE7C(a4, x, y, width, height);
}

- (NSArray)keyCommands
{
  v2 = self;
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

- (void)handleCancelKeyCommandWithCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10038E294();
}

- (_TtC8AppStore16SearchController)initWithSearchResultsController:(id)a3
{
  v4 = a3;
  v5 = sub_10038E37C(a3);

  return v5;
}

- (_TtC8AppStore16SearchController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10038D788(v5, v7, a4);
}

@end