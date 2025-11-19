@interface AEMessagesShelfViewController
- (AEMessagesShelfViewController)initWithPackageTransport:(id)a3 options:(unint64_t)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)layout:(id)a3 itemAtIndexPathIsAnimatedImage:(PXSimpleIndexPath *)a4;
- (BOOL)layout:(id)a3 itemAtIndexPathIsLoop:(PXSimpleIndexPath *)a4;
- (BOOL)layout:(id)a3 itemAtIndexPathIsSpatial:(PXSimpleIndexPath *)a4;
- (BOOL)layout:(id)a3 itemAtIndexPathIsVideo:(PXSimpleIndexPath *)a4;
- (BOOL)layoutShouldShowVideoDuration:(id)a3;
- (BOOL)shouldPresentReviewController;
- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKPluginEntryViewControllerDelegate)entryViewDelegate;
- (PUAssetExplorerAnalytics)assetExplorerAnalytics;
- (UIColor)_roundedCornerOverlayFillColor;
- (double)layout:(id)a3 aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)a4;
- (double)layout:(id)a3 itemAtIndexPathDuration:(PXSimpleIndexPath *)a4;
- (id)_currentAssetsDataSource;
- (id)_traverseHierarchyForFillColorStartingWithView:(id)a3;
- (id)assetsScene:(id)a3 layoutForDataSource:(id)a4;
- (id)assetsScene:(id)a3 transitionAnimationCoordinatorForChange:(id)a4;
- (id)contentAssetReferenceAtPoint:(CGPoint)a3;
- (id)framesOfVisibleContentViewInCoordinateSpace:(id)a3;
- (int64_t)layout:(id)a3 generationStateForItemAtIndexPath:(PXSimpleIndexPath *)a4;
- (int64_t)layout:(id)a3 irisToggleStateForItemAtIndexPath:(PXSimpleIndexPath *)a4;
- (void)_didTapGenerationButton:(id)a3;
- (void)_immediatelyGenerateAndStagePackageFromReviewAsset:(id)a3 suppressLivePhoto:(BOOL)a4 mediaOrigin:(int64_t)a5;
- (void)_presentReviewForAssetReference:(id)a3;
- (void)_presentReviewViewController:(id)a3;
- (void)_removeFromShelf:(id)a3;
- (void)_toggleIris:(id)a3;
- (void)_transportStagingStateDidChange;
- (void)assetExplorerReviewScreenViewController:(id)a3 didPerformCompletionAction:(unint64_t)a4 withSelectedAssetUUIDs:(id)a5 livePhotoDisabledAssetUUIDs:(id)a6 substituteAssetsByUUID:(id)a7;
- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)a3;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
- (void)dealloc;
- (void)handleTap:(id)a3;
- (void)imageEditionViewControllerDidFinishEditing:(id)a3 error:(id)a4;
- (void)loadView;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)viewDidLoad;
@end

@implementation AEMessagesShelfViewController

- (CKPluginEntryViewControllerDelegate)entryViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_entryViewDelegate);

  return WeakRetained;
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  v7 = [(AEMessagesShelfViewController *)self assetExplorerAnalytics];
  v4 = *MEMORY[0x277D3D0C0];
  v5 = [(AEMessagesShelfViewController *)self _dataSource];
  v6 = [v5 orderedIdentifiers];
  [v7 sendEvent:v4 view:1 source:1 currentAssetCount:{objc_msgSend(v6, "count")}];
}

- (id)_currentAssetsDataSource
{
  v2 = [(AEMessagesShelfViewController *)self _sceneController];
  v3 = [v2 dataSourceManager];
  v4 = [v3 dataSource];

  return v4;
}

