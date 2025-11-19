@interface PDFThumbnailsCollectionView
- (BOOL)_canEditDocument;
- (BOOL)shouldDisplayActionButtonForPage:(id)a3;
- (CGSize)thumbnailSizeForPage:(id)a3;
- (CGSize)thumbnailSizeForPage:(id)a3 displayBox:(int64_t)a4;
- (CGSize)thumbnailSizeForPage:(id)a3 displayBox:(int64_t)a4 thumbnailView:(id)a5;
- (id)_pasteActionIfAvailableAfterPage:(id)a3;
- (id)cacheKeyForPage:(id)a3;
- (id)cachedImageForPage:(id)a3 displayBox:(int64_t)a4 thumbnailView:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4;
- (id)contextMenuForBackgroundAtLocation:(CGPoint)a3;
- (id)contextMenuForPage:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)currentPage;
- (id)datasourceQueue;
- (id)defaultContextMenuForPage:(id)a3;
- (id)imageDrawingOperationQueue;
- (id)initFromThumbnailView:(id)a3;
- (id)itemsForDragWithSession:(id)a3 atIndexPath:(id)a4;
- (id)makeDatasource;
- (id)previewForCollectionView:(id)a3 contextMenuInteraction:(id)a4;
- (id)previewForCollectionView:(id)a3 indexPath:(id)a4;
- (id)supportedUTTypes;
- (unint64_t)_insertPagesFromProvidedPDFDocument:(id)a3 atPageIndex:(unint64_t)a4;
- (void)_insertFileAtURL:(id)a3 type:(id)a4 atIndex:(unint64_t)a5 completionHandler:(id)a6;
- (void)_insertImageWithURL:(id)a3 atIndex:(unint64_t)a4 completionHandler:(id)a5;
- (void)_insertPDFDocumentWithURL:(id)a3 atIndex:(unint64_t)a4 completionHandler:(id)a5;
- (void)_reloadPage:(id)a3;
- (void)_selectAndScrollToCurrentPageIfNeeded;
- (void)_updateActionsButtonVisibilityAtIndexPath:(id)a3;
- (void)_updateScrubber;
- (void)applySnapshotWithAnimation:(BOOL)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)configureCell:(id)a3 withPage:(id)a4 indexPath:(id)a5;
- (void)copyPage:(id)a3;
- (void)currentPageChanged:(id)a3;
- (void)insertPages:(id)a3 atIndexes:(id)a4;
- (void)itemProvider:(id)a3 registerDataRepresentationForPage:(id)a4 draggedPages:(id)a5;
- (void)itemProvider:(id)a3 registerFileRepresentationForPage:(id)a4 draggedPages:(id)a5;
- (void)loadImageWithPage:(id)a3 displayBox:(int64_t)a4 thumbnailView:(id)a5 completionHandler:(id)a6;
- (void)movePage:(id)a3 toIndex:(unint64_t)a4;
- (void)movePageWithTransaction:(id)a3;
- (void)pageChanged:(id)a3;
- (void)pasteAfterPage:(id)a3;
- (void)removePages:(id)a3;
- (void)updateCacheForPage:(id)a3 withImage:(id)a4;
- (void)updateImageForCell:(id)a3 atIndexPath:(id)a4;
- (void)updateImageForCell:(id)a3 indexPath:(id)a4 page:(id)a5;
- (void)writePDFDocumentFromPages:(id)a3 completionHandler:(id)a4;
@end

@implementation PDFThumbnailsCollectionView

- (id)initFromThumbnailView:(id)a3
{
  v34[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = PDFThumbnailsCollectionView;
  v5 = [(PDFThumbnailsCollectionView *)&v33 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_thumbnailView, v4);
    v7 = objc_opt_new();
    cache = v6->_cache;
    v6->_cache = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69DC840]);
    [v9 setScrollDirection:0];
    [v9 setSectionInset:{5.0, 0.0, 5.0, 0.0}];
    [v9 setMinimumLineSpacing:0.0];
    v32 = v9;
    [v9 setEstimatedItemSize:{*MEMORY[0x1E69DDC10], *(MEMORY[0x1E69DDC10] + 8)}];
    v10 = objc_alloc(MEMORY[0x1E69DC7F0]);
    [v4 bounds];
    v11 = [v10 initWithFrame:v9 collectionViewLayout:?];
    collectionView = v6->_collectionView;
    v6->_collectionView = v11;

    [(PDFThumbnailsCollectionView *)v6 addSubview:v6->_collectionView];
    [(UICollectionView *)v6->_collectionView setDragInteractionEnabled:1];
    [(UICollectionView *)v6->_collectionView setDragDelegate:v6];
    [(UICollectionView *)v6->_collectionView setDropDelegate:v6];
    [(UICollectionView *)v6->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = MEMORY[0x1E696ACD8];
    v31 = [(UICollectionView *)v6->_collectionView bottomAnchor];
    v30 = [(PDFThumbnailsCollectionView *)v6 bottomAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v34[0] = v29;
    v28 = [(UICollectionView *)v6->_collectionView topAnchor];
    v27 = [(PDFThumbnailsCollectionView *)v6 topAnchor];
    v25 = [v28 constraintEqualToAnchor:v27];
    v34[1] = v25;
    v13 = [(UICollectionView *)v6->_collectionView leadingAnchor];
    v14 = [(PDFThumbnailsCollectionView *)v6 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v34[2] = v15;
    v16 = [(UICollectionView *)v6->_collectionView trailingAnchor];
    v17 = [(PDFThumbnailsCollectionView *)v6 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v34[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
    [v26 activateConstraints:v19];

    [(UICollectionView *)v6->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PDFIconCollectionViewCell"];
    v20 = [(PDFThumbnailsCollectionView *)v6 makeDatasource];
    dataSource = v6->_dataSource;
    v6->_dataSource = v20;

    [(UICollectionView *)v6->_collectionView setDataSource:v6->_dataSource];
    [(UICollectionView *)v6->_collectionView setDelegate:v6];
    v22 = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v6->_collectionView setBackgroundColor:v22];

    v23 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v6];
    [(UICollectionView *)v6->_collectionView addInteraction:v23];
  }

  return v6;
}

- (id)makeDatasource
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x1E69DC820]);
  collectionView = self->_collectionView;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__PDFThumbnailsCollectionView_makeDatasource__block_invoke;
  v11[3] = &unk_1E8150F60;
  objc_copyWeak(&v12, &location);
  v5 = [v3 initWithCollectionView:collectionView cellProvider:v11];
  v6 = [v5 reorderingHandlers];
  [v6 setCanReorderItemHandler:&__block_literal_global_6];

  v7 = [v5 reorderingHandlers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PDFThumbnailsCollectionView_makeDatasource__block_invoke_3;
  v9[3] = &unk_1E8150FA8;
  objc_copyWeak(&v10, &location);
  [v7 setDidReorderHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v5;
}

id __45__PDFThumbnailsCollectionView_makeDatasource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a2 dequeueReusableCellWithReuseIdentifier:@"PDFIconCollectionViewCell" forIndexPath:v7];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (v8 && WeakRetained)
  {
    [WeakRetained configureCell:v9 withPage:v8 indexPath:v7];
  }

  return v9;
}

void __45__PDFThumbnailsCollectionView_makeDatasource__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained movePageWithTransaction:v5];
  }
}

