@interface PurchasesViewController
- (CGRect)_searchBar:(id)a3 proposedSearchFieldFrame:(CGRect)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unhideAll;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PurchasesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10044BC28();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10044D260();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_10044D5A8(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10044D9F8(a3);
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(PurchasesViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)unhideAll
{
  v2 = self;
  PurchasesContentPresenter.unhideAll()();
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;

  PurchasesContentPresenter.term.setter();
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v7 = a3;
  v4 = self;
  [v7 resignFirstResponder];
  v5 = [v7 text];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  PurchasesContentPresenter.term.setter();
}

- (CGRect)_searchBar:(id)a3 proposedSearchFieldFrame:(CGRect)a4
{
  height = a4.size.height;
  y = a4.origin.y;
  v6 = self;
  [(PurchasesViewController *)v6 pageMarginInsets];
  v8 = v7;
  v10 = v9;
  v11 = [(PurchasesViewController *)v6 view];
  if (v11)
  {
    v16 = v11;
    [v11 bounds];
    v18 = v17;

    v19 = v18 - v8 - v10;
    [(PurchasesViewController *)v6 pageMarginInsets];
    v21 = v20;

    v12 = v21;
    v13 = y;
    v14 = v19;
    v15 = height;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end