@interface PPKPDFThumbnailsCollectionViewBase
- (BOOL)_canEditDocument;
- (BOOL)shouldDisplayActionButtonForPage:(id)page;
- (PPKPDFThumbnailViewBase)thumbnailView;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)contextMenuForBackgroundAtLocation:(CGPoint)location;
- (id)contextMenuForPage:(id)page;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)currentPage;
- (id)initFromThumbnailView:(id)view;
- (id)itemsForDragWithSession:(id)session atIndexPath:(id)path;
- (id)makeDatasource;
- (id)previewForCollectionView:(id)view contextMenuInteraction:(id)interaction;
- (id)previewForCollectionView:(id)view indexPath:(id)path;
- (id)supportedUTTypes;
- (void)_insertFileAtURL:(id)l type:(id)type atIndex:(unint64_t)index completionHandler:(id)handler;
- (void)_selectAndScrollToCurrentPageIfNeeded;
- (void)_updateActionsButtonVisibilityAtIndexPath:(id)path;
- (void)_updateMetricsIfNeeded;
- (void)_updateScrubber;
- (void)applySnapshotWithAnimation:(BOOL)animation;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)configureCell:(id)cell withPage:(id)page indexPath:(id)path;
- (void)currentPageChanged:(id)changed;
- (void)movePageWithTransaction:(id)transaction;
- (void)pageChanged:(id)changed;
- (void)reloadPage:(id)page;
- (void)reloadPageAt:(int64_t)at;
- (void)setLargeThumbnails:(BOOL)thumbnails;
@end

@implementation PPKPDFThumbnailsCollectionViewBase

- (id)initFromThumbnailView:(id)view
{
  v42[4] = *MEMORY[0x1E69E9840];
  obj = view;
  v41.receiver = self;
  v41.super_class = PPKPDFThumbnailsCollectionViewBase;
  v4 = [(PPKPDFThumbnailsCollectionViewBase *)&v41 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_thumbnailView, obj);
    v37 = objc_alloc_init(MEMORY[0x1E69DC840]);
    [v37 setScrollDirection:0];
    [v37 setMinimumLineSpacing:0.0];
    [v37 setEstimatedItemSize:{*MEMORY[0x1E69DDC10], *(MEMORY[0x1E69DDC10] + 8)}];
    objc_initWeak(&location, v5);
    v6 = [PPKLayoutCompleteCollectionView alloc];
    [obj bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __60__PPKPDFThumbnailsCollectionViewBase_initFromThumbnailView___block_invoke;
    v38[3] = &unk_1E845C168;
    objc_copyWeak(&v39, &location);
    v15 = [(PPKLayoutCompleteCollectionView *)v6 initWithFrame:v37 collectionViewLayout:v38 layoutCompletion:v8, v10, v12, v14];
    collectionView = v5->_collectionView;
    v5->_collectionView = v15;

    [(PPKPDFThumbnailsCollectionViewBase *)v5 addSubview:v5->_collectionView];
    [(UICollectionView *)v5->_collectionView setAllowsFocus:1];
    [(UICollectionView *)v5->_collectionView setDragInteractionEnabled:1];
    [(UICollectionView *)v5->_collectionView setDragDelegate:v5];
    [(UICollectionView *)v5->_collectionView setDropDelegate:v5];
    [(UICollectionView *)v5->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = MEMORY[0x1E696ACD8];
    bottomAnchor = [(UICollectionView *)v5->_collectionView bottomAnchor];
    bottomAnchor2 = [(PPKPDFThumbnailsCollectionViewBase *)v5 bottomAnchor];
    v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v42[0] = v33;
    topAnchor = [(UICollectionView *)v5->_collectionView topAnchor];
    topAnchor2 = [(PPKPDFThumbnailsCollectionViewBase *)v5 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v42[1] = v17;
    leadingAnchor = [(UICollectionView *)v5->_collectionView leadingAnchor];
    leadingAnchor2 = [(PPKPDFThumbnailsCollectionViewBase *)v5 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[2] = v20;
    trailingAnchor = [(UICollectionView *)v5->_collectionView trailingAnchor];
    trailingAnchor2 = [(PPKPDFThumbnailsCollectionViewBase *)v5 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v42[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
    [v30 activateConstraints:v24];

    [(UICollectionView *)v5->_collectionView registerClass:NSClassFromString(&cfstr_Ppkpdficoncoll.isa) forCellWithReuseIdentifier:@"PDFIconCollectionViewCell"];
    makeDatasource = [(PPKPDFThumbnailsCollectionViewBase *)v5 makeDatasource];
    dataSource = v5->_dataSource;
    v5->_dataSource = makeDatasource;

    [(UICollectionView *)v5->_collectionView setDataSource:v5->_dataSource];
    [(UICollectionView *)v5->_collectionView setDelegate:v5];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v5->_collectionView setBackgroundColor:clearColor];

    v28 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v5];
    [(UICollectionView *)v5->_collectionView addInteraction:v28];
    [(PPKPDFThumbnailsCollectionViewBase *)v5 _updateMetricsIfNeeded];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __60__PPKPDFThumbnailsCollectionViewBase_initFromThumbnailView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectAndScrollToCurrentPageIfNeeded];
}

- (id)makeDatasource
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x1E69DC820]);
  collectionView = self->_collectionView;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PPKPDFThumbnailsCollectionViewBase_makeDatasource__block_invoke;
  v11[3] = &unk_1E845C190;
  objc_copyWeak(&v12, &location);
  v5 = [v3 initWithCollectionView:collectionView cellProvider:v11];
  reorderingHandlers = [v5 reorderingHandlers];
  [reorderingHandlers setCanReorderItemHandler:&__block_literal_global_0];

  reorderingHandlers2 = [v5 reorderingHandlers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PPKPDFThumbnailsCollectionViewBase_makeDatasource__block_invoke_3;
  v9[3] = &unk_1E845C1D8;
  objc_copyWeak(&v10, &location);
  [reorderingHandlers2 setDidReorderHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v5;
}

id __52__PPKPDFThumbnailsCollectionViewBase_makeDatasource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
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

void __52__PPKPDFThumbnailsCollectionViewBase_makeDatasource__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained movePageWithTransaction:v5];
  }
}

