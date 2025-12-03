@interface AEMessagesShelfViewController
- (AEMessagesShelfViewController)initWithPackageTransport:(id)transport options:(unint64_t)options;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)layout:(id)layout itemAtIndexPathIsAnimatedImage:(PXSimpleIndexPath *)image;
- (BOOL)layout:(id)layout itemAtIndexPathIsLoop:(PXSimpleIndexPath *)loop;
- (BOOL)layout:(id)layout itemAtIndexPathIsSpatial:(PXSimpleIndexPath *)spatial;
- (BOOL)layout:(id)layout itemAtIndexPathIsVideo:(PXSimpleIndexPath *)video;
- (BOOL)layoutShouldShowVideoDuration:(id)duration;
- (BOOL)shouldPresentReviewController;
- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKPluginEntryViewControllerDelegate)entryViewDelegate;
- (PUAssetExplorerAnalytics)assetExplorerAnalytics;
- (UIColor)_roundedCornerOverlayFillColor;
- (double)layout:(id)layout aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)path;
- (double)layout:(id)layout itemAtIndexPathDuration:(PXSimpleIndexPath *)duration;
- (id)_currentAssetsDataSource;
- (id)_traverseHierarchyForFillColorStartingWithView:(id)view;
- (id)assetsScene:(id)scene layoutForDataSource:(id)source;
- (id)assetsScene:(id)scene transitionAnimationCoordinatorForChange:(id)change;
- (id)contentAssetReferenceAtPoint:(CGPoint)point;
- (id)framesOfVisibleContentViewInCoordinateSpace:(id)space;
- (int64_t)layout:(id)layout generationStateForItemAtIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)layout:(id)layout irisToggleStateForItemAtIndexPath:(PXSimpleIndexPath *)path;
- (void)_didTapGenerationButton:(id)button;
- (void)_immediatelyGenerateAndStagePackageFromReviewAsset:(id)asset suppressLivePhoto:(BOOL)photo mediaOrigin:(int64_t)origin;
- (void)_presentReviewForAssetReference:(id)reference;
- (void)_presentReviewViewController:(id)controller;
- (void)_removeFromShelf:(id)shelf;
- (void)_toggleIris:(id)iris;
- (void)_transportStagingStateDidChange;
- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d;
- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)cancel;
- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)dealloc;
- (void)handleTap:(id)tap;
- (void)imageEditionViewControllerDidFinishEditing:(id)editing error:(id)error;
- (void)loadView;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)viewDidLoad;
@end

@implementation AEMessagesShelfViewController

- (CKPluginEntryViewControllerDelegate)entryViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_entryViewDelegate);

  return WeakRetained;
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  assetExplorerAnalytics = [(AEMessagesShelfViewController *)self assetExplorerAnalytics];
  v4 = *MEMORY[0x277D3D0C0];
  _dataSource = [(AEMessagesShelfViewController *)self _dataSource];
  orderedIdentifiers = [_dataSource orderedIdentifiers];
  [assetExplorerAnalytics sendEvent:v4 view:1 source:1 currentAssetCount:{objc_msgSend(orderedIdentifiers, "count")}];
}