- (void)_immediatelyGenerateAndStagePackageFromReviewAsset:(id)a3 suppressLivePhoto:(BOOL)a4 mediaOrigin:(int64_t)a5
{
  v8 = a3;
  v9 = [(AEMessagesShelfViewController *)self _packageTransport];
  v10 = objc_alloc_init(AECameraAssetPackageGenerator);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __114__AEMessagesShelfViewController__immediatelyGenerateAndStagePackageFromReviewAsset_suppressLivePhoto_mediaOrigin___block_invoke;
  v12[3] = &unk_278CC73F0;
  v15 = a4;
  v13 = v9;
  v14 = a5;
  v11 = v9;
  [(AECameraAssetPackageGenerator *)v10 generatePackageFromReviewAsset:v8 withCompletionHandler:v12];
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

- (id)_traverseHierarchyForFillColorStartingWithView:(id)a3
{
  v3 = a3;
  v4 = v3;
  do
  {
    v5 = v4;
    v6 = [v4 backgroundColor];
    v4 = [v4 superview];
  }

  while (!v6 && v4);

  return v6;
}

- (UIColor)_roundedCornerOverlayFillColor
{
  roundedCornerOverlayFillColor = self->__roundedCornerOverlayFillColor;
  if (!roundedCornerOverlayFillColor)
  {
    v4 = [(AEMessagesShelfViewController *)self view];
    v5 = [v4 superview];

    v6 = [(AEMessagesShelfViewController *)self _traverseHierarchyForFillColorStartingWithView:v5];
    if (!v6)
    {
      v6 = [MEMORY[0x277D75348] systemBackgroundColor];
    }

    v7 = self->__roundedCornerOverlayFillColor;
    self->__roundedCornerOverlayFillColor = v6;

    roundedCornerOverlayFillColor = self->__roundedCornerOverlayFillColor;
  }

  return roundedCornerOverlayFillColor;
}

- (void)imageEditionViewControllerDidFinishEditing:(id)a3 error:(id)a4
{
  v12 = a3;
  v5 = [v12 generatedAssets];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [(AEMessagesShelfViewController *)self _packageTransport];
    v8 = [(AEMessagesShelfViewController *)self editingGeneratedPackageIdentifier];
    [v7 unstagePackageWithIdentifier:v8];

    v9 = objc_alloc_init(AEGenerativePlaygroundAssetPackageGenerator);
    v10 = [(AEGenerativePlaygroundAssetPackageGenerator *)v9 generatePackageFromGenerativePlaygroundAsset:v6];
    v11 = [(AEMessagesShelfViewController *)self _packageTransport];
    [v11 stagePackage:v10];
  }

  [v12 dismissViewControllerAnimated:1 completion:0];
}

- (void)assetExplorerReviewScreenViewController:(id)a3 didPerformCompletionAction:(unint64_t)a4 withSelectedAssetUUIDs:(id)a5 livePhotoDisabledAssetUUIDs:(id)a6 substituteAssetsByUUID:(id)a7
{
  v61 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v11 = a5;
  v12 = a6;
  v48 = self;
  v49 = a7;
  v13 = [(AEMessagesShelfViewController *)self _packageTransport];
  v45 = [v13 orderedStagedIdentifiers];
  v44 = [MEMORY[0x277CBEB98] setWithArray:?];
  v14 = [v44 mutableCopy];
  v46 = v11;
  [v14 minusSet:v11];
  if ([v14 count])
  {
    v15 = [v14 allObjects];
    [v13 unstagePackagesWithIdentifiers:v15];
  }

  v43 = v14;
  if ([v49 count])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v16 = [v49 allKeys];
    v17 = [v16 countByEnumeratingWithState:&v55 objects:v60 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v55 + 1) + 8 * i);
          v22 = [v13 stagedPackageForIdentifier:v21];
          v23 = [v22 mediaOrigin];
          v24 = [v12 containsObject:v21];
          v25 = [v49 objectForKeyedSubscript:v21];
          [(AEMessagesShelfViewController *)v48 _immediatelyGenerateAndStagePackageFromReviewAsset:v25 suppressLivePhoto:v24 mediaOrigin:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v18);
    }
  }

  v26 = [v13 packagesWithLivePhotoContent];
  if ([v26 count])
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = v26;
    v28 = v26;
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
        v34 = [v33 identifier];
        v35 = [v12 containsObject:v34];
        v36 = [v33 containsSuppressedLivePhoto];
        if (v35)
        {
          if ((v36 & 1) == 0)
          {
            v37 = [v33 mutableCopy];
            [v37 beginSupressingLivePhoto];
            if (v37)
            {
              goto LABEL_24;
            }
          }
        }

        else if (v36)
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
          v38 = [v27 allObjects];
          [v13 stagePackages:v38];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (!v30)
      {
LABEL_29:

        v26 = v42;
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

  [(AEMessagesShelfViewController *)v48 _dismissPresentedReviewController:v47 animated:1];
  v40 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2411DE000, v40, OS_LOG_TYPE_DEFAULT, "Finished review; did dismiss.", buf, 2u);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)a3
{
  v4 = a3;
  v5 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2411DE000, v5, OS_LOG_TYPE_DEFAULT, "Cancelled review; will dismiss.", buf, 2u);
  }

  [(AEMessagesShelfViewController *)self _dismissPresentedReviewController:v4 animated:1];
  v6 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2411DE000, v6, OS_LOG_TYPE_DEFAULT, "Cancelled review; did dismiss.", v7, 2u);
  }
}

