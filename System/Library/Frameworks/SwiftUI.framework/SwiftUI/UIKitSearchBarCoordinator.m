@interface UIKitSearchBarCoordinator
- (BOOL)searchBarShouldClear:(id)a3;
- (void)primaryActionTriggered:(id)a3;
- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)textFieldDidChangeSelection:(id)a3;
@end

@implementation UIKitSearchBarCoordinator

- (void)primaryActionTriggered:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized UIKitSearchBarCoordinator.primaryActionTriggered(_:)(v5);
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_isViewUpdating) == 1)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    MEMORY[0x1EEE9AC00](v7);
    v8 = a3;
    v9 = self;
    static Update.dispatchImmediately<A>(reason:_:)();
  }
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  UIKitSearchBarCoordinator.searchBarTextDidBeginEditing(_:)(v4);
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized UIKitSearchBarCoordinator.searchBarTextDidEndEditing(_:)();
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = self;

  static Update.enqueueAction(reason:_:)();
}

- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  v5 = self;
  specialized UIKitSearchScopeCoordinating<>.onChange(selectedScope:)(a4);
}

- (BOOL)searchBarShouldClear:(id)a3
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ()?);
  v4 = self;
  static Update.ensure<A>(_:)();

  return 1;
}

- (void)textFieldDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  UIKitSearchBarCoordinator.textFieldDidChangeSelection(_:)(v4);
}

@end