- (void)reloadPageAt:(int64_t)at
{
  dataSource = self->_dataSource;
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:at inSection:0];
  v7 = [(UICollectionViewDiffableDataSource *)dataSource itemIdentifierForIndexPath:v5];

  v6 = v7;
  if (v7)
  {
    [(PPKPDFThumbnailsCollectionViewBase *)self reloadPage:v7];
    v6 = v7;
  }
}

- (void)configureCell:(id)cell withPage:(id)page indexPath:(id)path
{
  cellCopy = cell;
  pageCopy = page;
  pathCopy = path;
  v11 = os_log_create("com.apple.PaperKit", "PDFThumbnailsCollectionViewBase");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PPKPDFThumbnailsCollectionViewBase configureCell:pathCopy withPage:v11 indexPath:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  layoutMode = [WeakRetained layoutMode];
  [WeakRetained thumbnailSize];
  if (layoutMode)
  {
    [cellCopy setThumbnailHeight:v14];
  }

  else
  {
    [cellCopy setThumbnailWidth:?];
  }

  [cellCopy setHasLargeThumbnail:self->_largeThumbnails];
  [pageCopy boundsForBox:1];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  memset(&v52, 0, sizeof(v52));
  CGAffineTransformMakeRotation(&v52, [pageCopy rotation] / 180.0 * 3.14159265);
  v51 = v52;
  v53.origin.x = v16;
  v53.origin.y = v18;
  v53.size.width = v20;
  v53.size.height = v22;
  v54 = CGRectApplyAffineTransform(v53, &v51);
  [cellCopy updateAspectConstraintWithSize:{v54.size.width, v54.size.height}];
  [cellCopy setPage:pageCopy];
  v45 = pathCopy;
  [(PPKPDFThumbnailsCollectionViewBase *)self updateImageForCell:cellCopy indexPath:pathCopy page:pageCopy];
  objc_initWeak(&v51, self);
  objc_initWeak(&location, cellCopy);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __71__PPKPDFThumbnailsCollectionViewBase_configureCell_withPage_indexPath___block_invoke;
  v46[3] = &unk_1E845C228;
  objc_copyWeak(&v48, &v51);
  objc_copyWeak(&v49, &location);
  v23 = pageCopy;
  v47 = v23;
  actionsButton = [cellCopy actionsButton];
  [actionsButton _setMenuProvider:v46];

  actionsButton2 = [cellCopy actionsButton];
  [actionsButton2 setShowsMenuAsPrimaryAction:1];

  LODWORD(actionsButton2) = [(PPKPDFThumbnailsCollectionViewBase *)self shouldDisplayActionButtonForPage:v23];
  actionsButton3 = [cellCopy actionsButton];
  [actionsButton3 setHidden:actionsButton2 ^ 1];

  v27 = objc_loadWeakRetained(&self->_thumbnailView);
  [cellCopy setIsHorizontalLayout:{objc_msgSend(v27, "layoutMode") == 1}];

  [cellCopy invalidateIntrinsicContentSize];
  document = [v23 document];
  v29 = [document indexForPage:v23];

  v30 = MEMORY[0x1E696AEC0];
  v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.PaperKit"];
  v32 = [v31 localizedStringForKey:@"Thumbnail for page %ld" value:&stru_1F4F6DB60 table:@"Localizable"];
  v33 = v29 + 1;
  v34 = [v30 stringWithFormat:v32, v29 + 1];
  [cellCopy setAccessibilityLabel:v34];

  v35 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.PaperKit"];
  v36 = [v35 localizedStringForKey:@"PDF thumbnail" value:&stru_1F4F6DB60 table:@"Localizable"];
  [cellCopy setAccessibilityIdentifier:v36];

  v37 = MEMORY[0x1E696AEC0];
  v38 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.PaperKit"];
  v39 = [v38 localizedStringForKey:@"Page actions for page %ld" value:&stru_1F4F6DB60 table:@"Localizable"];
  v40 = [v37 stringWithFormat:v39, v33];
  actionsButton4 = [cellCopy actionsButton];
  [actionsButton4 setAccessibilityLabel:v40];

  v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.PaperKit"];
  v43 = [v42 localizedStringForKey:@"Page actions" value:&stru_1F4F6DB60 table:@"Localizable"];
  actionsButton5 = [cellCopy actionsButton];
  [actionsButton5 setAccessibilityIdentifier:v43];

  objc_destroyWeak(&v49);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&location);
  objc_destroyWeak(&v51);
}

