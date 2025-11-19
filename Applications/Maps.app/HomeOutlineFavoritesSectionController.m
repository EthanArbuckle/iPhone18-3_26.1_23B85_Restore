@interface HomeOutlineFavoritesSectionController
- (BOOL)_accessoryVisiblityForEntry:(id)a3;
- (BOOL)_accessoryVisiblityForFavorite:(id)a3;
- (BOOL)_isCopyOperationWithDropSession:(id)a3;
- (BOOL)_isMoveOperationWithDropSession:(id)a3;
- (BOOL)_shouldShowAccessoryForFavorite:(id)a3;
- (BOOL)_shouldShowAddButtonForItemSnapshots:(id)a3;
- (HomeOutlineFavoritesSectionController)initWithConfiguration:(id)a3 favoritesDataProvider:(id)a4 libraryCountsDataProvider:(id)a5;
- (HomeOutlineFavoritesSectionController)initWithConfiguration:(id)a3 suggestionsDataProvider:(id)a4;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSArray)dataProviders;
- (NSArray)itemSnapshots;
- (id)_entries;
- (id)_entriesLegacy;
- (id)_shortcutForNodeSnapshot:(id)a3;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)contextMenuForSnapshot:(id)a3;
- (id)shareItemSourceForSnapshot:(id)a3;
- (id)sourceViewForProfileTipPopover;
- (int64_t)_firstValidMoveIndexForFavorites:(id)a3;
- (void)_addFavorite;
- (void)_animateMoveOfShortcut:(id)a3 toIndex:(unint64_t)a4 dropCoordinator:(id)a5;
- (void)_deleteSnapshot:(id)a3;
- (void)_editEntrySnapshot:(id)a3;
- (void)_endEditSession;
- (void)_openSnapshot:(id)a3 inNewTab:(BOOL)a4;
- (void)_performCopyWithDropCoordinator:(id)a3;
- (void)_performMoveWithDropCoordinator:(id)a3;
- (void)_startEditSessionForShortcut:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
- (void)sectionHeaderOutlineCell:(id)a3 accessoryTypeTapped:(int64_t)a4;
- (void)twoLinesOutlineCell:(id)a3 accessoryViewTapped:(id)a4 accessoryModel:(id)a5;
@end

