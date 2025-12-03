@interface ICNoteBrowseViewControllerCollectionViewDelegate
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (ICNoteBrowseViewController)noteBrowseViewController;
- (ICNoteBrowseViewControllerCollectionViewDelegate)initWithNoteBrowseViewController:(id)controller;
- (id)_indexPathOfReferenceItemForLayoutTransitionInCollectionView:(id)view;
- (id)collectionView:(id)view sceneActivationConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
@end

@implementation ICNoteBrowseViewControllerCollectionViewDelegate

- (ICNoteBrowseViewControllerCollectionViewDelegate)initWithNoteBrowseViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = ICNoteBrowseViewControllerCollectionViewDelegate;
  return [(ICNoteResultsViewControllerCollectionViewDelegate *)&v4 initWithNoteResultsViewController:controller];
}

- (ICNoteBrowseViewController)noteBrowseViewController
{
  objc_opt_class();
  noteResultsViewController = [(ICNoteResultsViewControllerCollectionViewDelegate *)self noteResultsViewController];
  v4 = ICDynamicCast();

  return v4;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  noteBrowseViewController = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  noteDataSource = [noteBrowseViewController noteDataSource];
  collectionViewDiffableDataSource = [noteDataSource collectionViewDiffableDataSource];
  v11 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  v12 = ICDynamicCast();
  if (v12)
  {
    if ([viewCopy allowsMultipleSelection])
    {
      indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
      v14 = [indexPathsForSelectedItems count] != 0;
    }

    else
    {
      v14 = 0;
    }

    if ([v12 ic_isNoteType])
    {
      ic_isInvitationType = 1;
    }

    else
    {
      ic_isInvitationType = [v12 ic_isInvitationType];
    }

    noteBrowseViewController2 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    v18 = ([noteBrowseViewController2 isEditing] | v14) ^ 1 | ic_isInvitationType;
  }

  else
  {
    objc_opt_class();
    noteBrowseViewController2 = ICDynamicCast();
    if (noteBrowseViewController2)
    {
      noteBrowseViewController3 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      tagSelection = [noteBrowseViewController3 tagSelection];
      v18 = [tagSelection mode] != 1;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18 & 1;
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  noteBrowseViewController = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  collectionView = [noteBrowseViewController collectionView];
  v8 = [collectionView canFocusItemAtIndexPath:pathCopy];

  return v8;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  pathCopy = path;
  noteBrowseViewController = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  noteDataSource = [noteBrowseViewController noteDataSource];
  collectionViewDiffableDataSource = [noteDataSource collectionViewDiffableDataSource];
  v9 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

  v12 = v9;
  if ([v12 ic_isNoteType])
  {
    noteBrowseViewController2 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    viewControllerManager = [noteBrowseViewController2 viewControllerManager];
    [viewControllerManager ensureNoteEditorPresentedAnimated:1 startEditing:0];
  }

  else if ([v12 ic_isContainerType])
  {
    noteBrowseViewController2 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    viewControllerManager = [noteBrowseViewController2 viewControllerManager];
    [viewControllerManager selectContainerWithIdentifier:v12 usingRootViewController:0 deferUntilDataLoaded:1 animated:1];
  }

  else
  {
    if (![v12 ic_isInvitationType])
    {
      goto LABEL_8;
    }

    noteBrowseViewController2 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    viewControllerManager = [noteBrowseViewController2 viewControllerManager];
    [viewControllerManager selectInvitationWithObjectID:v12 animated:1];
  }

LABEL_8:
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  noteBrowseViewController = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  isEditing = [noteBrowseViewController isEditing];

  if (!isEditing)
  {
    indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
    v11 = [indexPathsForSelectedItems count];

    if (v11 != 1)
    {
      goto LABEL_15;
    }

    noteBrowseViewController2 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    noteDataSource = [noteBrowseViewController2 noteDataSource];
    collectionViewDiffableDataSource = [noteDataSource collectionViewDiffableDataSource];
    noteBrowseViewController5 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

    objc_opt_class();
    v15 = ICDynamicCast();
    if ([ICTagCoreDataIndexer isTagItemIdentifier:noteBrowseViewController5])
    {
      noteBrowseViewController3 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      tagSelection = [noteBrowseViewController3 tagSelection];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [tagSelection setMode:1];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [tagSelection setMode:0];
          [tagSelection addObjectID:noteBrowseViewController5 toExcluded:0];
        }
      }

      noteBrowseViewController4 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      [noteBrowseViewController4 setTagSelection:tagSelection];
    }

    else
    {
      if (![v15 ic_isNoteType])
      {
LABEL_13:

        goto LABEL_14;
      }

      tagSelection = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      noteBrowseViewController4 = [tagSelection viewControllerManager];
      [noteBrowseViewController4 selectNoteWithObjectID:v15 scrollState:0 startEditing:0 animated:1 ensurePresented:1];
    }

    goto LABEL_13;
  }

  noteBrowseViewController5 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  [noteBrowseViewController5 updateBarButtonItemsAnimated:0];
LABEL_14:

LABEL_15:
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  noteBrowseViewController = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  isEditing = [noteBrowseViewController isEditing];

  noteBrowseViewController2 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  v8 = noteBrowseViewController2;
  if (isEditing)
  {
    [noteBrowseViewController2 updateBarButtonItemsAnimated:0];
    v9 = v8;
  }

  else
  {
    noteDataSource = [noteBrowseViewController2 noteDataSource];
    collectionViewDiffableDataSource = [noteDataSource collectionViewDiffableDataSource];
    v9 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

    if ([ICTagCoreDataIndexer isTagItemIdentifier:v9])
    {
      noteBrowseViewController3 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      tagSelection = [noteBrowseViewController3 tagSelection];

      [tagSelection removeObjectID:v9 fromExcluded:0];
      if ([tagSelection isEmpty])
      {
        [tagSelection setMode:1];
      }

      noteBrowseViewController4 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      [noteBrowseViewController4 setTagSelection:tagSelection];
    }
  }
}

- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  viewCopy = view;
  noteBrowseViewController = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  isEditing = [viewCopy isEditing];

  [noteBrowseViewController setEditing:isEditing animated:1];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    noteBrowseViewController = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    viewControllerManager = [noteBrowseViewController viewControllerManager];
    [cellCopy setShowOperatorMenuButton:{objc_msgSend(viewControllerManager, "hasCompactWidth")}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    objc_opt_class();
    noteBrowseViewController = ICDynamicCast();
    viewControllerManager = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    v7ViewControllerManager = [viewControllerManager viewControllerManager];
    tagSelection = [v7ViewControllerManager tagSelection];
    [noteBrowseViewController selectTagsWithTagSelection:tagSelection animated:0];
  }

LABEL_6:
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  supplementaryViewCopy = supplementaryView;
  if ([kind isEqualToString:UICollectionElementKindSectionFooter])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      noteBrowseViewController = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      [noteBrowseViewController setPrimarySummaryView:supplementaryViewCopy];

      noteBrowseViewController2 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      [noteBrowseViewController2 updateSummaryView];
    }
  }
}

- (id)_indexPathOfReferenceItemForLayoutTransitionInCollectionView:(id)view
{
  viewCopy = view;
  if ([viewCopy numberOfSections] && objc_msgSend(viewCopy, "numberOfItemsInSection:", 0))
  {
    v4 = [NSIndexPath indexPathForRow:0 inSection:0];
    v5 = [viewCopy layoutAttributesForItemAtIndexPath:v4];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [viewCopy visibleBounds];
    v19.origin.x = v7;
    v19.origin.y = v9;
    v19.size.width = v11;
    v19.size.height = v13;
    if (CGRectContainsRect(v18, v19))
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)collectionView:(id)view sceneActivationConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  if (([viewCopy isEditing] & 1) == 0)
  {
    noteBrowseViewController = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    noteDataSource = [noteBrowseViewController noteDataSource];
    collectionViewDiffableDataSource = [noteDataSource collectionViewDiffableDataSource];
    v13 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

    objc_opt_class();
    v14 = ICDynamicCast();
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_1000C8EE4;
    v29 = sub_1000C8EF4;
    v30 = 0;
    if ([v14 ic_isModernNoteType])
    {
      noteBrowseViewController2 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      modernViewContext = [noteBrowseViewController2 modernViewContext];
      v17 = v24;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000C8EFC;
      v24[3] = &unk_100646008;
      v24[4] = self;
      v24[5] = v14;
      v24[6] = &v25;
      [modernViewContext performBlockAndWait:v24];
    }

    else
    {
      if (![v14 ic_isLegacyNoteType])
      {
LABEL_8:
        if (v26[5])
        {
          v18 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.notes.open.object"];
          absoluteString = [v26[5] absoluteString];
          [v18 setTargetContentIdentifier:absoluteString];

          [v18 setUserInfo:&off_10066E448];
          v9 = [[UIWindowSceneActivationConfiguration alloc] initWithUserActivity:v18];
          objc_opt_class();
          v20 = ICDynamicCast();
          v21 = [v20 previewForWindowSceneActivationConfiguration:v9 indexPath:pathCopy];
          [v9 setPreview:v21];
        }

        else
        {
          v9 = 0;
        }

        _Block_object_dispose(&v25, 8);

        goto LABEL_12;
      }

      noteBrowseViewController2 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      modernViewContext = [noteBrowseViewController2 legacyViewContext];
      v17 = v23;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000C8FD8;
      v23[3] = &unk_100646008;
      v23[4] = self;
      v23[5] = v14;
      v23[6] = &v25;
      [modernViewContext performBlockAndWait:v23];
    }

    goto LABEL_8;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

@end