id __71__PPKPDFThumbnailsCollectionViewBase_configureCell_withPage_indexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = MEMORY[0x1E6978530];
    v9 = objc_loadWeakRetained((a1 + 48));
    v10 = [v9 window];
    v11 = [v8 activeToolPickerForWindow:v10];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E6978408]);
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __71__PPKPDFThumbnailsCollectionViewBase_configureCell_withPage_indexPath___block_invoke_2;
      v28 = &unk_1E845C200;
      objc_copyWeak(&v30, (a1 + 48));
      v29 = v11;
      v13 = [v12 initWithHandler:&v25];
      v14 = WeakRetained[54];
      WeakRetained[54] = v13;

      v15 = WeakRetained[54];
      v32 = CAFrameRateRangeMake(30.0, 120.0, 30.0);
      minimum = v32.minimum;
      maximum = v32.maximum;
      preferred = v32.preferred;
      v19 = [MEMORY[0x1E695DFD0] mainRunLoop];
      *&v20 = minimum;
      *&v21 = maximum;
      *&v22 = preferred;
      [v15 startWithPreferredFramesPerSecond:v19 addToRunLoop:*MEMORY[0x1E695DA28] forMode:{v20, v21, v22}];

      objc_destroyWeak(&v30);
    }

    v23 = [WeakRetained contextMenuForPage:*(a1 + 32)];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t __71__PPKPDFThumbnailsCollectionViewBase_configureCell_withPage_indexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained actionsButton];
  v4 = [v3 isHeld];

  v5 = [*(a1 + 32) _isLockedHidden];
  if (v4)
  {
    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) _lockHidden];
    }
  }

  else if (v5)
  {
    [*(a1 + 32) _unlockHidden];
  }

  return v4;
}