@implementation HomeOutlineFavoritesSectionController

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v9 = a4;
  v5 = [v9 session];
  v6 = [(HomeOutlineFavoritesSectionController *)self _isMoveOperationWithDropSession:v5];

  if (v6)
  {
    [(HomeOutlineFavoritesSectionController *)self _performMoveWithDropCoordinator:v9];
  }

  else
  {
    v7 = [v9 session];
    v8 = [(HomeOutlineFavoritesSectionController *)self _isCopyOperationWithDropSession:v7];

    if (v8)
    {
      [(HomeOutlineFavoritesSectionController *)self _performCopyWithDropCoordinator:v9];
    }
  }
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (![(HomeOutlineFavoritesSectionController *)self _isMoveOperationWithDropSession:v7])
  {
    v16 = [(HomeOutlineFavoritesSectionController *)self _isCopyOperationWithDropSession:v7];
    v14 = [UICollectionViewDropProposal alloc];
    if (!v16)
    {
      v21 = [v14 initWithDropOperation:0];
      goto LABEL_14;
    }

    v15 = 2;
    goto LABEL_9;
  }

  if (!+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v17 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v18 = [v17 _maps_firstValidMoveIndex];

    v19 = [v8 item];
    if (v19 >= &v18[[(HomeOutlineFavoritesSectionController *)self _headerNodeCount]])
    {
LABEL_12:
      v14 = [UICollectionViewDropProposal alloc];
      v15 = 3;
      v20 = 1;
      goto LABEL_13;
    }

LABEL_8:
    v14 = [UICollectionViewDropProposal alloc];
    v15 = 3;
    goto LABEL_9;
  }

  v9 = [(HomeOutlineFavoritesSectionController *)self _entries];
  v10 = [(HomeOutlineFavoritesSectionController *)self _firstValidMoveIndexForFavorites:v9];

  v11 = [v8 item];
  v12 = [(HomeOutlineFavoritesSectionController *)self _entries];
  v13 = [v12 count];

  if (v11 <= v13)
  {
    v22 = [v8 item];
    if (v22 > ([(HomeOutlineFavoritesSectionController *)self _headerNodeCount]+ v10))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v14 = [UICollectionViewDropProposal alloc];
  v15 = 0;
LABEL_9:
  v20 = 2;
LABEL_13:
  v21 = [v14 initWithDropOperation:v15 intent:v20];
LABEL_14:
  v23 = v21;

  return v23;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HomeOutlineSectionController *)self delegate];
  v9 = [v8 sectionController:self nodeSnapshotAtIndexPath:v7];

  v10 = [v9 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = [v9 viewModel];
  v13 = v12;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if ((v19 & 1) == 0)
    {
LABEL_14:
      v27.receiver = self;
      v27.super_class = HomeOutlineFavoritesSectionController;
      [(HomeOutlineSectionController *)&v27 collectionView:v6 didSelectItemAtIndexPath:v7];
      goto LABEL_15;
    }

    v13 = [v9 viewModel];
    v14 = [v13 item];
    [HomeAnalyticsManager captureTapActionWithFavorite:v14];
    if ([v14 isShortcutForSetup])
    {
      v20 = [v6 cellForItemAtIndexPath:v7];
      v16 = v20;
      if (v14 && v20)
      {
        v26 = [(HomeOutlineSectionController *)self configuration];
        v24 = [v26 actionCoordinator];
        v25 = [(HomeOutlineSectionController *)self configuration];
        v21 = [v25 homeActionDelegate];
        v22 = [v21 homeContaineeViewController];
        v23 = [ShortcutEditSession addSessionWithShortcut:v14];
        [v24 viewController:v22 showAddShortcut:v23];
      }

      goto LABEL_7;
    }

LABEL_13:

    goto LABEL_14;
  }

  v14 = [v12 entry];
  [HomeAnalyticsManager captureTapActionWithEntry:v14];
  if (![v14 isShortcutForSetup])
  {
    goto LABEL_13;
  }

  v15 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
  v16 = [v15 _maps_shortcutForSuggestionsEntry:v14];

  v17 = [v6 cellForItemAtIndexPath:v7];
  v18 = v17;
  if (v16 && v17)
  {
    [v17 bounds];
    [(HomeOutlineFavoritesSectionController *)self _startEditSessionForShortcut:v16 sourceView:v18 sourceRect:?];
  }

LABEL_7:
LABEL_15:
}

- (void)_deleteSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(HomeOutlineSectionController *)self deletions];
  v6 = [v4 identifierPath];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [(HomeOutlineFavoritesSectionController *)self _shortcutForNodeSnapshot:v4];
    if (v8)
    {
      v9 = [(HomeOutlineSectionController *)self deletionWithSnapshot:v4];
      v10 = [ShortcutEditSession editSessionWithShortcut:v8];
      [(NSMutableArray *)self->_deleteShortcutEditSessions addObject:v10];
      objc_initWeak(&location, self);
      v20 = v9;
      v11 = [NSArray arrayWithObjects:&v20 count:1];
      [(HomeOutlineSectionController *)self beginDeletions:v11];

      if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
      {
        v12 = v17;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100CA1F40;
        v17[3] = &unk_10165D238;
        v13 = &v18;
        objc_copyWeak(&v18, &location);
        v17[4] = v9;
        v17[5] = v10;
        [v8 deleteWithCompletionHandler:v17];
      }

      else
      {
        v12 = v14;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100CA200C;
        v14[3] = &unk_10165F3F0;
        v13 = &v16;
        objc_copyWeak(&v16, &location);
        v14[4] = v9;
        v15 = v10;
        [v15 removeFromShortcutsWithCompletion:v14];
      }

      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }
  }
}

