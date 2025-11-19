@interface SearchController
- (void)beginSearching;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
@end

@implementation SearchController

- (void)beginSearching
{
  v2 = self;
  sub_100090864();
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100090940(v4);
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000909F4(v4);
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_100090AD8(v6);
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100090B9C(v4);
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100090CAC(v4);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100090D68(v4);
}

@end