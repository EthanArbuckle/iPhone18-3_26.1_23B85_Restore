@interface ICNoteSearchViewControllerCollectionViewDelegate
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4;
- (ICNoteSearchViewController)noteSearchViewController;
- (ICNoteSearchViewControllerCollectionViewDelegate)initWithNoteSearchViewController:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)confirmSearchResultSelection:(id)a3;
@end

@implementation ICNoteSearchViewControllerCollectionViewDelegate

- (ICNoteSearchViewControllerCollectionViewDelegate)initWithNoteSearchViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICNoteSearchViewControllerCollectionViewDelegate;
  return [(ICNoteResultsViewControllerCollectionViewDelegate *)&v4 initWithNoteResultsViewController:a3];
}

- (ICNoteSearchViewController)noteSearchViewController
{
  objc_opt_class();
  v3 = [(ICNoteResultsViewControllerCollectionViewDelegate *)self noteResultsViewController];
  v4 = ICDynamicCast();

  return v4;
}

- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  v7 = [v6 dataSource];
  v8 = [v7 collectionViewDiffableDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v5];

  objc_opt_class();
  LOBYTE(v6) = objc_opt_isKindOfClass();

  return v6 & 1;
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  v7 = [v6 dataSource];
  v8 = [v7 collectionViewDiffableDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v5];

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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  v7 = [v6 dataSource];
  v8 = [v7 collectionViewDiffableDataSource];
  v10 = [v8 itemIdentifierForIndexPath:v5];

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
      v9 = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
      [v9 processSelectedSearchSuggestion:v10];
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICNoteSearchViewControllerCollectionViewDelegate collectionView:didSelectItemAtIndexPath:]" simulateCrash:1 showAlert:0 format:@"Unexpected item selected: %@", v10];
    }
  }
}

- (void)confirmSearchResultSelection:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  v6 = [v5 viewControllerManager];
  [v6 showSearchResult:v4 animated:1];

  v7 = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  v8 = [v7 searchDataSource];
  v9 = [v8 collectionViewDiffableDataSource];
  v11 = [v9 snapshot];

  v10 = [(ICNoteSearchViewControllerCollectionViewDelegate *)self noteSearchViewController];
  [v10 submitSearchResultSelectEventWithSearchResult:v4 diffableDataSourceSnapshot:v11];
}

@end