- (id)_shortcutForNodeSnapshot:(id)a3
{
  v4 = a3;
  v5 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v6 = [v4 viewModel];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 item];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    v8 = v10;

    if (v8)
    {
      v11 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
      v12 = [v8 entry];
      v9 = [v11 _maps_shortcutForSuggestionsEntry:v12];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_entries
{
  favoritesForMoveAnimation = self->_favoritesForMoveAnimation;
  if (favoritesForMoveAnimation)
  {
    v3 = favoritesForMoveAnimation;
  }

  else
  {
    v3 = [(MapsFavoritesManager *)self->_favoritesDataProvider shortcutsForMapsHome];
  }

  return v3;
}

- (id)_entriesLegacy
{
  entriesForMoveAnimation = self->_entriesForMoveAnimation;
  if (entriesForMoveAnimation)
  {
    v3 = entriesForMoveAnimation;
  }

  else
  {
    v5 = [(SuggestionsDataProvider *)self->_suggestionsDataProvider shortcuts];
    v6 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v3 = [v6 _maps_shortcutOrderedEntries:v5];
  }

  return v3;
}

- (void)_performCopyWithDropCoordinator:(id)a3
{
  v4 = a3;
  v5 = [v4 session];
  v6 = [(HomeOutlineSectionController *)self mapItemForDropSession:v5];

  if (v6)
  {
    v7 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v8 = [v7 _maps_canAddShortcutForMapItem:v6];

    if (v8)
    {
      v9 = [ShortcutEditSession addSessionWithType:1 mapItem:v6];
      if (v9)
      {
        objc_initWeak(&location, self);
        [(NSMutableArray *)self->_dropShortcutEditSessions addObject:v9];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100CA2484;
        v10[3] = &unk_10165F3F0;
        objc_copyWeak(&v13, &location);
        v11 = v6;
        v12 = v9;
        [v12 saveWithCompletion:v10];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (BOOL)_isCopyOperationWithDropSession:(id)a3
{
  v4 = [(HomeOutlineSectionController *)self mapItemForDropSession:a3];
  if (v4)
  {
    v5 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v6 = [v5 _maps_canAddShortcutForMapItem:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_animateMoveOfShortcut:(id)a3 toIndex:(unint64_t)a4 dropCoordinator:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v11 = [v9 items];
  v12 = [v11 firstObject];
  v13 = [v12 dragItem];

  if (v10)
  {
    v14 = [(HomeOutlineFavoritesSectionController *)self _entries];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100CA28FC;
    v36[3] = &unk_1016500D8;
    v15 = &v37;
    v37 = v8;
    v16 = [v14 indexOfObjectPassingTest:v36];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v16;
      v33 = v13;
      v18 = [NSMutableArray arrayWithArray:v14];
      v19 = [v14 objectAtIndexedSubscript:v17];
      [v18 removeObjectAtIndex:v17];
      [v18 insertObject:v19 atIndex:a4];
      v20 = &OBJC_IVAR___HomeOutlineFavoritesSectionController__favoritesForMoveAnimation;
LABEL_6:
      v23 = [v18 copy];
      v24 = *v20;
      v25 = *(&self->super.super.isa + v24);
      *(&self->super.super.isa + v24) = v23;

      v26 = [(HomeOutlineSectionController *)self delegate];
      [v26 sectionController:self setNeedsApplySnapshotAnimated:1];

      v27 = [(HomeOutlineSectionController *)self delegate];
      [v27 applySnapshotIfNeededWithSectionController:self];

      v28 = *(&self->super.super.isa + v24);
      *(&self->super.super.isa + v24) = 0;

      v29 = [(HomeOutlineFavoritesSectionController *)self _headerNodeCount];
      v30 = [v9 destinationIndexPath];
      v31 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", v29 + a4, [v30 section]);

      v13 = v33;
      v32 = [v9 dropItem:v33 toItemAtIndexPath:v31];
    }
  }

  else
  {
    v14 = [(HomeOutlineFavoritesSectionController *)self _entriesLegacy];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100CA2970;
    v34[3] = &unk_101650100;
    v15 = &v35;
    v35 = v8;
    v21 = [v14 indexOfObjectPassingTest:v34];
    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = v21;
      v33 = v13;
      v18 = [NSMutableArray arrayWithArray:v14];
      v19 = [v14 objectAtIndexedSubscript:v22];
      [v18 removeObjectAtIndex:v22];
      [v18 insertObject:v19 atIndex:a4];
      v20 = &OBJC_IVAR___HomeOutlineFavoritesSectionController__entriesForMoveAnimation;
      goto LABEL_6;
    }
  }
}

- (void)_performMoveWithDropCoordinator:(id)a3
{
  v4 = a3;
  v5 = [v4 items];
  v6 = [v5 firstObject];
  v7 = [v6 dragItem];

  if (v7)
  {
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v8 = [(HomeOutlineFavoritesSectionController *)self _entries];
      v9 = [(HomeOutlineFavoritesSectionController *)self _firstValidMoveIndexForFavorites:v8];
    }

    else
    {
      v8 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
      v9 = [v8 _maps_firstValidMoveIndex];
    }

    v10 = v9;

    v11 = [v4 destinationIndexPath];
    v12 = [v11 item];

    if (v12 > [(HomeOutlineFavoritesSectionController *)self _headerNodeCount])
    {
      v12 -= [(HomeOutlineFavoritesSectionController *)self _headerNodeCount];
    }

    if (v12 > v10)
    {
      v10 = v12;
    }

    v13 = [v7 localObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = [v15 itemSnapshot];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = [(HomeOutlineFavoritesSectionController *)self _shortcutForNodeSnapshot:v18];

    if (v19)
    {
      if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
      {
        v20 = [(HomeOutlineFavoritesSectionController *)self _entries];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100CA2CA4;
        v25[3] = &unk_10165D300;
        v21 = v26;
        v26[0] = v19;
        v26[1] = self;
        [v26[0] moveToIndex:v10 with:v20 completion:v25];
      }

      else
      {
        shortcutManager = self->_shortcutManager;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100CA2D70;
        v23[3] = &unk_101661738;
        v21 = &v24;
        v24 = v19;
        [(ShortcutManager *)shortcutManager moveShortcut:v24 toIndex:v10 completion:v23];
      }

      [(HomeOutlineFavoritesSectionController *)self _animateMoveOfShortcut:v19 toIndex:v10 dropCoordinator:v4];
    }
  }
}

- (int64_t)_firstValidMoveIndexForFavorites:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      v6 += v5;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v11 + 1) + 8 * v8) isShortcutForSetup])
        {
          v6 = v9;
          goto LABEL_12;
        }

        ++v9;
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_12:

  return v6;
}

