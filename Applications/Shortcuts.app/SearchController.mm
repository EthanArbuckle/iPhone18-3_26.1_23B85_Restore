@interface SearchController
- (void)beginSearching;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)updateSearchResultsForSearchController:(id)controller;
@end

@implementation SearchController

- (void)beginSearching
{
  selfCopy = self;
  sub_100090864();
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100090940(controllerCopy);
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1000909F4(editingCopy);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  barCopy = bar;
  selfCopy = self;
  sub_100090AD8(barCopy);
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_100090B9C(editingCopy);
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_100090CAC(clickedCopy);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_100090D68(clickedCopy);
}

@end