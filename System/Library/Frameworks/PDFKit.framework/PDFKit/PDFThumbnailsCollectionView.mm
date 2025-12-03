@interface PDFThumbnailsCollectionView
- (BOOL)_canEditDocument;
- (BOOL)shouldDisplayActionButtonForPage:(id)page;
- (CGSize)thumbnailSizeForPage:(id)page;
- (CGSize)thumbnailSizeForPage:(id)page displayBox:(int64_t)box;
- (CGSize)thumbnailSizeForPage:(id)page displayBox:(int64_t)box thumbnailView:(id)view;
- (id)_pasteActionIfAvailableAfterPage:(id)page;
- (id)cacheKeyForPage:(id)page;
- (id)cachedImageForPage:(id)page displayBox:(int64_t)box thumbnailView:(id)view;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)contextMenuForBackgroundAtLocation:(CGPoint)location;
- (id)contextMenuForPage:(id)page;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)currentPage;
- (id)datasourceQueue;
- (id)defaultContextMenuForPage:(id)page;
- (id)imageDrawingOperationQueue;
- (id)initFromThumbnailView:(id)view;
- (id)itemsForDragWithSession:(id)session atIndexPath:(id)path;
- (id)makeDatasource;
- (id)previewForCollectionView:(id)view contextMenuInteraction:(id)interaction;
- (id)previewForCollectionView:(id)view indexPath:(id)path;
- (id)supportedUTTypes;
- (unint64_t)_insertPagesFromProvidedPDFDocument:(id)document atPageIndex:(unint64_t)index;
- (void)_insertFileAtURL:(id)l type:(id)type atIndex:(unint64_t)index completionHandler:(id)handler;
- (void)_insertImageWithURL:(id)l atIndex:(unint64_t)index completionHandler:(id)handler;
- (void)_insertPDFDocumentWithURL:(id)l atIndex:(unint64_t)index completionHandler:(id)handler;
- (void)_reloadPage:(id)page;
- (void)_selectAndScrollToCurrentPageIfNeeded;
- (void)_updateActionsButtonVisibilityAtIndexPath:(id)path;
- (void)_updateScrubber;
- (void)applySnapshotWithAnimation:(BOOL)animation;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)configureCell:(id)cell withPage:(id)page indexPath:(id)path;
- (void)copyPage:(id)page;
- (void)currentPageChanged:(id)changed;
- (void)insertPages:(id)pages atIndexes:(id)indexes;
- (void)itemProvider:(id)provider registerDataRepresentationForPage:(id)page draggedPages:(id)pages;
- (void)itemProvider:(id)provider registerFileRepresentationForPage:(id)page draggedPages:(id)pages;
- (void)loadImageWithPage:(id)page displayBox:(int64_t)box thumbnailView:(id)view completionHandler:(id)handler;
- (void)movePage:(id)page toIndex:(unint64_t)index;
- (void)movePageWithTransaction:(id)transaction;
- (void)pageChanged:(id)changed;
- (void)pasteAfterPage:(id)page;
- (void)removePages:(id)pages;
- (void)updateCacheForPage:(id)page withImage:(id)image;
- (void)updateImageForCell:(id)cell atIndexPath:(id)path;
- (void)updateImageForCell:(id)cell indexPath:(id)path page:(id)page;
- (void)writePDFDocumentFromPages:(id)pages completionHandler:(id)handler;
@end

@implementation PDFThumbnailsCollectionView