- (BOOL)_isMoveOperationWithDropSession:(id)a3
{
  v4 = a3;
  v5 = [v4 localDragSession];
  v6 = [v5 localContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v4 items];

  v10 = [v9 firstObject];
  v11 = [v10 localObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v8)
  {
    goto LABEL_15;
  }

  v14 = [v8 windowScene];
  v15 = [(HomeOutlineSectionController *)self configuration];
  v16 = [v15 collectionView];
  v17 = [v16 window];
  v18 = [v17 windowScene];
  if (v14 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = [v14 isEqual:v18];
  }

  LOBYTE(v14) = 0;
  if (v19 && v13)
  {
    v20 = [v13 itemSnapshot];
    v21 = [v20 identifierPath];
    v22 = [v21 firstIdentifier];
    v23 = [(HomeOutlineSectionController *)self configuration];
    v24 = [v23 sectionIdentifier];
    v25 = v24;
    if (v22 == v24)
    {
    }

    else
    {
      v26 = [v22 isEqual:v24];

      if ((v26 & 1) == 0)
      {
LABEL_15:
        LOBYTE(v14) = 0;
        goto LABEL_30;
      }
    }

    v27 = [v13 itemSnapshot];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    v30 = [(HomeOutlineFavoritesSectionController *)self _shortcutForNodeSnapshot:v29];

    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      if (v30 && ([v30 isSetupPlaceholder] & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v30)
    {
      v31 = [v30 type];
      if (v31 >= 6)
      {
LABEL_28:
        LOBYTE(v14) = 1;
        goto LABEL_29;
      }

      LODWORD(v14) = 0x13u >> v31;
LABEL_29:

      goto LABEL_30;
    }

    LOBYTE(v14) = 0;
    goto LABEL_29;
  }

LABEL_30:

  return v14 & 1;
}

- (BOOL)_shouldShowAccessoryForFavorite:(id)a3
{
  v3 = a3;
  if ([v3 type] == 6 && (objc_msgSend(v3, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"NearbyTransit"), v4, (v5 & 1) != 0))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [v3 isSetupPlaceholder] ^ 1;
  }

  return v6;
}