- (id)_currentAssetsDataSource
{
  _sceneController = [(AEMessagesShelfViewController *)self _sceneController];
  dataSourceManager = [_sceneController dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  return dataSource;
}

- (void)_immediatelyGenerateAndStagePackageFromReviewAsset:(id)asset suppressLivePhoto:(BOOL)photo mediaOrigin:(int64_t)origin
{
  assetCopy = asset;
  _packageTransport = [(AEMessagesShelfViewController *)self _packageTransport];
  v10 = objc_alloc_init(AECameraAssetPackageGenerator);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __114__AEMessagesShelfViewController__immediatelyGenerateAndStagePackageFromReviewAsset_suppressLivePhoto_mediaOrigin___block_invoke;
  v12[3] = &unk_278CC73F0;
  photoCopy = photo;
  v13 = _packageTransport;
  originCopy = origin;
  v11 = _packageTransport;
  [(AECameraAssetPackageGenerator *)v10 generatePackageFromReviewAsset:assetCopy withCompletionHandler:v12];
}

void __114__AEMessagesShelfViewController__immediatelyGenerateAndStagePackageFromReviewAsset_suppressLivePhoto_mediaOrigin___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__AEMessagesShelfViewController__immediatelyGenerateAndStagePackageFromReviewAsset_suppressLivePhoto_mediaOrigin___block_invoke_2;
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

void *__114__AEMessagesShelfViewController__immediatelyGenerateAndStagePackageFromReviewAsset_suppressLivePhoto_mediaOrigin___block_invoke_2(uint64_t a1)
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

- (id)_traverseHierarchyForFillColorStartingWithView:(id)view
{
  viewCopy = view;
  superview = viewCopy;
  do
  {
    v5 = superview;
    backgroundColor = [superview backgroundColor];
    superview = [superview superview];
  }

  while (!backgroundColor && superview);

  return backgroundColor;
}

- (UIColor)_roundedCornerOverlayFillColor
{
  roundedCornerOverlayFillColor = self->__roundedCornerOverlayFillColor;
  if (!roundedCornerOverlayFillColor)
  {
    view = [(AEMessagesShelfViewController *)self view];
    superview = [view superview];

    systemBackgroundColor = [(AEMessagesShelfViewController *)self _traverseHierarchyForFillColorStartingWithView:superview];
    if (!systemBackgroundColor)
    {
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    }

    v7 = self->__roundedCornerOverlayFillColor;
    self->__roundedCornerOverlayFillColor = systemBackgroundColor;

    roundedCornerOverlayFillColor = self->__roundedCornerOverlayFillColor;
  }

  return roundedCornerOverlayFillColor;
}

- (void)imageEditionViewControllerDidFinishEditing:(id)editing error:(id)error
{
  editingCopy = editing;
  generatedAssets = [editingCopy generatedAssets];
  firstObject = [generatedAssets firstObject];

  if (firstObject)
  {
    _packageTransport = [(AEMessagesShelfViewController *)self _packageTransport];
    editingGeneratedPackageIdentifier = [(AEMessagesShelfViewController *)self editingGeneratedPackageIdentifier];
    [_packageTransport unstagePackageWithIdentifier:editingGeneratedPackageIdentifier];

    v9 = objc_alloc_init(AEGenerativePlaygroundAssetPackageGenerator);
    v10 = [(AEGenerativePlaygroundAssetPackageGenerator *)v9 generatePackageFromGenerativePlaygroundAsset:firstObject];
    _packageTransport2 = [(AEMessagesShelfViewController *)self _packageTransport];
    [_packageTransport2 stagePackage:v10];
  }

  [editingCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d
{
  v61 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dsCopy = ds;
  iDsCopy = iDs;
  selfCopy = self;
  dCopy = d;
  _packageTransport = [(AEMessagesShelfViewController *)self _packageTransport];
  orderedStagedIdentifiers = [_packageTransport orderedStagedIdentifiers];
  v44 = [MEMORY[0x277CBEB98] setWithArray:?];
  v14 = [v44 mutableCopy];
  v46 = dsCopy;
  [v14 minusSet:dsCopy];
  if ([v14 count])
  {
    allObjects = [v14 allObjects];
    [_packageTransport unstagePackagesWithIdentifiers:allObjects];
  }

  v43 = v14;
  if ([dCopy count])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    allKeys = [dCopy allKeys];
    v17 = [allKeys countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v56;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v56 != v19)
          {
            objc_enumerationMutation(allKeys);
          }

          v21 = *(*(&v55 + 1) + 8 * i);
          v22 = [_packageTransport stagedPackageForIdentifier:v21];
          mediaOrigin = [v22 mediaOrigin];
          v24 = [iDsCopy containsObject:v21];
          v25 = [dCopy objectForKeyedSubscript:v21];
          [(AEMessagesShelfViewController *)selfCopy _immediatelyGenerateAndStagePackageFromReviewAsset:v25 suppressLivePhoto:v24 mediaOrigin:mediaOrigin];
        }

        v18 = [allKeys countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v18);
    }
  }

  packagesWithLivePhotoContent = [_packageTransport packagesWithLivePhotoContent];
  if ([packagesWithLivePhotoContent count])
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = packagesWithLivePhotoContent;
    v28 = packagesWithLivePhotoContent;
    v29 = [v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (!v29)
    {
      goto LABEL_29;
    }

    v30 = v29;
    v31 = *v52;
    while (1)
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v52 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v51 + 1) + 8 * j);
        identifier = [v33 identifier];
        v35 = [iDsCopy containsObject:identifier];
        containsSuppressedLivePhoto = [v33 containsSuppressedLivePhoto];
        if (v35)
        {
          if ((containsSuppressedLivePhoto & 1) == 0)
          {
            v37 = [v33 mutableCopy];
            [v37 beginSupressingLivePhoto];
            if (v37)
            {
              goto LABEL_24;
            }
          }
        }

        else if (containsSuppressedLivePhoto)
        {
          v37 = [v33 mutableCopy];
          [v37 endSuppressingLivePhoto];
          if (v37)
          {
LABEL_24:
            [v27 addObject:v37];
          }
        }

        if ([v27 count])
        {
          allObjects2 = [v27 allObjects];
          [_packageTransport stagePackages:allObjects2];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (!v30)
      {
LABEL_29:

        packagesWithLivePhotoContent = v42;
        break;
      }
    }
  }

  v39 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2411DE000, v39, OS_LOG_TYPE_DEFAULT, "Finished review; will dismiss.", buf, 2u);
  }

  [(AEMessagesShelfViewController *)selfCopy _dismissPresentedReviewController:controllerCopy animated:1];
  v40 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2411DE000, v40, OS_LOG_TYPE_DEFAULT, "Finished review; did dismiss.", buf, 2u);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)cancel
{
  cancelCopy = cancel;
  v5 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2411DE000, v5, OS_LOG_TYPE_DEFAULT, "Cancelled review; will dismiss.", buf, 2u);
  }

  [(AEMessagesShelfViewController *)self _dismissPresentedReviewController:cancelCopy animated:1];
  v6 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2411DE000, v6, OS_LOG_TYPE_DEFAULT, "Cancelled review; did dismiss.", v7, 2u);
  }
}

