@interface HomeOutlineFavoritesSectionController
- (BOOL)_accessoryVisiblityForEntry:(id)entry;
- (BOOL)_accessoryVisiblityForFavorite:(id)favorite;
- (BOOL)_isCopyOperationWithDropSession:(id)session;
- (BOOL)_isMoveOperationWithDropSession:(id)session;
- (BOOL)_shouldShowAccessoryForFavorite:(id)favorite;
- (BOOL)_shouldShowAddButtonForItemSnapshots:(id)snapshots;
- (HomeOutlineFavoritesSectionController)initWithConfiguration:(id)configuration favoritesDataProvider:(id)provider libraryCountsDataProvider:(id)dataProvider;
- (HomeOutlineFavoritesSectionController)initWithConfiguration:(id)configuration suggestionsDataProvider:(id)provider;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSArray)dataProviders;
- (NSArray)itemSnapshots;
- (id)_entries;
- (id)_entriesLegacy;
- (id)_shortcutForNodeSnapshot:(id)snapshot;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)contextMenuForSnapshot:(id)snapshot;
- (id)shareItemSourceForSnapshot:(id)snapshot;
- (id)sourceViewForProfileTipPopover;
- (int64_t)_firstValidMoveIndexForFavorites:(id)favorites;
- (void)_addFavorite;
- (void)_animateMoveOfShortcut:(id)shortcut toIndex:(unint64_t)index dropCoordinator:(id)coordinator;
- (void)_deleteSnapshot:(id)snapshot;
- (void)_editEntrySnapshot:(id)snapshot;
- (void)_endEditSession;
- (void)_openSnapshot:(id)snapshot inNewTab:(BOOL)tab;
- (void)_performCopyWithDropCoordinator:(id)coordinator;
- (void)_performMoveWithDropCoordinator:(id)coordinator;
- (void)_startEditSessionForShortcut:(id)shortcut sourceView:(id)view sourceRect:(CGRect)rect;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
- (void)sectionHeaderOutlineCell:(id)cell accessoryTypeTapped:(int64_t)tapped;
- (void)twoLinesOutlineCell:(id)cell accessoryViewTapped:(id)tapped accessoryModel:(id)model;
@end