- (BOOL)_accessoryVisiblityForFavorite:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shortcutEditSession)
  {
    v6 = [v4 identifier];
    v7 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
    v8 = [v7 identifier];
    if (v6 == v8 || [v6 isEqual:v8])
    {
      v9 = [v5 type];
      v10 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
      v11 = v9 != [v10 type];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_accessoryVisiblityForEntry:(id)a3
{
  v4 = a3;
  v5 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
  v6 = [v5 _maps_shortcutForSuggestionsEntry:v4];

  if (self->_shortcutEditSession)
  {
    v7 = [v6 identifier];
    v8 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
    v9 = [v8 identifier];
    if (v7 == v9 || [v7 isEqual:v9])
    {
      [v4 type];
      v10 = MapsSuggestionsShortcutTypeFromEntryType();
      v11 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
      v12 = v10 != [v11 type];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_endEditSession
{
  shortcutEditSession = self->_shortcutEditSession;
  if (shortcutEditSession)
  {
    self->_shortcutEditSession = 0;

    v4 = [(HomeOutlineSectionController *)self delegate];
    [v4 sectionController:self setNeedsApplySnapshotAnimated:1];
  }
}

- (void)_startEditSessionForShortcut:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  if (!self->_shortcutEditSession)
  {
    v13 = [ShortcutEditSession editSessionWithShortcut:v11];
    shortcutEditSession = self->_shortcutEditSession;
    self->_shortcutEditSession = v13;

    objc_initWeak(&location, self);
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100CA36F0;
    v24 = &unk_101661B98;
    objc_copyWeak(&v25, &location);
    [(ShortcutEditSession *)self->_shortcutEditSession setCompletionHandler:&v21];
    v15 = [(HomeOutlineSectionController *)self delegate:v21];
    [v15 sectionController:self setNeedsApplySnapshotAnimated:1];

    v16 = [(HomeOutlineSectionController *)self configuration];
    v17 = [v16 actionCoordinator];
    v18 = [(HomeOutlineSectionController *)self configuration];
    v19 = [v18 homeActionDelegate];
    v20 = [v19 homeContaineeViewController];
    [v17 viewController:v20 editShortcut:self->_shortcutEditSession sourceView:v12 sourceRect:{x, y, width, height}];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

- (void)sectionHeaderOutlineCell:(id)a3 accessoryTypeTapped:(int64_t)a4
{
  if (a4 == 2)
  {
    [(HomeOutlineFavoritesSectionController *)self _addFavorite];
  }
}

- (void)twoLinesOutlineCell:(id)a3 accessoryViewTapped:(id)a4 accessoryModel:(id)a5
{
  v17 = a3;
  v7 = a4;
  v8 = [v17 cellModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v17 cellModel];
    v11 = [v10 entry];
    v12 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v13 = [v12 _maps_shortcutForSuggestionsEntry:v11];

    if (!v13)
    {
LABEL_7:

      goto LABEL_8;
    }

    [v7 bounds];
    [(HomeOutlineFavoritesSectionController *)self _startEditSessionForShortcut:v13 sourceView:v7 sourceRect:?];
  }

  v14 = [v17 cellModel];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = [v17 cellModel];
  v16 = [v10 item];
  if (v16)
  {
    v11 = v16;
    [v7 bounds];
    [(HomeOutlineFavoritesSectionController *)self _startEditSessionForShortcut:v11 sourceView:v7 sourceRect:?];
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
}

- (void)_addFavorite
{
  v3 = [(HomeOutlineSectionController *)self configuration];
  v4 = [v3 actionCoordinator];
  v5 = [(HomeOutlineSectionController *)self configuration];
  v6 = [v5 homeActionDelegate];
  v7 = [v6 homeContaineeViewController];
  v8 = +[ShortcutEditSession addSession];
  [v4 viewController:v7 showAddShortcut:v8];

  [GEOAPPortal captureUserAction:2044 target:8 value:0];
}

- (BOOL)_shouldShowAddButtonForItemSnapshots:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(HomeOutlineSectionController *)self deletions];
        v11 = [v9 identifierPath];
        v12 = [v10 objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (id)shareItemSourceForSnapshot:(id)a3
{
  v4 = a3;
  v5 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v6 = [v4 viewModel];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 item];

    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 entry];

    if (!v12)
    {
      v9 = 0;
      goto LABEL_15;
    }

    v13 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v9 = [v13 _maps_shortcutForSuggestionsEntry:v12];
  }

  if (([v9 isSetupPlaceholder] & 1) == 0)
  {
    v14 = [v9 geoMapItem];
    v15 = [[MKMapItem alloc] initWithGeoMapItem:v14 isPlaceHolderPlace:0];
    v16 = [[SearchResult alloc] initWithMapItem:v15];
    v17 = [(SearchResult *)v16 unknownContact];
    v18 = [ShareItem shareItemWithSearchResult:v16 contact:v17 includePrintActivity:1];

    goto LABEL_16;
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)_openSnapshot:(id)a3 inNewTab:(BOOL)a4
{
  v5 = a3;
  v6 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v7 = [v5 viewModel];

  if (v6)
  {
    v8 = [v7 item];
    [v8 mapItemStorage];
  }

  else
  {
    v8 = [v7 entry];
    [v8 geoMapItem];
  }
  v9 = ;

  v10 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.NewWindow"];
  [v10 setEligibleForHandoff:0];
  v11 = [(HomeOutlineSectionController *)self configuration];
  v12 = [v11 homeActionDelegate];
  v13 = [v12 homeContaineeViewController];
  v14 = [v13 _maps_mapsSceneDelegate];
  v15 = [v14 mapsActivityWithFidelity:2];

  [v15 setPresentedMapItem:v9];
  v16 = [v15 data];
  v17 = [v16 bzip2CompressedData];

  if (v17)
  {
    v25 = @"bs";
    v26 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v10 setUserInfo:v18];
  }

  v19 = objc_alloc_init(UISceneActivationRequestOptions);
  v20 = [(HomeOutlineSectionController *)self configuration];
  v21 = [v20 homeActionDelegate];
  v22 = [v21 homeContaineeViewController];
  v23 = [v22 _maps_uiScene];
  [v19 setRequestingScene:v23];

  v24 = +[UIApplication sharedApplication];
  [v24 requestSceneSessionActivation:0 userActivity:v10 options:v19 errorHandler:0];
}

- (void)_editEntrySnapshot:(id)a3
{
  v26 = a3;
  v4 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v5 = [v26 viewModel];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 item];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v7 = [v10 entry];

    if (!v7)
    {
      goto LABEL_25;
    }

    v11 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v8 = [v11 _maps_shortcutForSuggestionsEntry:v7];
  }

  if (v8)
  {
    v12 = [(HomeOutlineSectionController *)self delegate];
    v13 = [v26 identifierPath];
    v14 = [v12 sectionController:self indexPathForIdentifierPath:v13];

    if (v14)
    {
      v15 = [(HomeOutlineSectionController *)self configuration];
      v16 = [v15 collectionView];
      v17 = [v16 cellForItemAtIndexPath:v14];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (v19)
      {
        v20 = [v19 trailingAccessoryConfigurations];
        v21 = [v20 firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        if (v23)
        {
          v24 = [v23 customView];
          v25 = [v23 customView];
          [v25 bounds];
          [(HomeOutlineFavoritesSectionController *)self _startEditSessionForShortcut:v8 sourceView:v24 sourceRect:?];
        }
      }
    }
  }

LABEL_25:
}

- (id)contextMenuForSnapshot:(id)a3
{
  v4 = a3;
  v5 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v6 = [v4 viewModel];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 item];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v8 = [v11 entry];

    if (!v8)
    {
      goto LABEL_14;
    }

    v12 = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v9 = [v12 _maps_shortcutForSuggestionsEntry:v8];
  }

  if (!v9)
  {
LABEL_14:
    v18 = 0;
    goto LABEL_23;
  }

  v13 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  if ([v9 isSetupPlaceholder])
  {
    v14 = v56;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100CA49C0;
    v56[3] = &unk_101661340;
    v41 = &v57;
    objc_copyWeak(&v57, &location);
    v56[4] = v4;
    v15 = sub_100C64B44(v56);
    v63 = v15;
    v16 = [NSArray arrayWithObjects:&v63 count:1];
    v17 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v16];

    [v13 addObject:v17];
  }

  else
  {
    if ([v9 type] != 6)
    {
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100CA4A60;
      v51[3] = &unk_101661340;
      v41 = &v53;
      objc_copyWeak(&v53, &location);
      v21 = v4;
      v52 = v21;
      v22 = v51;
      v23 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
      v24 = +[NSBundle mainBundle];
      v25 = v24;
      if (v23)
      {
        v26 = @"[Maps Home] Edit Pin";
      }

      else
      {
        v26 = @"[Maps Home] Edit Favorite";
      }

      v27 = [v24 localizedStringForKey:v26 value:@"localized string not found" table:0];
      v15 = sub_100C64A60(v27, v22);

      v61 = v15;
      v28 = [NSArray arrayWithObjects:&v61 count:1];
      v17 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v28];

      [v13 addObject:v17];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100CA4AB0;
      v48[3] = &unk_101661340;
      objc_copyWeak(&v50, &location);
      v29 = v21;
      v49 = v29;
      v40 = sub_100C64BD8(v48);
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100CA4B04;
      v45[3] = &unk_101661340;
      objc_copyWeak(&v47, &location);
      v30 = v29;
      v46 = v30;
      v31 = sub_100C64C6C(v45);
      v60[0] = v40;
      v60[1] = v31;
      v38 = v31;
      v32 = [NSArray arrayWithObjects:v60 count:2];
      v39 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v32];

      [v13 addObject:v39];
      v33 = [MapsMenuBuilder sendToDeviceAndShareMenuWithSendToDeviceEnabled:1];
      [v13 addObject:v33];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100CA4B58;
      v42[3] = &unk_101661340;
      objc_copyWeak(&v44, &location);
      v43 = v30;
      v34 = sub_100C64D00(v42);
      v59 = v34;
      v35 = [NSArray arrayWithObjects:&v59 count:1];
      v36 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v35];

      [v13 addObject:v36];
      objc_destroyWeak(&v44);

      objc_destroyWeak(&v47);
      objc_destroyWeak(&v50);
      v20 = &v52;
      goto LABEL_22;
    }

    v14 = v54;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100CA4A10;
    v54[3] = &unk_101661340;
    v41 = &v55;
    objc_copyWeak(&v55, &location);
    v54[4] = v4;
    v15 = sub_100C64D00(v54);
    v62 = v15;
    v19 = [NSArray arrayWithObjects:&v62 count:1];
    v17 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v19];

    [v13 addObject:v17];
  }

  v20 = (v14 + 4);