- (id)contentAssetReferenceAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _scrollViewController = [(AEMessagesShelfViewController *)self _scrollViewController];
  scrollView = [_scrollViewController scrollView];

  _scrollViewController2 = [(AEMessagesShelfViewController *)self _scrollViewController];
  contentCoordinateSpace = [_scrollViewController2 contentCoordinateSpace];

  _tilingController = [(AEMessagesShelfViewController *)self _tilingController];
  [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{x, y}];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  if (_tilingController && (v11 = *MEMORY[0x277D3CF88], v12 = *(MEMORY[0x277D3CF88] + 8), v13 = *(MEMORY[0x277D3CF88] + 16), v14 = *(MEMORY[0x277D3CF88] + 24), [_tilingController hitTestTileAtPoint:&__block_literal_global_521 padding:? passingTest:?], v22))
  {
    v19 = v24;
    v20 = v23;
    currentLayout = [_tilingController currentLayout];
    dataSource = [currentLayout dataSource];
    v21[0] = v20;
    v21[1] = v19;
    v17 = [dataSource assetReferenceAtItemIndexPath:v21];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_presentReviewForAssetReference:(id)reference
{
  v36 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  _internalReviewDataSourceManager = [(AEMessagesShelfViewController *)self _internalReviewDataSourceManager];
  didFailToOpenPhotoLibrary = [_internalReviewDataSourceManager didFailToOpenPhotoLibrary];

  if ((didFailToOpenPhotoLibrary & 1) == 0)
  {
    _currentAssetsDataSource = [(AEMessagesShelfViewController *)self _currentAssetsDataSource];
    _internalReviewMediaProvider = [(AEMessagesShelfViewController *)self _internalReviewMediaProvider];
    v33 = 0u;
    v34 = 0u;
    if (_currentAssetsDataSource)
    {
      [_currentAssetsDataSource indexPathForAssetReference:referenceCopy];
    }

    v26 = _currentAssetsDataSource;
    v31 = v33;
    v32 = v34;
    v24 = PXIndexPathFromSimpleIndexPath();
    _packageTransport = [(AEMessagesShelfViewController *)self _packageTransport];
    orderedStagedIdentifiers = [_packageTransport orderedStagedIdentifiers];
    v23 = [MEMORY[0x277CBEB98] setWithArray:orderedStagedIdentifiers];
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = orderedStagedIdentifiers;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [_packageTransport stagedPackageForIdentifier:v16];
          if ([v17 containsSuppressedLivePhoto])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v13);
    }

    _dataSource = [(AEMessagesShelfViewController *)self _dataSource];
    v19 = [objc_alloc(MEMORY[0x277D3D058]) initWithReviewDataSource:_dataSource];
    LOBYTE(v22) = 0;
    v20 = [objc_alloc(MEMORY[0x277D3D020]) initWithDataSourceManager:v19 mediaProvider:_internalReviewMediaProvider reviewAssetProvider:0 initialIndexPath:v24 initialSelectedAssetUUIDs:v23 initialDisabledLivePhotoAssetUUIDs:v10 selectionCountLimit:0 sourceType:1 lowMemoryMode:v22 options:32];
    [v20 setDelegate:self];
    [v20 setModalPresentationStyle:0];
    [(AEMessagesShelfViewController *)self _presentReviewViewController:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldPresentReviewController
{
  _packageTransport = [(AEMessagesShelfViewController *)self _packageTransport];
  shouldHideReviewController = [_packageTransport shouldHideReviewController];

  return shouldHideReviewController ^ 1;
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    _scrollViewController = [(AEMessagesShelfViewController *)self _scrollViewController];
    scrollView = [_scrollViewController scrollView];

    [tapCopy locationInView:scrollView];
    v6 = [(AEMessagesShelfViewController *)self contentAssetReferenceAtPoint:?];
    if (v6 && [(AEMessagesShelfViewController *)self shouldPresentReviewController])
    {
      [(AEMessagesShelfViewController *)self _presentReviewForAssetReference:v6];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _scrollViewController = [(AEMessagesShelfViewController *)self _scrollViewController];
  scrollView = [_scrollViewController scrollView];

  _scrollViewController2 = [(AEMessagesShelfViewController *)self _scrollViewController];
  contentCoordinateSpace = [_scrollViewController2 contentCoordinateSpace];

  _tilingController = [(AEMessagesShelfViewController *)self _tilingController];
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
    [_tilingController hitTestTileAtPoint:&__block_literal_global_517 padding:? passingTest:?];
  }

  return 0;
}

- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier
{
  _sceneController = [(AEMessagesShelfViewController *)self _sceneController];
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
    view = [tileCopy view];
    [view removeFromSuperview];

    viewTileReusePool = [_sceneController viewTileReusePool];
    [viewTileReusePool checkInReusableObject:tileCopy];
    _tilesInUse = [(AEMessagesShelfViewController *)self _tilesInUse];
    [_tilesInUse removeObject:tileCopy];
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  layoutCopy = layout;
  _sceneController = [(AEMessagesShelfViewController *)self _sceneController];
  v8 = *&identifier->var1[5];
  v26 = *&identifier->var1[3];
  v27 = v8;
  v28 = *&identifier->var1[7];
  v29 = identifier->var1[9];
  v9 = *&identifier->var1[1];
  v24 = *&identifier->var0;
  v25 = v9;
  if (![_sceneController providesTileForIdentifier:&v24])
  {
    viewTileReusePool = [_sceneController viewTileReusePool];
    v14 = viewTileReusePool;
    v15 = identifier->var1[0];
    v16 = identifier->var1[4];
    if (v15 > 1295210291)
    {
      switch(v15)
      {
        case 1295210292:
          v18 = 1295210292;
          if (v16 == 1)
          {
            v18 = 1295210293;
          }

          else if (v16 != 2)
          {
            if (v16)
            {
              goto LABEL_25;
            }

            goto LABEL_41;
          }

          break;
        case 1500001338:
          v18 = 1500001338;
          break;
        case 1313817680:
          v18 = 1313817680;
          break;
        default:
          goto LABEL_41;
      }
    }

    else
    {
      switch(v15)
      {
        case 795209731:
          v12 = 0;
          if (v16 > 3)
          {
            if (v16 == 4)
            {
              v18 = 795209735;
            }

            else
            {
              if (v16 != 7)
              {
                if ((v16 - 5) >= 2)
                {
                  goto LABEL_38;
                }

                goto LABEL_41;
              }

              v18 = 795209738;
            }
          }

          else if (v16 > 1)
          {
            if (v16 != 3)
            {
              goto LABEL_41;
            }

            v18 = 795209734;
          }

          else if (v16)
          {
            if (v16 != 1)
            {
              goto LABEL_38;
            }

            v18 = 795209732;
          }

          else
          {
            v18 = 795209731;
          }

          break;
        case 1215219281:
          v18 = 1215219281;
          break;
        case 1277777777:
          v17 = [viewTileReusePool checkOutReusableObjectWithReuseIdentifier:1277777777];
          v12 = v17;
          if (v16 == 2)
          {
            v19 = 1;
          }

          else
          {
            if (v16 != 1)
            {
              if (!v16)
              {

LABEL_25:
                v12 = 0;
              }

LABEL_38:
              _tilesInUse = [(AEMessagesShelfViewController *)self _tilesInUse];
              [_tilesInUse addObject:v12];

              _scrollViewController = [(AEMessagesShelfViewController *)self _scrollViewController];
              view = [v12 view];
              [_scrollViewController ae_ensureSubview:view];

              goto LABEL_39;
            }

            v19 = 0;
          }

          [v17 setIsGenerativeAssetAppearance:v19];
          goto LABEL_38;
        default:
LABEL_41:
          abort();
      }
    }

    v12 = [viewTileReusePool checkOutReusableObjectWithReuseIdentifier:v18];
    goto LABEL_38;
  }

  v10 = *&identifier->var1[5];
  v26 = *&identifier->var1[3];
  v27 = v10;
  v28 = *&identifier->var1[7];
  v29 = identifier->var1[9];
  v11 = *&identifier->var1[1];
  v24 = *&identifier->var0;
  v25 = v11;
  v12 = [_sceneController checkOutTileForIdentifier:&v24 layout:layoutCopy];
LABEL_39:

  return v12;
}

- (void)_didTapGenerationButton:(id)button
{
  buttonCopy = button;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  _sceneController = [(AEMessagesShelfViewController *)self _sceneController];
  tilingController = [_sceneController tilingController];
  v7 = tilingController;
  if (tilingController)
  {
    [tilingController tileIdentifierForTile:buttonCopy];
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
  }

  if ((v27 - 6) >= 0xFFFFFFFFFFFFFFFDLL && v28 != 0x7FFFFFFFFFFFFFFFLL)
  {
    _packageTransport = [(AEMessagesShelfViewController *)self _packageTransport];
    orderedStagedIdentifiers = [_packageTransport orderedStagedIdentifiers];
    v10 = [orderedStagedIdentifiers objectAtIndex:v29];
    v11 = [_packageTransport stagedPackageForIdentifier:v10];
    generationRecipeData = [v11 generationRecipeData];
    identifier = [v11 identifier];
    [(AEMessagesShelfViewController *)self setEditingGeneratedPackageIdentifier:identifier];

    v14 = [objc_alloc(MEMORY[0x277CD3788]) initWithStyle:0];
    [v14 setDelegate:self];
    if ([v11 containsGenerationRecipeData])
    {
      v15 = objc_alloc(MEMORY[0x277CD3790]);
      v25 = generationRecipeData;
      v16 = [v15 initWithEncodedRecipe:generationRecipeData prompt:0 contextElements:MEMORY[0x277CBEBF8]];
      [v14 setRecipe:v16];
    }

    else
    {
      if (![v11 containsGenerationSourceImage])
      {
        assetExplorerAnalytics = PLAssetExplorerGetLog();
        if (os_log_type_enabled(assetExplorerAnalytics, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2411DE000, assetExplorerAnalytics, OS_LOG_TYPE_ERROR, "No recipe nor source image, unable to present generative playground controller.", buf, 2u);
        }

        goto LABEL_11;
      }

      v25 = generationRecipeData;
      v17 = objc_alloc(MEMORY[0x277CBEA90]);
      sourceImageURL = [v11 sourceImageURL];
      v16 = [v17 initWithContentsOfURL:sourceImageURL];

      v19 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v16];
      [v14 setSourceImage:v19];
    }

    entryViewDelegate = [(AEMessagesShelfViewController *)self entryViewDelegate];
    [entryViewDelegate presentViewController:v14 animated:1 completion:0];

    assetExplorerAnalytics = [(AEMessagesShelfViewController *)self assetExplorerAnalytics];
    v22 = *MEMORY[0x277D3D0B0];
    _dataSource = [(AEMessagesShelfViewController *)self _dataSource];
    orderedIdentifiers = [_dataSource orderedIdentifiers];
    -[NSObject sendEvent:view:source:currentAssetCount:](assetExplorerAnalytics, "sendEvent:view:source:currentAssetCount:", v22, 1, 1, [orderedIdentifiers count]);

    generationRecipeData = v25;
LABEL_11:
  }
}

- (void)_toggleIris:(id)iris
{
  irisCopy = iris;
  v17 = 0u;
  _sceneController = [(AEMessagesShelfViewController *)self _sceneController];
  tilingController = [_sceneController tilingController];
  v7 = tilingController;
  if (tilingController)
  {
    [tilingController tileIdentifierForTile:irisCopy];
  }

  else
  {
    v17 = 0u;
  }

  if ((v17 - 6) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    _packageTransport = [(AEMessagesShelfViewController *)self _packageTransport];
    orderedStagedIdentifiers = [_packageTransport orderedStagedIdentifiers];
    v10 = [orderedStagedIdentifiers objectAtIndex:0];
    v11 = [_packageTransport stagedPackageForIdentifier:v10];
    v12 = [v11 mutableCopy];
    if ([v11 containsSuppressedLivePhoto])
    {
      [v12 endSuppressingLivePhoto];
    }

    else
    {
      [v12 beginSupressingLivePhoto];
    }

    [_packageTransport stagePackage:{v12, v17}];
    assetExplorerAnalytics = [(AEMessagesShelfViewController *)self assetExplorerAnalytics];
    v14 = *MEMORY[0x277D3D0C8];
    _dataSource = [(AEMessagesShelfViewController *)self _dataSource];
    orderedIdentifiers = [_dataSource orderedIdentifiers];
    [assetExplorerAnalytics sendEvent:v14 view:1 source:1 currentAssetCount:{objc_msgSend(orderedIdentifiers, "count")}];
  }
}

- (void)_removeFromShelf:(id)shelf
{
  shelfCopy = shelf;
  _sceneController = [(AEMessagesShelfViewController *)self _sceneController];
  tilingController = [_sceneController tilingController];
  v7 = tilingController;
  if (tilingController)
  {
    [tilingController tileIdentifierForTile:shelfCopy];
  }
}

- (id)assetsScene:(id)scene transitionAnimationCoordinatorForChange:(id)change
{
  changeCopy = change;
  sceneCopy = scene;
  tilingController = [sceneCopy tilingController];
  v8 = [sceneCopy tilingController:tilingController transitionAnimationCoordinatorForChange:changeCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setDelayInsertions:1];
  }

  v9 = [[AEDelegatingTransitionAnimationCoordinator alloc] initWithWrappedCoordinator:v8];
  [(AEDelegatingTransitionAnimationCoordinator *)v9 setEnableDoubleSidedAnimations:1];

  return v9;
}

