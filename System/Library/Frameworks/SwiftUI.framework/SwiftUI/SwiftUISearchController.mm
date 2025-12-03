@interface SwiftUISearchController
- (UISearchBar)searchBar;
- (_TtC7SwiftUI23SwiftUISearchController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7SwiftUI23SwiftUISearchController)initWithSearchResultsController:(id)controller;
- (void)handleCustomAccessoryRecoveryGesture;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)searchController:(id)controller willChangeToSearchBarPlacement:(int64_t)placement;
- (void)updateSearchResultsForSearchController:(id)controller selectingSearchSuggestion:(id)suggestion;
- (void)viewDidLayoutSubviews;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation SwiftUISearchController

- (UISearchBar)searchBar
{
  selfCopy = self;
  v3 = SwiftUISearchController._searchBar.getter();

  return v3;
}

- (void)handleCustomAccessoryRecoveryGesture
{
  selfCopy = self;
  SwiftUISearchController.handleCustomAccessoryRecoveryGesture()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  SwiftUISearchController.viewDidLayoutSubviews()();
}

- (void)searchController:(id)controller willChangeToSearchBarPlacement:(int64_t)placement
{
  controllerCopy = controller;
  selfCopy = self;
  specialized SwiftUISearchController.searchController(_:willChangeTo:)(placement);
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  SwiftUISearchController.willPresentSearchController(_:)(controllerCopy);
}

- (void)willDismissSearchController:(id)controller
{
  selfCopy = self;
  v3 = SwiftUISearchController._searchBar.getter();
  v4 = v3[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive];
  v3[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive] = 0;
  if (v4 == 1)
  {
    UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:)(0, 1);
  }
}

- (void)updateSearchResultsForSearchController:(id)controller selectingSearchSuggestion:(id)suggestion
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

- (_TtC7SwiftUI23SwiftUISearchController)initWithSearchResultsController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7SwiftUI23SwiftUISearchController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  SwiftUISearchController.presentationControllerWillDismiss(_:)(dismissCopy);
}

@end