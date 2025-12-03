@interface ICNoteResultsViewControllerCollectionViewDelegate
- (ICNoteResultsViewController)noteResultsViewController;
- (ICNoteResultsViewControllerCollectionViewDelegate)initWithNoteResultsViewController:(id)controller;
- (id)_dci_collectionView:(id)view contextMenuConfiguration:(id)configuration previewForDismissingToItemAtIndexPath:(id)path;
- (id)_dci_collectionView:(id)view contextMenuConfiguration:(id)configuration previewForHighlightingItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
@end

@implementation ICNoteResultsViewControllerCollectionViewDelegate

- (ICNoteResultsViewControllerCollectionViewDelegate)initWithNoteResultsViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = ICNoteResultsViewControllerCollectionViewDelegate;
  v5 = [(ICNoteResultsViewControllerCollectionViewDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_noteResultsViewController, controllerCopy);
  }

  return v6;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  noteResultsViewController = [(ICNoteResultsViewControllerCollectionViewDelegate *)self noteResultsViewController];
  viewControllerManager = [noteResultsViewController viewControllerManager];

  noteResultsViewController2 = [(ICNoteResultsViewControllerCollectionViewDelegate *)self noteResultsViewController];
  dataSource = [noteResultsViewController2 dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
  v13 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

  if (![viewControllerManager isAutomaticallySelectingNotes])
  {
    if (![viewControllerManager isTagSelected])
    {
      goto LABEL_31;
    }

    tagSelection = [viewControllerManager tagSelection];
    objc_opt_class();
    v17 = ICDynamicCast();
    mode = [tagSelection mode];
    if (mode == 1 && (+[ICTagAllTagsItemIdentifier sharedItemIdentifier], noteResultsViewController2 = objc_claimAutoreleasedReturnValue(), v13 == noteResultsViewController2))
    {
      [v17 setSelected:1];
    }

    else
    {
      if ([tagSelection mode])
      {
        [v17 setSelected:0];
      }

      else
      {
        includedObjectIDs = [tagSelection includedObjectIDs];
        [v17 setSelected:{objc_msgSend(includedObjectIDs, "containsObject:", v13)}];
      }

      if (mode != 1)
      {
LABEL_20:
        mode2 = [tagSelection mode];
        if (mode2 == 2 && (+[ICTagAllTagsItemIdentifier sharedItemIdentifier], noteResultsViewController2 = objc_claimAutoreleasedReturnValue(), v13 == noteResultsViewController2))
        {
          [v17 setIsExcluded:1];
        }

        else
        {
          if ([tagSelection mode])
          {
            [v17 setIsExcluded:0];
          }

          else
          {
            excludedObjectIDs = [tagSelection excludedObjectIDs];
            [v17 setIsExcluded:{objc_msgSend(excludedObjectIDs, "containsObject:", v13)}];
          }

          if (mode2 != 2)
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

  tagSelection = [(ICNoteResultsViewControllerCollectionViewDelegate *)self noteResultsViewController];
  if ([tagSelection isEditing])
  {
LABEL_30:

    goto LABEL_31;
  }

  selectedNoteObjectID = [viewControllerManager selectedNoteObjectID];
  if ([v13 isEqual:selectedNoteObjectID])
  {
LABEL_6:

LABEL_7:
    [cellCopy setSelected:1];
    goto LABEL_31;
  }

  selectedInvitationObjectID = [viewControllerManager selectedInvitationObjectID];
  if ([v13 isEqual:selectedInvitationObjectID])
  {

    goto LABEL_6;
  }

  selectedSearchResult = [viewControllerManager selectedSearchResult];
  v21 = [v13 isEqual:selectedSearchResult];

  if (v21)
  {
    goto LABEL_7;
  }

LABEL_31:
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  pathsCopy = paths;
  viewCopy = view;
  objc_opt_class();
  v8 = ICDynamicCast();

  v9 = [v8 contextMenuConfigurationForItemsAtIndexPaths:pathsCopy];

  return v9;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  configurationCopy = configuration;
  viewCopy = view;
  objc_opt_class();
  v10 = ICDynamicCast();

  v11 = [v10 contextMenuPreviewForHighlightingMenuWithConfiguration:configurationCopy indexPath:pathCopy];

  return v11;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  configurationCopy = configuration;
  viewCopy = view;
  objc_opt_class();
  v10 = ICDynamicCast();

  v11 = [v10 contextMenuPreviewForDismissingContextMenuWithConfiguration:configurationCopy indexPath:pathCopy];

  return v11;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  viewCopy = view;
  objc_opt_class();
  v10 = ICDynamicCast();

  [v10 contextMenuWillPerformPreviewActionForMenuWithConfiguration:configurationCopy animator:animatorCopy];
}

- (id)_dci_collectionView:(id)view contextMenuConfiguration:(id)configuration previewForHighlightingItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v8 = ICDynamicCast();

  v9 = [v8 multiSelectionContextMenuPreviewForHighlightingItemAtIndexPath:pathCopy];

  return v9;
}

- (id)_dci_collectionView:(id)view contextMenuConfiguration:(id)configuration previewForDismissingToItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v8 = ICDynamicCast();

  v9 = [v8 multiSelectionContextMenuPreviewForHighlightingItemAtIndexPath:pathCopy];

  return v9;
}

- (ICNoteResultsViewController)noteResultsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_noteResultsViewController);

  return WeakRetained;
}

@end