- (void)updateImageForCell:(id)a3 indexPath:(id)a4 page:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 page];

  if (v11 == v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    v13 = [WeakRetained PDFView];
    v14 = [v13 document];
    v15 = [v14 renderingProperties];
    v16 = [v15 displayBox];

    v17 = [(PDFThumbnailsCollectionView *)self cachedImageForPage:v10 displayBox:v16 thumbnailView:WeakRetained];
    if (v17)
    {
      v18 = [v8 imageView];
      v19 = [v18 image];

      if (v17 != v19)
      {
        v20 = [v9 item];
        _PDFLog(OS_LOG_TYPE_INFO, "PDFThumbnailsCollectionView", "Setting cell image for cell n°%lu", v21, v22, v23, v24, v25, v20);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __65__PDFThumbnailsCollectionView_updateImageForCell_indexPath_page___block_invoke_2;
        block[3] = &unk_1E8150FF8;
        v33 = v8;
        v34 = v17;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    else
    {
      v26 = [v9 item];
      _PDFLog(OS_LOG_TYPE_INFO, "PDFThumbnailsCollectionView", "Image for cell n°%lu is not cached", v27, v28, v29, v30, v31, v26);
      objc_initWeak(&location, self);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __65__PDFThumbnailsCollectionView_updateImageForCell_indexPath_page___block_invoke;
      v35[3] = &unk_1E8150FD0;
      objc_copyWeak(&v38, &location);
      v36 = v8;
      v37 = v10;
      [(PDFThumbnailsCollectionView *)self loadImageWithPage:v37 displayBox:v16 thumbnailView:WeakRetained completionHandler:v35];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }
  }
}

void __65__PDFThumbnailsCollectionView_updateImageForCell_indexPath_page___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v8)
  {
    if (WeakRetained)
    {
      v5 = [*(a1 + 32) page];
      v6 = *(a1 + 40);

      if (v5 == v6)
      {
        v7 = [*(a1 + 32) imageView];
        [v7 setImage:v8];
      }
    }
  }
}

void __65__PDFThumbnailsCollectionView_updateImageForCell_indexPath_page___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:v1];
}

- (void)configureCell:(id)a3 withPage:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 item];
  _PDFLog(OS_LOG_TYPE_DEBUG, "PDFThumbnailsCollectionView", "Configuring cell n°%lu", v12, v13, v14, v15, v16, v11);
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v51 = [WeakRetained PDFView];
  v18 = [v51 document];
  v19 = [WeakRetained layoutMode];
  [WeakRetained thumbnailSize];
  if (v19)
  {
    [v8 setThumbnailHeight:v20];
  }

  else
  {
    [v8 setThumbnailWidth:?];
  }

  v50 = v18;
  v21 = [v18 renderingProperties];
  v22 = [v21 displayBox];

  [v9 boundsForBox:v22];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  memset(&v56, 0, sizeof(v56));
  v31 = PDFDegToRad([v9 rotation]);
  CGAffineTransformMakeRotation(&v56, v31);
  v55 = v56;
  v57.origin.x = v24;
  v57.origin.y = v26;
  v57.size.width = v28;
  v57.size.height = v30;
  v58 = CGRectApplyAffineTransform(v57, &v55);
  [v8 updateAspectConstraintWithSize:{v58.size.width, v58.size.height}];
  [v8 setPage:v9];
  [(PDFThumbnailsCollectionView *)self updateImageForCell:v8 indexPath:v10 page:v9];
  objc_initWeak(&v55, self);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __64__PDFThumbnailsCollectionView_configureCell_withPage_indexPath___block_invoke;
  v52[3] = &unk_1E8151020;
  objc_copyWeak(&v54, &v55);
  v32 = v9;
  v53 = v32;
  v33 = [v8 actionsButton];
  [v33 _setMenuProvider:v52];

  v34 = [v8 actionsButton];
  [v34 setShowsMenuAsPrimaryAction:1];

  v35 = [(PDFThumbnailsCollectionView *)self shouldDisplayActionButtonForPage:v32];
  v36 = [v8 actionsButton];
  [v36 setHidden:!v35];

  [v8 invalidateIntrinsicContentSize];
  v37 = [v32 document];
  v38 = [v37 indexForPage:v32];

  v39 = MEMORY[0x1E696AEC0];
  v40 = PDFKitLocalizedString(@"Thumbnail for page %ld");
  v41 = v38 + 1;
  v42 = [v39 stringWithFormat:v40, v38 + 1];
  [v8 setAccessibilityLabel:v42];

  v43 = PDFKitLocalizedString(@"PDF thumbnail");
  [v8 setAccessibilityIdentifier:v43];

  v44 = MEMORY[0x1E696AEC0];
  v45 = PDFKitLocalizedString(@"Page actions for page %ld");
  v46 = [v44 stringWithFormat:v45, v41];
  v47 = [v8 actionsButton];
  [v47 setAccessibilityLabel:v46];

  v48 = PDFKitLocalizedString(@"Page actions");
  v49 = [v8 actionsButton];
  [v49 setAccessibilityIdentifier:v48];

  objc_destroyWeak(&v54);
  objc_destroyWeak(&v55);
}

id __64__PDFThumbnailsCollectionView_configureCell_withPage_indexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained contextMenuForPage:*(a1 + 32)];

  return v3;
}

- (id)cacheKeyForPage:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DF90];
  v11 = @"pageHash";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "hash")}];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v4 dictionaryWithDictionary:v6];

  v8 = [v3 lastAnnotationChange];
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:@"lastAnnotation"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "rotation")}];
  [v7 setObject:v9 forKeyedSubscript:@"rotation"];

  return v7;
}

- (void)updateCacheForPage:(id)a3 withImage:(id)a4
{
  if (a3 && a4)
  {
    v7 = a4;
    v8 = a4;
    v9 = a3;
    Height = CGImageGetHeight([v8 CGImage]);
    *&v11 = (4 * Height * CGImageGetBytesPerRow([v8 CGImage]));
    _PDFLog(OS_LOG_TYPE_INFO, "PDFThumbnailsCollectionView", "Adding new image to the cache with a cost of %f", v12, v13, v14, v15, v16, v11);
    cache = self->_cache;
    v23 = [(PDFThumbnailsCollectionView *)self cacheKeyForPage:v9];

    [(NSCache *)cache setObject:v8 forKey:v23 cost:*&v11];
  }

  else
  {
    a4;
    v23 = a3;
    _PDFLog(OS_LOG_TYPE_ERROR, "PDFThumbnailsCollectionView", "Invalid nil parameter(s) to [updateCacheForPage:%p withImage:%p]", v18, v19, v20, v21, v22, v23);
  }
}

- (id)cachedImageForPage:(id)a3 displayBox:(int64_t)a4 thumbnailView:(id)a5
{
  cache = self->_cache;
  v6 = [(PDFThumbnailsCollectionView *)self cacheKeyForPage:a3, a4, a5];
  v7 = [(NSCache *)cache objectForKey:v6];

  return v7;
}