- (void)applySnapshotWithAnimation:(BOOL)animation
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!self->_isApplyingCollectionViewTransaction)
  {
    animationCopy = animation;
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
      v9 = objc_alloc_init(MEMORY[0x1E69955A0]);
      v18[0] = @"Thumbnails";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [v9 appendSectionsWithIdentifiers:v10];

      if ([document pageCount])
      {
        v11 = 0;
        do
        {
          v12 = [document pageAtIndex:v11];
          v13 = v12;
          if (v12)
          {
            v17 = v12;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
            [v9 appendItemsWithIdentifiers:v14 intoSectionWithIdentifier:@"Thumbnails"];
          }

          ++v11;
        }

        while ([document pageCount] > v11);
      }

      dataSource = self->_dataSource;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__PPKPDFThumbnailsCollectionViewBase_applySnapshotWithAnimation___block_invoke;
      v16[3] = &unk_1E845C250;
      v16[4] = self;
      [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:v9 animatingDifferences:animationCopy completion:v16];
    }
  }
}

- (void)setLargeThumbnails:(BOOL)thumbnails
{
  if (self->_largeThumbnails != thumbnails)
  {
    self->_largeThumbnails = thumbnails;
    [(PPKPDFThumbnailsCollectionViewBase *)self _updateMetricsIfNeeded];
  }
}

- (void)_updateMetricsIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  if (_UISolariumEnabled())
  {
    self->_SectionVerticalEdgesInset = 6.0;
    v3 = 2.0;
  }

  else if ([(PPKPDFThumbnailsCollectionViewBase *)self largeThumbnails])
  {
    self->_SectionVerticalEdgesInset = 8.0;
    v3 = 8.0;
  }

  else
  {
    self->_SectionVerticalEdgesInset = 5.0;
    v3 = 2.0;
  }

  self->_ImageCornerRadius = v3;
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    collectionViewLayout2 = [(UICollectionView *)self->_collectionView collectionViewLayout];
    [collectionViewLayout2 setSectionInset:{self->_SectionVerticalEdgesInset, 0.0, self->_SectionVerticalEdgesInset, 0.0}];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  preparedCells = [(UICollectionView *)self->_collectionView preparedCells];
  v8 = [preparedCells countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(preparedCells);
        }

        [*(*(&v12 + 1) + 8 * v11++) setHasLargeThumbnail:{-[PPKPDFThumbnailsCollectionViewBase largeThumbnails](self, "largeThumbnails")}];
      }

      while (v9 != v11);
      v9 = [preparedCells countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
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
  [(PPKPDFThumbnailsCollectionViewBase *)self _updateScrubber];

  [(PPKPDFThumbnailsCollectionViewBase *)self _selectAndScrollToCurrentPageIfNeeded];
}

- (void)pageChanged:(id)changed
{
  if (!self->_isApplyingCollectionViewTransaction)
  {
    v5 = MEMORY[0x1E69E58C0];
    changedCopy = changed;
    [v5 cancelPreviousPerformRequestsWithTarget:self selector:sel_pageChanged_ object:0];
    userInfo = [changedCopy userInfo];

    v7 = [userInfo objectForKey:@"page"];
    if (v7)
    {
      [(PPKPDFThumbnailsCollectionViewBase *)self reloadPage:v7];
    }
  }
}