- (id)contentAssetReferenceAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AEMessagesShelfViewController *)self _scrollViewController];
  v7 = [v6 scrollView];

  v8 = [(AEMessagesShelfViewController *)self _scrollViewController];
  v9 = [v8 contentCoordinateSpace];

  v10 = [(AEMessagesShelfViewController *)self _tilingController];
  [v9 convertPoint:v7 fromCoordinateSpace:{x, y}];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  if (v10 && (v11 = *MEMORY[0x277D3CF88], v12 = *(MEMORY[0x277D3CF88] + 8), v13 = *(MEMORY[0x277D3CF88] + 16), v14 = *(MEMORY[0x277D3CF88] + 24), [v10 hitTestTileAtPoint:&__block_literal_global_521 padding:? passingTest:?], v22))
  {
    v19 = v24;
    v20 = v23;
    v15 = [v10 currentLayout];
    v16 = [v15 dataSource];
    v21[0] = v20;
    v21[1] = v19;
    v17 = [v16 assetReferenceAtItemIndexPath:v21];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_presentReviewForAssetReference:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AEMessagesShelfViewController *)self _internalReviewDataSourceManager];
  v6 = [v5 didFailToOpenPhotoLibrary];

  if ((v6 & 1) == 0)
  {
    v7 = [(AEMessagesShelfViewController *)self _currentAssetsDataSource];
    v25 = [(AEMessagesShelfViewController *)self _internalReviewMediaProvider];
    v33 = 0u;
    v34 = 0u;
    if (v7)
    {
      [v7 indexPathForAssetReference:v4];
    }

    v26 = v7;
    v31 = v33;
    v32 = v34;
    v24 = PXIndexPathFromSimpleIndexPath();
    v8 = [(AEMessagesShelfViewController *)self _packageTransport];
    v9 = [v8 orderedStagedIdentifiers];
    v23 = [MEMORY[0x277CBEB98] setWithArray:v9];
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v9;
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
          v17 = [v8 stagedPackageForIdentifier:v16];
          if ([v17 containsSuppressedLivePhoto])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v13);
    }

    v18 = [(AEMessagesShelfViewController *)self _dataSource];
    v19 = [objc_alloc(MEMORY[0x277D3D058]) initWithReviewDataSource:v18];
    LOBYTE(v22) = 0;
    v20 = [objc_alloc(MEMORY[0x277D3D020]) initWithDataSourceManager:v19 mediaProvider:v25 reviewAssetProvider:0 initialIndexPath:v24 initialSelectedAssetUUIDs:v23 initialDisabledLivePhotoAssetUUIDs:v10 selectionCountLimit:0 sourceType:1 lowMemoryMode:v22 options:32];
    [v20 setDelegate:self];
    [v20 setModalPresentationStyle:0];
    [(AEMessagesShelfViewController *)self _presentReviewViewController:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldPresentReviewController
{
  v2 = [(AEMessagesShelfViewController *)self _packageTransport];
  v3 = [v2 shouldHideReviewController];

  return v3 ^ 1;
}

- (void)handleTap:(id)a3
{
  v7 = a3;
  if ([v7 state] == 3)
  {
    v4 = [(AEMessagesShelfViewController *)self _scrollViewController];
    v5 = [v4 scrollView];

    [v7 locationInView:v5];
    v6 = [(AEMessagesShelfViewController *)self contentAssetReferenceAtPoint:?];
    if (v6 && [(AEMessagesShelfViewController *)self shouldPresentReviewController])
    {
      [(AEMessagesShelfViewController *)self _presentReviewForAssetReference:v6];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(AEMessagesShelfViewController *)self _scrollViewController];
  v6 = [v5 scrollView];

  v7 = [(AEMessagesShelfViewController *)self _scrollViewController];
  v8 = [v7 contentCoordinateSpace];

  v9 = [(AEMessagesShelfViewController *)self _tilingController];
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
    [v9 hitTestTileAtPoint:&__block_literal_global_517 padding:? passingTest:?];
  }

  return 0;
}

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v7 = [(AEMessagesShelfViewController *)self _sceneController];
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
    v13 = [v12 view];
    [v13 removeFromSuperview];

    v14 = [v7 viewTileReusePool];
    [v14 checkInReusableObject:v12];
    v15 = [(AEMessagesShelfViewController *)self _tilesInUse];
    [v15 removeObject:v12];
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v6 = a4;
  v7 = [(AEMessagesShelfViewController *)self _sceneController];
  v8 = *&a3->var1[5];
  v26 = *&a3->var1[3];
  v27 = v8;
  v28 = *&a3->var1[7];
  v29 = a3->var1[9];
  v9 = *&a3->var1[1];
  v24 = *&a3->var0;
  v25 = v9;
  if (![v7 providesTileForIdentifier:&v24])
  {
    v13 = [v7 viewTileReusePool];
    v14 = v13;
    v15 = a3->var1[0];
    v16 = a3->var1[4];
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
          v17 = [v13 checkOutReusableObjectWithReuseIdentifier:1277777777];
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
              v20 = [(AEMessagesShelfViewController *)self _tilesInUse];
              [v20 addObject:v12];

              v21 = [(AEMessagesShelfViewController *)self _scrollViewController];
              v22 = [v12 view];
              [v21 ae_ensureSubview:v22];

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

    v12 = [v13 checkOutReusableObjectWithReuseIdentifier:v18];
    goto LABEL_38;
  }

  v10 = *&a3->var1[5];
  v26 = *&a3->var1[3];
  v27 = v10;
  v28 = *&a3->var1[7];
  v29 = a3->var1[9];
  v11 = *&a3->var1[1];
  v24 = *&a3->var0;
  v25 = v11;
  v12 = [v7 checkOutTileForIdentifier:&v24 layout:v6];
LABEL_39:

  return v12;
}