- (void)loadImageWithPage:(id)a3 displayBox:(int64_t)a4 thumbnailView:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 document];
  v14 = [v13 pageCount];
  v15 = [v13 indexForPage:v10];
  if (v15 > 0x7FFFFFFFFFFFFFFELL || v15 > v14 - 1)
  {
    v19 = [MEMORY[0x1E696ADC8] mainQueue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __92__PDFThumbnailsCollectionView_loadImageWithPage_displayBox_thumbnailView_completionHandler___block_invoke;
    v29[3] = &unk_1E8151048;
    v31 = v12;
    v30 = v10;
    [v19 addOperationWithBlock:v29];
  }

  else
  {
    objc_initWeak(&location, self);
    v16 = MEMORY[0x1E696AAE0];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __92__PDFThumbnailsCollectionView_loadImageWithPage_displayBox_thumbnailView_completionHandler___block_invoke_2;
    v23 = &unk_1E8151098;
    objc_copyWeak(v27, &location);
    v26 = v12;
    v24 = v10;
    v27[1] = a4;
    v25 = v11;
    v17 = [v16 blockOperationWithBlock:&v20];
    v18 = [(PDFThumbnailsCollectionView *)self imageDrawingOperationQueue:v20];
    [v18 addOperation:v17];

    objc_destroyWeak(v27);
    objc_destroyWeak(&location);
  }
}

void __92__PDFThumbnailsCollectionView_loadImageWithPage_displayBox_thumbnailView_completionHandler___block_invoke_2(uint64_t a1)
{
  v23[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained thumbnailSizeForPage:*(a1 + 32) displayBox:*(a1 + 64) thumbnailView:*(a1 + 40)];
    v5 = v4;
    v7 = v6;
    v8 = *(a1 + 32);
    v9 = *(a1 + 64);
    v22[0] = @"PDFPageImageProperty_DrawAnnotations";
    v22[1] = @"PDFPageImageProperty_WithRotation";
    v23[0] = MEMORY[0x1E695E118];
    v23[1] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v11 = [v8 imageOfSize:v9 forBox:v10 withOptions:{v5, v7}];

    [v3 updateCacheForPage:*(a1 + 32) withImage:v11];
    v12 = [MEMORY[0x1E696ADC8] mainQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__PDFThumbnailsCollectionView_loadImageWithPage_displayBox_thumbnailView_completionHandler___block_invoke_4;
    v15[3] = &unk_1E8151070;
    v18 = *(a1 + 48);
    v16 = *(a1 + 32);
    v17 = v11;
    v13 = v11;
    [v12 addOperationWithBlock:v15];
  }

  else
  {
    v14 = [MEMORY[0x1E696ADC8] mainQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __92__PDFThumbnailsCollectionView_loadImageWithPage_displayBox_thumbnailView_completionHandler___block_invoke_3;
    v19[3] = &unk_1E8151048;
    v21 = *(a1 + 48);
    v20 = *(a1 + 32);
    [v14 addOperationWithBlock:v19];

    v13 = v21;
  }
}

- (id)datasourceQueue
{
  if (datasourceQueue_once != -1)
  {
    [PDFThumbnailsCollectionView datasourceQueue];
  }

  v3 = datasourceQueue__datasourceQueue;

  return v3;
}

void __46__PDFThumbnailsCollectionView_datasourceQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.pdfkit.thumbnails-datasource-queue", attr);
  v2 = datasourceQueue__datasourceQueue;
  datasourceQueue__datasourceQueue = v1;
}

- (id)imageDrawingOperationQueue
{
  if (imageDrawingOperationQueue_once != -1)
  {
    [PDFThumbnailsCollectionView imageDrawingOperationQueue];
  }

  v3 = imageDrawingOperationQueue__imageDrawingOperationQueue;

  return v3;
}

uint64_t __57__PDFThumbnailsCollectionView_imageDrawingOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = imageDrawingOperationQueue__imageDrawingOperationQueue;
  imageDrawingOperationQueue__imageDrawingOperationQueue = v0;

  [imageDrawingOperationQueue__imageDrawingOperationQueue setMaxConcurrentOperationCount:1];
  [imageDrawingOperationQueue__imageDrawingOperationQueue setName:@"com.apple.pdfkit.thumbnails-drawing-operation-queue"];
  v2 = imageDrawingOperationQueue__imageDrawingOperationQueue;

  return [v2 setQualityOfService:25];
}

- (void)applySnapshotWithAnimation:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v6 = [WeakRetained PDFView];
  v7 = [v6 document];

  if (WeakRetained)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && ([v7 isLocked] & 1) == 0)
  {
    objc_initWeak(&location, self);
    v9 = [(PDFThumbnailsCollectionView *)self datasourceQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__PDFThumbnailsCollectionView_applySnapshotWithAnimation___block_invoke;
    v10[3] = &unk_1E81510C0;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    v13 = a3;
    dispatch_async(v9, v10);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __58__PDFThumbnailsCollectionView_applySnapshotWithAnimation___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69955A0]);
    v14[0] = @"Thumbnails";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v3 appendSectionsWithIdentifiers:v4];

    if ([*(a1 + 32) pageCount])
    {
      v5 = 0;
      do
      {
        v6 = [*(a1 + 32) pageAtIndex:v5];
        v7 = v6;
        if (v6)
        {
          v13 = v6;
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
          [v3 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:@"Thumbnails"];
        }

        ++v5;
      }

      while ([*(a1 + 32) pageCount] > v5);
    }

    v9 = WeakRetained[53];
    v10 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PDFThumbnailsCollectionView_applySnapshotWithAnimation___block_invoke_2;
    v11[3] = &unk_1E8150990;
    v12 = WeakRetained;
    [v9 applySnapshot:v3 animatingDifferences:v10 completion:v11];
  }
}

- (CGSize)thumbnailSizeForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v6 = [WeakRetained PDFView];
  v7 = [v6 document];

  v8 = [v7 renderingProperties];
  v9 = [v8 displayBox];

  [(PDFThumbnailsCollectionView *)self thumbnailSizeForPage:v4 displayBox:v9];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)thumbnailSizeForPage:(id)a3 displayBox:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  [(PDFThumbnailsCollectionView *)self thumbnailSizeForPage:v6 displayBox:a4 thumbnailView:WeakRetained];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)thumbnailSizeForPage:(id)a3 displayBox:(int64_t)a4 thumbnailView:(id)a5
{
  v8 = a5;
  v9 = a3;
  BackingScaleFactor = PDFScreenGetBackingScaleFactor();
  [v9 boundsForBox:a4];
  v12 = v11;
  v14 = v13;

  v15 = v14 / v12;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v17 = [WeakRetained layoutMode];
  [v8 thumbnailSize];
  v19 = v18;
  v21 = v20;

  v22 = v21 + -6.0;
  v23 = v19 + -6.0;
  if (v17)
  {
    v23 = (v21 + -6.0) / v15;
  }

  else
  {
    v22 = v15 * (v19 + -6.0);
  }

  v24 = BackingScaleFactor + BackingScaleFactor;
  v25 = (BackingScaleFactor + BackingScaleFactor) * v22;
  v26 = v24 * v23;

  v27 = v26;
  v28 = v25;
  result.height = v28;
  result.width = v27;
  return result;
}

