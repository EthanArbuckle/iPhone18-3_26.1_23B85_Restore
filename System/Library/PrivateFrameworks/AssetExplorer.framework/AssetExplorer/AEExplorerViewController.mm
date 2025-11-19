@interface AEExplorerViewController
- (AEExplorerViewController)initWithPackageTransport:(id)a3 mediaProvider:(id)a4 dataSourceManager:(id)a5 additionalGestureRecognizers:(id)a6;
- (AEExplorerViewControllerDelegate)delegate;
- (BOOL)confirmAsset:(id)a3 matchesView:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)layout:(id)a3 shouldShowCloudDecorationAtIndexPath:(PXSimpleIndexPath *)a4;
- (BOOL)layout:(id)a3 shouldShowLoopDecorationAtIndexPath:(PXSimpleIndexPath *)a4;
- (BOOL)layout:(id)a3 shouldShowVideoDecorationAtIndexPath:(PXSimpleIndexPath *)a4;
- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4;
- (CGSize)_maximumThumbnailSize;
- (id)_createNewLayoutForDataSource:(id)a3;
- (id)_currentDataSource;
- (id)_stagedAssetUUIDs;
- (id)_thumbnailResourcesIndexSetForAssets:(id)a3;
- (id)_validateAssetReference:(id)a3 forScrollViewPoint:(CGPoint)a4;
- (id)contentAssetReferenceAtPoint:(CGPoint)a3 outContentFrame:(CGRect *)a4;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (id)scrollView;
- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4;
- (id)tilingController:(id)a3 transitionAnimationCoordinatorForChange:(id)a4;
- (int64_t)_currentLayoutStyle;
- (int64_t)_layoutStyleForSize:(CGSize)a3;
- (void)_addThumbnailIndexes:(id)a3;
- (void)_attachGestureRecognizersIfNeeded:(void *)a3;
- (void)_cancelExpectedAssetUUIDs:(id)a3;
- (void)_computeInitialResourcesIndexSetAsync;
- (void)_configureReviewControllerWithAssetReference:(id)a3;
- (void)_dismissReviewScreenViewController;
- (void)_handleInProgressPackageGenerator:(id)a3 suppressLivePhotoContent:(BOOL)a4 mediaOrigin:(int64_t)a5 completionHandler:(id)a6;
- (void)_handleTransportStagingUpdateWithDataSource:(id)a3;
- (void)_immediatelyGenerateAndStagePackageFromReviewAsset:(id)a3 suppressLivePhoto:(BOOL)a4 mediaOrigin:(int64_t)a5;
- (void)_presentConfidentialityAlertWithConfirmAction:(id)a3 abortAction:(id)a4;
- (void)assetExplorerReviewScreenViewController:(id)a3 didPerformCompletionAction:(unint64_t)a4 withSelectedAssetUUIDs:(id)a5 livePhotoDisabledAssetUUIDs:(id)a6 substituteAssetsByUUID:(id)a7;
- (void)assetsScene:(id)a3 willTransitionToDataSource:(id)a4;
- (void)associateAsset:(id)a3 withTile:(void *)a4;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
- (void)dealloc;
- (void)handleLongPress:(id)a3;
- (void)handleTap:(id)a3;
- (void)loadView;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillLayoutSubviews;
@end

@implementation AEExplorerViewController