- (void)_didTapGenerationButton:(id)a3
{
  v4 = a3;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v5 = [(AEMessagesShelfViewController *)self _sceneController];
  v6 = [v5 tilingController];
  v7 = v6;
  if (v6)
  {
    [v6 tileIdentifierForTile:v4];
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
    v8 = [(AEMessagesShelfViewController *)self _packageTransport];
    v9 = [v8 orderedStagedIdentifiers];
    v10 = [v9 objectAtIndex:v29];
    v11 = [v8 stagedPackageForIdentifier:v10];
    v12 = [v11 generationRecipeData];
    v13 = [v11 identifier];
    [(AEMessagesShelfViewController *)self setEditingGeneratedPackageIdentifier:v13];

    v14 = [objc_alloc(MEMORY[0x277CD3788]) initWithStyle:0];
    [v14 setDelegate:self];
    if ([v11 containsGenerationRecipeData])
    {
      v15 = objc_alloc(MEMORY[0x277CD3790]);
      v25 = v12;
      v16 = [v15 initWithEncodedRecipe:v12 prompt:0 contextElements:MEMORY[0x277CBEBF8]];
      [v14 setRecipe:v16];
    }

    else
    {
      if (![v11 containsGenerationSourceImage])
      {
        v21 = PLAssetExplorerGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2411DE000, v21, OS_LOG_TYPE_ERROR, "No recipe nor source image, unable to present generative playground controller.", buf, 2u);
        }

        goto LABEL_11;
      }

      v25 = v12;
      v17 = objc_alloc(MEMORY[0x277CBEA90]);
      v18 = [v11 sourceImageURL];
      v16 = [v17 initWithContentsOfURL:v18];

      v19 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v16];
      [v14 setSourceImage:v19];
    }

    v20 = [(AEMessagesShelfViewController *)self entryViewDelegate];
    [v20 presentViewController:v14 animated:1 completion:0];

    v21 = [(AEMessagesShelfViewController *)self assetExplorerAnalytics];
    v22 = *MEMORY[0x277D3D0B0];
    v23 = [(AEMessagesShelfViewController *)self _dataSource];
    v24 = [v23 orderedIdentifiers];
    -[NSObject sendEvent:view:source:currentAssetCount:](v21, "sendEvent:view:source:currentAssetCount:", v22, 1, 1, [v24 count]);

    v12 = v25;