- (id)initFromThumbnailView:(id)view
{
  v34[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v33.receiver = self;
  v33.super_class = PDFThumbnailsCollectionView;
  v5 = [(PDFThumbnailsCollectionView *)&v33 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_thumbnailView, viewCopy);
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
    [viewCopy bounds];
    v11 = [v10 initWithFrame:v9 collectionViewLayout:?];
    collectionView = v6->_collectionView;
    v6->_collectionView = v11;

    [(PDFThumbnailsCollectionView *)v6 addSubview:v6->_collectionView];
    [(UICollectionView *)v6->_collectionView setDragInteractionEnabled:1];
    [(UICollectionView *)v6->_collectionView setDragDelegate:v6];
    [(UICollectionView *)v6->_collectionView setDropDelegate:v6];
    [(UICollectionView *)v6->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = MEMORY[0x1E696ACD8];
    bottomAnchor = [(UICollectionView *)v6->_collectionView bottomAnchor];
    bottomAnchor2 = [(PDFThumbnailsCollectionView *)v6 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v34[0] = v29;
    topAnchor = [(UICollectionView *)v6->_collectionView topAnchor];
    topAnchor2 = [(PDFThumbnailsCollectionView *)v6 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v34[1] = v25;
    leadingAnchor = [(UICollectionView *)v6->_collectionView leadingAnchor];
    leadingAnchor2 = [(PDFThumbnailsCollectionView *)v6 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v34[2] = v15;
    trailingAnchor = [(UICollectionView *)v6->_collectionView trailingAnchor];
    trailingAnchor2 = [(PDFThumbnailsCollectionView *)v6 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v34[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
    [v26 activateConstraints:v19];

    [(UICollectionView *)v6->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PDFIconCollectionViewCell"];
    makeDatasource = [(PDFThumbnailsCollectionView *)v6 makeDatasource];
    dataSource = v6->_dataSource;
    v6->_dataSource = makeDatasource;

    [(UICollectionView *)v6->_collectionView setDataSource:v6->_dataSource];
    [(UICollectionView *)v6->_collectionView setDelegate:v6];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v6->_collectionView setBackgroundColor:clearColor];

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
  reorderingHandlers = [v5 reorderingHandlers];
  [reorderingHandlers setCanReorderItemHandler:&__block_literal_global_6];

  reorderingHandlers2 = [v5 reorderingHandlers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PDFThumbnailsCollectionView_makeDatasource__block_invoke_3;
  v9[3] = &unk_1E8150FA8;
  objc_copyWeak(&v10, &location);
  [reorderingHandlers2 setDidReorderHandler:v9];

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

- (void)updateImageForCell:(id)cell indexPath:(id)path page:(id)page
{
  cellCopy = cell;
  pathCopy = path;
  pageCopy = page;
  page = [cellCopy page];

  if (page == pageCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    pDFView = [WeakRetained PDFView];
    document = [pDFView document];
    renderingProperties = [document renderingProperties];
    displayBox = [renderingProperties displayBox];

    v17 = [(PDFThumbnailsCollectionView *)self cachedImageForPage:pageCopy displayBox:displayBox thumbnailView:WeakRetained];
    if (v17)
    {
      imageView = [cellCopy imageView];
      image = [imageView image];

      if (v17 != image)
      {
        item = [pathCopy item];
        _PDFLog(OS_LOG_TYPE_INFO, "PDFThumbnailsCollectionView", "Setting cell image for cell n°%lu", v21, v22, v23, v24, v25, item);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __65__PDFThumbnailsCollectionView_updateImageForCell_indexPath_page___block_invoke_2;
        block[3] = &unk_1E8150FF8;
        v33 = cellCopy;
        v34 = v17;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    else
    {
      item2 = [pathCopy item];
      _PDFLog(OS_LOG_TYPE_INFO, "PDFThumbnailsCollectionView", "Image for cell n°%lu is not cached", v27, v28, v29, v30, v31, item2);
      objc_initWeak(&location, self);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __65__PDFThumbnailsCollectionView_updateImageForCell_indexPath_page___block_invoke;
      v35[3] = &unk_1E8150FD0;
      objc_copyWeak(&v38, &location);
      v36 = cellCopy;
      v37 = pageCopy;
      [(PDFThumbnailsCollectionView *)self loadImageWithPage:v37 displayBox:displayBox thumbnailView:WeakRetained completionHandler:v35];

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

- (void)configureCell:(id)cell withPage:(id)page indexPath:(id)path
{
  cellCopy = cell;
  pageCopy = page;
  pathCopy = path;
  item = [pathCopy item];
  _PDFLog(OS_LOG_TYPE_DEBUG, "PDFThumbnailsCollectionView", "Configuring cell n°%lu", v12, v13, v14, v15, v16, item);
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  layoutMode = [WeakRetained layoutMode];
  [WeakRetained thumbnailSize];
  if (layoutMode)
  {
    [cellCopy setThumbnailHeight:v20];
  }

  else
  {
    [cellCopy setThumbnailWidth:?];
  }

  v50 = document;
  renderingProperties = [document renderingProperties];
  displayBox = [renderingProperties displayBox];

  [pageCopy boundsForBox:displayBox];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  memset(&v56, 0, sizeof(v56));
  v31 = PDFDegToRad([pageCopy rotation]);
  CGAffineTransformMakeRotation(&v56, v31);
  v55 = v56;
  v57.origin.x = v24;
  v57.origin.y = v26;
  v57.size.width = v28;
  v57.size.height = v30;
  v58 = CGRectApplyAffineTransform(v57, &v55);
  [cellCopy updateAspectConstraintWithSize:{v58.size.width, v58.size.height}];
  [cellCopy setPage:pageCopy];
  [(PDFThumbnailsCollectionView *)self updateImageForCell:cellCopy indexPath:pathCopy page:pageCopy];
  objc_initWeak(&v55, self);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __64__PDFThumbnailsCollectionView_configureCell_withPage_indexPath___block_invoke;
  v52[3] = &unk_1E8151020;
  objc_copyWeak(&v54, &v55);
  v32 = pageCopy;
  v53 = v32;
  actionsButton = [cellCopy actionsButton];
  [actionsButton _setMenuProvider:v52];

  actionsButton2 = [cellCopy actionsButton];
  [actionsButton2 setShowsMenuAsPrimaryAction:1];

  v35 = [(PDFThumbnailsCollectionView *)self shouldDisplayActionButtonForPage:v32];
  actionsButton3 = [cellCopy actionsButton];
  [actionsButton3 setHidden:!v35];

  [cellCopy invalidateIntrinsicContentSize];
  document2 = [v32 document];
  v38 = [document2 indexForPage:v32];

  v39 = MEMORY[0x1E696AEC0];
  v40 = PDFKitLocalizedString(@"Thumbnail for page %ld");
  v41 = v38 + 1;
  v42 = [v39 stringWithFormat:v40, v38 + 1];
  [cellCopy setAccessibilityLabel:v42];

  v43 = PDFKitLocalizedString(@"PDF thumbnail");
  [cellCopy setAccessibilityIdentifier:v43];

  v44 = MEMORY[0x1E696AEC0];
  v45 = PDFKitLocalizedString(@"Page actions for page %ld");
  v46 = [v44 stringWithFormat:v45, v41];
  actionsButton4 = [cellCopy actionsButton];
  [actionsButton4 setAccessibilityLabel:v46];

  v48 = PDFKitLocalizedString(@"Page actions");
  actionsButton5 = [cellCopy actionsButton];
  [actionsButton5 setAccessibilityIdentifier:v48];

  objc_destroyWeak(&v54);
  objc_destroyWeak(&v55);
}

id __64__PDFThumbnailsCollectionView_configureCell_withPage_indexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained contextMenuForPage:*(a1 + 32)];

  return v3;
}

- (id)cacheKeyForPage:(id)page
{
  v12[1] = *MEMORY[0x1E69E9840];
  pageCopy = page;
  v4 = MEMORY[0x1E695DF90];
  v11 = @"pageHash";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(pageCopy, "hash")}];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v4 dictionaryWithDictionary:v6];

  lastAnnotationChange = [pageCopy lastAnnotationChange];
  if (lastAnnotationChange)
  {
    [v7 setObject:lastAnnotationChange forKeyedSubscript:@"lastAnnotation"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pageCopy, "rotation")}];
  [v7 setObject:v9 forKeyedSubscript:@"rotation"];

  return v7;
}

- (void)updateCacheForPage:(id)page withImage:(id)image
{
  if (page && image)
  {
    imageCopy = image;
    imageCopy2 = image;
    pageCopy = page;
    Height = CGImageGetHeight([imageCopy2 CGImage]);
    *&v11 = (4 * Height * CGImageGetBytesPerRow([imageCopy2 CGImage]));
    _PDFLog(OS_LOG_TYPE_INFO, "PDFThumbnailsCollectionView", "Adding new image to the cache with a cost of %f", v12, v13, v14, v15, v16, v11);
    cache = self->_cache;
    pageCopy2 = [(PDFThumbnailsCollectionView *)self cacheKeyForPage:pageCopy];

    [(NSCache *)cache setObject:imageCopy2 forKey:pageCopy2 cost:*&v11];
  }

  else
  {
    image;
    pageCopy2 = page;
    _PDFLog(OS_LOG_TYPE_ERROR, "PDFThumbnailsCollectionView", "Invalid nil parameter(s) to [updateCacheForPage:%p withImage:%p]", v18, v19, v20, v21, v22, pageCopy2);
  }
}

- (id)cachedImageForPage:(id)page displayBox:(int64_t)box thumbnailView:(id)view
{
  cache = self->_cache;
  view = [(PDFThumbnailsCollectionView *)self cacheKeyForPage:page, box, view];
  v7 = [(NSCache *)cache objectForKey:view];

  return v7;
}

- (void)loadImageWithPage:(id)page displayBox:(int64_t)box thumbnailView:(id)view completionHandler:(id)handler
{
  pageCopy = page;
  viewCopy = view;
  handlerCopy = handler;
  document = [pageCopy document];
  pageCount = [document pageCount];
  v15 = [document indexForPage:pageCopy];
  if (v15 > 0x7FFFFFFFFFFFFFFELL || v15 > pageCount - 1)
  {
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __92__PDFThumbnailsCollectionView_loadImageWithPage_displayBox_thumbnailView_completionHandler___block_invoke;
    v29[3] = &unk_1E8151048;
    v31 = handlerCopy;
    v30 = pageCopy;
    [mainQueue addOperationWithBlock:v29];
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
    v26 = handlerCopy;
    v24 = pageCopy;
    v27[1] = box;
    v25 = viewCopy;
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

- (void)applySnapshotWithAnimation:(BOOL)animation
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];

  if (WeakRetained)
  {
    v8 = document == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && ([document isLocked] & 1) == 0)
  {
    objc_initWeak(&location, self);
    datasourceQueue = [(PDFThumbnailsCollectionView *)self datasourceQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__PDFThumbnailsCollectionView_applySnapshotWithAnimation___block_invoke;
    v10[3] = &unk_1E81510C0;
    objc_copyWeak(&v12, &location);
    v11 = document;
    animationCopy = animation;
    dispatch_async(datasourceQueue, v10);

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

- (CGSize)thumbnailSizeForPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];

  renderingProperties = [document renderingProperties];
  displayBox = [renderingProperties displayBox];

  [(PDFThumbnailsCollectionView *)self thumbnailSizeForPage:pageCopy displayBox:displayBox];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)thumbnailSizeForPage:(id)page displayBox:(int64_t)box
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  [(PDFThumbnailsCollectionView *)self thumbnailSizeForPage:pageCopy displayBox:box thumbnailView:WeakRetained];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)thumbnailSizeForPage:(id)page displayBox:(int64_t)box thumbnailView:(id)view
{
  viewCopy = view;
  pageCopy = page;
  BackingScaleFactor = PDFScreenGetBackingScaleFactor();
  [pageCopy boundsForBox:box];
  v12 = v11;
  v14 = v13;

  v15 = v14 / v12;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  layoutMode = [WeakRetained layoutMode];
  [viewCopy thumbnailSize];
  v19 = v18;
  v21 = v20;

  v22 = v21 + -6.0;
  v23 = v19 + -6.0;
  if (layoutMode)
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
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v4 = indexPathsForSelectedItems;
  if (indexPathsForSelectedItems && [indexPathsForSelectedItems count])
  {
    firstObject = [v4 firstObject];
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    pDFView = [WeakRetained PDFView];
    document = [pDFView document];
    v9 = [document pageAtIndex:{objc_msgSend(firstObject, "item")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)currentPageChanged:(id)changed
{
  [(PDFThumbnailsCollectionView *)self _updateScrubber];

  [(PDFThumbnailsCollectionView *)self _selectAndScrollToCurrentPageIfNeeded];
}

- (void)pageChanged:(id)changed
{
  v4 = MEMORY[0x1E69E58C0];
  changedCopy = changed;
  [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel_pageChanged_ object:0];
  userInfo = [changedCopy userInfo];

  v6 = [userInfo objectForKey:@"page"];
  if (v6)
  {
    [(PDFThumbnailsCollectionView *)self _reloadPage:v6];
  }
}

- (void)_reloadPage:(id)page
{
  pageCopy = page;
  objc_initWeak(&location, self);
  datasourceQueue = [(PDFThumbnailsCollectionView *)self datasourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PDFThumbnailsCollectionView__reloadPage___block_invoke;
  block[3] = &unk_1E81510E8;
  objc_copyWeak(&v9, &location);
  v8 = pageCopy;
  v6 = pageCopy;
  dispatch_async(datasourceQueue, block);

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
  layoutMode = [WeakRetained layoutMode];

  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  if (collectionViewLayout)
  {
    v6 = layoutMode == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = collectionViewLayout;
    if (layoutMode == 1)
    {
      [collectionViewLayout setScrollDirection:1];
    }

    [(UICollectionView *)self->_collectionView setCollectionViewLayout:v7];
    collectionViewLayout = v7;
  }
}

- (void)_selectAndScrollToCurrentPageIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  currentPage = [pDFView currentPage];
  document2 = [currentPage document];
  v7 = [document2 indexForPage:currentPage];

  pageCount = [document pageCount];
  v9 = v7 & ~(v7 >> 31);
  if (v9 >= pageCount - 1)
  {
    v9 = pageCount - 1;
  }

  v10 = v9;
  v11 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:0];
  dataSource = [(UICollectionView *)self->_collectionView dataSource];
  v13 = [dataSource numberOfSectionsInCollectionView:self->_collectionView];

  if (v13)
  {
    if ([(UICollectionView *)self->_collectionView numberOfItemsInSection:0]> v10)
    {
      [(UICollectionView *)self->_collectionView scrollToItemAtIndexPath:v11 atScrollPosition:0 animated:1];
      indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
      v15 = [indexPathsForSelectedItems containsObject:v11];

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
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];

  delegate = [document delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate documentCanBeEdited:document];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateActionsButtonVisibilityAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  v12 = [document pageAtIndex:{objc_msgSend(pathCopy, "item")}];

  v8 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:pathCopy];

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
    actionsButton = [v8 actionsButton];
    [actionsButton setHidden:!v10];
  }
}

- (void)updateImageForCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_initWeak(&location, self);
  datasourceQueue = [(PDFThumbnailsCollectionView *)self datasourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PDFThumbnailsCollectionView_updateImageForCell_atIndexPath___block_invoke;
  block[3] = &unk_1E8151110;
  objc_copyWeak(&v15, &location);
  v12 = cellCopy;
  v13 = pathCopy;
  selfCopy = self;
  v9 = pathCopy;
  v10 = cellCopy;
  dispatch_async(datasourceQueue, block);

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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];

  document = [pDFView document];
  v8 = [document pageAtIndex:{objc_msgSend(pathCopy, "item")}];
  [pDFView goToPage:v8];

  [(PDFThumbnailsCollectionView *)self _updateActionsButtonVisibilityAtIndexPath:pathCopy];
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];

  if (document)
  {
    v12 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
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
      v14 = [v13 configurationWithIdentifier:pathCopy previewProvider:0 actionProvider:v16];

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

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  v8 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:x, y];
  if (v8)
  {
    v9 = [(PDFThumbnailsCollectionView *)self collectionView:self->_collectionView contextMenuConfigurationForItemAtIndexPath:v8 point:x, y];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    pDFView = [WeakRetained PDFView];
    document = [pDFView document];

    v13 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(document inSection:{"pageCount") - 1, 0}];
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

- (id)previewForCollectionView:(id)view contextMenuInteraction:(id)interaction
{
  viewCopy = view;
  interactionCopy = interaction;
  [interactionCopy locationInView:viewCopy];
  v9 = v8;
  v11 = v10;
  v12 = [viewCopy indexPathForItemAtPoint:?];
  if (v12)
  {
    v13 = [(PDFThumbnailsCollectionView *)self previewForCollectionView:viewCopy indexPath:v12];
  }

  else
  {
    if (!self->_backgroundOnePixelView)
    {
      v14 = objc_opt_new();
      backgroundOnePixelView = self->_backgroundOnePixelView;
      self->_backgroundOnePixelView = v14;

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)self->_backgroundOnePixelView setBackgroundColor:clearColor];

      [viewCopy addSubview:self->_backgroundOnePixelView];
    }

    [interactionCopy locationInView:self];
    v18 = v17;
    v20 = v19;
    [(UIView *)self->_backgroundOnePixelView setFrame:v9, v11, 0.0, 0.0];
    v21 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [v21 setBackgroundColor:clearColor2];

    v23 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:self center:{v18, v20}];
    v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self->_backgroundOnePixelView parameters:v21 target:v23];
  }

  return v13;
}

- (id)previewForCollectionView:(id)view indexPath:(id)path
{
  if (path)
  {
    v4 = [view cellForItemAtIndexPath:path];
    v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v5 setBackgroundColor:clearColor];

    v7 = MEMORY[0x1E69DC728];
    imageView = [v4 imageView];
    [imageView bounds];
    v9 = [v7 bezierPathWithRoundedRect:? cornerRadius:?];
    [v5 setVisiblePath:v9];

    v10 = objc_alloc(MEMORY[0x1E69DCE38]);
    imageView2 = [v4 imageView];
    [imageView2 center];
    v12 = [v10 initWithContainer:v4 center:?];

    v13 = objc_alloc(MEMORY[0x1E69DD070]);
    imageView3 = [v4 imageView];
    v15 = [v13 initWithView:imageView3 parameters:v5 target:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  identifier = [configuration identifier];
  v8 = [(PDFThumbnailsCollectionView *)self previewForCollectionView:viewCopy indexPath:identifier];

  return v8;
}

- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  identifier = [configuration identifier];
  v8 = [(PDFThumbnailsCollectionView *)self previewForCollectionView:viewCopy indexPath:identifier];

  return v8;
}

- (id)contextMenuForBackgroundAtLocation:(CGPoint)location
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];

  v8 = [document pageAtIndex:{objc_msgSend(document, "pageCount") - 1}];
  v9 = [(PDFThumbnailsCollectionView *)self _pasteActionIfAvailableAfterPage:v8];
  if (v9)
  {
    [v5 addObject:v9];
  }

  v10 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F416DF70 image:0 identifier:0 options:0 children:v5];

  return v10;
}

- (id)contextMenuForPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(PDFThumbnailsCollectionView *)self defaultContextMenuForPage:pageCopy];
  v8 = v7;
  if (v7 && [v7 count])
  {
    [v6 addObjectsFromArray:v8];
  }

  thumbnailContextMenuDelegate = [WeakRetained thumbnailContextMenuDelegate];
  if (thumbnailContextMenuDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [thumbnailContextMenuDelegate menuElementsForPage:pageCopy];
    if ([v10 count])
    {
      [v6 addObjectsFromArray:v10];
    }
  }

  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  v13 = [document indexForPage:pageCopy];

  v14 = MEMORY[0x1E696ADA0];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v13 + 1];
  v16 = [v14 localizedStringFromNumber:v15 numberStyle:1];

  v17 = MEMORY[0x1E696AEC0];
  v18 = PDFKitLocalizedString(@"Page %@");
  v19 = [v17 stringWithFormat:v18, v16];

  v20 = [MEMORY[0x1E69DCC60] menuWithTitle:v19 image:0 identifier:0 options:0 children:v6];

  return v20;
}