- (BOOL)confirmAsset:(id)a3 matchesView:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = a3;
    v9 = [v6 associatedAssetUUID];
    v10 = [v8 uuid];

    v7 = [v10 isEqualToString:v9];
    if ((v7 & 1) == 0)
    {
      v11 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v14 = 138543874;
        v15 = v10;
        v16 = 2114;
        v17 = v6;
        v18 = 2114;
        v19 = v9;
        _os_log_impl(&dword_2411DE000, v11, OS_LOG_TYPE_FAULT, "Outgoing asset mismatch. Tried to confirm asset with UUID %{public}@ but view (=%{public}@)'s associated asset UUID is %{public}@", &v14, 0x20u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)associateAsset:(id)a3 withTile:(void *)a4
{
  if (a3)
  {
    v5 = a3;
    v7 = [a4 view];
    v6 = [v5 uuid];

    [v7 setAssociatedAssetUUID:v6];
  }
}

- (AEExplorerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v7 = [(AEExplorerViewController *)self _sceneController];
  v8 = *&a4->var1[5];
  v18 = *&a4->var1[3];
  v19 = v8;
  v20 = *&a4->var1[7];
  v21 = a4->var1[9];
  v9 = *&a4->var1[1];
  v16 = *&a4->var0;
  v17 = v9;
  if ([v7 providesTileForIdentifier:&v16])
  {
    v10 = *&a4->var1[5];
    v18 = *&a4->var1[3];
    v19 = v10;
    v20 = *&a4->var1[7];
    v21 = a4->var1[9];
    v11 = *&a4->var1[1];
    v16 = *&a4->var0;
    v17 = v11;
    [v7 checkInTile:a3 withIdentifier:&v16];
  }

  else
  {
    v12 = a3;
    if (a4->var1[0] == 795209731)
    {
      v13 = [v7 viewTileReusePool];
      [v13 checkInReusableObject:v12];
    }

    v14 = [v12 view];
    [v14 removeFromSuperview];

    v15 = [(AEExplorerViewController *)self _tilesInUse];
    [v15 removeObject:v12];
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v6 = a4;
  v7 = [(AEExplorerViewController *)self _sceneController];
  v8 = a3->var1[1];
  v9 = a3->var1[2];
  v11 = a3->var1[3];
  v10 = a3->var1[4];
  if (v8 != *MEMORY[0x277D3CF78] && v11 != 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [v6 dataSource];
    *&v32 = v8;
    *(&v32 + 1) = v9;
    *&v33 = v11;
    *(&v33 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    v14 = [v15 assetAtItemIndexPath:&v32];
  }

  else
  {
    v14 = 0;
  }

  v16 = *&a3->var1[5];
  v34 = *&a3->var1[3];
  v35 = v16;
  v36 = *&a3->var1[7];
  v37 = a3->var1[9];
  v17 = *&a3->var1[1];
  v32 = *&a3->var0;
  v33 = v17;
  if ([v7 providesTileForIdentifier:&v32])
  {
    v18 = *&a3->var1[5];
    v34 = *&a3->var1[3];
    v35 = v18;
    v36 = *&a3->var1[7];
    v37 = a3->var1[9];
    v19 = *&a3->var1[1];
    v32 = *&a3->var0;
    v33 = v19;
    v20 = [v7 checkOutTileForIdentifier:&v32 layout:v6];
    if (a3->var0 == 5 && a3->var1[0] == *MEMORY[0x277D3CC58])
    {
      [(AEExplorerViewController *)self _attachGestureRecognizersIfNeeded:v20];
    }

    [(AEExplorerViewController *)self associateAsset:v14 withTile:v20];
  }

  else
  {
    v21 = a3->var1[0];
    v31 = v6;
    if (v21 == 795209731)
    {
      v24 = [v7 viewTileReusePool];
      v20 = [v24 checkOutReusableObjectWithReuseIdentifier:795209736];
    }

    else
    {
      if (v21 != 112112321)
      {
        abort();
      }

      v22 = [(AEExplorerViewController *)self _progressModel];
      v23 = [v22 progressSnapshot];
      *&v32 = v8;
      *(&v32 + 1) = v9;
      *&v33 = v11;
      *(&v33 + 1) = v10;
      v24 = [v23 progressForIndexPath:&v32];

      v25 = [AEProgressIndicatorView alloc];
      v26 = [(AEProgressIndicatorView *)v25 initWithFrame:v24 progress:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      v20 = [[AEGenericViewTile alloc] initWithView:v26];
    }

    v27 = [(AEExplorerViewController *)self _tilesInUse];
    [v27 addObject:v20];

    v28 = [(AEExplorerViewController *)self _scrollViewController];
    v29 = [(AEGenericViewTile *)v20 view];
    [v28 ae_ensureSubview:v29];

    [(AEExplorerViewController *)self associateAsset:v14 withTile:v20];
    v6 = v31;
  }

  return v20;
}

- (void)_attachGestureRecognizersIfNeeded:(void *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 view];
  v5 = [v4 gestureRecognizers];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
    [v7 setNumberOfTapsRequired:1];
    [v7 setDelegate:self];
    [v4 addGestureRecognizer:v7];
    v8 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleLongPress_];
    [v4 addGestureRecognizer:v8];
    [v4 setUserInteractionEnabled:1];
    v9 = [(AEExplorerViewController *)self _clientGestureRecognizers];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13++) requireGestureRecognizerToFail:v8];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)tilingController:(id)a3 transitionAnimationCoordinatorForChange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AEExplorerViewController *)self _sceneController];
  v9 = [v8 tilingController:v7 transitionAnimationCoordinatorForChange:v6];

  v10 = [(AEExplorerViewController *)self _currentDataSource];
  v11 = [(AEExplorerViewController *)self _createNewLayoutForDataSource:v10];

  v12 = [[AEDelegatingTransitionAnimationCoordinator alloc] initWithWrappedCoordinator:v9];
  [(AEDelegatingTransitionAnimationCoordinator *)v12 setEnableDoubleSidedAnimations:0];

  return v12;
}

- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AEExplorerViewController *)self _sceneController];
  v9 = [v8 tilingController:v7 tileIdentifierConverterForChange:v6];

  return v9;
}

- (BOOL)layout:(id)a3 shouldShowCloudDecorationAtIndexPath:(PXSimpleIndexPath *)a4
{
  v6 = a3;
  if ([(AEExplorerViewController *)self _fakeAllCloudAndVideo])
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = [(AEExplorerViewController *)self _missingThumbnailAssetIndexes];
    v9 = v8;
    if (v8 && [v8 containsIndex:a4->item])
    {
      v10 = [v6 progressSnapshot];
      v11 = *&a4->item;
      v13[0] = *&a4->dataSourceIdentifier;
      v13[1] = v11;
      v7 = [v10 hasProgressForIndexPath:v13] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)layout:(id)a3 shouldShowLoopDecorationAtIndexPath:(PXSimpleIndexPath *)a4
{
  v5 = [a3 dataSource];
  v6 = *&a4->item;
  v11[0] = *&a4->dataSourceIdentifier;
  v11[1] = v6;
  v7 = [v5 assetAtItemIndexPath:v11];
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

- (BOOL)layout:(id)a3 shouldShowVideoDecorationAtIndexPath:(PXSimpleIndexPath *)a4
{
  v6 = a3;
  if ([(AEExplorerViewController *)self _fakeAllCloudAndVideo])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v6 dataSource];
    v9 = *&a4->item;
    v12[0] = *&a4->dataSourceIdentifier;
    v12[1] = v9;
    v10 = [v8 assetAtItemIndexPath:v12];
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

  v3 = [(AEExplorerViewController *)self _dataSourceManager];
  v4 = [v3 photosDataSource];
  v5 = [v4 assetsInSection:0];
  v6 = [v5 fetchedObjects];

  if ([v6 count])
  {
    v7 = [v6 count];
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
      if (&v8[v9] > [v6 count])
      {
        break;
      }

      v11 = [v6 subarrayWithRange:{v8, v9}];
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
      v14 = [v6 count];
      if (v10 < v14)
      {
        v15 = [v6 count];
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

- (void)_addThumbnailIndexes:(id)a3
{
  v4 = a3;
  v5 = [(AEExplorerViewController *)self _missingThumbnailAssetIndexes];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CCAB58] indexSet];
  }

  v10 = v8;

  [v10 addIndexes:v4];
  [(AEExplorerViewController *)self _setMissingThumbnailAssetIndexes:v10];
  v9 = [(PXTilingController *)self->__tilingController currentLayout];
  [v9 invalidateLayout];
}

- (id)_thumbnailResourcesIndexSetForAssets:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CD9980] indexesForAssetsWithoutThumbnails:v3 requestType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v4 = a3;
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
  v5 = [v4 changeDetailsForFetchResult:v17[5]];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 fetchResultAfterChanges];
    v8 = [v7 fetchedObjects];
    v9 = [(AEExplorerViewController *)self _thumbnailResourcesIndexSetForAssets:v8];

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