LABEL_22:

  objc_destroyWeak(v41);
  v18 = [UIMenu menuWithTitle:&stru_1016631F0 children:v13];
  objc_destroyWeak(&location);

LABEL_23:

  return v18;
}

- (id)sourceViewForProfileTipPopover
{
  v3 = [(HomeOutlineSectionController *)self delegate];
  v4 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v5 = [v3 sectionController:self indexPathForIdentifierPath:v4];

  v6 = [(HomeOutlineSectionController *)self configuration];
  v7 = [v6 collectionView];
  v8 = [v7 cellForItemAtIndexPath:v5];

  if (v8)
  {
    v9 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    [(HomeOutlineSectionController *)self expandElementAtIdentifierPath:v9];

    v10 = v8;
  }

  return v8;
}

- (NSArray)itemSnapshots
{
  v3 = [(MapsFavoritesManager *)self->_favoritesDataProvider shortcutsForMapsHome];
  v4 = [NSMutableArray arrayWithArray:v3];

  v5 = [(HomeOutlineSectionController *)self configuration];
  v6 = [v5 sectionIdentifier];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100CA4F70;
  v21[3] = &unk_101650070;
  v21[4] = self;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100CA5120;
  v20[3] = &unk_101654460;
  v20[4] = self;
  v7 = [HomeOutlineSectionBuilder itemSnapshotsWithItems:v4 sectionIdentifier:v6 sectionExpanded:[(HomeOutlineSectionController *)self expanded] itemIdentifierBlock:v21 viewModelBlock:v20 childItemsBlock:&stru_101650090 expandedBlock:&stru_1016500B0];

  if ([(HomeOutlineFavoritesSectionController *)self _shouldShowAddButtonForItemSnapshots:v7])
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"[Proactive Tray Mac] Add Pin" value:@"localized string not found" table:0];

    v10 = [SmallButtonOutlineCellModel alloc];
    v11 = [UIImage systemImageNamed:@"plus.circle"];
    v12 = [UIImage systemImageNamed:@"plus.circle.fill"];
    v13 = [(SmallButtonOutlineCellModel *)v10 initWithStyle:1 title:v9 image:v11 hoverImage:v12 delegate:self];

    v14 = [MapsUIDiffableDataSourceOutlineNodeSnapshot alloc];
    v15 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v16 = [v15 identifierPathByAppendingIdentifier:@"AddButtonIdentifier"];
    v17 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v14 initWithIdentifierPath:v16 viewModel:v13 childSnapshots:&__NSArray0__struct expanded:0];

    v18 = [v7 arrayByAddingObject:v17];

    v7 = v18;
  }

  return v7;
}

- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel
{
  v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v4 = [SectionHeaderAddOutlineCellModel alloc];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v3)
  {
    v7 = @"[Proactive Tray] Places Section";
  }

  else
  {
    v7 = @"[Proactive Tray] Favorites Section";
  }

  v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];
  v9 = [(SectionHeaderAddOutlineCellModel *)v4 initWithTitle:v8 accessoryDelegate:self];

  return v9;
}

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  v4 = a3;
  v5 = sub_1000410AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "home Data ProvidingObject Did Update: %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = HomeOutlineFavoritesSectionController;
  [(HomeOutlineSectionController *)&v6 homeDataProvidingObjectDidUpdate:v4];
}

- (NSArray)dataProviders
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    favoritesDataProvider = self->_favoritesDataProvider;
    v3 = &OBJC_IVAR___HomeOutlineFavoritesSectionController__libraryCountsDataProvider;
    p_favoritesDataProvider = &favoritesDataProvider;
  }

  else
  {
    suggestionsDataProvider = self->_suggestionsDataProvider;
    v3 = &OBJC_IVAR___HomeOutlineFavoritesSectionController__meCardDataProvider;
    p_favoritesDataProvider = &suggestionsDataProvider;
  }

  p_favoritesDataProvider[1] = *(&self->super.super.isa + *v3);
  v5 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];

  return v5;
}

