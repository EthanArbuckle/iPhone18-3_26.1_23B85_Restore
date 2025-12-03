@interface AEExplorerViewController
- (AEExplorerViewController)initWithPackageTransport:(id)transport mediaProvider:(id)provider dataSourceManager:(id)manager additionalGestureRecognizers:(id)recognizers;
- (AEExplorerViewControllerDelegate)delegate;
- (BOOL)confirmAsset:(id)asset matchesView:(id)view;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)layout:(id)layout shouldShowCloudDecorationAtIndexPath:(PXSimpleIndexPath *)path;
- (BOOL)layout:(id)layout shouldShowLoopDecorationAtIndexPath:(PXSimpleIndexPath *)path;
- (BOOL)layout:(id)layout shouldShowVideoDecorationAtIndexPath:(PXSimpleIndexPath *)path;
- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout;
- (CGSize)_maximumThumbnailSize;
- (id)_createNewLayoutForDataSource:(id)source;
- (id)_currentDataSource;
- (id)_stagedAssetUUIDs;
- (id)_thumbnailResourcesIndexSetForAssets:(id)assets;
- (id)_validateAssetReference:(id)reference forScrollViewPoint:(CGPoint)point;
- (id)contentAssetReferenceAtPoint:(CGPoint)point outContentFrame:(CGRect *)frame;
- (id)prepareForPhotoLibraryChange:(id)change;
- (id)scrollView;
- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change;
- (id)tilingController:(id)controller transitionAnimationCoordinatorForChange:(id)change;
- (int64_t)_currentLayoutStyle;
- (int64_t)_layoutStyleForSize:(CGSize)size;
- (void)_addThumbnailIndexes:(id)indexes;
- (void)_attachGestureRecognizersIfNeeded:(void *)needed;
- (void)_cancelExpectedAssetUUIDs:(id)ds;
- (void)_computeInitialResourcesIndexSetAsync;
- (void)_configureReviewControllerWithAssetReference:(id)reference;
- (void)_dismissReviewScreenViewController;
- (void)_handleInProgressPackageGenerator:(id)generator suppressLivePhotoContent:(BOOL)content mediaOrigin:(int64_t)origin completionHandler:(id)handler;
- (void)_handleTransportStagingUpdateWithDataSource:(id)source;
- (void)_immediatelyGenerateAndStagePackageFromReviewAsset:(id)asset suppressLivePhoto:(BOOL)photo mediaOrigin:(int64_t)origin;
- (void)_presentConfidentialityAlertWithConfirmAction:(id)action abortAction:(id)abortAction;
- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d;
- (void)assetsScene:(id)scene willTransitionToDataSource:(id)source;
- (void)associateAsset:(id)asset withTile:(void *)tile;
- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)dealloc;
- (void)handleLongPress:(id)press;
- (void)handleTap:(id)tap;
- (void)loadView;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillLayoutSubviews;
@end

@implementation AEExplorerViewController