- (id)assetsScene:(id)scene layoutForDataSource:(id)source
{
  sourceCopy = source;
  v6 = [(PXAssetsTilingLayout *)[AEMessagesShelfLayout alloc] initWithDataSource:sourceCopy];

  [(AEMessagesShelfLayout *)v6 setDelegate:self];

  return v6;
}

- (id)framesOfVisibleContentViewInCoordinateSpace:(id)space
{
  spaceCopy = space;
  _scrollViewController = [(AEMessagesShelfViewController *)self _scrollViewController];
  contentCoordinateSpace = [_scrollViewController contentCoordinateSpace];
  [_scrollViewController visibleRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  _tilingController = [(AEMessagesShelfViewController *)self _tilingController];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__AEMessagesShelfViewController_framesOfVisibleContentViewInCoordinateSpace___block_invoke;
  v22[3] = &unk_278CC71E0;
  v23 = contentCoordinateSpace;
  v24 = spaceCopy;
  v25 = v16;
  v17 = v16;
  v18 = spaceCopy;
  v19 = contentCoordinateSpace;
  [_tilingController enumerateTilesInRect:0 withOptions:v22 usingBlock:{v8, v10, v12, v14}];
  v20 = [v17 copy];

  return v20;
}

void __77__AEMessagesShelfViewController_framesOfVisibleContentViewInCoordinateSpace___block_invoke(uint64_t a1, void *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a7;
  if (*a2 == 5 && a2[1] == *MEMORY[0x277D3CC58])
  {
    v12 = v10;
    [*(a1 + 32) convertRect:*(a1 + 40) toCoordinateSpace:{*a4, a4[1], a4[2], a4[3]}];
    v11 = [MEMORY[0x277CCAE60] valueWithCGRect:?];
    [*(a1 + 48) addObject:v11];

    v10 = v12;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  mEMORY[0x277CF97E0] = [MEMORY[0x277CF97E0] sharedBehaviors];
  [mEMORY[0x277CF97E0] entryViewMaxPluginShelfHeight];
  v6 = v5;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)layoutShouldShowVideoDuration:(id)duration
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];

  return (statusBarOrientation - 1) < 2;
}