- (HomeOutlineFavoritesSectionController)initWithConfiguration:(id)a3 favoritesDataProvider:(id)a4 libraryCountsDataProvider:(id)a5
{
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HomeOutlineFavoritesSectionController;
  v11 = [(HomeOutlineSectionController *)&v18 initWithConfiguration:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_favoritesDataProvider, a4);
    objc_storeStrong(&v12->_libraryCountsDataProvider, a5);
    v13 = +[NSMutableArray array];
    dropShortcutEditSessions = v12->_dropShortcutEditSessions;
    v12->_dropShortcutEditSessions = v13;

    v15 = +[NSMutableArray array];
    deleteShortcutEditSessions = v12->_deleteShortcutEditSessions;
    v12->_deleteShortcutEditSessions = v15;
  }

  return v12;
}

- (HomeOutlineFavoritesSectionController)initWithConfiguration:(id)a3 suggestionsDataProvider:(id)a4
{
  v7 = a4;
  v19.receiver = self;
  v19.super_class = HomeOutlineFavoritesSectionController;
  v8 = [(HomeOutlineSectionController *)&v19 initWithConfiguration:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_suggestionsDataProvider, a4);
    v10 = objc_alloc_init(MeCardDataProvider);
    meCardDataProvider = v9->_meCardDataProvider;
    v9->_meCardDataProvider = v10;

    v12 = +[NSMutableArray array];
    dropShortcutEditSessions = v9->_dropShortcutEditSessions;
    v9->_dropShortcutEditSessions = v12;

    v14 = +[NSMutableArray array];
    deleteShortcutEditSessions = v9->_deleteShortcutEditSessions;
    v9->_deleteShortcutEditSessions = v14;

    v16 = +[ShortcutManager sharedManager];
    shortcutManager = v9->_shortcutManager;
    v9->_shortcutManager = v16;
  }

  return v9;
}

@end