- (id)currentPage
{
  v3 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 firstObject];
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    v7 = [WeakRetained PDFView];
    v8 = [v7 document];
    v9 = [v8 pageAtIndex:{objc_msgSend(v5, "item")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)currentPageChanged:(id)a3
{
  [(PDFThumbnailsCollectionView *)self _updateScrubber];

  [(PDFThumbnailsCollectionView *)self _selectAndScrollToCurrentPageIfNeeded];
}

- (void)pageChanged:(id)a3
{
  v4 = MEMORY[0x1E69E58C0];
  v5 = a3;
  [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel_pageChanged_ object:0];
  v7 = [v5 userInfo];

  v6 = [v7 objectForKey:@"page"];
  if (v6)
  {
    [(PDFThumbnailsCollectionView *)self _reloadPage:v6];
  }
}

- (void)_reloadPage:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PDFThumbnailsCollectionView *)self datasourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PDFThumbnailsCollectionView__reloadPage___block_invoke;
  block[3] = &unk_1E81510E8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__PDFThumbnailsCollectionView__reloadPage___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[53] snapshot];
    v5 = v4;
    if (v4 && [v4 numberOfItems] >= 1 && objc_msgSend(v5, "indexOfSectionIdentifier:", @"Thumbnails") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = objc_loadWeakRetained(v3 + 51);
      v7 = [v6 PDFView];
      v8 = [v7 document];

      v9 = [v8 indexForPage:*(a1 + 32)];
      if (v9 < [v5 numberOfItemsInSection:@"Thumbnails"])
      {
        v10 = v3[53];
        v11 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
        v12 = [v10 itemIdentifierForIndexPath:v11];

        v13 = [v3[53] snapshot];
        v14 = [v13 indexOfItemIdentifier:*(a1 + 32)];
        if (v13 && v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16[0] = v12;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
          [v13 reconfigureItemsWithIdentifiers:v15];

          [v3[53] applySnapshot:v13 animatingDifferences:0];
        }
      }
    }
  }
}

- (void)_updateScrubber
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v4 = [WeakRetained layoutMode];

  v5 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    if (v4 == 1)
    {
      [v5 setScrollDirection:1];
    }

    [(UICollectionView *)self->_collectionView setCollectionViewLayout:v7];
    v5 = v7;
  }
}

- (void)_selectAndScrollToCurrentPageIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v3 = [WeakRetained PDFView];
  v4 = [v3 document];
  v5 = [v3 currentPage];
  v6 = [v5 document];
  v7 = [v6 indexForPage:v5];

  v8 = [v4 pageCount];
  v9 = v7 & ~(v7 >> 31);
  if (v9 >= v8 - 1)
  {
    v9 = v8 - 1;
  }

  v10 = v9;
  v11 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:0];
  v12 = [(UICollectionView *)self->_collectionView dataSource];
  v13 = [v12 numberOfSectionsInCollectionView:self->_collectionView];

  if (v13)
  {
    if ([(UICollectionView *)self->_collectionView numberOfItemsInSection:0]> v10)
    {
      [(UICollectionView *)self->_collectionView scrollToItemAtIndexPath:v11 atScrollPosition:0 animated:1];
      v14 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
      v15 = [v14 containsObject:v11];

      if ((v15 & 1) == 0)
      {
        [(UICollectionView *)self->_collectionView selectItemAtIndexPath:v11 animated:1 scrollPosition:0];
        [(PDFThumbnailsCollectionView *)self _updateActionsButtonVisibilityAtIndexPath:v11];
      }
    }
  }
}

- (BOOL)_canEditDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v3 = [WeakRetained PDFView];
  v4 = [v3 document];

  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 documentCanBeEdited:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateActionsButtonVisibilityAtIndexPath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v6 = [WeakRetained PDFView];
  v7 = [v6 document];
  v12 = [v7 pageAtIndex:{objc_msgSend(v4, "item")}];

  v8 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v4];

  if (v12)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [(PDFThumbnailsCollectionView *)self shouldDisplayActionButtonForPage:v12];
    v11 = [v8 actionsButton];
    [v11 setHidden:!v10];
  }
}

- (void)updateImageForCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(PDFThumbnailsCollectionView *)self datasourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PDFThumbnailsCollectionView_updateImageForCell_atIndexPath___block_invoke;
  block[3] = &unk_1E8151110;
  objc_copyWeak(&v15, &location);
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __62__PDFThumbnailsCollectionView_updateImageForCell_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = WeakRetained[53];
      v5 = *(a1 + 40);
      v8 = WeakRetained;
      v6 = v3;
      v7 = [v4 itemIdentifierForIndexPath:v5];
      [*(a1 + 48) updateImageForCell:v6 indexPath:*(a1 + 40) page:v7];

      WeakRetained = v8;
    }
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v9 = [WeakRetained PDFView];

  v7 = [v9 document];
  v8 = [v7 pageAtIndex:{objc_msgSend(v5, "item")}];
  [v9 goToPage:v8];

  [(PDFThumbnailsCollectionView *)self _updateActionsButtonVisibilityAtIndexPath:v5];
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v10 = [WeakRetained PDFView];
  v11 = [v10 document];

  if (v11)
  {
    v12 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v8];
    if (v12)
    {
      objc_initWeak(&location, self);
      v13 = MEMORY[0x1E69DC8D8];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __95__PDFThumbnailsCollectionView_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke;
      v16[3] = &unk_1E8151138;
      objc_copyWeak(&v18, &location);
      v17 = v12;
      v14 = [v13 configurationWithIdentifier:v8 previewProvider:0 actionProvider:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __95__PDFThumbnailsCollectionView_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained contextMenuForPage:*(a1 + 32)];

  return v3;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:x, y];
  if (v8)
  {
    v9 = [(PDFThumbnailsCollectionView *)self collectionView:self->_collectionView contextMenuConfigurationForItemAtIndexPath:v8 point:x, y];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    v11 = [WeakRetained PDFView];
    v12 = [v11 document];

    v13 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v12 inSection:{"pageCount") - 1, 0}];
    objc_initWeak(&location, self);
    v14 = MEMORY[0x1E69DC8D8];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __85__PDFThumbnailsCollectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v16[3] = &unk_1E8151160;
    objc_copyWeak(v17, &location);
    v17[1] = *&x;
    v17[2] = *&y;
    v9 = [v14 configurationWithIdentifier:v13 previewProvider:0 actionProvider:v16];
    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __85__PDFThumbnailsCollectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained contextMenuForBackgroundAtLocation:{*(a1 + 40), *(a1 + 48)}];

  return v3;
}

- (id)previewForCollectionView:(id)a3 contextMenuInteraction:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 locationInView:v6];
  v9 = v8;
  v11 = v10;
  v12 = [v6 indexPathForItemAtPoint:?];
  if (v12)
  {
    v13 = [(PDFThumbnailsCollectionView *)self previewForCollectionView:v6 indexPath:v12];
  }

  else
  {
    if (!self->_backgroundOnePixelView)
    {
      v14 = objc_opt_new();
      backgroundOnePixelView = self->_backgroundOnePixelView;
      self->_backgroundOnePixelView = v14;

      v16 = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)self->_backgroundOnePixelView setBackgroundColor:v16];

      [v6 addSubview:self->_backgroundOnePixelView];
    }

    [v7 locationInView:self];
    v18 = v17;
    v20 = v19;
    [(UIView *)self->_backgroundOnePixelView setFrame:v9, v11, 0.0, 0.0];
    v21 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    v22 = [MEMORY[0x1E69DC888] clearColor];
    [v21 setBackgroundColor:v22];

    v23 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:self center:{v18, v20}];
    v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self->_backgroundOnePixelView parameters:v21 target:v23];
  }

  return v13;
}