- (BOOL)confirmAsset:(id)asset matchesView:(id)view
{
  v20 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v6 = viewCopy;
  v7 = 0;
  if (asset && viewCopy)
  {
    assetCopy = asset;
    associatedAssetUUID = [v6 associatedAssetUUID];
    uuid = [assetCopy uuid];

    v7 = [uuid isEqualToString:associatedAssetUUID];
    if ((v7 & 1) == 0)
    {
      v11 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v14 = 138543874;
        v15 = uuid;
        v16 = 2114;
        v17 = v6;
        v18 = 2114;
        v19 = associatedAssetUUID;
        _os_log_impl(&dword_2411DE000, v11, OS_LOG_TYPE_FAULT, "Outgoing asset mismatch. Tried to confirm asset with UUID %{public}@ but view (=%{public}@)'s associated asset UUID is %{public}@", &v14, 0x20u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)associateAsset:(id)asset withTile:(void *)tile
{
  if (asset)
  {
    assetCopy = asset;
    view = [tile view];
    uuid = [assetCopy uuid];

    [view setAssociatedAssetUUID:uuid];
  }
}

- (AEExplorerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier
{
  _sceneController = [(AEExplorerViewController *)self _sceneController];
  v8 = *&identifier->var1[5];
  v18 = *&identifier->var1[3];
  v19 = v8;
  v20 = *&identifier->var1[7];
  v21 = identifier->var1[9];
  v9 = *&identifier->var1[1];
  v16 = *&identifier->var0;
  v17 = v9;
  if ([_sceneController providesTileForIdentifier:&v16])
  {
    v10 = *&identifier->var1[5];
    v18 = *&identifier->var1[3];
    v19 = v10;
    v20 = *&identifier->var1[7];
    v21 = identifier->var1[9];
    v11 = *&identifier->var1[1];
    v16 = *&identifier->var0;
    v17 = v11;
    [_sceneController checkInTile:tile withIdentifier:&v16];
  }

  else
  {
    tileCopy = tile;
    if (identifier->var1[0] == 795209731)
    {
      viewTileReusePool = [_sceneController viewTileReusePool];
      [viewTileReusePool checkInReusableObject:tileCopy];
    }

    view = [tileCopy view];
    [view removeFromSuperview];

    _tilesInUse = [(AEExplorerViewController *)self _tilesInUse];
    [_tilesInUse removeObject:tileCopy];
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  layoutCopy = layout;
  _sceneController = [(AEExplorerViewController *)self _sceneController];
  v8 = identifier->var1[1];
  v9 = identifier->var1[2];
  v11 = identifier->var1[3];
  v10 = identifier->var1[4];
  if (v8 != *MEMORY[0x277D3CF78] && v11 != 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    dataSource = [layoutCopy dataSource];
    *&v32 = v8;
    *(&v32 + 1) = v9;
    *&v33 = v11;
    *(&v33 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    v14 = [dataSource assetAtItemIndexPath:&v32];
  }

  else
  {
    v14 = 0;
  }

  v16 = *&identifier->var1[5];
  v34 = *&identifier->var1[3];
  v35 = v16;
  v36 = *&identifier->var1[7];
  v37 = identifier->var1[9];
  v17 = *&identifier->var1[1];
  v32 = *&identifier->var0;
  v33 = v17;
  if ([_sceneController providesTileForIdentifier:&v32])
  {
    v18 = *&identifier->var1[5];
    v34 = *&identifier->var1[3];
    v35 = v18;
    v36 = *&identifier->var1[7];
    v37 = identifier->var1[9];
    v19 = *&identifier->var1[1];
    v32 = *&identifier->var0;
    v33 = v19;
    v20 = [_sceneController checkOutTileForIdentifier:&v32 layout:layoutCopy];
    if (identifier->var0 == 5 && identifier->var1[0] == *MEMORY[0x277D3CC58])
    {
      [(AEExplorerViewController *)self _attachGestureRecognizersIfNeeded:v20];
    }

    [(AEExplorerViewController *)self associateAsset:v14 withTile:v20];
  }

  else
  {
    v21 = identifier->var1[0];
    v31 = layoutCopy;
    if (v21 == 795209731)
    {
      viewTileReusePool = [_sceneController viewTileReusePool];
      v20 = [viewTileReusePool checkOutReusableObjectWithReuseIdentifier:795209736];
    }

    else
    {
      if (v21 != 112112321)
      {
        abort();
      }

      _progressModel = [(AEExplorerViewController *)self _progressModel];
      progressSnapshot = [_progressModel progressSnapshot];
      *&v32 = v8;
      *(&v32 + 1) = v9;
      *&v33 = v11;
      *(&v33 + 1) = v10;
      viewTileReusePool = [progressSnapshot progressForIndexPath:&v32];

      v25 = [AEProgressIndicatorView alloc];
      v26 = [(AEProgressIndicatorView *)v25 initWithFrame:viewTileReusePool progress:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      v20 = [[AEGenericViewTile alloc] initWithView:v26];
    }

    _tilesInUse = [(AEExplorerViewController *)self _tilesInUse];
    [_tilesInUse addObject:v20];

    _scrollViewController = [(AEExplorerViewController *)self _scrollViewController];
    view = [(AEGenericViewTile *)v20 view];
    [_scrollViewController ae_ensureSubview:view];

    [(AEExplorerViewController *)self associateAsset:v14 withTile:v20];
    layoutCopy = v31;
  }

  return v20;
}

- (void)_attachGestureRecognizersIfNeeded:(void *)needed
{
  v20 = *MEMORY[0x277D85DE8];
  view = [needed view];
  gestureRecognizers = [view gestureRecognizers];
  v6 = [gestureRecognizers count];

  if (!v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
    [v7 setNumberOfTapsRequired:1];
    [v7 setDelegate:self];
    [view addGestureRecognizer:v7];
    v8 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleLongPress_];
    [view addGestureRecognizer:v8];
    [view setUserInteractionEnabled:1];
    _clientGestureRecognizers = [(AEExplorerViewController *)self _clientGestureRecognizers];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [_clientGestureRecognizers countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(_clientGestureRecognizers);
          }

          [*(*(&v15 + 1) + 8 * v13++) requireGestureRecognizerToFail:v8];
        }

        while (v11 != v13);
        v11 = [_clientGestureRecognizers countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)tilingController:(id)controller transitionAnimationCoordinatorForChange:(id)change
{
  changeCopy = change;
  controllerCopy = controller;
  _sceneController = [(AEExplorerViewController *)self _sceneController];
  v9 = [_sceneController tilingController:controllerCopy transitionAnimationCoordinatorForChange:changeCopy];

  _currentDataSource = [(AEExplorerViewController *)self _currentDataSource];
  v11 = [(AEExplorerViewController *)self _createNewLayoutForDataSource:_currentDataSource];

  v12 = [[AEDelegatingTransitionAnimationCoordinator alloc] initWithWrappedCoordinator:v9];
  [(AEDelegatingTransitionAnimationCoordinator *)v12 setEnableDoubleSidedAnimations:0];

  return v12;
}

- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change
{
  changeCopy = change;
  controllerCopy = controller;
  _sceneController = [(AEExplorerViewController *)self _sceneController];
  v9 = [_sceneController tilingController:controllerCopy tileIdentifierConverterForChange:changeCopy];

  return v9;
}

- (BOOL)layout:(id)layout shouldShowCloudDecorationAtIndexPath:(PXSimpleIndexPath *)path
{
  layoutCopy = layout;
  if ([(AEExplorerViewController *)self _fakeAllCloudAndVideo])
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    _missingThumbnailAssetIndexes = [(AEExplorerViewController *)self _missingThumbnailAssetIndexes];
    v9 = _missingThumbnailAssetIndexes;
    if (_missingThumbnailAssetIndexes && [_missingThumbnailAssetIndexes containsIndex:path->item])
    {
      progressSnapshot = [layoutCopy progressSnapshot];
      v11 = *&path->item;
      v13[0] = *&path->dataSourceIdentifier;
      v13[1] = v11;
      v7 = [progressSnapshot hasProgressForIndexPath:v13] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)layout:(id)layout shouldShowLoopDecorationAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSource = [layout dataSource];
  v6 = *&path->item;
  v11[0] = *&path->dataSourceIdentifier;
  v11[1] = v6;
  v7 = [dataSource assetAtItemIndexPath:v11];
  if (layout_shouldShowLoopDecorationAtIndexPath__onceToken != -1)
  {
    dispatch_once(&layout_shouldShowLoopDecorationAtIndexPath__onceToken, &__block_literal_global_304);
  }

  v8 = [v7 playbackStyle] == 5;
  v9 = layout_shouldShowLoopDecorationAtIndexPath__canShowLoopBadges;

  return v8 & v9;
}

void __71__AEExplorerViewController_layout_shouldShowLoopDecorationAtIndexPath___block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  layout_shouldShowLoopDecorationAtIndexPath__canShowLoopBadges = [v0 BOOLForKey:@"AssetExplorer_ShowLoopBadges"];
}

- (BOOL)layout:(id)layout shouldShowVideoDecorationAtIndexPath:(PXSimpleIndexPath *)path
{
  layoutCopy = layout;
  if ([(AEExplorerViewController *)self _fakeAllCloudAndVideo])
  {
    v7 = 1;
  }

  else
  {
    dataSource = [layoutCopy dataSource];
    v9 = *&path->item;
    v12[0] = *&path->dataSourceIdentifier;
    v12[1] = v9;
    v10 = [dataSource assetAtItemIndexPath:v12];
    v7 = [v10 playbackStyle] == 4;
  }

  return v7;
}

- (void)_computeInitialResourcesIndexSetAsync
{
  if (_computeInitialResourcesIndexSetAsync_predicate != -1)
  {
    dispatch_once(&_computeInitialResourcesIndexSetAsync_predicate, &__block_literal_global_301);
  }

  _dataSourceManager = [(AEExplorerViewController *)self _dataSourceManager];
  photosDataSource = [_dataSourceManager photosDataSource];
  v5 = [photosDataSource assetsInSection:0];
  fetchedObjects = [v5 fetchedObjects];

  if ([fetchedObjects count])
  {
    v7 = [fetchedObjects count];
    v8 = 0;
    if (v7 >= 5)
    {
      v9 = 5;
    }

    else
    {
      v9 = v7;
    }

    do
    {
      v10 = &v8[v9];
      if (&v8[v9] > [fetchedObjects count])
      {
        break;
      }

      v11 = [fetchedObjects subarrayWithRange:{v8, v9}];
      objc_initWeak(&location, self);
      v12 = _computeInitialResourcesIndexSetAsync__serialQueue;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __65__AEExplorerViewController__computeInitialResourcesIndexSetAsync__block_invoke_2;
      v17[3] = &unk_278CC7528;
      objc_copyWeak(v19, &location);
      v13 = v11;
      v18 = v13;
      v19[1] = v8;
      dispatch_async(v12, v17);
      v14 = [fetchedObjects count];
      if (v10 < v14)
      {
        v15 = [fetchedObjects count];
        v16 = v9 + v9;
        if (v16 >= (v15 - v10))
        {
          v16 = (v15 - v10);
        }

        v9 = v16;
        v8 = v10;
      }

      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }

    while (v10 < v14);
  }
}

void __65__AEExplorerViewController__computeInitialResourcesIndexSetAsync__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _thumbnailResourcesIndexSetForAssets:*(a1 + 32)];

  if (*(a1 + 48))
  {
    v4 = [v3 mutableCopy];
    [v4 shiftIndexesStartingAtIndex:0 by:*(a1 + 48)];

    v3 = v4;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__AEExplorerViewController__computeInitialResourcesIndexSetAsync__block_invoke_3;
  v6[3] = &unk_278CC7500;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v8);
}

void __65__AEExplorerViewController__computeInitialResourcesIndexSetAsync__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addThumbnailIndexes:*(a1 + 32)];
}

uint64_t __65__AEExplorerViewController__computeInitialResourcesIndexSetAsync__block_invoke()
{
  _computeInitialResourcesIndexSetAsync__serialQueue = dispatch_queue_create("AEExplorerViewControllerSerialQueue", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)_addThumbnailIndexes:(id)indexes
{
  indexesCopy = indexes;
  _missingThumbnailAssetIndexes = [(AEExplorerViewController *)self _missingThumbnailAssetIndexes];
  v6 = [_missingThumbnailAssetIndexes mutableCopy];
  v7 = v6;
  if (v6)
  {
    indexSet = v6;
  }

  else
  {
    indexSet = [MEMORY[0x277CCAB58] indexSet];
  }

  v10 = indexSet;

  [v10 addIndexes:indexesCopy];
  [(AEExplorerViewController *)self _setMissingThumbnailAssetIndexes:v10];
  currentLayout = [(PXTilingController *)self->__tilingController currentLayout];
  [currentLayout invalidateLayout];
}

- (id)_thumbnailResourcesIndexSetForAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    v4 = [MEMORY[0x277CD9980] indexesForAssetsWithoutThumbnails:assetsCopy requestType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)prepareForPhotoLibraryChange:(id)change
{
  changeCopy = change;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1081;
  v20 = __Block_byref_object_dispose__1082;
  v21 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__AEExplorerViewController_prepareForPhotoLibraryChange___block_invoke;
  block[3] = &unk_278CC74B8;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v5 = [changeCopy changeDetailsForFetchResult:v17[5]];
  v6 = v5;
  if (v5)
  {
    fetchResultAfterChanges = [v5 fetchResultAfterChanges];
    fetchedObjects = [fetchResultAfterChanges fetchedObjects];
    v9 = [(AEExplorerViewController *)self _thumbnailResourcesIndexSetForAssets:fetchedObjects];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__AEExplorerViewController_prepareForPhotoLibraryChange___block_invoke_2;
    v13[3] = &unk_278CC76A8;
    v13[4] = self;
    v14 = v9;
    v10 = v9;
    v11 = MEMORY[0x277D85CD0];
    dispatch_sync(MEMORY[0x277D85CD0], v13);
  }

  _Block_object_dispose(&v16, 8);
  return 0;
}

void __57__AEExplorerViewController_prepareForPhotoLibraryChange___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _dataSourceManager];
  v2 = [v6 photosDataSource];
  v3 = [v2 assetsInSection:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)assetsScene:(id)scene willTransitionToDataSource:(id)source
{
  v5 = [(AEExplorerViewController *)self _pendingMissingThumbnailAssetIndexes:scene];
  if (v5)
  {
    [(AEExplorerViewController *)self _setMissingThumbnailAssetIndexes:v5];
    [(AEExplorerViewController *)self _setPendingMissingThumbnailAssetIndexes:0];
  }

  MEMORY[0x2821F96F8]();
}

- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout
{
  layoutCopy = layout;
  controllerCopy = controller;
  _sceneController = [(AEExplorerViewController *)self _sceneController];
  [_sceneController tilingController:controllerCopy initialVisibleOriginForLayout:layoutCopy];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (AEExplorerViewControllerProgressViewModelObserverContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_10;
    }

    v15 = observableCopy;
    _tilingController = [(AEExplorerViewController *)self _tilingController];
    targetLayout = [_tilingController targetLayout];

    dataSource = [targetLayout dataSource];
    identifier = [dataSource identifier];

    _progressModel = [(AEExplorerViewController *)self _progressModel];
    progressSnapshot = [_progressModel progressSnapshot];

    if ([progressSnapshot correspondingDataSourceIdentifier] == identifier)
    {
      [targetLayout setProgressSnapshot:progressSnapshot];
    }

    goto LABEL_9;
  }

  if ((changeCopy & 1) != 0 && AEExplorerViewControllerPackageTransportObserverContext == context)
  {
    v15 = observableCopy;
    targetLayout = [(AEExplorerViewController *)self _currentDataSource];
    [(AEExplorerViewController *)self _handleTransportStagingUpdateWithDataSource:targetLayout];
LABEL_9:

    observableCopy = v15;
  }

LABEL_10:
}

- (void)_handleTransportStagingUpdateWithDataSource:(id)source
{
  v31 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  [sourceCopy identifier];
  v20 = sourceCopy;
  photosDataSource = [sourceCopy photosDataSource];
  _sceneController = [(AEExplorerViewController *)self _sceneController];
  selectionManager = [_sceneController selectionManager];

  _packageTransport = [(AEExplorerViewController *)self _packageTransport];
  orderedStagedIdentifiers = [_packageTransport orderedStagedIdentifiers];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [orderedStagedIdentifiers countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    indexPathSet = 0;
    v11 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(orderedStagedIdentifiers);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        indexPathForFirstAsset = [photosDataSource indexPathForFirstAsset];
        v15 = [photosDataSource indexPathForAssetWithUUID:v13 orBurstIdentifier:0 hintIndexPath:indexPathForFirstAsset hintCollection:0];

        if (v15)
        {
          if (!indexPathSet)
          {
            indexPathSet = [MEMORY[0x277D3CD78] indexPathSet];
          }

          v24 = 0u;
          v25 = 0u;
          PXSimpleIndexPathFromIndexPath();
          v23[0] = v24;
          v23[1] = v25;
          [indexPathSet addIndexPath:v23];
        }
      }

      v9 = [orderedStagedIdentifiers countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  else
  {
    indexPathSet = 0;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__AEExplorerViewController__handleTransportStagingUpdateWithDataSource___block_invoke;
  v21[3] = &unk_278CC7490;
  v22 = indexPathSet;
  v16 = indexPathSet;
  [selectionManager performChanges:v21];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)contentAssetReferenceAtPoint:(CGPoint)point outContentFrame:(CGRect *)frame
{
  y = point.y;
  x = point.x;
  _scrollViewController = [(AEExplorerViewController *)self _scrollViewController];
  scrollView = [_scrollViewController scrollView];

  _scrollViewController2 = [(AEExplorerViewController *)self _scrollViewController];
  contentCoordinateSpace = [_scrollViewController2 contentCoordinateSpace];

  _tilingController = [(AEExplorerViewController *)self _tilingController];
  [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{x, y}];
  v36 = 0;
  v37 = &v36;
  v38 = 0xE010000000;
  v39 = "";
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v35 = 0;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __73__AEExplorerViewController_contentAssetReferenceAtPoint_outContentFrame___block_invoke;
  v29[3] = &unk_278CC7468;
  v29[4] = &v36;
  if (_tilingController && (v13 = *MEMORY[0x277D3CF88], v14 = *(MEMORY[0x277D3CF88] + 8), v15 = *(MEMORY[0x277D3CF88] + 16), v16 = *(MEMORY[0x277D3CF88] + 24), [_tilingController hitTestTileAtPoint:v29 padding:? passingTest:?], v30))
  {
    v26 = v31;
    v27 = v32;
    currentLayout = [_tilingController currentLayout];
    dataSource = [currentLayout dataSource];
    v28[0] = v26;
    v28[1] = v27;
    v19 = [dataSource assetReferenceAtItemIndexPath:v28];
    if (frame)
    {
      [contentCoordinateSpace convertRect:scrollView toCoordinateSpace:{v37[4], v37[5], v37[6], v37[7]}];
      frame->origin.x = v20;
      frame->origin.y = v21;
      frame->size.width = v22;
      frame->size.height = v23;
    }

    v24 = [(AEExplorerViewController *)self _validateAssetReference:v19 forScrollViewPoint:x, y];
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(&v36, 8);

  return v24;
}

uint64_t __73__AEExplorerViewController_contentAssetReferenceAtPoint_outContentFrame___block_invoke(uint64_t a1, void *a2, uint64_t a3, __int128 *a4)
{
  if (*a2 != 5 || a2[1] != *MEMORY[0x277D3CC58])
  {
    return 0;
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = a4[7];
  v7 = a4[4];
  v6 = a4[5];
  v4[8] = a4[6];
  v4[9] = v5;
  v4[6] = v7;
  v4[7] = v6;
  v8 = a4[11];
  v10 = a4[8];
  v9 = a4[9];
  v4[12] = a4[10];
  v4[13] = v8;
  v4[10] = v10;
  v4[11] = v9;
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[3];
  v4[4] = a4[2];
  v4[5] = v13;
  v4[2] = v11;
  v4[3] = v12;
  return 1;
}

- (id)_validateAssetReference:(id)reference forScrollViewPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  referenceCopy = reference;
  v8 = referenceCopy;
  if (referenceCopy)
  {
    asset = [referenceCopy asset];
    _scrollViewController = [(AEExplorerViewController *)self _scrollViewController];
    scrollView = [_scrollViewController scrollView];

    window = [scrollView window];
    [window convertPoint:scrollView fromView:{x, y}];
    v13 = [window hitTest:0 withEvent:?];
    [(AEExplorerViewController *)self confirmAsset:asset matchesView:v13];
    v14 = v8;
  }

  return v8;
}

- (id)_createNewLayoutForDataSource:(id)source
{
  sourceCopy = source;
  _currentLayoutStyle = [(AEExplorerViewController *)self _currentLayoutStyle];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];

  v8 = [[AESceneGroupedTilingLayout alloc] initWithDataSource:sourceCopy layoutStyle:_currentLayoutStyle orientation:statusBarOrientation];
  _progressModel = [(AEExplorerViewController *)self _progressModel];
  progressSnapshot = [_progressModel progressSnapshot];

  correspondingDataSourceIdentifier = [progressSnapshot correspondingDataSourceIdentifier];
  identifier = [sourceCopy identifier];

  if (correspondingDataSourceIdentifier == identifier)
  {
    [(AESceneGroupedTilingLayout *)v8 setProgressSnapshot:progressSnapshot];
  }

  [(AESceneGroupedTilingLayout *)v8 setDelegate:self];

  return v8;
}

- (id)_currentDataSource
{
  _sceneController = [(AEExplorerViewController *)self _sceneController];
  dataSourceManager = [_sceneController dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  return dataSource;
}

- (int64_t)_currentLayoutStyle
{
  view = [(AEExplorerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  return [(AEExplorerViewController *)self _layoutStyleForSize:v5, v7];
}

- (int64_t)_layoutStyleForSize:(CGSize)size
{
  v3 = [(AEExplorerViewController *)self px_screen:size.width];
  [v3 _referenceBounds];
  v5 = v4;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (AEIsModernAspectScreen_onceToken != -1)
  {
    dispatch_once(&AEIsModernAspectScreen_onceToken, &__block_literal_global_9);
  }

  v8 = 2;
  if (v5 <= 768.0)
  {
    v8 = 1;
  }

  v9 = 3;
  if (!AEIsModernAspectScreen_isModernScreen)
  {
    v9 = 0;
  }

  if (userInterfaceIdiom == 1)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

- (void)_handleInProgressPackageGenerator:(id)generator suppressLivePhotoContent:(BOOL)content mediaOrigin:(int64_t)origin completionHandler:(id)handler
{
  handlerCopy = handler;
  generatorCopy = generator;
  sourceAssetReference = [generatorCopy sourceAssetReference];
  _packageTransport = [(AEExplorerViewController *)self _packageTransport];
  _progressModel = [(AEExplorerViewController *)self _progressModel];
  progress = [generatorCopy progress];
  [_progressModel setProgress:progress forAssetReference:sourceAssetReference];
  asset = [sourceAssetReference asset];
  uuid = [asset uuid];

  [_packageTransport addPendingPackageIdentifier:uuid];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __117__AEExplorerViewController__handleInProgressPackageGenerator_suppressLivePhotoContent_mediaOrigin_completionHandler___block_invoke;
  v23[3] = &unk_278CC7418;
  v29 = handlerCopy;
  originCopy = origin;
  contentCopy = content;
  v24 = _packageTransport;
  v25 = uuid;
  v26 = sourceAssetReference;
  selfCopy = self;
  v28 = _progressModel;
  v17 = _progressModel;
  v18 = sourceAssetReference;
  v19 = uuid;
  v20 = _packageTransport;
  v21 = handlerCopy;
  [generatorCopy retrieveGeneratedPackageWithCompletion:v23];
}

void __117__AEExplorerViewController__handleInProgressPackageGenerator_suppressLivePhotoContent_mediaOrigin_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 mutableCopy];
    [v10 setMediaOrigin:*(a1 + 80)];
    if (*(a1 + 88) == 1)
    {
      [v10 beginSupressingLivePhoto];
    }

    v11 = *(a1 + 72);
    if (v11)
    {
      (*(v11 + 16))(v11, v10);
    }

    [*(a1 + 32) stagePackage:v10];
    goto LABEL_16;
  }

  if (v8)
  {
    [*(a1 + 32) reportError:v8];
    [*(a1 + 32) removePendingPackageIdentifier:*(a1 + 40)];
    v10 = [*(a1 + 48) asset];
    v12 = objc_alloc(MEMORY[0x277D3D090]);
    v21[0] = v9;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    if (v10)
    {
      v20 = v10;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      v15 = [v12 initWithErrors:v13 forAssets:v14 fromSource:2 preparationType:0];
    }

    else
    {
      v15 = [v12 initWithErrors:v13 forAssets:MEMORY[0x277CBEBF8] fromSource:2 preparationType:0];
    }

    [v15 setRadarDescription:@"Error trying to pick an asset in PhotosMessagesApp."];
    [v15 setRadarComponentID:@"512768" name:@"Photos Backend (New Bugs)" version:@"all"];
    v17 = [v15 alertControllerWithCompletion:0];
    [*(a1 + 56) presentViewController:v17 animated:1 completion:0];

LABEL_16:
    goto LABEL_17;
  }

  if ((a4 & 1) == 0)
  {
    v16 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_impl(&dword_2411DE000, v16, OS_LOG_TYPE_ERROR, "Nil package returned from package generator with no error!", v19, 2u);
    }

    [*(a1 + 32) removePendingPackageIdentifier:*(a1 + 40)];
  }

LABEL_17:
  [*(a1 + 64) setProgress:0 forAssetReference:*(a1 + 48)];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)scrollView
{
  _scrollViewController = [(AEExplorerViewController *)self _scrollViewController];
  scrollView = [_scrollViewController scrollView];

  return scrollView;
}

- (CGSize)_maximumThumbnailSize
{
  defaultFormatChooser = [MEMORY[0x277D3B228] defaultFormatChooser];
  masterThumbnailFormat = [defaultFormatChooser masterThumbnailFormat];

  [masterThumbnailFormat sizeWithFallBackSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_immediatelyGenerateAndStagePackageFromReviewAsset:(id)asset suppressLivePhoto:(BOOL)photo mediaOrigin:(int64_t)origin
{
  assetCopy = asset;
  _packageTransport = [(AEExplorerViewController *)self _packageTransport];
  _cameraPackageGenerator = [(AEExplorerViewController *)self _cameraPackageGenerator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__AEExplorerViewController__immediatelyGenerateAndStagePackageFromReviewAsset_suppressLivePhoto_mediaOrigin___block_invoke;
  v12[3] = &unk_278CC73F0;
  photoCopy = photo;
  v13 = _packageTransport;
  originCopy = origin;
  v11 = _packageTransport;
  [_cameraPackageGenerator generatePackageFromReviewAsset:assetCopy withCompletionHandler:v12];
}

void __109__AEExplorerViewController__immediatelyGenerateAndStagePackageFromReviewAsset_suppressLivePhoto_mediaOrigin___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__AEExplorerViewController__immediatelyGenerateAndStagePackageFromReviewAsset_suppressLivePhoto_mediaOrigin___block_invoke_2;
  block[3] = &unk_278CC73C8;
  v16 = *(a1 + 48);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v5;
  v15 = v7;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__109__AEExplorerViewController__immediatelyGenerateAndStagePackageFromReviewAsset_suppressLivePhoto_mediaOrigin___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if (*(a1 + 64) == 1)
    {
      [result beginSupressingLivePhoto];
      result = *(a1 + 32);
    }

    [result setMediaOrigin:*(a1 + 56)];
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 stagePackage:v4];
  }

  else if (*(a1 + 48))
  {
    v5 = *(a1 + 40);

    return [v5 reportError:?];
  }

  return result;
}

- (void)_dismissReviewScreenViewController
{
  _reviewController = [(AEExplorerViewController *)self _reviewController];
  if (_reviewController)
  {
    v4 = _reviewController;
    [(AEExplorerViewController *)self _dismissViewControllerAboveKeyboardAnimated:1];
    [(AEExplorerViewController *)self _setReviewController:0];
    _reviewController = v4;
  }
}

- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d
{
  v51 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;
  _stagedAssetUUIDs = [(AEExplorerViewController *)self _stagedAssetUUIDs];
  v13 = [_stagedAssetUUIDs mutableCopy];
  [v13 minusSet:dsCopy];
  if ([v13 count])
  {
    [(AEExplorerViewController *)self _cancelExpectedAssetUUIDs:v13];
  }

  _packageTransport = [(AEExplorerViewController *)self _packageTransport];
  packagesWithLivePhotoContent = [_packageTransport packagesWithLivePhotoContent];
  v39 = packagesWithLivePhotoContent;
  if ([packagesWithLivePhotoContent count])
  {
    v36 = dCopy;
    v37 = dsCopy;
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = packagesWithLivePhotoContent;
    v17 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = v17;
    v19 = *v46;
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v45 + 1) + 8 * i);
        identifier = [v21 identifier];
        v23 = [iDsCopy containsObject:identifier];
        containsSuppressedLivePhoto = [v21 containsSuppressedLivePhoto];
        if (v23)
        {
          if ((containsSuppressedLivePhoto & 1) == 0)
          {
            v25 = [v21 mutableCopy];
            [v25 beginSupressingLivePhoto];
            if (v25)
            {
              goto LABEL_15;
            }
          }
        }

        else if (containsSuppressedLivePhoto)
        {
          v25 = [v21 mutableCopy];
          [v25 endSuppressingLivePhoto];
          if (v25)
          {
LABEL_15:
            [v15 addObject:v25];
          }
        }

        if ([v15 count])
        {
          allObjects = [v15 allObjects];
          [_packageTransport stagePackages:allObjects];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (!v18)
      {
LABEL_20:

        dCopy = v36;
        dsCopy = v37;
        packagesWithLivePhotoContent = v39;
        break;
      }
    }
  }

  if ([dCopy count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    allKeys = [dCopy allKeys];
    v28 = [allKeys countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v42;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(allKeys);
          }

          v32 = *(*(&v41 + 1) + 8 * j);
          v33 = [iDsCopy containsObject:v32];
          v34 = [dCopy objectForKeyedSubscript:v32];
          [(AEExplorerViewController *)self _immediatelyGenerateAndStagePackageFromReviewAsset:v34 suppressLivePhoto:v33 mediaOrigin:0];
        }

        v29 = [allKeys countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v29);
    }

    packagesWithLivePhotoContent = v39;
  }

  [(AEExplorerViewController *)self _dismissReviewScreenViewController];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_presentConfidentialityAlertWithConfirmAction:(id)action abortAction:(id)abortAction
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D750F8];
  abortActionCopy = abortAction;
  actionCopy = action;
  v9 = PULocalizedString();
  v10 = [v6 actionWithTitle:v9 style:0 handler:actionCopy];

  v11 = MEMORY[0x277D750F8];
  v12 = PULocalizedString();
  v13 = [v11 actionWithTitle:v12 style:0 handler:abortActionCopy];

  v14 = MEMORY[0x277D3CC18];
  v18[0] = v10;
  v18[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v16 = [v14 confidentialityAlertWithActions:v15];

  [(AEExplorerViewController *)self presentViewController:v16 animated:1 completion:0];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_configureReviewControllerWithAssetReference:(id)reference
{
  referenceCopy = reference;
  _dataSourceManager = [(AEExplorerViewController *)self _dataSourceManager];
  _tilingController = [(AEExplorerViewController *)self _tilingController];
  targetLayout = [_tilingController targetLayout];

  v23 = targetLayout;
  dataSource = [targetLayout dataSource];
  v9 = dataSource;
  if (dataSource)
  {
    [dataSource indexPathForAssetReference:referenceCopy];
  }

  v10 = PXIndexPathFromSimpleIndexPath();
  _stagedAssetUUIDs = [(AEExplorerViewController *)self _stagedAssetUUIDs];
  mEMORY[0x277D3CC20] = [MEMORY[0x277D3CC20] sharedInstance];
  v22 = referenceCopy;
  maxMessagesAssetLimit = [mEMORY[0x277D3CC20] maxMessagesAssetLimit];

  v14 = [objc_alloc(MEMORY[0x277D3D030]) initWithAssetsDataSourceManager:_dataSourceManager];
  v15 = objc_alloc_init(MEMORY[0x277D3D038]);
  v16 = objc_alloc_init(AEReviewAssetProvider);
  v17 = _dataSourceManager;
  v18 = objc_alloc(MEMORY[0x277D3D020]);
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:maxMessagesAssetLimit];
  LOBYTE(v21) = 0;
  v20 = [v18 initWithDataSourceManager:v14 mediaProvider:v15 reviewAssetProvider:v16 initialIndexPath:v10 initialSelectedAssetUUIDs:_stagedAssetUUIDs initialDisabledLivePhotoAssetUUIDs:0 selectionCountLimit:v19 sourceType:0 lowMemoryMode:v21 options:0];

  [v20 setDelegate:self];
  [(AEExplorerViewController *)self _setReviewController:v20];
}

- (void)_cancelExpectedAssetUUIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    _packageTransport = [(AEExplorerViewController *)self _packageTransport];
    allObjects = [dsCopy allObjects];
    [_packageTransport unstagePackagesWithIdentifiers:allObjects];

    _progressModel = [(AEExplorerViewController *)self _progressModel];
    [_progressModel cancelProgressForAssetUUIDs:dsCopy];
  }
}

- (id)_stagedAssetUUIDs
{
  _packageTransport = [(AEExplorerViewController *)self _packageTransport];
  expectedPackageIdentifiers = [_packageTransport expectedPackageIdentifiers];

  return expectedPackageIdentifiers;
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    _scrollViewController = [(AEExplorerViewController *)self _scrollViewController];
    scrollView = [_scrollViewController scrollView];

    [pressCopy locationInView:scrollView];
    v6 = [(AEExplorerViewController *)self contentAssetReferenceAtPoint:0 outContentFrame:?];
    if (v6)
    {
      [(AEExplorerViewController *)self _configureReviewControllerWithAssetReference:v6];
      _reviewController = [(AEExplorerViewController *)self _reviewController];
      v8 = [(AEExplorerViewController *)self _presentViewControllerAboveKeyboard:_reviewController animated:1];
    }
  }
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    _scrollViewController = [(AEExplorerViewController *)self _scrollViewController];
    scrollView = [_scrollViewController scrollView];

    [tapCopy locationInView:scrollView];
    v6 = [(AEExplorerViewController *)self contentAssetReferenceAtPoint:0 outContentFrame:?];
    if (v6)
    {
      [(AEExplorerViewController *)self _handleAttemptedSelectionToggleOfAssetReference:v6 cancelIfAlreadySelected:1 suppressLivePhotoContent:0];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _scrollViewController = [(AEExplorerViewController *)self _scrollViewController];
  scrollView = [_scrollViewController scrollView];

  _scrollViewController2 = [(AEExplorerViewController *)self _scrollViewController];
  contentCoordinateSpace = [_scrollViewController2 contentCoordinateSpace];

  _tilingController = [(AEExplorerViewController *)self _tilingController];
  [beginCopy locationInView:scrollView];
  v11 = v10;
  v13 = v12;

  [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{v11, v13}];
  if (_tilingController)
  {
    v14 = *MEMORY[0x277D3CF88];
    v15 = *(MEMORY[0x277D3CF88] + 8);
    v16 = *(MEMORY[0x277D3CF88] + 16);
    v17 = *(MEMORY[0x277D3CF88] + 24);
    [_tilingController hitTestTileAtPoint:&__block_literal_global_1092 padding:? passingTest:?];
  }

  return 0;
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = AEExplorerViewController;
  [(AEExplorerViewController *)&v13 viewWillLayoutSubviews];
  _tilingController = [(AEExplorerViewController *)self _tilingController];
  targetLayout = [_tilingController targetLayout];

  layoutStyle = [targetLayout layoutStyle];
  _currentLayoutStyle = [(AEExplorerViewController *)self _currentLayoutStyle];
  isPortraitOrientation = [targetLayout isPortraitOrientation];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];

  if (_currentLayoutStyle == layoutStyle)
  {
    if (isPortraitOrientation != (statusBarOrientation - 1) < 2)
    {
      [targetLayout setPortraitOrientation:(statusBarOrientation - 1) < 2];
    }
  }

  else
  {
    _sceneController = [(AEExplorerViewController *)self _sceneController];
    _currentDataSource = [(AEExplorerViewController *)self _currentDataSource];
    v12 = [(AEExplorerViewController *)self _createNewLayoutForDataSource:_currentDataSource];

    [_sceneController transitionToLayout:v12];
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v11.receiver = self;
  v11.super_class = AEExplorerViewController;
  [(AEExplorerViewController *)&v11 viewSafeAreaInsetsDidChange];
  view = [(AEExplorerViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  _scrollViewController = [(AEExplorerViewController *)self _scrollViewController];
  [_scrollViewController setContentInset:{v5, v7, 0.0, v9}];
}

- (void)viewDidLoad
{
  v42 = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = AEExplorerViewController;
  [(AEExplorerViewController *)&v38 viewDidLoad];
  _dataSourceManager = [(AEExplorerViewController *)self _dataSourceManager];
  dataSource = [_dataSourceManager dataSource];

  _currentLayoutStyle = [(AEExplorerViewController *)self _currentLayoutStyle];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];

  v8 = [[AESceneGroupedTilingLayout alloc] initWithDataSource:dataSource layoutStyle:_currentLayoutStyle orientation:statusBarOrientation];
  progressSnapshot = [(AEProgressViewModel *)self->__progressModel progressSnapshot];
  [(AESceneGroupedTilingLayout *)v8 setProgressSnapshot:progressSnapshot];

  [(AESceneGroupedTilingLayout *)v8 setDelegate:self];
  _scrollViewController = [(AEExplorerViewController *)self _scrollViewController];
  v11 = [objc_alloc(MEMORY[0x277D3CC30]) initWithLayout:v8];
  [v11 setScrollController:_scrollViewController];
  _tileAnimator = [(AEExplorerViewController *)self _tileAnimator];
  [v11 setTileAnimator:_tileAnimator];

  [v11 setScrollDelegate:self];
  [v11 setTileSource:self];
  [v11 setTransitionDelegate:self];
  [(AEExplorerViewController *)self _setTilingController:v11];
  v13 = objc_alloc([(AEExplorerViewController *)self assetsSceneClass]);
  _tilingController = [(AEExplorerViewController *)self _tilingController];
  _mediaProvider = [(AEExplorerViewController *)self _mediaProvider];
  _dataSourceManager2 = [(AEExplorerViewController *)self _dataSourceManager];
  v17 = [v13 initWithTilingController:_tilingController mediaProvider:_mediaProvider dataSourceManager:_dataSourceManager2 delegate:self];

  [v17 setAnimatesContent:1];
  [v17 setAutoplayBehavior:3];
  [(AEExplorerViewController *)self _maximumThumbnailSize];
  v19 = v18;
  v21 = v20;
  v22 = PLAssetExplorerGetLog();
  v33 = _scrollViewController;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v43.width = v19;
    v43.height = v21;
    v23 = NSStringFromCGSize(v43);
    *buf = 138543362;
    v41 = v23;
    _os_log_impl(&dword_2411DE000, v22, OS_LOG_TYPE_DEFAULT, "Setting the maximum image request size to %{public}@", buf, 0xCu);
  }

  [v17 setMaximumImageSize:{v19, v21}];
  viewTileReusePool = [v17 viewTileReusePool];
  [AEDecorativeTileSource registerCommonDecorativeTilesToReusePool:viewTileReusePool];
  [(AEExplorerViewController *)self _setSceneController:v17];
  v25 = dataSource;
  [(AEExplorerViewController *)self _handleTransportStagingUpdateWithDataSource:dataSource];
  view = [(AEExplorerViewController *)self view];
  _clientGestureRecognizers = [(AEExplorerViewController *)self _clientGestureRecognizers];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = [_clientGestureRecognizers countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v35;
    do
    {
      v31 = 0;
      do
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(_clientGestureRecognizers);
        }

        [view addGestureRecognizer:*(*(&v34 + 1) + 8 * v31++)];
      }

      while (v29 != v31);
      v29 = [_clientGestureRecognizers countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v29);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  _scrollViewController = [(AEExplorerViewController *)self _scrollViewController];
  scrollView = [_scrollViewController scrollView];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [scrollView setBackgroundColor:clearColor];

  [scrollView setShowsVerticalScrollIndicator:0];
  [scrollView setShowsHorizontalScrollIndicator:0];
  [scrollView setUserInteractionEnabled:1];
  [(AEExplorerViewController *)self setView:scrollView];
}

