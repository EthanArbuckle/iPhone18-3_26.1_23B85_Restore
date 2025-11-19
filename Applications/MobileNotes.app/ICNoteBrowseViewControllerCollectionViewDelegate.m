@interface ICNoteBrowseViewControllerCollectionViewDelegate
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (ICNoteBrowseViewController)noteBrowseViewController;
- (ICNoteBrowseViewControllerCollectionViewDelegate)initWithNoteBrowseViewController:(id)a3;
- (id)_indexPathOfReferenceItemForLayoutTransitionInCollectionView:(id)a3;
- (id)collectionView:(id)a3 sceneActivationConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
@end

@implementation ICNoteBrowseViewControllerCollectionViewDelegate

- (ICNoteBrowseViewControllerCollectionViewDelegate)initWithNoteBrowseViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICNoteBrowseViewControllerCollectionViewDelegate;
  return [(ICNoteResultsViewControllerCollectionViewDelegate *)&v4 initWithNoteResultsViewController:a3];
}

- (ICNoteBrowseViewController)noteBrowseViewController
{
  objc_opt_class();
  v3 = [(ICNoteResultsViewControllerCollectionViewDelegate *)self noteResultsViewController];
  v4 = ICDynamicCast();

  return v4;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  v9 = [v8 noteDataSource];
  v10 = [v9 collectionViewDiffableDataSource];
  v11 = [v10 itemIdentifierForIndexPath:v7];

  objc_opt_class();
  v12 = ICDynamicCast();
  if (v12)
  {
    if ([v6 allowsMultipleSelection])
    {
      v13 = [v6 indexPathsForSelectedItems];
      v14 = [v13 count] != 0;
    }

    else
    {
      v14 = 0;
    }

    if ([v12 ic_isNoteType])
    {
      v19 = 1;
    }

    else
    {
      v19 = [v12 ic_isInvitationType];
    }

    v15 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    v18 = ([v15 isEditing] | v14) ^ 1 | v19;
  }

  else
  {
    objc_opt_class();
    v15 = ICDynamicCast();
    if (v15)
    {
      v16 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      v17 = [v16 tagSelection];
      v18 = [v17 mode] != 1;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18 & 1;
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  v7 = [v6 collectionView];
  v8 = [v7 canFocusItemAtIndexPath:v5];

  return v8;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  v7 = [v6 noteDataSource];
  v8 = [v7 collectionViewDiffableDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v5];

  v12 = v9;
  if ([v12 ic_isNoteType])
  {
    v10 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    v11 = [v10 viewControllerManager];
    [v11 ensureNoteEditorPresentedAnimated:1 startEditing:0];
  }

  else if ([v12 ic_isContainerType])
  {
    v10 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    v11 = [v10 viewControllerManager];
    [v11 selectContainerWithIdentifier:v12 usingRootViewController:0 deferUntilDataLoaded:1 animated:1];
  }

  else
  {
    if (![v12 ic_isInvitationType])
    {
      goto LABEL_8;
    }

    v10 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    v11 = [v10 viewControllerManager];
    [v11 selectInvitationWithObjectID:v12 animated:1];
  }

LABEL_8:
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  v8 = [v7 isEditing];

  if (!v8)
  {
    v10 = [v19 indexPathsForSelectedItems];
    v11 = [v10 count];

    if (v11 != 1)
    {
      goto LABEL_15;
    }

    v12 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    v13 = [v12 noteDataSource];
    v14 = [v13 collectionViewDiffableDataSource];
    v9 = [v14 itemIdentifierForIndexPath:v6];

    objc_opt_class();
    v15 = ICDynamicCast();
    if ([ICTagCoreDataIndexer isTagItemIdentifier:v9])
    {
      v16 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      v17 = [v16 tagSelection];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v17 setMode:1];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v17 setMode:0];
          [v17 addObjectID:v9 toExcluded:0];
        }
      }

      v18 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      [v18 setTagSelection:v17];
    }

    else
    {
      if (![v15 ic_isNoteType])
      {
LABEL_13:

        goto LABEL_14;
      }

      v17 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      v18 = [v17 viewControllerManager];
      [v18 selectNoteWithObjectID:v15 scrollState:0 startEditing:0 animated:1 ensurePresented:1];
    }

    goto LABEL_13;
  }

  v9 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  [v9 updateBarButtonItemsAnimated:0];