LABEL_11:
  }
}

- (void)_toggleIris:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v5 = [(AEMessagesShelfViewController *)self _sceneController];
  v6 = [v5 tilingController];
  v7 = v6;
  if (v6)
  {
    [v6 tileIdentifierForTile:v4];
  }

  else
  {
    v17 = 0u;
  }

  if ((v17 - 6) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [(AEMessagesShelfViewController *)self _packageTransport];
    v9 = [v8 orderedStagedIdentifiers];
    v10 = [v9 objectAtIndex:0];
    v11 = [v8 stagedPackageForIdentifier:v10];
    v12 = [v11 mutableCopy];
    if ([v11 containsSuppressedLivePhoto])
    {
      [v12 endSuppressingLivePhoto];
    }

    else
    {
      [v12 beginSupressingLivePhoto];
    }

    [v8 stagePackage:{v12, v17}];
    v13 = [(AEMessagesShelfViewController *)self assetExplorerAnalytics];
    v14 = *MEMORY[0x277D3D0C8];
    v15 = [(AEMessagesShelfViewController *)self _dataSource];
    v16 = [v15 orderedIdentifiers];
    [v13 sendEvent:v14 view:1 source:1 currentAssetCount:{objc_msgSend(v16, "count")}];
  }
}

- (void)_removeFromShelf:(id)a3
{
  v4 = a3;
  v5 = [(AEMessagesShelfViewController *)self _sceneController];
  v6 = [v5 tilingController];
  v7 = v6;
  if (v6)
  {
    [v6 tileIdentifierForTile:v4];
  }
}

- (id)assetsScene:(id)a3 transitionAnimationCoordinatorForChange:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 tilingController];
  v8 = [v6 tilingController:v7 transitionAnimationCoordinatorForChange:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setDelayInsertions:1];
  }

  v9 = [[AEDelegatingTransitionAnimationCoordinator alloc] initWithWrappedCoordinator:v8];
  [(AEDelegatingTransitionAnimationCoordinator *)v9 setEnableDoubleSidedAnimations:1];

  return v9;
}

- (id)assetsScene:(id)a3 layoutForDataSource:(id)a4
{
  v5 = a4;
  v6 = [(PXAssetsTilingLayout *)[AEMessagesShelfLayout alloc] initWithDataSource:v5];

  [(AEMessagesShelfLayout *)v6 setDelegate:self];

  return v6;
}

- (id)framesOfVisibleContentViewInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(AEMessagesShelfViewController *)self _scrollViewController];
  v6 = [v5 contentCoordinateSpace];
  [v5 visibleRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(AEMessagesShelfViewController *)self _tilingController];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__AEMessagesShelfViewController_framesOfVisibleContentViewInCoordinateSpace___block_invoke;
  v22[3] = &unk_278CC71E0;
  v23 = v6;
  v24 = v4;
  v25 = v16;
  v17 = v16;
  v18 = v4;
  v19 = v6;
  [v15 enumerateTilesInRect:0 withOptions:v22 usingBlock:{v8, v10, v12, v14}];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = [MEMORY[0x277CF97E0] sharedBehaviors];
  [v4 entryViewMaxPluginShelfHeight];
  v6 = v5;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)layoutShouldShowVideoDuration:(id)a3
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 statusBarOrientation];

  return (v4 - 1) < 2;
}