- (id)previewForCollectionView:(id)a3 indexPath:(id)a4
{
  if (a4)
  {
    v4 = [a3 cellForItemAtIndexPath:a4];
    v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [v5 setBackgroundColor:v6];

    v7 = MEMORY[0x1E69DC728];
    v8 = [v4 imageView];
    [v8 bounds];
    v9 = [v7 bezierPathWithRoundedRect:? cornerRadius:?];
    [v5 setVisiblePath:v9];

    v10 = objc_alloc(MEMORY[0x1E69DCE38]);
    v11 = [v4 imageView];
    [v11 center];
    v12 = [v10 initWithContainer:v4 center:?];

    v13 = objc_alloc(MEMORY[0x1E69DD070]);
    v14 = [v4 imageView];
    v15 = [v13 initWithView:v14 parameters:v5 target:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = [a4 identifier];
  v8 = [(PDFThumbnailsCollectionView *)self previewForCollectionView:v6 indexPath:v7];

  return v8;
}

- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = [a4 identifier];
  v8 = [(PDFThumbnailsCollectionView *)self previewForCollectionView:v6 indexPath:v7];

  return v8;
}

- (id)contextMenuForBackgroundAtLocation:(CGPoint)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [WeakRetained PDFView];
  v7 = [v6 document];

  v8 = [v7 pageAtIndex:{objc_msgSend(v7, "pageCount") - 1}];
  v9 = [(PDFThumbnailsCollectionView *)self _pasteActionIfAvailableAfterPage:v8];
  if (v9)
  {
    [v5 addObject:v9];
  }

  v10 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F416DF70 image:0 identifier:0 options:0 children:v5];

  return v10;
}

- (id)contextMenuForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(PDFThumbnailsCollectionView *)self defaultContextMenuForPage:v4];
  v8 = v7;
  if (v7 && [v7 count])
  {
    [v6 addObjectsFromArray:v8];
  }

  v9 = [WeakRetained thumbnailContextMenuDelegate];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [v9 menuElementsForPage:v4];
    if ([v10 count])
    {
      [v6 addObjectsFromArray:v10];
    }
  }

  v11 = [WeakRetained PDFView];
  v12 = [v11 document];
  v13 = [v12 indexForPage:v4];

  v14 = MEMORY[0x1E696ADA0];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v13 + 1];
  v16 = [v14 localizedStringFromNumber:v15 numberStyle:1];

  v17 = MEMORY[0x1E696AEC0];
  v18 = PDFKitLocalizedString(@"Page %@");
  v19 = [v17 stringWithFormat:v18, v16];

  v20 = [MEMORY[0x1E69DCC60] menuWithTitle:v19 image:0 identifier:0 options:0 children:v6];

  return v20;
}

- (BOOL)shouldDisplayActionButtonForPage:(id)a3
{
  v4 = [(PDFThumbnailsCollectionView *)self contextMenuForPage:a3];
  v5 = [v4 children];
  if ([v5 count])
  {
    v6 = ![(UICollectionView *)self->_collectionView hasActiveDrag];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_pasteActionIfAvailableAfterPage:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PDFThumbnailsCollectionView *)self _canEditDocument])
  {
    v24 = v4;
    objc_initWeak(&location, self);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v6 = [v5 itemProviders];

    v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v7)
    {
      v23 = *v33;
      do
      {
        v22 = v7;
        for (i = 0; i != v22; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v10 = [(PDFThumbnailsCollectionView *)self supportedUTTypes];
          v11 = [v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v11)
          {
            v12 = *v29;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v29 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = [*(*(&v28 + 1) + 8 * j) identifier];
                v15 = [v9 hasItemConformingToTypeIdentifier:v14];

                if (v15)
                {
                  v17 = MEMORY[0x1E69DC628];
                  v18 = PDFKitLocalizedString(@"Paste");
                  v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.clipboard"];
                  v25[0] = MEMORY[0x1E69E9820];
                  v25[1] = 3221225472;
                  v25[2] = __64__PDFThumbnailsCollectionView__pasteActionIfAvailableAfterPage___block_invoke;
                  v25[3] = &unk_1E8151188;
                  objc_copyWeak(&v27, &location);
                  v26 = v24;
                  v20 = [v17 actionWithTitle:v18 image:v19 identifier:@"paste" handler:v25];

                  v16 = v20;
                  objc_destroyWeak(&v27);

                  v6 = v16;
                  goto LABEL_20;
                }
              }

              v11 = [v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v7);
    }

    v16 = 0;
LABEL_20:

    objc_destroyWeak(&location);
    v4 = v24;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __64__PDFThumbnailsCollectionView__pasteActionIfAvailableAfterPage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained pasteAfterPage:*(a1 + 32)];
}

- (id)defaultContextMenuForPage:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = MEMORY[0x1E69DC628];
  v7 = PDFKitLocalizedString(@"Copy");
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__PDFThumbnailsCollectionView_defaultContextMenuForPage___block_invoke;
  v13[3] = &unk_1E8151188;
  objc_copyWeak(&v15, &location);
  v9 = v4;
  v14 = v9;
  v10 = [v6 actionWithTitle:v7 image:v8 identifier:@"copy" handler:v13];

  [v5 addObject:v10];
  v11 = [(PDFThumbnailsCollectionView *)self _pasteActionIfAvailableAfterPage:v9];
  if (v11)
  {
    [v5 addObject:v11];
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v5;
}

void __57__PDFThumbnailsCollectionView_defaultContextMenuForPage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained copyPage:*(a1 + 32)];
}

- (void)copyPage:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACA0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 copy];

  v8 = MEMORY[0x1E695E0F0];
  [(PDFThumbnailsCollectionView *)self itemProvider:v6 registerDataRepresentationForPage:v7 draggedPages:MEMORY[0x1E695E0F0]];
  [(PDFThumbnailsCollectionView *)self itemProvider:v6 registerFileRepresentationForPage:v7 draggedPages:v8];
  v11[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v10 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v10 setItemProviders:v9];
}

- (void)pasteAfterPage:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v27 = self;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v5 = [WeakRetained PDFView];
  v24 = [v5 document];

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v6 = [v24 indexForPage:v22];
  v7 = [v24 pageCount];
  v8 = v6 + 1;
  if (v6 + 1 >= v7)
  {
    v8 = v7;
  }

  v37[3] = v8;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = [MEMORY[0x1E69DCD50] generalPasteboard];
  obj = [v9 itemProviders];

  v10 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v10)
  {
    v26 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v13 = [(PDFThumbnailsCollectionView *)v27 supportedUTTypes];
        v14 = [v13 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v14)
        {
          v15 = *v30;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v30 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v29 + 1) + 8 * j);
              v18 = [v17 identifier];
              v19 = [v12 hasItemConformingToTypeIdentifier:v18];

              if (v19)
              {
                v20 = [v17 identifier];
                v28[0] = MEMORY[0x1E69E9820];
                v28[1] = 3221225472;
                v28[2] = __46__PDFThumbnailsCollectionView_pasteAfterPage___block_invoke;
                v28[3] = &unk_1E81511D8;
                v28[4] = v27;
                v28[5] = v17;
                v28[6] = v12;
                v28[7] = v37;
                v21 = [v12 loadFileRepresentationForTypeIdentifier:v20 completionHandler:v28];

                goto LABEL_18;
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v29 objects:v38 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(v37, 8);
}