@implementation HomeOutlineFavoritesSectionController

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  session = [coordinatorCopy session];
  v6 = [(HomeOutlineFavoritesSectionController *)self _isMoveOperationWithDropSession:session];

  if (v6)
  {
    [(HomeOutlineFavoritesSectionController *)self _performMoveWithDropCoordinator:coordinatorCopy];
  }

  else
  {
    session2 = [coordinatorCopy session];
    v8 = [(HomeOutlineFavoritesSectionController *)self _isCopyOperationWithDropSession:session2];

    if (v8)
    {
      [(HomeOutlineFavoritesSectionController *)self _performCopyWithDropCoordinator:coordinatorCopy];
    }
  }
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  updateCopy = update;
  pathCopy = path;
  if (![(HomeOutlineFavoritesSectionController *)self _isMoveOperationWithDropSession:updateCopy])
  {
    v16 = [(HomeOutlineFavoritesSectionController *)self _isCopyOperationWithDropSession:updateCopy];
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
    meCard = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    _maps_firstValidMoveIndex = [meCard _maps_firstValidMoveIndex];

    item = [pathCopy item];
    if (item >= &_maps_firstValidMoveIndex[[(HomeOutlineFavoritesSectionController *)self _headerNodeCount]])
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

  _entries = [(HomeOutlineFavoritesSectionController *)self _entries];
  v10 = [(HomeOutlineFavoritesSectionController *)self _firstValidMoveIndexForFavorites:_entries];

  item2 = [pathCopy item];
  _entries2 = [(HomeOutlineFavoritesSectionController *)self _entries];
  v13 = [_entries2 count];

  if (item2 <= v13)
  {
    item3 = [pathCopy item];
    if (item3 > ([(HomeOutlineFavoritesSectionController *)self _headerNodeCount]+ v10))
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  delegate = [(HomeOutlineSectionController *)self delegate];
  v9 = [delegate sectionController:self nodeSnapshotAtIndexPath:pathCopy];

  viewModel = [v9 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  viewModel2 = [v9 viewModel];
  viewModel3 = viewModel2;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if ((v19 & 1) == 0)
    {
LABEL_14:
      v27.receiver = self;
      v27.super_class = HomeOutlineFavoritesSectionController;
      [(HomeOutlineSectionController *)&v27 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
      goto LABEL_15;
    }

    viewModel3 = [v9 viewModel];
    item = [viewModel3 item];
    [HomeAnalyticsManager captureTapActionWithFavorite:item];
    if ([item isShortcutForSetup])
    {
      v20 = [viewCopy cellForItemAtIndexPath:pathCopy];
      v16 = v20;
      if (item && v20)
      {
        configuration = [(HomeOutlineSectionController *)self configuration];
        actionCoordinator = [configuration actionCoordinator];
        configuration2 = [(HomeOutlineSectionController *)self configuration];
        homeActionDelegate = [configuration2 homeActionDelegate];
        homeContaineeViewController = [homeActionDelegate homeContaineeViewController];
        v23 = [ShortcutEditSession addSessionWithShortcut:item];
        [actionCoordinator viewController:homeContaineeViewController showAddShortcut:v23];
      }

      goto LABEL_7;
    }

LABEL_13:

    goto LABEL_14;
  }

  item = [viewModel2 entry];
  [HomeAnalyticsManager captureTapActionWithEntry:item];
  if (![item isShortcutForSetup])
  {
    goto LABEL_13;
  }

  meCard = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
  v16 = [meCard _maps_shortcutForSuggestionsEntry:item];

  v17 = [viewCopy cellForItemAtIndexPath:pathCopy];
  v18 = v17;
  if (v16 && v17)
  {
    [v17 bounds];
    [(HomeOutlineFavoritesSectionController *)self _startEditSessionForShortcut:v16 sourceView:v18 sourceRect:?];
  }

LABEL_7:
LABEL_15:
}

- (void)_deleteSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  deletions = [(HomeOutlineSectionController *)self deletions];
  identifierPath = [snapshotCopy identifierPath];
  v7 = [deletions objectForKeyedSubscript:identifierPath];

  if (!v7)
  {
    v8 = [(HomeOutlineFavoritesSectionController *)self _shortcutForNodeSnapshot:snapshotCopy];
    if (v8)
    {
      v9 = [(HomeOutlineSectionController *)self deletionWithSnapshot:snapshotCopy];
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

- (id)_shortcutForNodeSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  viewModel = [snapshotCopy viewModel];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = viewModel;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    item = [v8 item];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = viewModel;
    }

    else
    {
      v10 = 0;
    }

    v8 = v10;

    if (v8)
    {
      meCard = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
      entry = [v8 entry];
      item = [meCard _maps_shortcutForSuggestionsEntry:entry];
    }

    else
    {
      item = 0;
    }
  }

  return item;
}

- (id)_entries
{
  favoritesForMoveAnimation = self->_favoritesForMoveAnimation;
  if (favoritesForMoveAnimation)
  {
    shortcutsForMapsHome = favoritesForMoveAnimation;
  }

  else
  {
    shortcutsForMapsHome = [(MapsFavoritesManager *)self->_favoritesDataProvider shortcutsForMapsHome];
  }

  return shortcutsForMapsHome;
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
    shortcuts = [(SuggestionsDataProvider *)self->_suggestionsDataProvider shortcuts];
    meCard = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v3 = [meCard _maps_shortcutOrderedEntries:shortcuts];
  }

  return v3;
}