- (double)layout:(id)layout itemAtIndexPathDuration:(PXSimpleIndexPath *)duration
{
  dataSource = [layout dataSource];
  v6 = *&duration->item;
  v11[0] = *&duration->dataSourceIdentifier;
  v11[1] = v6;
  v7 = [dataSource assetAtItemIndexPath:v11];
  [v7 duration];
  v9 = v8;

  return v9;
}

- (BOOL)layout:(id)layout itemAtIndexPathIsSpatial:(PXSimpleIndexPath *)spatial
{
  dataSource = [layout dataSource];
  v6 = *&spatial->item;
  v10[0] = *&spatial->dataSourceIdentifier;
  v10[1] = v6;
  v7 = [dataSource assetAtItemIndexPath:v10];
  v8 = ([v7 mediaSubtypes] >> 10) & 1;

  return v8;
}

- (BOOL)layout:(id)layout itemAtIndexPathIsAnimatedImage:(PXSimpleIndexPath *)image
{
  dataSource = [layout dataSource];
  v6 = *&image->item;
  v10[0] = *&image->dataSourceIdentifier;
  v10[1] = v6;
  v7 = [dataSource assetAtItemIndexPath:v10];
  v8 = [v7 playbackStyle] == 2;

  return v8;
}

- (BOOL)layout:(id)layout itemAtIndexPathIsLoop:(PXSimpleIndexPath *)loop
{
  dataSource = [layout dataSource];
  v6 = *&loop->item;
  v10[0] = *&loop->dataSourceIdentifier;
  v10[1] = v6;
  v7 = [dataSource assetAtItemIndexPath:v10];
  v8 = [v7 playbackStyle] == 5;

  return v8;
}