- (void)reloadPage:(id)page
{
  v10[1] = *MEMORY[0x1E69E9840];
  pageCopy = page;
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  itemIdentifiers = [snapshot itemIdentifiers];
  v7 = [itemIdentifiers containsObject:pageCopy];

  if (v7)
  {
    v10[0] = pageCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [snapshot reconfigureItemsWithIdentifiers:v8];

    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:0];
  }

  else
  {
    v9 = os_log_create("com.apple.PaperKit", "PDFThumbnailsCollectionViewBase");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PPKPDFThumbnailsCollectionViewBase reloadPage:v9];
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
        [(PPKPDFThumbnailsCollectionViewBase *)self _updateActionsButtonVisibilityAtIndexPath:v11];
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
    v10 = [(PPKPDFThumbnailsCollectionViewBase *)self shouldDisplayActionButtonForPage:v12];
    actionsButton = [v8 actionsButton];
    [actionsButton setHidden:!v10];
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

  [(PPKPDFThumbnailsCollectionViewBase *)self _updateActionsButtonVisibilityAtIndexPath:pathCopy];
  v9 = objc_loadWeakRetained(&self->_thumbnailView);
  thumbnailContextMenuDelegate = [v9 thumbnailContextMenuDelegate];

  [thumbnailContextMenuDelegate didSelectPage];
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  viewCopy = view;
  pathsCopy = paths;
  firstObject = [pathsCopy firstObject];
  if (firstObject)
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    pDFView = [WeakRetained PDFView];
    document = [pDFView document];

    if (document)
    {
      v13 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:firstObject];
      if (v13)
      {
        objc_initWeak(&location, self);
        v14 = MEMORY[0x1E69DC8D8];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __104__PPKPDFThumbnailsCollectionViewBase_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke;
        v17[3] = &unk_1E845C278;
        objc_copyWeak(&v19, &location);
        v18 = v13;
        v15 = [v14 configurationWithIdentifier:firstObject previewProvider:0 actionProvider:v17];

        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __104__PPKPDFThumbnailsCollectionViewBase_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained contextMenuForPage:*(a1 + 32)];

  return v3;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v21[1] = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  v8 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:x, y];
  v9 = v8;
  if (v8)
  {
    collectionView = self->_collectionView;
    v21[0] = v8;
    document = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v12 = [(PPKPDFThumbnailsCollectionViewBase *)self collectionView:collectionView contextMenuConfigurationForItemsAtIndexPaths:document point:x, y];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    pDFView = [WeakRetained PDFView];
    document = [pDFView document];

    v15 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(document inSection:{"pageCount") - 1, 0}];
    objc_initWeak(&location, self);
    v16 = MEMORY[0x1E69DC8D8];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__PPKPDFThumbnailsCollectionViewBase_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v18[3] = &unk_1E845C2A0;
    objc_copyWeak(v19, &location);
    v19[1] = *&x;
    v19[2] = *&y;
    v12 = [v16 configurationWithIdentifier:v15 previewProvider:0 actionProvider:v18];
    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }

  return v12;
}

id __92__PPKPDFThumbnailsCollectionViewBase_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
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
    v13 = [(PPKPDFThumbnailsCollectionViewBase *)self previewForCollectionView:viewCopy indexPath:v12];
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

- (id)contextMenuForBackgroundAtLocation:(CGPoint)location
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  thumbnailContextMenuDelegate = [WeakRetained thumbnailContextMenuDelegate];

  v7 = [thumbnailContextMenuDelegate pasteActionForPage:0];
  if (v7)
  {
    [v4 addObject:v7];
  }

  v8 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4F6DB60 image:0 identifier:0 options:0 children:v4];

  return v8;
}

- (id)contextMenuForPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  thumbnailContextMenuDelegate = [WeakRetained thumbnailContextMenuDelegate];
  v8 = thumbnailContextMenuDelegate;
  if (thumbnailContextMenuDelegate)
  {
    v9 = [thumbnailContextMenuDelegate menuElementsForPage:pageCopy];
    if ([v9 count])
    {
      [v6 addObjectsFromArray:v9];
    }
  }

  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  v12 = [document indexForPage:pageCopy];

  v13 = MEMORY[0x1E696ADA0];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12 + 1];
  v15 = [v13 localizedStringFromNumber:v14 numberStyle:1];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.PaperKit"];
  v18 = [v17 localizedStringForKey:@"Page %@" value:&stru_1F4F6DB60 table:@"Localizable"];
  v19 = [v16 stringWithFormat:v18, v15];

  v20 = [MEMORY[0x1E69DCC60] menuWithTitle:v19 image:0 identifier:0 options:0 children:v6];

  return v20;
}

- (BOOL)shouldDisplayActionButtonForPage:(id)page
{
  v4 = [(PPKPDFThumbnailsCollectionViewBase *)self contextMenuForPage:page];
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

        [(PPKPDFThumbnailsCollectionViewBase *)self _updateActionsButtonVisibilityAtIndexPath:*(*(&v10 + 1) + 8 * v9++)];
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
  v8[2] = __71__PPKPDFThumbnailsCollectionViewBase_collectionView_dragSessionDidEnd___block_invoke;
  v8[3] = &unk_1E845C2C8;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_after(v6, MEMORY[0x1E69E96A0], v8);
}

