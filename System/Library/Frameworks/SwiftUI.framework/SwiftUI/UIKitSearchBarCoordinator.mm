@interface UIKitSearchBarCoordinator
- (BOOL)searchBarShouldClear:(id)clear;
- (void)primaryActionTriggered:(id)triggered;
- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)textFieldDidChangeSelection:(id)selection;
@end

@implementation UIKitSearchBarCoordinator

- (void)primaryActionTriggered:(id)triggered
{
  triggeredCopy = triggered;
  selfCopy = self;
  specialized UIKitSearchBarCoordinator.primaryActionTriggered(_:)(selfCopy);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_isViewUpdating) == 1)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    MEMORY[0x1EEE9AC00](v7);
    barCopy = bar;
    selfCopy = self;
    static Update.dispatchImmediately<A>(reason:_:)();
  }
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  UIKitSearchBarCoordinator.searchBarTextDidBeginEditing(_:)(editingCopy);
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  specialized UIKitSearchBarCoordinator.searchBarTextDidEndEditing(_:)();
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;

  static Update.enqueueAction(reason:_:)();
}

- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change
{
  selfCopy = self;
  specialized UIKitSearchScopeCoordinating<>.onChange(selectedScope:)(change);
}

- (BOOL)searchBarShouldClear:(id)clear
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ()?);
  selfCopy = self;
  static Update.ensure<A>(_:)();

  return 1;
}

- (void)textFieldDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  UIKitSearchBarCoordinator.textFieldDidChangeSelection(_:)(selectionCopy);
}

@end