- (BOOL)shouldDisplayActionButtonForPage:(id)page
{
  v4 = [(PDFThumbnailsCollectionView *)self contextMenuForPage:page];
  children = [v4 children];
  if ([children count])
  {
    v6 = ![(UICollectionView *)self->_collectionView hasActiveDrag];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_pasteActionIfAvailableAfterPage:(id)page
{
  v39 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  if ([(PDFThumbnailsCollectionView *)self _canEditDocument])
  {
    v24 = pageCopy;
    objc_initWeak(&location, self);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    itemProviders = [generalPasteboard itemProviders];

    v7 = [itemProviders countByEnumeratingWithState:&v32 objects:v38 count:16];
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
            objc_enumerationMutation(itemProviders);
          }

          v9 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          supportedUTTypes = [(PDFThumbnailsCollectionView *)self supportedUTTypes];
          v11 = [supportedUTTypes countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v11)
          {
            v12 = *v29;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v29 != v12)
                {
                  objc_enumerationMutation(supportedUTTypes);
                }

                identifier = [*(*(&v28 + 1) + 8 * j) identifier];
                v15 = [v9 hasItemConformingToTypeIdentifier:identifier];

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

                  itemProviders = v16;
                  goto LABEL_20;
                }
              }

              v11 = [supportedUTTypes countByEnumeratingWithState:&v28 objects:v37 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }
        }

        v7 = [itemProviders countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v7);
    }

    v16 = 0;