- (double)layout:(id)a3 itemAtIndexPathDuration:(PXSimpleIndexPath *)a4
{
  v5 = [a3 dataSource];
  v6 = *&a4->item;
  v11[0] = *&a4->dataSourceIdentifier;
  v11[1] = v6;
  v7 = [v5 assetAtItemIndexPath:v11];
  [v7 duration];
  v9 = v8;

  return v9;
}

- (BOOL)layout:(id)a3 itemAtIndexPathIsSpatial:(PXSimpleIndexPath *)a4
{
  v5 = [a3 dataSource];
  v6 = *&a4->item;
  v10[0] = *&a4->dataSourceIdentifier;
  v10[1] = v6;
  v7 = [v5 assetAtItemIndexPath:v10];
  v8 = ([v7 mediaSubtypes] >> 10) & 1;

  return v8;
}

- (BOOL)layout:(id)a3 itemAtIndexPathIsAnimatedImage:(PXSimpleIndexPath *)a4
{
  v5 = [a3 dataSource];
  v6 = *&a4->item;
  v10[0] = *&a4->dataSourceIdentifier;
  v10[1] = v6;
  v7 = [v5 assetAtItemIndexPath:v10];
  v8 = [v7 playbackStyle] == 2;

  return v8;
}

- (BOOL)layout:(id)a3 itemAtIndexPathIsLoop:(PXSimpleIndexPath *)a4
{
  v5 = [a3 dataSource];
  v6 = *&a4->item;
  v10[0] = *&a4->dataSourceIdentifier;
  v10[1] = v6;
  v7 = [v5 assetAtItemIndexPath:v10];
  v8 = [v7 playbackStyle] == 5;

  return v8;
}

- (BOOL)layout:(id)a3 itemAtIndexPathIsVideo:(PXSimpleIndexPath *)a4
{
  v5 = [a3 dataSource];
  v6 = *&a4->item;
  v10[0] = *&a4->dataSourceIdentifier;
  v10[1] = v6;
  v7 = [v5 assetAtItemIndexPath:v10];
  v8 = [v7 playbackStyle] == 4;

  return v8;
}

- (int64_t)layout:(id)a3 generationStateForItemAtIndexPath:(PXSimpleIndexPath *)a4
{
  if (!_os_feature_enabled_impl() || ![MEMORY[0x277CD3788] isAvailable])
  {
    return 0;
  }

  v6 = [(AEMessagesShelfViewController *)self _packageTransport];
  v7 = [v6 orderedStagedIdentifiers];
  item = a4->item;
  if (item >= [v7 count])
  {
    v13 = 0;
  }

  else
  {
    v9 = [v7 objectAtIndex:a4->item];
    v10 = [v6 stagedPackageForIdentifier:v9];
    v11 = [v10 containsGenerationRecipeData];
    v12 = [v10 containsGenerationSourceImage];
    if (v11)
    {
      v13 = 2;
    }

    else
    {
      v13 = v12;
    }
  }

  return v13;
}

- (int64_t)layout:(id)a3 irisToggleStateForItemAtIndexPath:(PXSimpleIndexPath *)a4
{
  v5 = [(AEMessagesShelfViewController *)self _packageTransport];
  v6 = [v5 orderedStagedIdentifiers];
  item = a4->item;
  if (item >= [v6 count])
  {
    v10 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndex:a4->item];
    v9 = [v5 stagedPackageForIdentifier:v8];
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

- (double)layout:(id)a3 aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)a4
{
  v5 = [a3 dataSource];
  v6 = *&a4->item;
  v12[0] = *&a4->dataSourceIdentifier;
  v12[1] = v6;
  v7 = [v5 assetReferenceAtItemIndexPath:v12];
  v8 = [v7 asset];
  [v8 aspectRatio];
  v10 = v9;

  return v10;
}

- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AEMessagesShelfViewController *)self _sceneController];
  v9 = [(AEMessagesShelfViewController *)self _indexToScrollTo];
  if (v9 < 0)
  {
    [v8 tilingController:v6 initialVisibleOriginForLayout:v7];
    v16 = v17;
    v15 = v18;
  }

  else
  {
    v10 = v9;
    v11 = v7;
    v12 = [v11 dataSource];
    v13 = [v12 identifier];
    memset(v25, 0, sizeof(v25));
    v14 = *MEMORY[0x277D3CC58];
    v24 = 0;
    v23 = 0u;
    v22 = 0u;
    v21[0] = 5;
    v21[1] = v14;
    v21[2] = v13;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 1) != 0 && AEMessagesShelfViewControllerTransportPackageTransportObserverContext == a5)
  {
    [(AEMessagesShelfViewController *)self _transportStagingStateDidChange];
  }
}