- (BOOL)layout:(id)layout itemAtIndexPathIsVideo:(PXSimpleIndexPath *)video
{
  dataSource = [layout dataSource];
  v6 = *&video->item;
  v10[0] = *&video->dataSourceIdentifier;
  v10[1] = v6;
  v7 = [dataSource assetAtItemIndexPath:v10];
  v8 = [v7 playbackStyle] == 4;

  return v8;
}

- (int64_t)layout:(id)layout generationStateForItemAtIndexPath:(PXSimpleIndexPath *)path
{
  if (!_os_feature_enabled_impl() || ![MEMORY[0x277CD3788] isAvailable])
  {
    return 0;
  }

  _packageTransport = [(AEMessagesShelfViewController *)self _packageTransport];
  orderedStagedIdentifiers = [_packageTransport orderedStagedIdentifiers];
  item = path->item;
  if (item >= [orderedStagedIdentifiers count])
  {
    v13 = 0;
  }

  else
  {
    v9 = [orderedStagedIdentifiers objectAtIndex:path->item];
    v10 = [_packageTransport stagedPackageForIdentifier:v9];
    containsGenerationRecipeData = [v10 containsGenerationRecipeData];
    containsGenerationSourceImage = [v10 containsGenerationSourceImage];
    if (containsGenerationRecipeData)
    {
      v13 = 2;
    }

    else
    {
      v13 = containsGenerationSourceImage;
    }
  }

  return v13;
}