void __71__PPKPDFThumbnailsCollectionViewBase_collectionView_dragSessionDidEnd___block_invoke(uint64_t a1)
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
    v14 = [(PPKPDFThumbnailsCollectionViewBase *)self itemsForDragWithSession:sessionCopy atIndexPath:pathCopy];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (id)itemsForDragWithSession:(id)session atIndexPath:(id)path
{
  v29[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  pathCopy = path;
  v8 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  thumbnailContextMenuDelegate = [WeakRetained thumbnailContextMenuDelegate];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v11 = MEMORY[0x1E69DCD50];
  _dragDataOwner = [(PPKPDFThumbnailsCollectionViewBase *)self _dragDataOwner];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__PPKPDFThumbnailsCollectionViewBase_itemsForDragWithSession_atIndexPath___block_invoke;
  v19[3] = &unk_1E845C2F0;
  v22 = &v23;
  v13 = thumbnailContextMenuDelegate;
  v20 = v13;
  v14 = pathCopy;
  v21 = v14;
  [v11 _performAsDataOwner:_dragDataOwner block:v19];
  v15 = objc_alloc(MEMORY[0x1E69DC990]);
  v16 = [v15 initWithItemProvider:v24[5]];
  [v16 setLocalObject:v8];
  v29[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];

  _Block_object_dispose(&v23, 8);

  return v17;
}

uint64_t __74__PPKPDFThumbnailsCollectionViewBase_itemsForDragWithSession_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) item];
  v7 = *(*(*(a1 + 48) + 8) + 40);

  return [v5 registerFileRepresentationsForPage:v6 toItemProvider:v7];
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v44 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  updateCopy = update;
  if ([(PPKPDFThumbnailsCollectionViewBase *)self _canEditDocument])
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
          supportedUTTypes = [(PPKPDFThumbnailsCollectionViewBase *)self supportedUTTypes];
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

- (id)supportedUTTypes
{
  if (supportedUTTypes_onceToken != -1)
  {
    [PPKPDFThumbnailsCollectionViewBase supportedUTTypes];
  }

  v3 = supportedUTTypes_supportedTypes;

  return v3;
}

void __54__PPKPDFThumbnailsCollectionViewBase_supportedUTTypes__block_invoke()
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
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  thumbnailDataSourceDelegate = [WeakRetained thumbnailDataSourceDelegate];

  if (thumbnailDataSourceDelegate)
  {
    [thumbnailDataSourceDelegate insertFileAtURL:lCopy atIndex:index completionHandler:handlerCopy];
  }
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
            supportedUTTypes = [(PPKPDFThumbnailsCollectionViewBase *)self supportedUTTypes];
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
                    v25[2] = __80__PPKPDFThumbnailsCollectionViewBase_collectionView_performDropWithCoordinator___block_invoke;
                    v25[3] = &unk_1E845C340;
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

void __80__PPKPDFThumbnailsCollectionViewBase_collectionView_performDropWithCoordinator___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[7];
    v9 = *(*(v8 + 8) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__PPKPDFThumbnailsCollectionViewBase_collectionView_performDropWithCoordinator___block_invoke_2;
    v11[3] = &unk_1E845C318;
    v11[4] = v8;
    [v6 _insertFileAtURL:a2 type:v7 atIndex:v9 completionHandler:v11];
  }

  else
  {
    v10 = os_log_create("com.apple.PaperKit", "PDFThumbnailsCollectionViewBase");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __80__PPKPDFThumbnailsCollectionViewBase_collectionView_performDropWithCoordinator___block_invoke_cold_1(a1, v5, v10);
    }
  }
}

- (void)movePageWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  difference = [transactionCopy difference];
  hasChanges = [difference hasChanges];

  if (hasChanges)
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
    thumbnailDataSourceDelegate = [WeakRetained thumbnailDataSourceDelegate];
    if (thumbnailDataSourceDelegate)
    {
      self->_isApplyingCollectionViewTransaction = 1;
      difference2 = [transactionCopy difference];
      [thumbnailDataSourceDelegate handlePageOrderedCollectionDifference:difference2];

      self->_isApplyingCollectionViewTransaction = 0;
    }
  }
}

- (PPKPDFThumbnailViewBase)thumbnailView
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);

  return WeakRetained;
}

- (void)configureCell:(void *)a1 withPage:(NSObject *)a2 indexPath:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 item];
  _os_log_debug_impl(&dword_1D38C4000, a2, OS_LOG_TYPE_DEBUG, "Configuring cell n°%lu", &v3, 0xCu);
}

void __80__PPKPDFThumbnailsCollectionViewBase_collectionView_performDropWithCoordinator___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1D38C4000, log, OS_LOG_TYPE_ERROR, "Item provider %@ returned a nil URL. Error: %@", &v4, 0x16u);
}

@end