- (void)assetsScene:(id)a3 willTransitionToDataSource:(id)a4
{
  v5 = [(AEExplorerViewController *)self _pendingMissingThumbnailAssetIndexes:a3];
  if (v5)
  {
    [(AEExplorerViewController *)self _setMissingThumbnailAssetIndexes:v5];
    [(AEExplorerViewController *)self _setPendingMissingThumbnailAssetIndexes:0];
  }

  MEMORY[0x2821F96F8]();
}

- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AEExplorerViewController *)self _sceneController];
  [v8 tilingController:v7 initialVisibleOriginForLayout:v6];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (AEExplorerViewControllerProgressViewModelObserverContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }

    v15 = v8;
    v10 = [(AEExplorerViewController *)self _tilingController];
    v9 = [v10 targetLayout];

    v11 = [v9 dataSource];
    v12 = [v11 identifier];

    v13 = [(AEExplorerViewController *)self _progressModel];
    v14 = [v13 progressSnapshot];

    if ([v14 correspondingDataSourceIdentifier] == v12)
    {
      [v9 setProgressSnapshot:v14];
    }

    goto LABEL_9;
  }

  if ((v6 & 1) != 0 && AEExplorerViewControllerPackageTransportObserverContext == a5)
  {
    v15 = v8;
    v9 = [(AEExplorerViewController *)self _currentDataSource];
    [(AEExplorerViewController *)self _handleTransportStagingUpdateWithDataSource:v9];
LABEL_9:

    v8 = v15;
  }

LABEL_10:
}

- (void)_handleTransportStagingUpdateWithDataSource:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 identifier];
  v20 = v4;
  v5 = [v4 photosDataSource];
  v6 = [(AEExplorerViewController *)self _sceneController];
  v19 = [v6 selectionManager];

  v18 = [(AEExplorerViewController *)self _packageTransport];
  v7 = [v18 orderedStagedIdentifiers];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v5 indexPathForFirstAsset];
        v15 = [v5 indexPathForAssetWithUUID:v13 orBurstIdentifier:0 hintIndexPath:v14 hintCollection:0];

        if (v15)
        {
          if (!v10)
          {
            v10 = [MEMORY[0x277D3CD78] indexPathSet];
          }

          v24 = 0u;
          v25 = 0u;
          PXSimpleIndexPathFromIndexPath();
          v23[0] = v24;
          v23[1] = v25;
          [v10 addIndexPath:v23];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__AEExplorerViewController__handleTransportStagingUpdateWithDataSource___block_invoke;
  v21[3] = &unk_278CC7490;
  v22 = v10;
  v16 = v10;
  [v19 performChanges:v21];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)contentAssetReferenceAtPoint:(CGPoint)a3 outContentFrame:(CGRect *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(AEExplorerViewController *)self _scrollViewController];
  v9 = [v8 scrollView];

  v10 = [(AEExplorerViewController *)self _scrollViewController];
  v11 = [v10 contentCoordinateSpace];

  v12 = [(AEExplorerViewController *)self _tilingController];
  [v11 convertPoint:v9 fromCoordinateSpace:{x, y}];
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
  if (v12 && (v13 = *MEMORY[0x277D3CF88], v14 = *(MEMORY[0x277D3CF88] + 8), v15 = *(MEMORY[0x277D3CF88] + 16), v16 = *(MEMORY[0x277D3CF88] + 24), [v12 hitTestTileAtPoint:v29 padding:? passingTest:?], v30))
  {
    v26 = v31;
    v27 = v32;
    v17 = [v12 currentLayout];
    v18 = [v17 dataSource];
    v28[0] = v26;
    v28[1] = v27;
    v19 = [v18 assetReferenceAtItemIndexPath:v28];
    if (a4)
    {
      [v11 convertRect:v9 toCoordinateSpace:{v37[4], v37[5], v37[6], v37[7]}];
      a4->origin.x = v20;
      a4->origin.y = v21;
      a4->size.width = v22;
      a4->size.height = v23;
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

- (id)_validateAssetReference:(id)a3 forScrollViewPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 asset];
    v10 = [(AEExplorerViewController *)self _scrollViewController];
    v11 = [v10 scrollView];

    v12 = [v11 window];
    [v12 convertPoint:v11 fromView:{x, y}];
    v13 = [v12 hitTest:0 withEvent:?];
    [(AEExplorerViewController *)self confirmAsset:v9 matchesView:v13];
    v14 = v8;
  }

  return v8;
}