- (void)_performCopyWithDropCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  session = [coordinatorCopy session];
  v6 = [(HomeOutlineSectionController *)self mapItemForDropSession:session];

  if (v6)
  {
    meCard = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v8 = [meCard _maps_canAddShortcutForMapItem:v6];

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

- (BOOL)_isCopyOperationWithDropSession:(id)session
{
  v4 = [(HomeOutlineSectionController *)self mapItemForDropSession:session];
  if (v4)
  {
    meCard = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v6 = [meCard _maps_canAddShortcutForMapItem:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_animateMoveOfShortcut:(id)shortcut toIndex:(unint64_t)index dropCoordinator:(id)coordinator
{
  shortcutCopy = shortcut;
  coordinatorCopy = coordinator;
  v10 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  items = [coordinatorCopy items];
  firstObject = [items firstObject];
  dragItem = [firstObject dragItem];

  if (v10)
  {
    _entries = [(HomeOutlineFavoritesSectionController *)self _entries];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100CA28FC;
    v36[3] = &unk_1016500D8;
    v15 = &v37;
    v37 = shortcutCopy;
    v16 = [_entries indexOfObjectPassingTest:v36];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v16;
      v33 = dragItem;
      v18 = [NSMutableArray arrayWithArray:_entries];
      v19 = [_entries objectAtIndexedSubscript:v17];
      [v18 removeObjectAtIndex:v17];
      [v18 insertObject:v19 atIndex:index];
      v20 = &OBJC_IVAR___HomeOutlineFavoritesSectionController__favoritesForMoveAnimation;
LABEL_6:
      v23 = [v18 copy];
      v24 = *v20;
      v25 = *(&self->super.super.isa + v24);
      *(&self->super.super.isa + v24) = v23;

      delegate = [(HomeOutlineSectionController *)self delegate];
      [delegate sectionController:self setNeedsApplySnapshotAnimated:1];

      delegate2 = [(HomeOutlineSectionController *)self delegate];
      [delegate2 applySnapshotIfNeededWithSectionController:self];

      v28 = *(&self->super.super.isa + v24);
      *(&self->super.super.isa + v24) = 0;

      _headerNodeCount = [(HomeOutlineFavoritesSectionController *)self _headerNodeCount];
      destinationIndexPath = [coordinatorCopy destinationIndexPath];
      v31 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", _headerNodeCount + index, [destinationIndexPath section]);

      dragItem = v33;
      v32 = [coordinatorCopy dropItem:v33 toItemAtIndexPath:v31];
    }
  }

  else
  {
    _entries = [(HomeOutlineFavoritesSectionController *)self _entriesLegacy];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100CA2970;
    v34[3] = &unk_101650100;
    v15 = &v35;
    v35 = shortcutCopy;
    v21 = [_entries indexOfObjectPassingTest:v34];
    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = v21;
      v33 = dragItem;
      v18 = [NSMutableArray arrayWithArray:_entries];
      v19 = [_entries objectAtIndexedSubscript:v22];
      [v18 removeObjectAtIndex:v22];
      [v18 insertObject:v19 atIndex:index];
      v20 = &OBJC_IVAR___HomeOutlineFavoritesSectionController__entriesForMoveAnimation;
      goto LABEL_6;
    }
  }
}

- (void)_performMoveWithDropCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  items = [coordinatorCopy items];
  firstObject = [items firstObject];
  dragItem = [firstObject dragItem];

  if (dragItem)
  {
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      _entries = [(HomeOutlineFavoritesSectionController *)self _entries];
      _maps_firstValidMoveIndex = [(HomeOutlineFavoritesSectionController *)self _firstValidMoveIndexForFavorites:_entries];
    }

    else
    {
      _entries = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
      _maps_firstValidMoveIndex = [_entries _maps_firstValidMoveIndex];
    }

    v10 = _maps_firstValidMoveIndex;

    destinationIndexPath = [coordinatorCopy destinationIndexPath];
    item = [destinationIndexPath item];

    if (item > [(HomeOutlineFavoritesSectionController *)self _headerNodeCount])
    {
      item -= [(HomeOutlineFavoritesSectionController *)self _headerNodeCount];
    }

    if (item > v10)
    {
      v10 = item;
    }

    localObject = [dragItem localObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = localObject;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    itemSnapshot = [v15 itemSnapshot];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = itemSnapshot;
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
        _entries2 = [(HomeOutlineFavoritesSectionController *)self _entries];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100CA2CA4;
        v25[3] = &unk_10165D300;
        v21 = v26;
        v26[0] = v19;
        v26[1] = self;
        [v26[0] moveToIndex:v10 with:_entries2 completion:v25];
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

      [(HomeOutlineFavoritesSectionController *)self _animateMoveOfShortcut:v19 toIndex:v10 dropCoordinator:coordinatorCopy];
    }
  }
}