- (int64_t)layout:(id)layout irisToggleStateForItemAtIndexPath:(PXSimpleIndexPath *)path
{
  _packageTransport = [(AEMessagesShelfViewController *)self _packageTransport];
  orderedStagedIdentifiers = [_packageTransport orderedStagedIdentifiers];
  item = path->item;
  if (item >= [orderedStagedIdentifiers count])
  {
    v10 = 0;
  }

  else
  {
    v8 = [orderedStagedIdentifiers objectAtIndex:path->item];
    v9 = [_packageTransport stagedPackageForIdentifier:v8];
    if ([v9 containsLivePhotoContent])
    {
      if ([v9 containsSuppressedLivePhoto])
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (double)layout:(id)layout aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSource = [layout dataSource];
  v6 = *&path->item;
  v12[0] = *&path->dataSourceIdentifier;
  v12[1] = v6;
  v7 = [dataSource assetReferenceAtItemIndexPath:v12];
  asset = [v7 asset];
  [asset aspectRatio];
  v10 = v9;

  return v10;
}

- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout
{
  controllerCopy = controller;
  layoutCopy = layout;
  _sceneController = [(AEMessagesShelfViewController *)self _sceneController];
  _indexToScrollTo = [(AEMessagesShelfViewController *)self _indexToScrollTo];
  if (_indexToScrollTo < 0)
  {
    [_sceneController tilingController:controllerCopy initialVisibleOriginForLayout:layoutCopy];
    v16 = v17;
    v15 = v18;
  }

  else
  {
    v10 = _indexToScrollTo;
    v11 = layoutCopy;
    dataSource = [v11 dataSource];
    identifier = [dataSource identifier];
    memset(v25, 0, sizeof(v25));
    v14 = *MEMORY[0x277D3CC58];
    v24 = 0;
    v23 = 0u;
    v22 = 0u;
    v21[0] = 5;
    v21[1] = v14;
    v21[2] = identifier;
    v21[3] = 0;
    v21[4] = v10;
    v21[5] = 0x7FFFFFFFFFFFFFFFLL;
    LODWORD(v10) = [v11 getGeometry:v25 group:0 userData:0 forTileWithIdentifier:v21];

    [(AEMessagesShelfViewController *)self _setIndexToScrollTo:-1];
    v15 = 0.0;
    if (v10)
    {
      v16 = *v25;
    }

    else
    {
      v16 = 0.0;
    }
  }

  v19 = v16;
  v20 = v15;
  result.y = v20;
  result.x = v19;
  return result;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && AEMessagesShelfViewControllerTransportPackageTransportObserverContext == context)
  {
    [(AEMessagesShelfViewController *)self _transportStagingStateDidChange];
  }
}

- (void)_transportStagingStateDidChange
{
  _packageTransport = [(AEMessagesShelfViewController *)self _packageTransport];
  orderedStagedIdentifiers = [_packageTransport orderedStagedIdentifiers];
  _dataSource = [(AEMessagesShelfViewController *)self _dataSource];
  orderedIdentifiers = [_dataSource orderedIdentifiers];
  v7 = [MEMORY[0x277CBEB70] orderedSetWithArray:orderedStagedIdentifiers];
  v8 = [MEMORY[0x277CBEB70] orderedSetWithArray:orderedIdentifiers];
  v9 = [v8 mutableCopy];
  [v9 minusOrderedSet:v7];
  v10 = [v7 mutableCopy];
  [v10 intersectOrderedSet:v8];
  v11 = [v7 mutableCopy];
  [v11 minusOrderedSet:v8];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __64__AEMessagesShelfViewController__transportStagingStateDidChange__block_invoke;
  v23 = &unk_278CC71B8;
  v24 = v9;
  v12 = _dataSource;
  v25 = v12;
  v26 = v10;
  v27 = _packageTransport;
  v28 = v11;
  v13 = orderedStagedIdentifiers;
  v29 = v13;
  v19 = v11;
  v18 = _packageTransport;
  v14 = v10;
  v15 = v9;
  [v12 performChanges:&v20];
  orderedIdentifiers2 = [v12 orderedIdentifiers];
  v17 = [orderedIdentifiers2 count];
  if (v17 > [orderedIdentifiers count])
  {
    -[AEMessagesShelfViewController _setIndexToScrollTo:](self, "_setIndexToScrollTo:", [v13 count] - 1);
  }
}

void __64__AEMessagesShelfViewController__transportStagingStateDidChange__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeAssetWithIdentifier:*(*(&v33 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v4);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = *(a1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(a1 + 56) stagedPackageForIdentifier:*(*(&v29 + 1) + 8 * v11)];
        v13 = [v12 reviewAssetFromPackageMetadata];
        [*(a1 + 40) replaceAsset:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = *(a1 + 64);
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(a1 + 56) stagedPackageForIdentifier:{*(*(&v25 + 1) + 8 * v18), v25}];
        v20 = [v19 reviewAssetFromPackageMetadata];
        v21 = *(a1 + 72);
        v22 = [v19 identifier];
        v23 = [v21 indexOfObject:v22];

        [*(a1 + 40) insertAsset:v20 atIndex:v23];
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v16);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = AEMessagesShelfViewController;
  [(AEMessagesShelfViewController *)&v14 viewDidLoad];
  _sceneController = [(AEMessagesShelfViewController *)self _sceneController];
  viewTileReusePool = [_sceneController viewTileReusePool];
  [AEDecorativeTileSource registerCommonDecorativeTilesToReusePool:viewTileReusePool];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__AEMessagesShelfViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_278CC7190;
  objc_copyWeak(&v12, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:1313817680 creationHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__AEMessagesShelfViewController_viewDidLoad__block_invoke_2;
  v9[3] = &unk_278CC7190;
  objc_copyWeak(&v10, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:1295210292 creationHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__AEMessagesShelfViewController_viewDidLoad__block_invoke_3;
  v7[3] = &unk_278CC7190;
  objc_copyWeak(&v8, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:1295210293 creationHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__AEMessagesShelfViewController_viewDidLoad__block_invoke_4;
  v5[3] = &unk_278CC7190;
  objc_copyWeak(&v6, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:1277777777 creationHandler:v5];
  [viewTileReusePool registerReusableObjectForReuseIdentifier:1500001338 creationHandler:&__block_literal_global];
  [viewTileReusePool registerReusableObjectForReuseIdentifier:1215219281 creationHandler:&__block_literal_global_498];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

id __44__AEMessagesShelfViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = [AEMessagesShelfRoundButton workaround_roundButtonWithStyle:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 addTarget:WeakRetained action:sel__removeFromShelf_ forControlEvents:64];

  return v2;
}

id __44__AEMessagesShelfViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v2 = [AEMessagesShelfRoundButton roundButtonWithStyle:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 addTarget:WeakRetained action:sel__toggleIris_ forControlEvents:64];

  return v2;
}

id __44__AEMessagesShelfViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  v2 = [AEMessagesShelfRoundButton roundButtonWithStyle:2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 addTarget:WeakRetained action:sel__toggleIris_ forControlEvents:64];

  return v2;
}

id __44__AEMessagesShelfViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  v2 = [_TtC13AssetExplorer28AEGenerativePlaygroundButton buttonWithType:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 addTarget:WeakRetained action:sel__didTapGenerationButton_ forControlEvents:64];

  return v2;
}

_AEDurationLabelTile *__44__AEMessagesShelfViewController_viewDidLoad__block_invoke_6()
{
  v0 = objc_alloc_init(_AEDurationLabelTile);
  v1 = [MEMORY[0x277D75348] clearColor];
  [(_AEDurationLabelTile *)v0 setBackgroundColor:v1];

  v2 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [(_AEDurationLabelTile *)v0 setFont:v2];

  v3 = [MEMORY[0x277D75348] whiteColor];
  [(_AEDurationLabelTile *)v0 setTextColor:v3];

  [(_AEDurationLabelTile *)v0 setTextAlignment:2];

  return v0;
}

id __44__AEMessagesShelfViewController_viewDidLoad__block_invoke_5()
{
  v0 = MEMORY[0x277D755B8];
  v1 = [MEMORY[0x277CCA8D8] px_bundle];
  v2 = [v0 imageNamed:@"spatial" inBundle:v1];

  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v2];

  return v3;
}

- (void)loadView
{
  _scrollViewController = [(AEMessagesShelfViewController *)self _scrollViewController];
  scrollView = [_scrollViewController scrollView];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [scrollView setBackgroundColor:clearColor];

  [scrollView setShowsVerticalScrollIndicator:0];
  [scrollView setShowsHorizontalScrollIndicator:0];
  [scrollView setUserInteractionEnabled:1];
  [(AEMessagesShelfViewController *)self setView:scrollView];
  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  [v5 setDelegate:self];
  [scrollView addGestureRecognizer:v5];
}