void __46__PDFThumbnailsCollectionView_pasteAfterPage___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = a1[4];
    v8 = a1[5];
    v10 = a1[7];
    v11 = *(*(v10 + 8) + 24);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__PDFThumbnailsCollectionView_pasteAfterPage___block_invoke_2;
    v12[3] = &unk_1E81511B0;
    v12[4] = v10;
    [v9 _insertFileAtURL:a2 type:v8 atIndex:v11 completionHandler:v12];
  }

  else
  {
    _PDFLog(OS_LOG_TYPE_ERROR, "PDFThumbnailsCollectionView", "Item provider %@ returned a nil URL. Error: %@", a4, a5, a6, a7, a8, a1[6]);
  }
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems:a3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PDFThumbnailsCollectionView *)self _updateActionsButtonVisibilityAtIndexPath:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v5 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems:a3];
  v6 = dispatch_time(0, 100000000);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PDFThumbnailsCollectionView_collectionView_dragSessionDidEnd___block_invoke;
  v8[3] = &unk_1E8150FF8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_after(v6, MEMORY[0x1E69E96A0], v8);
}

void __64__PDFThumbnailsCollectionView_collectionView_dragSessionDidEnd___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _updateActionsButtonVisibilityAtIndexPath:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.adobe.pdf"];
  v11 = [v10 identifier];
  v16[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13 = [v8 hasItemsConformingToTypeIdentifiers:v12];

  if (v13)
  {
    v14 = [(PDFThumbnailsCollectionView *)self itemsForDragWithSession:v8 atIndexPath:v9];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (id)itemsForDragWithSession:(id)a3 atIndexPath:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v7];
  v9 = MEMORY[0x1E695DF70];
  v10 = [v6 items];
  v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [v6 items];
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v13)
  {
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v39 + 1) + 8 * i) localObject];
        if (v16)
        {
          [v11 addObject:v16];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v13);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  v17 = MEMORY[0x1E69DCD50];
  v18 = [(PDFThumbnailsCollectionView *)self _dragDataOwner];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __67__PDFThumbnailsCollectionView_itemsForDragWithSession_atIndexPath___block_invoke;
  v28 = &unk_1E8151200;
  v32 = &v33;
  v29 = self;
  v19 = v8;
  v30 = v19;
  v20 = v11;
  v31 = v20;
  [v17 _performAsDataOwner:v18 block:&v25];
  v21 = objc_alloc(MEMORY[0x1E69DC990]);
  v22 = [v21 initWithItemProvider:{v34[5], v25, v26, v27, v28, v29}];
  [v22 setLocalObject:v19];
  v43 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];

  _Block_object_dispose(&v33, 8);

  return v23;
}

uint64_t __67__PDFThumbnailsCollectionView_itemsForDragWithSession_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) itemProvider:*(*(*(a1 + 56) + 8) + 40) registerDataRepresentationForPage:*(a1 + 40) draggedPages:*(a1 + 48)];
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 56) + 8) + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v7 itemProvider:v6 registerFileRepresentationForPage:v8 draggedPages:v5];
}

- (void)itemProvider:(id)a3 registerDataRepresentationForPage:(id)a4 draggedPages:(id)a5
{
  v7 = a3;
  v8 = [a4 copy];
  v9 = [*MEMORY[0x1E6982F10] identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PDFThumbnailsCollectionView_itemProvider_registerDataRepresentationForPage_draggedPages___block_invoke;
  v11[3] = &unk_1E8151250;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v7 registerDataRepresentationForTypeIdentifier:v9 visibility:0 loadHandler:v11];
}

uint64_t __91__PDFThumbnailsCollectionView_itemProvider_registerDataRepresentationForPage_draggedPages___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = *(a1 + 40);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PDFThumbnailsCollectionView_itemProvider_registerDataRepresentationForPage_draggedPages___block_invoke_2;
  v8[3] = &unk_1E8151228;
  v9 = v3;
  v6 = v3;
  [v4 writePDFDocumentFromPages:v5 completionHandler:v8];

  return 0;
}

void __91__PDFThumbnailsCollectionView_itemProvider_registerDataRepresentationForPage_draggedPages___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [[PDFDocument alloc] initWithURL:v6];
    v4 = *(a1 + 32);
    v5 = [(PDFDocument *)v3 dataRepresentation];
    (*(v4 + 16))(v4, v5, 0);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)itemProvider:(id)a3 registerFileRepresentationForPage:(id)a4 draggedPages:(id)a5
{
  v7 = a3;
  v8 = [a4 copy];
  v9 = [*MEMORY[0x1E6982F10] identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PDFThumbnailsCollectionView_itemProvider_registerFileRepresentationForPage_draggedPages___block_invoke;
  v11[3] = &unk_1E8151278;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v7 registerFileRepresentationForTypeIdentifier:v9 fileOptions:0 visibility:0 loadHandler:v11];
}

uint64_t __91__PDFThumbnailsCollectionView_itemProvider_registerFileRepresentationForPage_draggedPages___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = *(a1 + 40);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PDFThumbnailsCollectionView_itemProvider_registerFileRepresentationForPage_draggedPages___block_invoke_2;
  v8[3] = &unk_1E8151228;
  v9 = v3;
  v6 = v3;
  [v4 writePDFDocumentFromPages:v5 completionHandler:v8];

  return 0;
}

