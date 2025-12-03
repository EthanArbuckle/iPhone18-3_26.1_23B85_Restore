@interface ICNoteSearchViewControllerCollectionViewDelegate
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path;
- (ICNoteSearchViewController)noteSearchViewController;
- (ICNoteSearchViewControllerCollectionViewDelegate)initWithNoteSearchViewController:(id)controller;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)confirmSearchResultSelection:(id)selection;
@end

@implementation ICNoteSearchViewControllerCollectionViewDelegate

- (ICNoteSearchViewControllerCollectionViewDelegate)initWithNoteSearchViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = ICNoteSearchViewControllerCollectionViewDelegate;
  return [(ICNoteResultsViewControllerCollectionViewDelegate *)&v4 initWithNoteResultsViewController:controller];
}

- (ICNoteSearchViewController)noteSearchViewController
{
  objc_opt_class();
  noteResultsViewController = [(ICNoteResultsViewControllerCollectionViewDelegate *)self noteResultsViewController];
  v4 = ICDynamicCast();

  return v4;
}

- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path
{
  pathCopy = path;
  noteSearchViewController = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  dataSource = [noteSearchViewController dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
  v9 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  LOBYTE(noteSearchViewController) = objc_opt_isKindOfClass();

  return noteSearchViewController & 1;
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  noteSearchViewController = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  dataSource = [noteSearchViewController dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
  v9 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  noteSearchViewController = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  dataSource = [noteSearchViewController dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
  v10 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICNoteSearchViewControllerCollectionViewDelegate *)self confirmSearchResultSelection:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      noteSearchViewController2 = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
      [noteSearchViewController2 processSelectedSearchSuggestion:v10];
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICNoteSearchViewControllerCollectionViewDelegate collectionView:didSelectItemAtIndexPath:]" simulateCrash:1 showAlert:0 format:@"Unexpected item selected: %@", v10];
    }
  }
}

- (void)confirmSearchResultSelection:(id)selection
{
  selectionCopy = selection;
  noteSearchViewController = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  viewControllerManager = [noteSearchViewController viewControllerManager];
  [viewControllerManager showSearchResult:selectionCopy animated:1];

  noteSearchViewController2 = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  searchDataSource = [noteSearchViewController2 searchDataSource];
  collectionViewDiffableDataSource = [searchDataSource collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];

  noteSearchViewController3 = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  [noteSearchViewController3 submitSearchResultSelectEventWithSearchResult:selectionCopy diffableDataSourceSnapshot:snapshot];
}

@end