LABEL_14:

LABEL_15:
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v15 = a4;
  v5 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  v6 = [v5 isEditing];

  v7 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  v8 = v7;
  if (v6)
  {
    [v7 updateBarButtonItemsAnimated:0];
    v9 = v8;
  }

  else
  {
    v10 = [v7 noteDataSource];
    v11 = [v10 collectionViewDiffableDataSource];
    v9 = [v11 itemIdentifierForIndexPath:v15];

    if ([ICTagCoreDataIndexer isTagItemIdentifier:v9])
    {
      v12 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      v13 = [v12 tagSelection];

      [v13 removeObjectID:v9 fromExcluded:0];
      if ([v13 isEmpty])
      {
        [v13 setMode:1];
      }

      v14 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      [v14 setTagSelection:v13];
    }
  }
}

- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v5 = a3;
  v7 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
  v6 = [v5 isEditing];

  [v7 setEditing:v6 animated:1];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    v7 = [v6 viewControllerManager];
    [v10 setShowOperatorMenuButton:{objc_msgSend(v7, "hasCompactWidth")}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    objc_opt_class();
    v6 = ICDynamicCast();
    v7 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    v8 = [v7 viewControllerManager];
    v9 = [v8 tagSelection];
    [v6 selectTagsWithTagSelection:v9 animated:0];
  }

LABEL_6:
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v10 = a4;
  if ([a5 isEqualToString:UICollectionElementKindSectionFooter])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      [v8 setPrimarySummaryView:v10];

      v9 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      [v9 updateSummaryView];
    }
  }
}

- (id)_indexPathOfReferenceItemForLayoutTransitionInCollectionView:(id)a3
{
  v3 = a3;
  if ([v3 numberOfSections] && objc_msgSend(v3, "numberOfItemsInSection:", 0))
  {
    v4 = [NSIndexPath indexPathForRow:0 inSection:0];
    v5 = [v3 layoutAttributesForItemAtIndexPath:v4];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v3 visibleBounds];
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

- (id)collectionView:(id)a3 sceneActivationConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  if (([v7 isEditing] & 1) == 0)
  {
    v10 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
    v11 = [v10 noteDataSource];
    v12 = [v11 collectionViewDiffableDataSource];
    v13 = [v12 itemIdentifierForIndexPath:v8];

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
      v15 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      v16 = [v15 modernViewContext];
      v17 = v24;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000C8EFC;
      v24[3] = &unk_100646008;
      v24[4] = self;
      v24[5] = v14;
      v24[6] = &v25;
      [v16 performBlockAndWait:v24];
    }

    else
    {
      if (![v14 ic_isLegacyNoteType])
      {
LABEL_8:
        if (v26[5])
        {
          v18 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.notes.open.object"];
          v19 = [v26[5] absoluteString];
          [v18 setTargetContentIdentifier:v19];

          [v18 setUserInfo:&off_10066E448];
          v9 = [[UIWindowSceneActivationConfiguration alloc] initWithUserActivity:v18];
          objc_opt_class();
          v20 = ICDynamicCast();
          v21 = [v20 previewForWindowSceneActivationConfiguration:v9 indexPath:v8];
          [v9 setPreview:v21];
        }

        else
        {
          v9 = 0;
        }

        _Block_object_dispose(&v25, 8);

        goto LABEL_12;
      }

      v15 = [(ICNoteBrowseViewControllerCollectionViewDelegate *)self noteBrowseViewController];
      v16 = [v15 legacyViewContext];
      v17 = v23;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000C8FD8;
      v23[3] = &unk_100646008;
      v23[4] = self;
      v23[5] = v14;
      v23[6] = &v25;
      [v16 performBlockAndWait:v23];
    }

    goto LABEL_8;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

@end