- (id)_createNewLayoutForDataSource:(id)a3
{
  v4 = a3;
  v5 = [(AEExplorerViewController *)self _currentLayoutStyle];
  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v6 statusBarOrientation];

  v8 = [[AESceneGroupedTilingLayout alloc] initWithDataSource:v4 layoutStyle:v5 orientation:v7];
  v9 = [(AEExplorerViewController *)self _progressModel];
  v10 = [v9 progressSnapshot];

  v11 = [v10 correspondingDataSourceIdentifier];
  v12 = [v4 identifier];

  if (v11 == v12)
  {
    [(AESceneGroupedTilingLayout *)v8 setProgressSnapshot:v10];
  }

  [(AESceneGroupedTilingLayout *)v8 setDelegate:self];

  return v8;
}

- (id)_currentDataSource
{
  v2 = [(AEExplorerViewController *)self _sceneController];
  v3 = [v2 dataSourceManager];
  v4 = [v3 dataSource];

  return v4;
}

- (int64_t)_currentLayoutStyle
{
  v3 = [(AEExplorerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  return [(AEExplorerViewController *)self _layoutStyleForSize:v5, v7];
}

- (int64_t)_layoutStyleForSize:(CGSize)a3
{
  v3 = [(AEExplorerViewController *)self px_screen:a3.width];
  [v3 _referenceBounds];
  v5 = v4;

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

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

  if (v7 == 1)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

- (void)_handleInProgressPackageGenerator:(id)a3 suppressLivePhotoContent:(BOOL)a4 mediaOrigin:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [v11 sourceAssetReference];
  v13 = [(AEExplorerViewController *)self _packageTransport];
  v14 = [(AEExplorerViewController *)self _progressModel];
  v22 = [v11 progress];
  [v14 setProgress:v22 forAssetReference:v12];
  v15 = [v12 asset];
  v16 = [v15 uuid];

  [v13 addPendingPackageIdentifier:v16];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __117__AEExplorerViewController__handleInProgressPackageGenerator_suppressLivePhotoContent_mediaOrigin_completionHandler___block_invoke;
  v23[3] = &unk_278CC7418;
  v29 = v10;
  v30 = a5;
  v31 = a4;
  v24 = v13;
  v25 = v16;
  v26 = v12;
  v27 = self;
  v28 = v14;
  v17 = v14;
  v18 = v12;
  v19 = v16;
  v20 = v13;
  v21 = v10;
  [v11 retrieveGeneratedPackageWithCompletion:v23];
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
  v2 = [(AEExplorerViewController *)self _scrollViewController];
  v3 = [v2 scrollView];

  return v3;
}

- (CGSize)_maximumThumbnailSize
{
  v2 = [MEMORY[0x277D3B228] defaultFormatChooser];
  v3 = [v2 masterThumbnailFormat];

  [v3 sizeWithFallBackSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_immediatelyGenerateAndStagePackageFromReviewAsset:(id)a3 suppressLivePhoto:(BOOL)a4 mediaOrigin:(int64_t)a5
{
  v8 = a3;
  v9 = [(AEExplorerViewController *)self _packageTransport];
  v10 = [(AEExplorerViewController *)self _cameraPackageGenerator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__AEExplorerViewController__immediatelyGenerateAndStagePackageFromReviewAsset_suppressLivePhoto_mediaOrigin___block_invoke;
  v12[3] = &unk_278CC73F0;
  v15 = a4;
  v13 = v9;
  v14 = a5;
  v11 = v9;
  [v10 generatePackageFromReviewAsset:v8 withCompletionHandler:v12];
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
  v3 = [(AEExplorerViewController *)self _reviewController];
  if (v3)
  {
    v4 = v3;
    [(AEExplorerViewController *)self _dismissViewControllerAboveKeyboardAnimated:1];
    [(AEExplorerViewController *)self _setReviewController:0];
    v3 = v4;
  }
}

- (void)assetExplorerReviewScreenViewController:(id)a3 didPerformCompletionAction:(unint64_t)a4 withSelectedAssetUUIDs:(id)a5 livePhotoDisabledAssetUUIDs:(id)a6 substituteAssetsByUUID:(id)a7
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v38 = [(AEExplorerViewController *)self _stagedAssetUUIDs];
  v13 = [v38 mutableCopy];
  [v13 minusSet:v10];
  if ([v13 count])
  {
    [(AEExplorerViewController *)self _cancelExpectedAssetUUIDs:v13];
  }

  v40 = [(AEExplorerViewController *)self _packageTransport];
  v14 = [v40 packagesWithLivePhotoContent];
  v39 = v14;
  if ([v14 count])
  {
    v36 = v12;
    v37 = v10;
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = v14;
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
        v22 = [v21 identifier];
        v23 = [v11 containsObject:v22];
        v24 = [v21 containsSuppressedLivePhoto];
        if (v23)
        {
          if ((v24 & 1) == 0)
          {
            v25 = [v21 mutableCopy];
            [v25 beginSupressingLivePhoto];
            if (v25)
            {
              goto LABEL_15;
            }
          }
        }

        else if (v24)
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
          v26 = [v15 allObjects];
          [v40 stagePackages:v26];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (!v18)
      {
LABEL_20:

        v12 = v36;
        v10 = v37;
        v14 = v39;
        break;
      }
    }
  }

  if ([v12 count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = [v12 allKeys];
    v28 = [v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v41 + 1) + 8 * j);
          v33 = [v11 containsObject:v32];
          v34 = [v12 objectForKeyedSubscript:v32];
          [(AEExplorerViewController *)self _immediatelyGenerateAndStagePackageFromReviewAsset:v34 suppressLivePhoto:v33 mediaOrigin:0];
        }

        v29 = [v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v29);
    }

    v14 = v39;
  }

  [(AEExplorerViewController *)self _dismissReviewScreenViewController];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_presentConfidentialityAlertWithConfirmAction:(id)a3 abortAction:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D750F8];
  v7 = a4;
  v8 = a3;
  v9 = PULocalizedString();
  v10 = [v6 actionWithTitle:v9 style:0 handler:v8];

  v11 = MEMORY[0x277D750F8];
  v12 = PULocalizedString();
  v13 = [v11 actionWithTitle:v12 style:0 handler:v7];

  v14 = MEMORY[0x277D3CC18];
  v18[0] = v10;
  v18[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v16 = [v14 confidentialityAlertWithActions:v15];

  [(AEExplorerViewController *)self presentViewController:v16 animated:1 completion:0];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_configureReviewControllerWithAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(AEExplorerViewController *)self _dataSourceManager];
  v6 = [(AEExplorerViewController *)self _tilingController];
  v7 = [v6 targetLayout];

  v23 = v7;
  v8 = [v7 dataSource];
  v9 = v8;
  if (v8)
  {
    [v8 indexPathForAssetReference:v4];
  }

  v10 = PXIndexPathFromSimpleIndexPath();
  v11 = [(AEExplorerViewController *)self _stagedAssetUUIDs];
  v12 = [MEMORY[0x277D3CC20] sharedInstance];
  v22 = v4;
  v13 = [v12 maxMessagesAssetLimit];

  v14 = [objc_alloc(MEMORY[0x277D3D030]) initWithAssetsDataSourceManager:v5];
  v15 = objc_alloc_init(MEMORY[0x277D3D038]);
  v16 = objc_alloc_init(AEReviewAssetProvider);
  v17 = v5;
  v18 = objc_alloc(MEMORY[0x277D3D020]);
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  LOBYTE(v21) = 0;
  v20 = [v18 initWithDataSourceManager:v14 mediaProvider:v15 reviewAssetProvider:v16 initialIndexPath:v10 initialSelectedAssetUUIDs:v11 initialDisabledLivePhotoAssetUUIDs:0 selectionCountLimit:v19 sourceType:0 lowMemoryMode:v21 options:0];

  [v20 setDelegate:self];
  [(AEExplorerViewController *)self _setReviewController:v20];
}

