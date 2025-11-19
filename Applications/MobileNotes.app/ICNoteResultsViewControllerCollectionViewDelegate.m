@interface ICNoteResultsViewControllerCollectionViewDelegate
- (ICNoteResultsViewController)noteResultsViewController;
- (ICNoteResultsViewControllerCollectionViewDelegate)initWithNoteResultsViewController:(id)a3;
- (id)_dci_collectionView:(id)a3 contextMenuConfiguration:(id)a4 previewForDismissingToItemAtIndexPath:(id)a5;
- (id)_dci_collectionView:(id)a3 contextMenuConfiguration:(id)a4 previewForHighlightingItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
@end

@implementation ICNoteResultsViewControllerCollectionViewDelegate

- (ICNoteResultsViewControllerCollectionViewDelegate)initWithNoteResultsViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICNoteResultsViewControllerCollectionViewDelegate;
  v5 = [(ICNoteResultsViewControllerCollectionViewDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_noteResultsViewController, v4);
  }

  return v6;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v24 = a4;
  v7 = a5;
  v8 = [(ICNoteResultsViewControllerCollectionViewDelegate *)self noteResultsViewController];
  v9 = [v8 viewControllerManager];

  v10 = [(ICNoteResultsViewControllerCollectionViewDelegate *)self noteResultsViewController];
  v11 = [v10 dataSource];
  v12 = [v11 collectionViewDiffableDataSource];
  v13 = [v12 itemIdentifierForIndexPath:v7];

  if (![v9 isAutomaticallySelectingNotes])
  {
    if (![v9 isTagSelected])
    {
      goto LABEL_31;
    }

    v14 = [v9 tagSelection];
    objc_opt_class();
    v17 = ICDynamicCast();
    v18 = [v14 mode];
    if (v18 == 1 && (+[ICTagAllTagsItemIdentifier sharedItemIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v13 == v10))
    {
      [v17 setSelected:1];
    }

    else
    {
      if ([v14 mode])
      {
        [v17 setSelected:0];
      }

      else
      {
        v19 = [v14 includedObjectIDs];
        [v17 setSelected:{objc_msgSend(v19, "containsObject:", v13)}];
      }

      if (v18 != 1)
      {
LABEL_20:
        v22 = [v14 mode];
        if (v22 == 2 && (+[ICTagAllTagsItemIdentifier sharedItemIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v13 == v10))
        {
          [v17 setIsExcluded:1];
        }

        else
        {
          if ([v14 mode])
          {
            [v17 setIsExcluded:0];
          }

          else
          {
            v23 = [v14 excludedObjectIDs];
            [v17 setIsExcluded:{objc_msgSend(v23, "containsObject:", v13)}];
          }

          if (v22 != 2)
          {
            goto LABEL_29;
          }
        }

LABEL_29:
        goto LABEL_30;
      }
    }

    goto LABEL_20;
  }

  v14 = [(ICNoteResultsViewControllerCollectionViewDelegate *)self noteResultsViewController];
  if ([v14 isEditing])
  {
LABEL_30:

    goto LABEL_31;
  }

  v15 = [v9 selectedNoteObjectID];
  if ([v13 isEqual:v15])
  {
LABEL_6:

LABEL_7:
    [v24 setSelected:1];
    goto LABEL_31;
  }

  v16 = [v9 selectedInvitationObjectID];
  if ([v13 isEqual:v16])
  {

    goto LABEL_6;
  }

  v20 = [v9 selectedSearchResult];
  v21 = [v13 isEqual:v20];

  if (v21)
  {
    goto LABEL_7;
  }

LABEL_31:
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = ICDynamicCast();

  v9 = [v8 contextMenuConfigurationForItemsAtIndexPaths:v6];

  return v9;
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  v10 = ICDynamicCast();

  v11 = [v10 contextMenuPreviewForHighlightingMenuWithConfiguration:v8 indexPath:v7];

  return v11;
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  v10 = ICDynamicCast();

  v11 = [v10 contextMenuPreviewForDismissingContextMenuWithConfiguration:v8 indexPath:v7];

  return v11;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  v10 = ICDynamicCast();

  [v10 contextMenuWillPerformPreviewActionForMenuWithConfiguration:v8 animator:v7];
}

- (id)_dci_collectionView:(id)a3 contextMenuConfiguration:(id)a4 previewForHighlightingItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = a3;
  objc_opt_class();
  v8 = ICDynamicCast();

  v9 = [v8 multiSelectionContextMenuPreviewForHighlightingItemAtIndexPath:v6];

  return v9;
}

- (id)_dci_collectionView:(id)a3 contextMenuConfiguration:(id)a4 previewForDismissingToItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = a3;
  objc_opt_class();
  v8 = ICDynamicCast();

  v9 = [v8 multiSelectionContextMenuPreviewForHighlightingItemAtIndexPath:v6];

  return v9;
}

- (ICNoteResultsViewController)noteResultsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_noteResultsViewController);

  return WeakRetained;
}

@end