- (void)_transportStagingStateDidChange
{
  v3 = [(AEMessagesShelfViewController *)self _packageTransport];
  v4 = [v3 orderedStagedIdentifiers];
  v5 = [(AEMessagesShelfViewController *)self _dataSource];
  v6 = [v5 orderedIdentifiers];
  v7 = [MEMORY[0x277CBEB70] orderedSetWithArray:v4];
  v8 = [MEMORY[0x277CBEB70] orderedSetWithArray:v6];
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
  v12 = v5;
  v25 = v12;
  v26 = v10;
  v27 = v3;
  v28 = v11;
  v13 = v4;
  v29 = v13;
  v19 = v11;
  v18 = v3;
  v14 = v10;
  v15 = v9;
  [v12 performChanges:&v20];
  v16 = [v12 orderedIdentifiers];
  v17 = [v16 count];
  if (v17 > [v6 count])
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
  v3 = [(AEMessagesShelfViewController *)self _sceneController];
  v4 = [v3 viewTileReusePool];
  [AEDecorativeTileSource registerCommonDecorativeTilesToReusePool:v4];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__AEMessagesShelfViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_278CC7190;
  objc_copyWeak(&v12, &location);
  [v4 registerReusableObjectForReuseIdentifier:1313817680 creationHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__AEMessagesShelfViewController_viewDidLoad__block_invoke_2;
  v9[3] = &unk_278CC7190;
  objc_copyWeak(&v10, &location);
  [v4 registerReusableObjectForReuseIdentifier:1295210292 creationHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__AEMessagesShelfViewController_viewDidLoad__block_invoke_3;
  v7[3] = &unk_278CC7190;
  objc_copyWeak(&v8, &location);
  [v4 registerReusableObjectForReuseIdentifier:1295210293 creationHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__AEMessagesShelfViewController_viewDidLoad__block_invoke_4;
  v5[3] = &unk_278CC7190;
  objc_copyWeak(&v6, &location);
  [v4 registerReusableObjectForReuseIdentifier:1277777777 creationHandler:v5];
  [v4 registerReusableObjectForReuseIdentifier:1500001338 creationHandler:&__block_literal_global];
  [v4 registerReusableObjectForReuseIdentifier:1215219281 creationHandler:&__block_literal_global_498];
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
  v3 = [(AEMessagesShelfViewController *)self _scrollViewController];
  v6 = [v3 scrollView];

  v4 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:v4];

  [v6 setShowsVerticalScrollIndicator:0];
  [v6 setShowsHorizontalScrollIndicator:0];
  [v6 setUserInteractionEnabled:1];
  [(AEMessagesShelfViewController *)self setView:v6];
  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  [v5 setDelegate:self];
  [v6 addGestureRecognizer:v5];
}

- (void)_presentReviewViewController:(id)a3
{
  v4 = a3;
  v5 = [(AEMessagesShelfViewController *)self entryViewDelegate];
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

    [v5 presentViewController:v4 animated:1 completion:0];
    v9 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2411DE000, v9, OS_LOG_TYPE_DEFAULT, "Did present review controller.", v12, 2u);
    }

    v10 = v4;
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

- (AEMessagesShelfViewController)initWithPackageTransport:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v35.receiver = self;
  v35.super_class = AEMessagesShelfViewController;
  v8 = [(AEMessagesShelfViewController *)&v35 init];
  v9 = v8;
  if (v8)
  {
    v8->__options = a4;
    objc_storeStrong(&v8->__packageTransport, a3);
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
    v19 = [(PXSectionedDataSourceManager *)v9->__wrappedDataSourceManager dataSource];
    v20 = [(PXAssetsTilingLayout *)[AEMessagesShelfLayout alloc] initWithDataSource:v19];
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