void __91__PDFThumbnailsCollectionView_itemProvider_registerFileRepresentationForPage_draggedPages___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [v7 startAccessingSecurityScopedResource];
    (*(*(a1 + 32) + 16))();
    if (v6)
    {
      [v7 stopAccessingSecurityScopedResource];
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)writePDFDocumentFromPages:(id)a3 completionHandler:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v9 = [WeakRetained PDFView];
  v10 = [v9 document];
  v11 = [v10 documentAttributes];
  v12 = [v11 objectForKeyedSubscript:@"Title"];

  v13 = objc_alloc_init(PDFDocument);
  v14 = objc_autoreleasePoolPush();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v57;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v57 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v56 + 1) + 8 * i) copy];
        [(PDFDocument *)v13 insertPage:v20 atIndex:[(PDFDocument *)v13 pageCount]];
      }

      v17 = [v15 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v17);
  }

  objc_autoreleasePoolPop(v14);
  v21 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = [v21 temporaryDirectory];
  v23 = [MEMORY[0x1E696AFB0] UUID];
  v24 = [v23 UUIDString];
  v25 = [v22 URLByAppendingPathComponent:v24];

  v26 = [v25 path];
  v55 = 0;
  [v21 removeItemAtPath:v26 error:&v55];
  v27 = v55;

  if (v27 && [v27 code] != 4)
  {
    v35 = [v25 path];
    _PDFLog(OS_LOG_TYPE_DEFAULT, "PDFThumbnailsCollectionView", "Failed to remove temporary folder (at path %@) prior to storing temporary PDF document with error: %@", v36, v37, v38, v39, v40, v35);

    v7[2](v7, 0, v27);
  }

  else
  {
    v53 = v12;
    v28 = [v25 path];
    v54 = 0;
    [v21 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:&v54];
    v29 = v54;

    if (v29)
    {
      _PDFLog(OS_LOG_TYPE_DEFAULT, "PDFThumbnailsCollectionView", "Failed to create directory for scanned PDF with error: %@", v30, v31, v32, v33, v34, v29);
      v7[2](v7, 0, v29);
    }

    else
    {
      v52 = v7;
      if ([v15 count] == 1)
      {
        v41 = [v15 firstObject];
        v42 = v41;
        v50 = MEMORY[0x1E696AEC0];
        if (v53)
        {
          v43 = v53;
        }

        else
        {
          v43 = @"Exported Page";
        }

        v44 = [v41 label];
        v45 = [v50 stringWithFormat:@"%@ n°%@", v43, v44];
      }

      else
      {
        if (v53)
        {
          v46 = v53;
        }

        else
        {
          v46 = @"Exported Page";
        }

        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%lu)", v46, objc_msgSend(v15, "count")];
      }

      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.pdf", v45];
      v48 = [v25 URLByAppendingPathComponent:v47];
      if ([(PDFDocument *)v13 writeToURL:v48])
      {
        v52[2](v52, v48, 0);
      }

      else
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
        v49 = v51 = v45;
        (v52)[2](v52, 0, v49);

        v45 = v51;
      }

      v7 = v52;
    }

    v12 = v53;
  }
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(PDFThumbnailsCollectionView *)self _canEditDocument])
  {
    v9 = [v8 localDragSession];

    if (v9)
    {
      v10 = [v7 hasActiveDrag];
      v11 = objc_alloc(MEMORY[0x1E69DC838]);
      if (v10)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v26 = [v11 initWithDropOperation:v12 intent:1];
      goto LABEL_24;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = [v8 items];
    v30 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v30)
    {
      v14 = *v39;
      v32 = v13;
      v33 = v7;
      v29 = *v39;
      do
      {
        v15 = 0;
        do
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v31 = v15;
          v16 = *(*(&v38 + 1) + 8 * v15);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v17 = [(PDFThumbnailsCollectionView *)self supportedUTTypes];
          v18 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v35;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v35 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v34 + 1) + 8 * i);
                v23 = [v16 itemProvider];
                v24 = [v22 identifier];
                v25 = [v23 hasItemConformingToTypeIdentifier:v24];

                if (v25)
                {
                  v27 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:2 intent:1];

                  v7 = v33;
                  goto LABEL_25;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v15 = v31 + 1;
          v13 = v32;
          v7 = v33;
          v14 = v29;
        }

        while (v31 + 1 != v30);
        v30 = [v32 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v30);
    }
  }

  v26 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:1];
LABEL_24:
  v27 = v26;
LABEL_25:

  return v27;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v19 = a4;
  v21 = [v19 destinationIndexPath];
  if (!v21)
  {
    v21 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v20 inSection:{"numberOfItemsInSection:", 0), 0}];
  }

  if (([v20 hasActiveDrag] & 1) == 0)
  {
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = [v21 item];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = [v19 items];
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v6)
    {
      v23 = *v33;
      obj = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [*(*(&v32 + 1) + 8 * i) dragItem];
          v9 = [v8 itemProvider];

          if (v9)
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v10 = [(PDFThumbnailsCollectionView *)self supportedUTTypes];
            v11 = [v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
            if (v11)
            {
              v12 = *v29;
              while (2)
              {
                for (j = 0; j != v11; ++j)
                {
                  if (*v29 != v12)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v14 = *(*(&v28 + 1) + 8 * j);
                  v15 = [v14 identifier];
                  v16 = [v9 hasItemConformingToTypeIdentifier:v15];

                  if (v16)
                  {
                    v17 = [v14 identifier];
                    v25[0] = MEMORY[0x1E69E9820];
                    v25[1] = 3221225472;
                    v25[2] = __73__PDFThumbnailsCollectionView_collectionView_performDropWithCoordinator___block_invoke;
                    v25[3] = &unk_1E81511D8;
                    v25[4] = self;
                    v25[5] = v14;
                    v27 = v36;
                    v26 = v9;
                    v18 = [v26 loadFileRepresentationForTypeIdentifier:v17 completionHandler:v25];

                    goto LABEL_20;
                  }
                }

                v11 = [v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }
            }

LABEL_20:
          }
        }

        v5 = obj;
        v6 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v6);
    }

    _Block_object_dispose(v36, 8);
  }
}

void __73__PDFThumbnailsCollectionView_collectionView_performDropWithCoordinator___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = a1[4];
    v8 = a1[5];
    v10 = a1[7];
    v11 = *(*(v10 + 8) + 24);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __73__PDFThumbnailsCollectionView_collectionView_performDropWithCoordinator___block_invoke_2;
    v12[3] = &unk_1E81511B0;
    v12[4] = v10;
    [v9 _insertFileAtURL:a2 type:v8 atIndex:v11 completionHandler:v12];
  }

  else
  {
    _PDFLog(OS_LOG_TYPE_ERROR, "PDFThumbnailsCollectionView", "Item provider %@ returned a nil URL. Error: %@", a4, a5, a6, a7, a8, a1[6]);
  }
}

- (unint64_t)_insertPagesFromProvidedPDFDocument:(id)a3 atPageIndex:(unint64_t)a4
{
  v6 = a3;
  v23 = self;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v24 = [WeakRetained PDFView];
  v7 = [v24 document];
  v8 = [v7 renderingProperties];
  v9 = [v8 displayBox];

  v10 = [v6 pageCount];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [v6 pageAtIndex:i];
      v15 = [v14 copy];

      [v15 boundsForBox:1];
      [v15 setBounds:v9 forBox:?];
      [v7 insertPage:v15 atIndex:a4];
      [v11 addObject:v15];

      objc_autoreleasePoolPop(v13);
      ++a4;
    }
  }

  v16 = PDFKitLocalizedString(@"Insert pages");
  v17 = [(PDFThumbnailsCollectionView *)v23 undoManager];
  v18 = [v17 prepareWithInvocationTarget:v23];
  [v18 removePages:v11];

  v19 = [(PDFThumbnailsCollectionView *)v23 undoManager];
  v20 = PDFKitLocalizedString(v16);
  [v19 setActionName:v20];

  v21 = [v11 count];
  return v21;
}

- (void)_insertPDFDocumentWithURL:(id)a3 atIndex:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [[PDFDocument alloc] initWithURL:v8];
  v16 = v10;
  if (v10)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PDFThumbnailsCollectionView__insertPDFDocumentWithURL_atIndex_completionHandler___block_invoke;
    block[3] = &unk_1E81512A0;
    block[4] = self;
    v18 = v10;
    v20 = a4;
    v19 = v9;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    _PDFLog(OS_LOG_TYPE_ERROR, "PDFThumbnailsCollectionView", "PDF document could not be created from URL %@", v11, v12, v13, v14, v15, v8);
    (*(v9 + 2))(v9, 0);
  }
}