- (int64_t)_firstValidMoveIndexForFavorites:(id)favorites
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  favoritesCopy = favorites;
  v4 = [favoritesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(favoritesCopy);
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
      v5 = [favoritesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)_isMoveOperationWithDropSession:(id)session
{
  sessionCopy = session;
  localDragSession = [sessionCopy localDragSession];
  localContext = [localDragSession localContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = localContext;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  items = [sessionCopy items];

  firstObject = [items firstObject];
  localObject = [firstObject localObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = localObject;
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

  windowScene = [v8 windowScene];
  configuration = [(HomeOutlineSectionController *)self configuration];
  collectionView = [configuration collectionView];
  window = [collectionView window];
  windowScene2 = [window windowScene];
  if (windowScene == windowScene2)
  {
    v19 = 1;
  }

  else
  {
    v19 = [windowScene isEqual:windowScene2];
  }

  LOBYTE(windowScene) = 0;
  if (v19 && v13)
  {
    itemSnapshot = [v13 itemSnapshot];
    identifierPath = [itemSnapshot identifierPath];
    firstIdentifier = [identifierPath firstIdentifier];
    configuration2 = [(HomeOutlineSectionController *)self configuration];
    sectionIdentifier = [configuration2 sectionIdentifier];
    v25 = sectionIdentifier;
    if (firstIdentifier == sectionIdentifier)
    {
    }

    else
    {
      v26 = [firstIdentifier isEqual:sectionIdentifier];

      if ((v26 & 1) == 0)
      {
LABEL_15:
        LOBYTE(windowScene) = 0;
        goto LABEL_30;
      }
    }

    itemSnapshot2 = [v13 itemSnapshot];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = itemSnapshot2;
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
      type = [v30 type];
      if (type >= 6)
      {
LABEL_28:
        LOBYTE(windowScene) = 1;
        goto LABEL_29;
      }

      LODWORD(windowScene) = 0x13u >> type;
LABEL_29:

      goto LABEL_30;
    }

    LOBYTE(windowScene) = 0;
    goto LABEL_29;
  }

LABEL_30:

  return windowScene & 1;
}

- (BOOL)_shouldShowAccessoryForFavorite:(id)favorite
{
  favoriteCopy = favorite;
  if ([favoriteCopy type] == 6 && (objc_msgSend(favoriteCopy, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"NearbyTransit"), v4, (v5 & 1) != 0))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [favoriteCopy isSetupPlaceholder] ^ 1;
  }

  return v6;
}

- (BOOL)_accessoryVisiblityForFavorite:(id)favorite
{
  favoriteCopy = favorite;
  v5 = favoriteCopy;
  if (self->_shortcutEditSession)
  {
    identifier = [favoriteCopy identifier];
    shortcut = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
    identifier2 = [shortcut identifier];
    if (identifier == identifier2 || [identifier isEqual:identifier2])
    {
      type = [v5 type];
      shortcut2 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
      v11 = type != [shortcut2 type];
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

- (BOOL)_accessoryVisiblityForEntry:(id)entry
{
  entryCopy = entry;
  meCard = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
  v6 = [meCard _maps_shortcutForSuggestionsEntry:entryCopy];

  if (self->_shortcutEditSession)
  {
    identifier = [v6 identifier];
    shortcut = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
    identifier2 = [shortcut identifier];
    if (identifier == identifier2 || [identifier isEqual:identifier2])
    {
      [entryCopy type];
      v10 = MapsSuggestionsShortcutTypeFromEntryType();
      shortcut2 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
      v12 = v10 != [shortcut2 type];
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

    delegate = [(HomeOutlineSectionController *)self delegate];
    [delegate sectionController:self setNeedsApplySnapshotAnimated:1];
  }
}

- (void)_startEditSessionForShortcut:(id)shortcut sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  shortcutCopy = shortcut;
  viewCopy = view;
  if (!self->_shortcutEditSession)
  {
    v13 = [ShortcutEditSession editSessionWithShortcut:shortcutCopy];
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

    configuration = [(HomeOutlineSectionController *)self configuration];
    actionCoordinator = [configuration actionCoordinator];
    configuration2 = [(HomeOutlineSectionController *)self configuration];
    homeActionDelegate = [configuration2 homeActionDelegate];
    homeContaineeViewController = [homeActionDelegate homeContaineeViewController];
    [actionCoordinator viewController:homeContaineeViewController editShortcut:self->_shortcutEditSession sourceView:viewCopy sourceRect:{x, y, width, height}];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

- (void)sectionHeaderOutlineCell:(id)cell accessoryTypeTapped:(int64_t)tapped
{
  if (tapped == 2)
  {
    [(HomeOutlineFavoritesSectionController *)self _addFavorite];
  }
}

- (void)twoLinesOutlineCell:(id)cell accessoryViewTapped:(id)tapped accessoryModel:(id)model
{
  cellCopy = cell;
  tappedCopy = tapped;
  cellModel = [cellCopy cellModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    cellModel2 = [cellCopy cellModel];
    entry = [cellModel2 entry];
    meCard = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    v13 = [meCard _maps_shortcutForSuggestionsEntry:entry];

    if (!v13)
    {
LABEL_7:

      goto LABEL_8;
    }

    [tappedCopy bounds];
    [(HomeOutlineFavoritesSectionController *)self _startEditSessionForShortcut:v13 sourceView:tappedCopy sourceRect:?];
  }

  cellModel3 = [cellCopy cellModel];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  cellModel2 = [cellCopy cellModel];
  item = [cellModel2 item];
  if (item)
  {
    entry = item;
    [tappedCopy bounds];
    [(HomeOutlineFavoritesSectionController *)self _startEditSessionForShortcut:entry sourceView:tappedCopy sourceRect:?];
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
}

- (void)_addFavorite
{
  configuration = [(HomeOutlineSectionController *)self configuration];
  actionCoordinator = [configuration actionCoordinator];
  configuration2 = [(HomeOutlineSectionController *)self configuration];
  homeActionDelegate = [configuration2 homeActionDelegate];
  homeContaineeViewController = [homeActionDelegate homeContaineeViewController];
  v8 = +[ShortcutEditSession addSession];
  [actionCoordinator viewController:homeContaineeViewController showAddShortcut:v8];

  [GEOAPPortal captureUserAction:2044 target:8 value:0];
}

- (BOOL)_shouldShowAddButtonForItemSnapshots:(id)snapshots
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  snapshotsCopy = snapshots;
  v5 = [snapshotsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(snapshotsCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        deletions = [(HomeOutlineSectionController *)self deletions];
        identifierPath = [v9 identifierPath];
        v12 = [deletions objectForKeyedSubscript:identifierPath];

        if (!v12)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v6 = [snapshotsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)shareItemSourceForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  viewModel = [snapshotCopy viewModel];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = viewModel;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    item = [v8 item];

    if (!item)
    {
      goto LABEL_15;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = viewModel;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    entry = [v11 entry];

    if (!entry)
    {
      item = 0;
      goto LABEL_15;
    }

    meCard = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    item = [meCard _maps_shortcutForSuggestionsEntry:entry];
  }

  if (([item isSetupPlaceholder] & 1) == 0)
  {
    geoMapItem = [item geoMapItem];
    v15 = [[MKMapItem alloc] initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];
    v16 = [[SearchResult alloc] initWithMapItem:v15];
    unknownContact = [(SearchResult *)v16 unknownContact];
    v18 = [ShareItem shareItemWithSearchResult:v16 contact:unknownContact includePrintActivity:1];

    goto LABEL_16;
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)_openSnapshot:(id)snapshot inNewTab:(BOOL)tab
{
  snapshotCopy = snapshot;
  v6 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  viewModel = [snapshotCopy viewModel];

  if (v6)
  {
    item = [viewModel item];
    [item mapItemStorage];
  }

  else
  {
    item = [viewModel entry];
    [item geoMapItem];
  }
  v9 = ;

  v10 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.NewWindow"];
  [v10 setEligibleForHandoff:0];
  configuration = [(HomeOutlineSectionController *)self configuration];
  homeActionDelegate = [configuration homeActionDelegate];
  homeContaineeViewController = [homeActionDelegate homeContaineeViewController];
  _maps_mapsSceneDelegate = [homeContaineeViewController _maps_mapsSceneDelegate];
  v15 = [_maps_mapsSceneDelegate mapsActivityWithFidelity:2];

  [v15 setPresentedMapItem:v9];
  data = [v15 data];
  bzip2CompressedData = [data bzip2CompressedData];

  if (bzip2CompressedData)
  {
    v25 = @"bs";
    v26 = bzip2CompressedData;
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v10 setUserInfo:v18];
  }

  v19 = objc_alloc_init(UISceneActivationRequestOptions);
  configuration2 = [(HomeOutlineSectionController *)self configuration];
  homeActionDelegate2 = [configuration2 homeActionDelegate];
  homeContaineeViewController2 = [homeActionDelegate2 homeContaineeViewController];
  _maps_uiScene = [homeContaineeViewController2 _maps_uiScene];
  [v19 setRequestingScene:_maps_uiScene];

  v24 = +[UIApplication sharedApplication];
  [v24 requestSceneSessionActivation:0 userActivity:v10 options:v19 errorHandler:0];
}

- (void)_editEntrySnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v4 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  viewModel = [snapshotCopy viewModel];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = viewModel;
    }

    else
    {
      v6 = 0;
    }

    entry = v6;

    item = [entry item];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = viewModel;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    entry = [v10 entry];

    if (!entry)
    {
      goto LABEL_25;
    }

    meCard = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    item = [meCard _maps_shortcutForSuggestionsEntry:entry];
  }

  if (item)
  {
    delegate = [(HomeOutlineSectionController *)self delegate];
    identifierPath = [snapshotCopy identifierPath];
    v14 = [delegate sectionController:self indexPathForIdentifierPath:identifierPath];

    if (v14)
    {
      configuration = [(HomeOutlineSectionController *)self configuration];
      collectionView = [configuration collectionView];
      v17 = [collectionView cellForItemAtIndexPath:v14];

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
        trailingAccessoryConfigurations = [v19 trailingAccessoryConfigurations];
        firstObject = [trailingAccessoryConfigurations firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = firstObject;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        if (v23)
        {
          customView = [v23 customView];
          customView2 = [v23 customView];
          [customView2 bounds];
          [(HomeOutlineFavoritesSectionController *)self _startEditSessionForShortcut:item sourceView:customView sourceRect:?];
        }
      }
    }
  }

LABEL_25:
}

- (id)contextMenuForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  viewModel = [snapshotCopy viewModel];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = viewModel;
    }

    else
    {
      v7 = 0;
    }

    entry = v7;

    item = [entry item];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = viewModel;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    entry = [v11 entry];

    if (!entry)
    {
      goto LABEL_14;
    }

    meCard = [(MeCardDataProvider *)self->_meCardDataProvider meCard];
    item = [meCard _maps_shortcutForSuggestionsEntry:entry];
  }

  if (!item)
  {
LABEL_14:
    v18 = 0;
    goto LABEL_23;
  }

  v13 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  if ([item isSetupPlaceholder])
  {
    v14 = v56;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100CA49C0;
    v56[3] = &unk_101661340;
    v41 = &v57;
    objc_copyWeak(&v57, &location);
    v56[4] = snapshotCopy;
    v15 = sub_100C64B44(v56);
    v63 = v15;
    v16 = [NSArray arrayWithObjects:&v63 count:1];
    v17 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v16];

    [v13 addObject:v17];
  }

  else
  {
    if ([item type] != 6)
    {
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100CA4A60;
      v51[3] = &unk_101661340;
      v41 = &v53;
      objc_copyWeak(&v53, &location);
      v21 = snapshotCopy;
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
    v54[4] = snapshotCopy;
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
  delegate = [(HomeOutlineSectionController *)self delegate];
  sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
  v5 = [delegate sectionController:self indexPathForIdentifierPath:sectionIdentifierPath];

  configuration = [(HomeOutlineSectionController *)self configuration];
  collectionView = [configuration collectionView];
  v8 = [collectionView cellForItemAtIndexPath:v5];

  if (v8)
  {
    sectionIdentifierPath2 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    [(HomeOutlineSectionController *)self expandElementAtIdentifierPath:sectionIdentifierPath2];

    v10 = v8;
  }

  return v8;
}

- (NSArray)itemSnapshots
{
  shortcutsForMapsHome = [(MapsFavoritesManager *)self->_favoritesDataProvider shortcutsForMapsHome];
  v4 = [NSMutableArray arrayWithArray:shortcutsForMapsHome];

  configuration = [(HomeOutlineSectionController *)self configuration];
  sectionIdentifier = [configuration sectionIdentifier];
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
  v7 = [HomeOutlineSectionBuilder itemSnapshotsWithItems:v4 sectionIdentifier:sectionIdentifier sectionExpanded:[(HomeOutlineSectionController *)self expanded] itemIdentifierBlock:v21 viewModelBlock:v20 childItemsBlock:&stru_101650090 expandedBlock:&stru_1016500B0];

  if ([(HomeOutlineFavoritesSectionController *)self _shouldShowAddButtonForItemSnapshots:v7])
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"[Proactive Tray Mac] Add Pin" value:@"localized string not found" table:0];

    v10 = [SmallButtonOutlineCellModel alloc];
    v11 = [UIImage systemImageNamed:@"plus.circle"];
    v12 = [UIImage systemImageNamed:@"plus.circle.fill"];
    v13 = [(SmallButtonOutlineCellModel *)v10 initWithStyle:1 title:v9 image:v11 hoverImage:v12 delegate:self];

    v14 = [MapsUIDiffableDataSourceOutlineNodeSnapshot alloc];
    sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v16 = [sectionIdentifierPath identifierPathByAppendingIdentifier:@"AddButtonIdentifier"];
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

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  updateCopy = update;
  v5 = sub_1000410AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = updateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "home Data ProvidingObject Did Update: %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = HomeOutlineFavoritesSectionController;
  [(HomeOutlineSectionController *)&v6 homeDataProvidingObjectDidUpdate:updateCopy];
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

- (HomeOutlineFavoritesSectionController)initWithConfiguration:(id)configuration favoritesDataProvider:(id)provider libraryCountsDataProvider:(id)dataProvider
{
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  v18.receiver = self;
  v18.super_class = HomeOutlineFavoritesSectionController;
  v11 = [(HomeOutlineSectionController *)&v18 initWithConfiguration:configuration];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_favoritesDataProvider, provider);
    objc_storeStrong(&v12->_libraryCountsDataProvider, dataProvider);
    v13 = +[NSMutableArray array];
    dropShortcutEditSessions = v12->_dropShortcutEditSessions;
    v12->_dropShortcutEditSessions = v13;

    v15 = +[NSMutableArray array];
    deleteShortcutEditSessions = v12->_deleteShortcutEditSessions;
    v12->_deleteShortcutEditSessions = v15;
  }

  return v12;
}

- (HomeOutlineFavoritesSectionController)initWithConfiguration:(id)configuration suggestionsDataProvider:(id)provider
{
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = HomeOutlineFavoritesSectionController;
  v8 = [(HomeOutlineSectionController *)&v19 initWithConfiguration:configuration];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_suggestionsDataProvider, provider);
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