LABEL_20:

    objc_destroyWeak(&location);
    pageCopy = v24;
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

- (id)defaultContextMenuForPage:(id)page
{
  pageCopy = page;
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
  v9 = pageCopy;
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

- (void)copyPage:(id)page
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACA0];
  pageCopy = page;
  v6 = objc_alloc_init(v4);
  v7 = [pageCopy copy];

  v8 = MEMORY[0x1E695E0F0];
  [(PDFThumbnailsCollectionView *)self itemProvider:v6 registerDataRepresentationForPage:v7 draggedPages:MEMORY[0x1E695E0F0]];
  [(PDFThumbnailsCollectionView *)self itemProvider:v6 registerFileRepresentationForPage:v7 draggedPages:v8];
  v11[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setItemProviders:v9];
}

- (void)pasteAfterPage:(id)page
{
  v40 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v6 = [document indexForPage:pageCopy];
  pageCount = [document pageCount];
  v8 = v6 + 1;
  if (v6 + 1 >= pageCount)
  {
    v8 = pageCount;
  }

  v37[3] = v8;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  obj = [generalPasteboard itemProviders];

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
        supportedUTTypes = [(PDFThumbnailsCollectionView *)selfCopy supportedUTTypes];
        v14 = [supportedUTTypes countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v14)
        {
          v15 = *v30;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v30 != v15)
              {
                objc_enumerationMutation(supportedUTTypes);
              }

              v17 = *(*(&v29 + 1) + 8 * j);
              identifier = [v17 identifier];
              v19 = [v12 hasItemConformingToTypeIdentifier:identifier];

              if (v19)
              {
                identifier2 = [v17 identifier];
                v28[0] = MEMORY[0x1E69E9820];
                v28[1] = 3221225472;
                v28[2] = __46__PDFThumbnailsCollectionView_pasteAfterPage___block_invoke;
                v28[3] = &unk_1E81511D8;
                v28[4] = selfCopy;
                v28[5] = v17;
                v28[6] = v12;
                v28[7] = v37;
                v21 = [v12 loadFileRepresentationForTypeIdentifier:identifier2 completionHandler:v28];

                goto LABEL_18;
              }
            }

            v14 = [supportedUTTypes countByEnumeratingWithState:&v29 objects:v38 count:16];
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

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems:view];
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

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  v5 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems:view];
  v6 = dispatch_time(0, 100000000);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PDFThumbnailsCollectionView_collectionView_dragSessionDidEnd___block_invoke;
  v8[3] = &unk_1E8150FF8;
  v9 = v5;
  selfCopy = self;
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

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v16[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  pathCopy = path;
  v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.adobe.pdf"];
  identifier = [v10 identifier];
  v16[0] = identifier;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13 = [sessionCopy hasItemsConformingToTypeIdentifiers:v12];

  if (v13)
  {
    v14 = [(PDFThumbnailsCollectionView *)self itemsForDragWithSession:sessionCopy atIndexPath:pathCopy];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (id)itemsForDragWithSession:(id)session atIndexPath:(id)path
{
  v45 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  pathCopy = path;
  v8 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
  v9 = MEMORY[0x1E695DF70];
  items = [sessionCopy items];
  v11 = [v9 arrayWithCapacity:{objc_msgSend(items, "count")}];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  items2 = [sessionCopy items];
  v13 = [items2 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v13)
  {
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(items2);
        }

        localObject = [*(*(&v39 + 1) + 8 * i) localObject];
        if (localObject)
        {
          [v11 addObject:localObject];
        }
      }

      v13 = [items2 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
  _dragDataOwner = [(PDFThumbnailsCollectionView *)self _dragDataOwner];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __67__PDFThumbnailsCollectionView_itemsForDragWithSession_atIndexPath___block_invoke;
  v28 = &unk_1E8151200;
  v32 = &v33;
  selfCopy = self;
  v19 = v8;
  v30 = v19;
  v20 = v11;
  v31 = v20;
  [v17 _performAsDataOwner:_dragDataOwner block:&v25];
  v21 = objc_alloc(MEMORY[0x1E69DC990]);
  v22 = [v21 initWithItemProvider:{v34[5], v25, v26, v27, v28, selfCopy}];
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

- (void)itemProvider:(id)provider registerDataRepresentationForPage:(id)page draggedPages:(id)pages
{
  providerCopy = provider;
  v8 = [page copy];
  identifier = [*MEMORY[0x1E6982F10] identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PDFThumbnailsCollectionView_itemProvider_registerDataRepresentationForPage_draggedPages___block_invoke;
  v11[3] = &unk_1E8151250;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [providerCopy registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v11];
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

- (void)itemProvider:(id)provider registerFileRepresentationForPage:(id)page draggedPages:(id)pages
{
  providerCopy = provider;
  v8 = [page copy];
  identifier = [*MEMORY[0x1E6982F10] identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PDFThumbnailsCollectionView_itemProvider_registerFileRepresentationForPage_draggedPages___block_invoke;
  v11[3] = &unk_1E8151278;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [providerCopy registerFileRepresentationForTypeIdentifier:identifier fileOptions:0 visibility:0 loadHandler:v11];
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

- (void)writePDFDocumentFromPages:(id)pages completionHandler:(id)handler
{
  v61 = *MEMORY[0x1E69E9840];
  pagesCopy = pages;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  documentAttributes = [document documentAttributes];
  v12 = [documentAttributes objectForKeyedSubscript:@"Title"];

  v13 = objc_alloc_init(PDFDocument);
  v14 = objc_autoreleasePoolPush();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v15 = pagesCopy;
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
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v25 = [temporaryDirectory URLByAppendingPathComponent:uUIDString];

  path = [v25 path];
  v55 = 0;
  [defaultManager removeItemAtPath:path error:&v55];
  v27 = v55;

  if (v27 && [v27 code] != 4)
  {
    path2 = [v25 path];
    _PDFLog(OS_LOG_TYPE_DEFAULT, "PDFThumbnailsCollectionView", "Failed to remove temporary folder (at path %@) prior to storing temporary PDF document with error: %@", v36, v37, v38, v39, v40, path2);

    handlerCopy[2](handlerCopy, 0, v27);
  }

  else
  {
    v53 = v12;
    path3 = [v25 path];
    v54 = 0;
    [defaultManager createDirectoryAtPath:path3 withIntermediateDirectories:1 attributes:0 error:&v54];
    v29 = v54;

    if (v29)
    {
      _PDFLog(OS_LOG_TYPE_DEFAULT, "PDFThumbnailsCollectionView", "Failed to create directory for scanned PDF with error: %@", v30, v31, v32, v33, v34, v29);
      handlerCopy[2](handlerCopy, 0, v29);
    }

    else
    {
      v52 = handlerCopy;
      if ([v15 count] == 1)
      {
        firstObject = [v15 firstObject];
        v42 = firstObject;
        v50 = MEMORY[0x1E696AEC0];
        if (v53)
        {
          v43 = v53;
        }

        else
        {
          v43 = @"Exported Page";
        }

        label = [firstObject label];
        v45 = [v50 stringWithFormat:@"%@ n°%@", v43, label];
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

      handlerCopy = v52;
    }

    v12 = v53;
  }
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v44 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  updateCopy = update;
  if ([(PDFThumbnailsCollectionView *)self _canEditDocument])
  {
    localDragSession = [updateCopy localDragSession];

    if (localDragSession)
    {
      hasActiveDrag = [viewCopy hasActiveDrag];
      v11 = objc_alloc(MEMORY[0x1E69DC838]);
      if (hasActiveDrag)
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
    items = [updateCopy items];
    v30 = [items countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v30)
    {
      v14 = *v39;
      v32 = items;
      v33 = viewCopy;
      v29 = *v39;
      do
      {
        v15 = 0;
        do
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(items);
          }

          v31 = v15;
          v16 = *(*(&v38 + 1) + 8 * v15);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          supportedUTTypes = [(PDFThumbnailsCollectionView *)self supportedUTTypes];
          v18 = [supportedUTTypes countByEnumeratingWithState:&v34 objects:v42 count:16];
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
                  objc_enumerationMutation(supportedUTTypes);
                }

                v22 = *(*(&v34 + 1) + 8 * i);
                itemProvider = [v16 itemProvider];
                identifier = [v22 identifier];
                v25 = [itemProvider hasItemConformingToTypeIdentifier:identifier];

                if (v25)
                {
                  v27 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:2 intent:1];

                  viewCopy = v33;
                  goto LABEL_25;
                }
              }

              v19 = [supportedUTTypes countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v15 = v31 + 1;
          items = v32;
          viewCopy = v33;
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

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  v39 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  coordinatorCopy = coordinator;
  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  if (!destinationIndexPath)
  {
    destinationIndexPath = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(viewCopy inSection:{"numberOfItemsInSection:", 0), 0}];
  }

  if (([viewCopy hasActiveDrag] & 1) == 0)
  {
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = [destinationIndexPath item];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    items = [coordinatorCopy items];
    v6 = [items countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v6)
    {
      v23 = *v33;
      obj = items;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(obj);
          }

          dragItem = [*(*(&v32 + 1) + 8 * i) dragItem];
          itemProvider = [dragItem itemProvider];

          if (itemProvider)
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            supportedUTTypes = [(PDFThumbnailsCollectionView *)self supportedUTTypes];
            v11 = [supportedUTTypes countByEnumeratingWithState:&v28 objects:v37 count:16];
            if (v11)
            {
              v12 = *v29;
              while (2)
              {
                for (j = 0; j != v11; ++j)
                {
                  if (*v29 != v12)
                  {
                    objc_enumerationMutation(supportedUTTypes);
                  }

                  v14 = *(*(&v28 + 1) + 8 * j);
                  identifier = [v14 identifier];
                  v16 = [itemProvider hasItemConformingToTypeIdentifier:identifier];

                  if (v16)
                  {
                    identifier2 = [v14 identifier];
                    v25[0] = MEMORY[0x1E69E9820];
                    v25[1] = 3221225472;
                    v25[2] = __73__PDFThumbnailsCollectionView_collectionView_performDropWithCoordinator___block_invoke;
                    v25[3] = &unk_1E81511D8;
                    v25[4] = self;
                    v25[5] = v14;
                    v27 = v36;
                    v26 = itemProvider;
                    v18 = [v26 loadFileRepresentationForTypeIdentifier:identifier2 completionHandler:v25];

                    goto LABEL_20;
                  }
                }

                v11 = [supportedUTTypes countByEnumeratingWithState:&v28 objects:v37 count:16];
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

        items = obj;
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

- (unint64_t)_insertPagesFromProvidedPDFDocument:(id)document atPageIndex:(unint64_t)index
{
  documentCopy = document;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  renderingProperties = [document renderingProperties];
  displayBox = [renderingProperties displayBox];

  pageCount = [documentCopy pageCount];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:pageCount];
  if (pageCount)
  {
    for (i = 0; i != pageCount; ++i)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [documentCopy pageAtIndex:i];
      v15 = [v14 copy];

      [v15 boundsForBox:1];
      [v15 setBounds:displayBox forBox:?];
      [document insertPage:v15 atIndex:index];
      [v11 addObject:v15];

      objc_autoreleasePoolPop(v13);
      ++index;
    }
  }

  v16 = PDFKitLocalizedString(@"Insert pages");
  undoManager = [(PDFThumbnailsCollectionView *)selfCopy undoManager];
  v18 = [undoManager prepareWithInvocationTarget:selfCopy];
  [v18 removePages:v11];

  undoManager2 = [(PDFThumbnailsCollectionView *)selfCopy undoManager];
  v20 = PDFKitLocalizedString(v16);
  [undoManager2 setActionName:v20];

  v21 = [v11 count];
  return v21;
}

- (void)_insertPDFDocumentWithURL:(id)l atIndex:(unint64_t)index completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v10 = [[PDFDocument alloc] initWithURL:lCopy];
  v16 = v10;
  if (v10)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PDFThumbnailsCollectionView__insertPDFDocumentWithURL_atIndex_completionHandler___block_invoke;
    block[3] = &unk_1E81512A0;
    block[4] = self;
    v18 = v10;
    indexCopy = index;
    v19 = handlerCopy;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    _PDFLog(OS_LOG_TYPE_ERROR, "PDFThumbnailsCollectionView", "PDF document could not be created from URL %@", v11, v12, v13, v14, v15, lCopy);
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __83__PDFThumbnailsCollectionView__insertPDFDocumentWithURL_atIndex_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _insertPagesFromProvidedPDFDocument:*(a1 + 40) atPageIndex:*(a1 + 56)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_insertImageWithURL:(id)l atIndex:(unint64_t)index completionHandler:(id)handler
{
  v35[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  v13 = CGImageSourceCreateWithURL(lCopy, 0);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
  if ([document pageCount] && objc_msgSend(document, "pageCount") >= index)
  {
    if (index)
    {
      v16 = index - 1;
    }

    else
    {
      v16 = 0;
    }

    v28 = [document pageAtIndex:v16];
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
    indexCopy = index;
    v32 = handlerCopy;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    _PDFLog(OS_LOG_TYPE_ERROR, "PDFThumbnailsCollectionView", "PDF document could not be created from URL %@", v22, v23, v24, v25, v26, lCopy);
    (*(handlerCopy + 2))(handlerCopy, 0);
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

- (void)_insertFileAtURL:(id)l type:(id)type atIndex:(unint64_t)index completionHandler:(id)handler
{
  lCopy = l;
  typeCopy = type;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  thumbnailDataSourceDelegate = [WeakRetained thumbnailDataSourceDelegate];

  if (thumbnailDataSourceDelegate)
  {
    [thumbnailDataSourceDelegate insertFileAtURL:lCopy atIndex:index completionHandler:handlerCopy];
  }

  else if (*MEMORY[0x1E6982F10] == typeCopy)
  {
    [(PDFThumbnailsCollectionView *)self _insertPDFDocumentWithURL:lCopy atIndex:index completionHandler:handlerCopy];
  }

  else if (*MEMORY[0x1E6982E30] == typeCopy)
  {
    [(PDFThumbnailsCollectionView *)self _insertImageWithURL:lCopy atIndex:index completionHandler:handlerCopy];
  }
}

- (void)removePages:(id)pages
{
  pagesCopy = pages;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(pagesCopy, "count")}];
  reverseObjectEnumerator = [pagesCopy reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __43__PDFThumbnailsCollectionView_removePages___block_invoke;
  v24 = &unk_1E81512C8;
  v25 = document;
  v26 = v8;
  v11 = v8;
  v12 = document;
  [allObjects enumerateObjectsUsingBlock:&v21];
  if ([pagesCopy count] <= 1)
  {
    v13 = @"Remove page";
  }

  else
  {
    v13 = @"Remove pages";
  }

  v14 = PDFKitLocalizedString(v13);
  undoManager = [(PDFThumbnailsCollectionView *)self undoManager];
  v16 = [undoManager prepareWithInvocationTarget:self];
  reverseObjectEnumerator2 = [v11 reverseObjectEnumerator];
  allObjects2 = [reverseObjectEnumerator2 allObjects];
  [v16 insertPages:pagesCopy atIndexes:allObjects2];

  undoManager2 = [(PDFThumbnailsCollectionView *)self undoManager];
  v20 = PDFKitLocalizedString(v14);
  [undoManager2 setActionName:v20];
}

void __43__PDFThumbnailsCollectionView_removePages___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexForPage:a2];
  [*(a1 + 32) removePageAtIndex:v3];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  [v4 addObject:v5];
}

- (void)insertPages:(id)pages atIndexes:(id)indexes
{
  pagesCopy = pages;
  indexesCopy = indexes;
  v7 = [pagesCopy count];
  if (v7 == [indexesCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    pDFView = [WeakRetained PDFView];
    document = [pDFView document];

    v16 = [indexesCopy count];
    v17 = pagesCopy;
    if (v16)
    {
      for (i = 0; i < v21; ++i)
      {
        v19 = [v17 objectAtIndexedSubscript:i];
        v20 = [indexesCopy objectAtIndexedSubscript:i];
        [document insertPage:v19 atIndex:{objc_msgSend(v20, "unsignedIntegerValue")}];

        v21 = [indexesCopy count];
        v17 = pagesCopy;
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
    undoManager = [(PDFThumbnailsCollectionView *)self undoManager];
    v25 = [undoManager prepareWithInvocationTarget:self];
    [v25 removePages:pagesCopy];

    undoManager2 = [(PDFThumbnailsCollectionView *)self undoManager];
    v27 = PDFKitLocalizedString(v23);
    [undoManager2 setActionName:v27];
  }

  else
  {
    _PDFLog(OS_LOG_TYPE_ERROR, "PDFThumbnailsCollectionView", "Number of pages to insert is different from the number of indexes", v8, v9, v10, v11, v12, v28);
  }
}

- (void)movePage:(id)page toIndex:(unint64_t)index
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];

  v9 = [document indexForPage:pageCopy];
  [document removePageAtIndex:v9];
  [document insertPage:pageCopy atIndex:index];
  v10 = PDFKitLocalizedString(@"Move page");
  undoManager = [(PDFThumbnailsCollectionView *)self undoManager];
  v12 = [undoManager prepareWithInvocationTarget:self];
  [v12 movePage:pageCopy toIndex:v9];

  undoManager2 = [(PDFThumbnailsCollectionView *)self undoManager];
  v14 = PDFKitLocalizedString(v10);
  [undoManager2 setActionName:v14];
}

- (void)movePageWithTransaction:(id)transaction
{
  v33 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  difference = [transactionCopy difference];
  hasChanges = [difference hasChanges];

  if (hasChanges)
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    thumbnailDataSourceDelegate = [WeakRetained thumbnailDataSourceDelegate];
    if (thumbnailDataSourceDelegate)
    {
      difference2 = [transactionCopy difference];
      [thumbnailDataSourceDelegate handlePageOrderedCollectionDifference:difference2];
    }

    else
    {
      v25 = WeakRetained;
      pDFView = [WeakRetained PDFView];
      document = [pDFView document];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = transactionCopy;
      difference3 = [transactionCopy difference];
      removals = [difference3 removals];

      obj = removals;
      v14 = [removals countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            object = [v18 object];
            if (object)
            {
              [document removePageAtIndex:{objc_msgSend(v18, "index")}];
              [document insertPage:object atIndex:{objc_msgSend(v18, "associatedIndex")}];
              v20 = PDFKitLocalizedString(@"Move page");
              undoManager = [(PDFThumbnailsCollectionView *)self undoManager];
              v22 = [undoManager prepareWithInvocationTarget:self];
              [v22 movePage:object toIndex:{objc_msgSend(v18, "index")}];

              undoManager2 = [(PDFThumbnailsCollectionView *)self undoManager];
              v24 = PDFKitLocalizedString(v20);
              [undoManager2 setActionName:v24];
            }
          }

          v15 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v15);
      }

      WeakRetained = v25;
      transactionCopy = v26;
      thumbnailDataSourceDelegate = 0;
    }
  }
}

@end