- (void)dealloc
{
  [(AEExplorerViewController *)self _dismissViewControllerAboveKeyboardAnimated:0];
  px_deprecated_appPhotoLibrary = [MEMORY[0x277CD9948] px_deprecated_appPhotoLibrary];
  [px_deprecated_appPhotoLibrary px_unregisterChangeObserver:self];

  v4.receiver = self;
  v4.super_class = AEExplorerViewController;
  [(AEExplorerViewController *)&v4 dealloc];
}

- (AEExplorerViewController)initWithPackageTransport:(id)transport mediaProvider:(id)provider dataSourceManager:(id)manager additionalGestureRecognizers:(id)recognizers
{
  transportCopy = transport;
  providerCopy = provider;
  managerCopy = manager;
  recognizersCopy = recognizers;
  v30.receiver = self;
  v30.super_class = AEExplorerViewController;
  v15 = [(AEExplorerViewController *)&v30 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->__packageTransport, transport);
    [(AEPackageTransport *)v16->__packageTransport registerChangeObserver:v16 context:AEExplorerViewControllerPackageTransportObserverContext];
    objc_storeStrong(&v16->__dataSourceManager, manager);
    objc_storeStrong(&v16->__mediaProvider, provider);
    objc_storeStrong(&v16->__clientGestureRecognizers, recognizers);
    [(AEExplorerViewController *)v16 _computeInitialResourcesIndexSetAsync];
    px_deprecated_appPhotoLibrary = [MEMORY[0x277CD9948] px_deprecated_appPhotoLibrary];
    [px_deprecated_appPhotoLibrary px_registerChangeObserver:v16];

    v18 = [[AEProgressViewModel alloc] initWithDataSourceManager:managerCopy];
    progressModel = v16->__progressModel;
    v16->__progressModel = v18;

    [(AEProgressViewModel *)v16->__progressModel registerChangeObserver:v16 context:AEExplorerViewControllerProgressViewModelObserverContext];
    v20 = objc_alloc(MEMORY[0x277D3CE20]);
    v21 = [v20 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    scrollViewController = v16->__scrollViewController;
    v16->__scrollViewController = v21;

    v23 = objc_alloc_init(MEMORY[0x277D3CC00]);
    tileAnimator = v16->__tileAnimator;
    v16->__tileAnimator = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
    tilesInUse = v16->__tilesInUse;
    v16->__tilesInUse = v25;

    v27 = objc_alloc_init(AECameraAssetPackageGenerator);
    cameraPackageGenerator = v16->__cameraPackageGenerator;
    v16->__cameraPackageGenerator = v27;
  }

  return v16;
}

@end