uint64_t __83__PDFThumbnailsCollectionView__insertPDFDocumentWithURL_atIndex_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _insertPagesFromProvidedPDFDocument:*(a1 + 40) atPageIndex:*(a1 + 56)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_insertImageWithURL:(id)a3 atIndex:(unint64_t)a4 completionHandler:(id)a5
{
  v35[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v11 = [WeakRetained PDFView];
  v12 = [v11 document];
  v13 = CGImageSourceCreateWithURL(v8, 0);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
  if ([v12 pageCount] && objc_msgSend(v12, "pageCount") >= a4)
  {
    if (a4)
    {
      v16 = a4 - 1;
    }

    else
    {
      v16 = 0;
    }

    v28 = [v12 pageAtIndex:v16];
    [v28 boundsForBox:0];
    v18 = v17;
    CGImageGetSizeAfterOrientation();
    [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{0.0, 0.0, v18, v18 * v19 / v20}];
    v21 = v29 = WeakRetained;
    v34[0] = @"PDFPageImageInitializationOptionMediaBox";
    v34[1] = @"PDFPageImageInitializationOptionUpscaleIfSmaller";
    v35[0] = v21;
    v35[1] = MEMORY[0x1E695E118];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

    WeakRetained = v29;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F8];
  }

  v27 = [[PDFPage alloc] initWithCGImage:ImageAtIndex options:v15];
  if (v13)
  {
    CFRelease(v13);
  }

  if (v27)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PDFThumbnailsCollectionView__insertImageWithURL_atIndex_completionHandler___block_invoke;
    block[3] = &unk_1E81512A0;
    block[4] = self;
    v31 = v27;
    v33 = a4;
    v32 = v9;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    _PDFLog(OS_LOG_TYPE_ERROR, "PDFThumbnailsCollectionView", "PDF document could not be created from URL %@", v22, v23, v24, v25, v26, v8);
    (*(v9 + 2))(v9, 0);
  }
}

uint64_t __77__PDFThumbnailsCollectionView__insertImageWithURL_atIndex_completionHandler___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v8[0] = a1[5];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[7]];
  v7 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  [v2 insertPages:v3 atIndexes:v5];

  return (*(a1[6] + 16))();
}

- (id)supportedUTTypes
{
  if (supportedUTTypes_onceToken != -1)
  {
    [PDFThumbnailsCollectionView supportedUTTypes];
  }

  v3 = supportedUTTypes_supportedTypes;

  return v3;
}

void __47__PDFThumbnailsCollectionView_supportedUTTypes__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6982E30];
  v3[0] = *MEMORY[0x1E6982F10];
  v3[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v2 = supportedUTTypes_supportedTypes;
  supportedUTTypes_supportedTypes = v1;
}

- (void)_insertFileAtURL:(id)a3 type:(id)a4 atIndex:(unint64_t)a5 completionHandler:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v13 = [WeakRetained thumbnailDataSourceDelegate];

  if (v13)
  {
    [v13 insertFileAtURL:v14 atIndex:a5 completionHandler:v11];
  }

  else if (*MEMORY[0x1E6982F10] == v10)
  {
    [(PDFThumbnailsCollectionView *)self _insertPDFDocumentWithURL:v14 atIndex:a5 completionHandler:v11];
  }

  else if (*MEMORY[0x1E6982E30] == v10)
  {
    [(PDFThumbnailsCollectionView *)self _insertImageWithURL:v14 atIndex:a5 completionHandler:v11];
  }
}

- (void)removePages:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v6 = [WeakRetained PDFView];
  v7 = [v6 document];

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v9 = [v4 reverseObjectEnumerator];
  v10 = [v9 allObjects];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __43__PDFThumbnailsCollectionView_removePages___block_invoke;
  v24 = &unk_1E81512C8;
  v25 = v7;
  v26 = v8;
  v11 = v8;
  v12 = v7;
  [v10 enumerateObjectsUsingBlock:&v21];
  if ([v4 count] <= 1)
  {
    v13 = @"Remove page";
  }

  else
  {
    v13 = @"Remove pages";
  }

  v14 = PDFKitLocalizedString(v13);
  v15 = [(PDFThumbnailsCollectionView *)self undoManager];
  v16 = [v15 prepareWithInvocationTarget:self];
  v17 = [v11 reverseObjectEnumerator];
  v18 = [v17 allObjects];
  [v16 insertPages:v4 atIndexes:v18];

  v19 = [(PDFThumbnailsCollectionView *)self undoManager];
  v20 = PDFKitLocalizedString(v14);
  [v19 setActionName:v20];
}

void __43__PDFThumbnailsCollectionView_removePages___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexForPage:a2];
  [*(a1 + 32) removePageAtIndex:v3];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  [v4 addObject:v5];
}

- (void)insertPages:(id)a3 atIndexes:(id)a4
{
  v29 = a3;
  v6 = a4;
  v7 = [v29 count];
  if (v7 == [v6 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    v14 = [WeakRetained PDFView];
    v15 = [v14 document];

    v16 = [v6 count];
    v17 = v29;
    if (v16)
    {
      for (i = 0; i < v21; ++i)
      {
        v19 = [v17 objectAtIndexedSubscript:i];
        v20 = [v6 objectAtIndexedSubscript:i];
        [v15 insertPage:v19 atIndex:{objc_msgSend(v20, "unsignedIntegerValue")}];

        v21 = [v6 count];
        v17 = v29;
      }
    }

    if ([v17 count] <= 1)
    {
      v22 = @"Insert page";
    }

    else
    {
      v22 = @"Insert pages";
    }

    v23 = PDFKitLocalizedString(v22);
    v24 = [(PDFThumbnailsCollectionView *)self undoManager];
    v25 = [v24 prepareWithInvocationTarget:self];
    [v25 removePages:v29];

    v26 = [(PDFThumbnailsCollectionView *)self undoManager];
    v27 = PDFKitLocalizedString(v23);
    [v26 setActionName:v27];
  }

  else
  {
    _PDFLog(OS_LOG_TYPE_ERROR, "PDFThumbnailsCollectionView", "Number of pages to insert is different from the number of indexes", v8, v9, v10, v11, v12, v28);
  }
}

- (void)movePage:(id)a3 toIndex:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v8 = [WeakRetained PDFView];
  v15 = [v8 document];

  v9 = [v15 indexForPage:v6];
  [v15 removePageAtIndex:v9];
  [v15 insertPage:v6 atIndex:a4];
  v10 = PDFKitLocalizedString(@"Move page");
  v11 = [(PDFThumbnailsCollectionView *)self undoManager];
  v12 = [v11 prepareWithInvocationTarget:self];
  [v12 movePage:v6 toIndex:v9];

  v13 = [(PDFThumbnailsCollectionView *)self undoManager];
  v14 = PDFKitLocalizedString(v10);
  [v13 setActionName:v14];
}

- (void)movePageWithTransaction:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 difference];
  v6 = [v5 hasChanges];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    v8 = [WeakRetained thumbnailDataSourceDelegate];
    if (v8)
    {
      v9 = [v4 difference];
      [v8 handlePageOrderedCollectionDifference:v9];
    }

    else
    {
      v25 = WeakRetained;
      v10 = [WeakRetained PDFView];
      v11 = [v10 document];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = v4;
      v12 = [v4 difference];
      v13 = [v12 removals];

      obj = v13;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            v19 = [v18 object];
            if (v19)
            {
              [v11 removePageAtIndex:{objc_msgSend(v18, "index")}];
              [v11 insertPage:v19 atIndex:{objc_msgSend(v18, "associatedIndex")}];
              v20 = PDFKitLocalizedString(@"Move page");
              v21 = [(PDFThumbnailsCollectionView *)self undoManager];
              v22 = [v21 prepareWithInvocationTarget:self];
              [v22 movePage:v19 toIndex:{objc_msgSend(v18, "index")}];

              v23 = [(PDFThumbnailsCollectionView *)self undoManager];
              v24 = PDFKitLocalizedString(v20);
              [v23 setActionName:v24];
            }
          }

          v15 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v15);
      }

      WeakRetained = v25;
      v4 = v26;
      v8 = 0;
    }
  }
}

@end