- (void)_presentReviewViewController:(id)controller
{
  controllerCopy = controller;
  entryViewDelegate = [(AEMessagesShelfViewController *)self entryViewDelegate];
  v6 = objc_opt_respondsToSelector();
  v7 = PLAssetExplorerGetLog();
  presentedReviewController = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2411DE000, presentedReviewController, OS_LOG_TYPE_DEFAULT, "Will present review controller.", buf, 2u);
    }

    [entryViewDelegate presentViewController:controllerCopy animated:1 completion:0];
    v9 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2411DE000, v9, OS_LOG_TYPE_DEFAULT, "Did present review controller.", v12, 2u);
    }

    v10 = controllerCopy;
    presentedReviewController = self->_presentedReviewController;
    self->_presentedReviewController = v10;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(&dword_2411DE000, presentedReviewController, OS_LOG_TYPE_ERROR, "Unable to present review controller.", v11, 2u);
  }
}

- (PUAssetExplorerAnalytics)assetExplorerAnalytics
{
  assetExplorerAnalytics = self->_assetExplorerAnalytics;
  if (!assetExplorerAnalytics)
  {
    v4 = objc_alloc_init(MEMORY[0x277D3D018]);
    v5 = self->_assetExplorerAnalytics;
    self->_assetExplorerAnalytics = v4;

    assetExplorerAnalytics = self->_assetExplorerAnalytics;
  }

  return assetExplorerAnalytics;
}

- (void)dealloc
{
  [(AEMessagesShelfViewController *)self _dismissPresentedReviewController:self->_presentedReviewController animated:0];
  v3.receiver = self;
  v3.super_class = AEMessagesShelfViewController;
  [(AEMessagesShelfViewController *)&v3 dealloc];
}

- (AEMessagesShelfViewController)initWithPackageTransport:(id)transport options:(unint64_t)options
{
  transportCopy = transport;
  v35.receiver = self;
  v35.super_class = AEMessagesShelfViewController;
  v8 = [(AEMessagesShelfViewController *)&v35 init];
  v9 = v8;
  if (v8)
  {
    v8->__options = options;
    objc_storeStrong(&v8->__packageTransport, transport);
    [(AEPackageTransport *)v9->__packageTransport registerChangeObserver:v9 context:AEMessagesShelfViewControllerTransportPackageTransportObserverContext];
    v10 = objc_alloc_init(MEMORY[0x277D3D068]);
    dataSource = v9->__dataSource;
    v9->__dataSource = v10;

    v12 = [objc_alloc(MEMORY[0x277D3D058]) initWithReviewDataSource:v9->__dataSource];
    internalReviewDataSourceManager = v9->__internalReviewDataSourceManager;
    v9->__internalReviewDataSourceManager = v12;

    v14 = objc_alloc_init(MEMORY[0x277D3D060]);
    internalReviewMediaProvider = v9->__internalReviewMediaProvider;
    v9->__internalReviewMediaProvider = v14;

    v16 = [[AEWrappedMediaProvider alloc] initWithMediaProvider:v9->__internalReviewMediaProvider];
    v17 = objc_alloc_init(AEWrappedDataSourceManager);
    wrappedDataSourceManager = v9->__wrappedDataSourceManager;
    v9->__wrappedDataSourceManager = v17;

    [(AEWrappedDataSourceManager *)v9->__wrappedDataSourceManager attachDataSourceManager:v9->__internalReviewDataSourceManager];
    dataSource = [(PXSectionedDataSourceManager *)v9->__wrappedDataSourceManager dataSource];
    v20 = [(PXAssetsTilingLayout *)[AEMessagesShelfLayout alloc] initWithDataSource:dataSource];
    v21 = objc_alloc(MEMORY[0x277D3CE20]);
    v22 = [v21 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v22 registerObserver:v9];
    scrollViewController = v9->__scrollViewController;
    v9->__scrollViewController = v22;
    v24 = v22;

    v25 = objc_alloc_init(MEMORY[0x277D3CC00]);
    tileAnimator = v9->__tileAnimator;
    v9->__tileAnimator = v25;

    v27 = [objc_alloc(MEMORY[0x277D3CC30]) initWithLayout:v20];
    tilingController = v9->__tilingController;
    v9->__tilingController = v27;

    [(PXTilingController *)v9->__tilingController setScrollController:v9->__scrollViewController];
    [(PXTilingController *)v9->__tilingController setTileAnimator:v9->__tileAnimator];
    [(PXTilingController *)v9->__tilingController setScrollDelegate:v9];
    v29 = [objc_alloc(MEMORY[0x277D3CC40]) initWithTilingController:v9->__tilingController mediaProvider:v16 dataSourceManager:v9->__wrappedDataSourceManager delegate:v9];
    [v29 setContentTileCornerRadius:12.5];
    [v29 setAnimatesContent:1];
    [v29 setAutoplayBehavior:3];
    [(PXTilingController *)v9->__tilingController setTileSource:v9];
    [(PXTilingController *)v9->__tilingController setTransitionDelegate:v29];
    sceneController = v9->__sceneController;
    v9->__sceneController = v29;
    v31 = v29;

    v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
    tilesInUse = v9->__tilesInUse;
    v9->__tilesInUse = v32;

    v9->__indexToScrollTo = -1;
    [(AEMessagesShelfViewController *)v9 _transportStagingStateDidChange];
  }

  return v9;
}

@end