@interface PurchasesViewController
- (CGRect)_searchBar:(id)bar proposedSearchFieldFrame:(CGRect)frame;
- (unint64_t)supportedInterfaceOrientations;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)traitCollectionDidChange:(id)change;
- (void)unhideAll;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PurchasesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002BE0F0();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1002BF728();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002BFA70(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1002BFEC0(change);
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(PurchasesViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
  selfCopy = self;
  sub_10074B6F4();
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  sub_100753094();
  selfCopy = self;

  sub_10074B6B4();
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  [clickedCopy resignFirstResponder];
  text = [clickedCopy text];
  if (text)
  {
    v6 = text;
    sub_100753094();
  }

  sub_10074B6B4();
}

- (CGRect)_searchBar:(id)bar proposedSearchFieldFrame:(CGRect)frame
{
  height = frame.size.height;
  y = frame.origin.y;
  selfCopy = self;
  [(PurchasesViewController *)selfCopy pageMarginInsets];
  v8 = v7;
  v10 = v9;
  view = [(PurchasesViewController *)selfCopy view];
  if (view)
  {
    v16 = view;
    [view bounds];
    v18 = v17;

    v19 = v18 - v8 - v10;
    [(PurchasesViewController *)selfCopy pageMarginInsets];
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