- (void)_cancelExpectedAssetUUIDs:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [(AEExplorerViewController *)self _packageTransport];
    v5 = [v7 allObjects];
    [v4 unstagePackagesWithIdentifiers:v5];

    v6 = [(AEExplorerViewController *)self _progressModel];
    [v6 cancelProgressForAssetUUIDs:v7];
  }
}

- (id)_stagedAssetUUIDs
{
  v2 = [(AEExplorerViewController *)self _packageTransport];
  v3 = [v2 expectedPackageIdentifiers];

  return v3;
}

- (void)handleLongPress:(id)a3
{
  v9 = a3;
  if ([v9 state] == 1)
  {
    v4 = [(AEExplorerViewController *)self _scrollViewController];
    v5 = [v4 scrollView];

    [v9 locationInView:v5];
    v6 = [(AEExplorerViewController *)self contentAssetReferenceAtPoint:0 outContentFrame:?];
    if (v6)
    {
      [(AEExplorerViewController *)self _configureReviewControllerWithAssetReference:v6];
      v7 = [(AEExplorerViewController *)self _reviewController];
      v8 = [(AEExplorerViewController *)self _presentViewControllerAboveKeyboard:v7 animated:1];
    }
  }
}

- (void)handleTap:(id)a3
{
  v7 = a3;
  if ([v7 state] == 3)
  {
    v4 = [(AEExplorerViewController *)self _scrollViewController];
    v5 = [v4 scrollView];

    [v7 locationInView:v5];
    v6 = [(AEExplorerViewController *)self contentAssetReferenceAtPoint:0 outContentFrame:?];
    if (v6)
    {
      [(AEExplorerViewController *)self _handleAttemptedSelectionToggleOfAssetReference:v6 cancelIfAlreadySelected:1 suppressLivePhotoContent:0];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(AEExplorerViewController *)self _scrollViewController];
  v6 = [v5 scrollView];

  v7 = [(AEExplorerViewController *)self _scrollViewController];
  v8 = [v7 contentCoordinateSpace];

  v9 = [(AEExplorerViewController *)self _tilingController];
  [v4 locationInView:v6];
  v11 = v10;
  v13 = v12;

  [v8 convertPoint:v6 fromCoordinateSpace:{v11, v13}];
  if (v9)
  {
    v14 = *MEMORY[0x277D3CF88];
    v15 = *(MEMORY[0x277D3CF88] + 8);
    v16 = *(MEMORY[0x277D3CF88] + 16);
    v17 = *(MEMORY[0x277D3CF88] + 24);
    [v9 hitTestTileAtPoint:&__block_literal_global_1092 padding:? passingTest:?];
  }

  return 0;
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = AEExplorerViewController;
  [(AEExplorerViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(AEExplorerViewController *)self _tilingController];
  v4 = [v3 targetLayout];

  v5 = [v4 layoutStyle];
  v6 = [(AEExplorerViewController *)self _currentLayoutStyle];
  v7 = [v4 isPortraitOrientation];
  v8 = [MEMORY[0x277D75128] sharedApplication];
  v9 = [v8 statusBarOrientation];

  if (v6 == v5)
  {
    if (v7 != (v9 - 1) < 2)
    {
      [v4 setPortraitOrientation:(v9 - 1) < 2];
    }
  }

  else
  {
    v10 = [(AEExplorerViewController *)self _sceneController];
    v11 = [(AEExplorerViewController *)self _currentDataSource];
    v12 = [(AEExplorerViewController *)self _createNewLayoutForDataSource:v11];

    [v10 transitionToLayout:v12];
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v11.receiver = self;
  v11.super_class = AEExplorerViewController;
  [(AEExplorerViewController *)&v11 viewSafeAreaInsetsDidChange];
  v3 = [(AEExplorerViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [(AEExplorerViewController *)self _scrollViewController];
  [v10 setContentInset:{v5, v7, 0.0, v9}];
}

- (void)viewDidLoad
{
  v42 = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = AEExplorerViewController;
  [(AEExplorerViewController *)&v38 viewDidLoad];
  v3 = [(AEExplorerViewController *)self _dataSourceManager];
  v4 = [v3 dataSource];

  v5 = [(AEExplorerViewController *)self _currentLayoutStyle];
  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v6 statusBarOrientation];

  v8 = [[AESceneGroupedTilingLayout alloc] initWithDataSource:v4 layoutStyle:v5 orientation:v7];
  v9 = [(AEProgressViewModel *)self->__progressModel progressSnapshot];
  [(AESceneGroupedTilingLayout *)v8 setProgressSnapshot:v9];

  [(AESceneGroupedTilingLayout *)v8 setDelegate:self];
  v10 = [(AEExplorerViewController *)self _scrollViewController];
  v11 = [objc_alloc(MEMORY[0x277D3CC30]) initWithLayout:v8];
  [v11 setScrollController:v10];
  v12 = [(AEExplorerViewController *)self _tileAnimator];
  [v11 setTileAnimator:v12];

  [v11 setScrollDelegate:self];
  [v11 setTileSource:self];
  [v11 setTransitionDelegate:self];
  [(AEExplorerViewController *)self _setTilingController:v11];
  v13 = objc_alloc([(AEExplorerViewController *)self assetsSceneClass]);
  v14 = [(AEExplorerViewController *)self _tilingController];
  v15 = [(AEExplorerViewController *)self _mediaProvider];
  v16 = [(AEExplorerViewController *)self _dataSourceManager];
  v17 = [v13 initWithTilingController:v14 mediaProvider:v15 dataSourceManager:v16 delegate:self];

  [v17 setAnimatesContent:1];
  [v17 setAutoplayBehavior:3];
  [(AEExplorerViewController *)self _maximumThumbnailSize];
  v19 = v18;
  v21 = v20;
  v22 = PLAssetExplorerGetLog();
  v33 = v10;
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
  v24 = [v17 viewTileReusePool];
  [AEDecorativeTileSource registerCommonDecorativeTilesToReusePool:v24];
  [(AEExplorerViewController *)self _setSceneController:v17];
  v25 = v4;
  [(AEExplorerViewController *)self _handleTransportStagingUpdateWithDataSource:v4];
  v26 = [(AEExplorerViewController *)self view];
  v27 = [(AEExplorerViewController *)self _clientGestureRecognizers];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = [v27 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(v27);
        }

        [v26 addGestureRecognizer:*(*(&v34 + 1) + 8 * v31++)];
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v29);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  v3 = [(AEExplorerViewController *)self _scrollViewController];
  v5 = [v3 scrollView];

  v4 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v4];

  [v5 setShowsVerticalScrollIndicator:0];
  [v5 setShowsHorizontalScrollIndicator:0];
  [v5 setUserInteractionEnabled:1];
  [(AEExplorerViewController *)self setView:v5];
}

- (void)dealloc
{
  [(AEExplorerViewController *)self _dismissViewControllerAboveKeyboardAnimated:0];
  v3 = [MEMORY[0x277CD9948] px_deprecated_appPhotoLibrary];
  [v3 px_unregisterChangeObserver:self];

  v4.receiver = self;
  v4.super_class = AEExplorerViewController;
  [(AEExplorerViewController *)&v4 dealloc];
}

- (AEExplorerViewController)initWithPackageTransport:(id)a3 mediaProvider:(id)a4 dataSourceManager:(id)a5 additionalGestureRecognizers:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v30.receiver = self;
  v30.super_class = AEExplorerViewController;
  v15 = [(AEExplorerViewController *)&v30 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->__packageTransport, a3);
    [(AEPackageTransport *)v16->__packageTransport registerChangeObserver:v16 context:AEExplorerViewControllerPackageTransportObserverContext];
    objc_storeStrong(&v16->__dataSourceManager, a5);
    objc_storeStrong(&v16->__mediaProvider, a4);
    objc_storeStrong(&v16->__clientGestureRecognizers, a6);
    [(AEExplorerViewController *)v16 _computeInitialResourcesIndexSetAsync];
    v17 = [MEMORY[0x277CD9948] px_deprecated_appPhotoLibrary];
    [v17 px_registerChangeObserver:v16];

    v18 = [[AEProgressViewModel alloc] initWithDataSourceManager:v13];
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