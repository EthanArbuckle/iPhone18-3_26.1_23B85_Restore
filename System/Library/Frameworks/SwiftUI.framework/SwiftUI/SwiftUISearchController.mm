@interface SwiftUISearchController
- (UISearchBar)searchBar;
- (_TtC7SwiftUI23SwiftUISearchController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7SwiftUI23SwiftUISearchController)initWithSearchResultsController:(id)a3;
- (void)handleCustomAccessoryRecoveryGesture;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)searchController:(id)a3 willChangeToSearchBarPlacement:(int64_t)a4;
- (void)updateSearchResultsForSearchController:(id)a3 selectingSearchSuggestion:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation SwiftUISearchController

- (UISearchBar)searchBar
{
  v2 = self;
  v3 = SwiftUISearchController._searchBar.getter();

  return v3;
}

- (void)handleCustomAccessoryRecoveryGesture
{
  v2 = self;
  SwiftUISearchController.handleCustomAccessoryRecoveryGesture()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  SwiftUISearchController.viewDidLayoutSubviews()();
}

- (void)searchController:(id)a3 willChangeToSearchBarPlacement:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  specialized SwiftUISearchController.searchController(_:willChangeTo:)(a4);
}

- (void)willPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  SwiftUISearchController.willPresentSearchController(_:)(v4);
}

- (void)willDismissSearchController:(id)a3
{
  v5 = self;
  v3 = SwiftUISearchController._searchBar.getter();
  v4 = v3[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive];
  v3[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive] = 0;
  if (v4 == 1)
  {
    UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:)(0, 1);
  }
}

- (void)updateSearchResultsForSearchController:(id)a3 selectingSearchSuggestion:(id)a4
{
  type metadata accessor for UIKitSearchSuggestion(0);
  v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI21UIKitSearchSuggestion_platformItem + 416);
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 == 1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
  v5 = outlined copy of AppIntentExecutor?(v4);
  v4(v5);
  swift_unknownObjectRelease();

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);
}

- (_TtC7SwiftUI23SwiftUISearchController)initWithSearchResultsController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7SwiftUI23SwiftUISearchController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  SwiftUISearchController.presentationControllerWillDismiss(_:)(v4);
}

@end