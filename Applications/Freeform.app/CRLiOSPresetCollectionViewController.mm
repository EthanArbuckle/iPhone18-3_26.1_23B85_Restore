@interface CRLiOSPresetCollectionViewController
- (BOOL)isLowContrastWithBackgroundColor:(id)a3;
- (BOOL)p_shouldUseDarkUI;
- (BOOL)shouldVerticallyDistributeEvenly;
- (CRLiOSPresetCollectionContext)context;
- (CRLiOSPresetCollectionViewController)initWithPresetCollectionType:(unint64_t)a3 delegate:(id)a4;
- (CRLiOSPresetCollectionViewControllerDelegate)p_delegate;
- (UIEdgeInsets)swatchInsets;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)p_backgroundColor;
- (id)p_cellsMissingImages;
- (id)p_editingCoordinator;
- (id)p_indexPathsForCells:(id)a3;
- (unint64_t)p_numberOfItemsInSection:(unint64_t)a3;
- (unint64_t)p_numberOfSections;
- (void)accessibilityFocusFirstVisiblePreset;
- (void)cancelSwatchRenderingIfNeeded;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)p_clearVisibleCellCache;
- (void)p_handlePresetsChanged;
- (void)p_registerNibsInCollectionView:(id)a3 layout:(id)a4 context:(id)a5;
- (void)p_setupCollectionView;
- (void)p_setupUIInLabeledCell:(id)a3 atIndexPath:(id)a4 context:(id)a5;
- (void)presetCollectionViewDidLayoutSubviews:(id)a3;
- (void)presetCollectionViewLayoutDidHighlightPresetAtIndexPath:(id)a3;
- (void)presetCollectionViewLayoutDidSelectPresetAtIndexPath:(id)a3;
- (void)presetCollectionViewLayoutDidUnhighlightPresetAtIndexPath:(id)a3;
- (void)reloadData;
- (void)reloadDataIfNeeded;
- (void)scrollToBottom;
- (void)scrollToTop;
- (void)setPresetsChanged;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CRLiOSPresetCollectionViewController

- (CRLiOSPresetCollectionViewController)initWithPresetCollectionType:(unint64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = CRLiOSPresetCollectionViewController;
  v7 = [(CRLiOSPresetCollectionViewController *)&v20 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v8->_presetCollectionType = a3;
    if (a3)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v11 = [(CRLiOSPresetCollectionViewController *)v8 p_delegate];
      v12 = [v11 itemCollectionDataSource];

      v13 = [(CRLiOSPresetCollectionViewController *)v8 p_delegate];
      v14 = [v13 searchResultsCollection];

      v10 = [[CRLiOSShapePresetCollectionViewLayoutProvider alloc] initWithShapeCollectionDataSource:v12 searchResultsCollection:v14];
      v9 = [[CRLiOSShapePresetProvider alloc] initWithShapeCollectionDataSource:v12 searchResultsCollection:v14];
    }

    v15 = [[CRLiOSPresetCollectionViewLayout alloc] initWithPresetCollectionViewLayoutProvider:v10 delegate:v8];
    layout = v8->_layout;
    v8->_layout = v15;

    v17 = [[CRLiOSPresetRenderer alloc] initWithPresetProvider:v9];
    presetRenderer = v8->_presetRenderer;
    v8->_presetRenderer = v17;
  }

  return v8;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CRLiOSPresetCollectionViewController;
  [(CRLiOSPresetCollectionViewController *)&v3 viewDidLoad];
  [(CRLiOSPresetCollectionViewController *)self p_setupCollectionView];
  [(CRLiOSPresetCollectionViewController *)self p_clearVisibleCellCache];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CRLiOSPresetCollectionViewController;
  [(CRLiOSPresetCollectionViewController *)&v6 viewWillAppear:a3];
  if ([(CRLiOSPresetCollectionViewController *)self p_presetsChanged])
  {
    [(CRLiOSPresetCollectionViewController *)self p_handlePresetsChanged];
  }

  v4 = [(CRLiOSPresetCollectionViewController *)self p_backgroundColor];
  v5 = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  [v5 setBackgroundColor:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CRLiOSPresetCollectionViewController;
  [(CRLiOSPresetCollectionViewController *)&v5 viewDidAppear:a3];
  v4 = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  [v4 flashScrollIndicators];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CRLiOSPresetCollectionViewController;
  [(CRLiOSPresetCollectionViewController *)&v5 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CRLiOSPresetCollectionViewController;
  [(CRLiOSPresetCollectionViewController *)&v4 viewDidDisappear:a3];
  [(CRLiOSPresetCollectionViewController *)self cancelSwatchRenderingIfNeeded];
}

- (void)reloadData
{
  [(CRLiOSPresetCollectionViewController *)self p_clearVisibleCellCache];
  v3 = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  [v3 reloadData];
}

- (void)scrollToTop
{
  v2 = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  [v2 setContentOffset:{CGPointZero.x, CGPointZero.y}];
}

- (void)scrollToBottom
{
  v3 = [(CRLiOSPresetCollectionViewController *)self p_numberOfSections]- 1;
  v4 = [(CRLiOSPresetCollectionViewController *)self p_numberOfItemsInSection:v3];
  v5 = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  [v5 layoutIfNeeded];

  v7 = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  v6 = [NSIndexPath indexPathForItem:v4 - 1 inSection:v3];
  [v7 scrollToItemAtIndexPath:v6 atScrollPosition:4 animated:0];
}

- (void)accessibilityFocusFirstVisiblePreset
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10049E004;
  v2[3] = &unk_10183AB38;
  v2[4] = self;
  CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v2, 0.1);
}

- (BOOL)isLowContrastWithBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  v6 = [(CRLiOSPresetCollectionViewController *)self context];
  v7 = [v5 contextIsLowContrast:v6 forBackgroundColor:v4];

  return v7;
}

- (void)setPresetsChanged
{
  [(CRLiOSPresetCollectionViewController *)self setP_presetsChanged:1];
  if ([(CRLiOSPresetCollectionViewController *)self isViewLoaded])
  {

    [(CRLiOSPresetCollectionViewController *)self p_handlePresetsChanged];
  }
}

- (void)cancelSwatchRenderingIfNeeded
{
  v3 = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  -[CRLiOSPresetCollectionViewController setP_cancelledSwatchRendering:](self, "setP_cancelledSwatchRendering:", [v3 cancelSwatchRenderingIfNeeded]);
}

- (UIEdgeInsets)swatchInsets
{
  v2 = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  [v2 swatchInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (BOOL)shouldVerticallyDistributeEvenly
{
  v3 = [(CRLiOSPresetCollectionViewController *)self p_layout];
  v4 = [(CRLiOSPresetCollectionViewController *)self context];
  v5 = [v3 shouldVerticallyDistributeEvenlyForContext:v4];

  return v5;
}

- (void)presetCollectionViewDidLayoutSubviews:(id)a3
{
  v5 = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  v4 = [(CRLiOSPresetCollectionViewController *)self context];
  [v5 waitOnSwatchRenderingAndDeliverResultsIfNeededInContext:v4];
}

- (CRLiOSPresetCollectionContext)context
{
  v3 = [(CRLiOSPresetCollectionViewController *)self p_delegate];
  v4 = [v3 contextWithPresetCollectionViewController:self];

  return v4;
}

- (void)presetCollectionViewLayoutDidHighlightPresetAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  v7 = objc_opt_class();
  v14 = sub_100303920(v6, v7, 1, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLiOSPresetCollectionViewCell);

  v13 = [v14 presetButton];
  [v13 setHighlighted:1];
}

- (void)presetCollectionViewLayoutDidUnhighlightPresetAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  v7 = objc_opt_class();
  v14 = sub_100303920(v6, v7, 1, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLiOSPresetCollectionViewCell);

  v13 = [v14 presetButton];
  [v13 setHighlighted:0];
}

- (void)presetCollectionViewLayoutDidSelectPresetAtIndexPath:(id)a3
{
  v4 = a3;
  [(CRLiOSPresetCollectionViewController *)self cancelSwatchRenderingIfNeeded];
  v5 = [(CRLiOSPresetCollectionViewController *)self p_delegate];
  [v5 presetCollectionViewController:self didSelectPresetAtIndexPath:v4];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLiOSPresetCollectionViewController *)self context];
  v9 = [v6 section];
  v10 = [(CRLiOSPresetCollectionViewController *)self layout];
  v11 = [v10 cellReuseIdentifierForSection:v9 context:v8];

  v52 = v11;
  v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v6];

  v13 = objc_opt_class();
  v19 = sub_100303920(v12, v13, 1, v14, v15, v16, v17, v18, &OBJC_PROTOCOL___CRLiOSPresetCollectionViewCell);

  [v19 setExclusiveTouch:1];
  v20 = [v19 presetButton];
  [v20 setHighlighted:0];

  v21 = [v19 presetButton];
  v22 = [v21 imageView];
  [v22 setContentMode:1];

  v23 = [v19 defaultBackgroundConfiguration];
  v24 = +[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled];
  v25 = &unk_101462A38;
  if (!v24)
  {
    v25 = &unk_101462A30;
  }

  [v23 setCornerRadius:*v25];
  v51 = v23;
  [v19 setBackgroundConfiguration:v23];
  v26 = [v19 contentView];
  [v26 setUserInteractionEnabled:0];

  v50 = [v6 row];
  v27 = objc_opt_class();
  v28 = sub_100014370(v27, v19);
  if (v28)
  {
    [(CRLiOSPresetCollectionViewController *)self p_setupUIInLabeledCell:v28 atIndexPath:v6 context:v8];
  }

  [v19 setIsAccessibilityElement:1];
  v29 = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  v30 = [v29 localizedAccessibilityNameForPresetAtIndexPath:v6 context:v8];
  [v19 setAccessibilityLabel:v30];

  v31 = [NSMutableArray alloc];
  v32 = +[NSBundle mainBundle];
  v33 = [v32 localizedStringForKey:@"Double tap to insert" value:0 table:0];
  v53 = v33;
  v34 = [NSArray arrayWithObjects:&v53 count:1];
  v35 = [v31 initWithArray:v34];

  v36 = [(CRLiOSPresetCollectionViewController *)self context];
  LOBYTE(v34) = [v36 isSearching];

  if ((v34 & 1) == 0)
  {
    v37 = +[NSBundle mainBundle];
    v38 = [v37 localizedStringForKey:@"Swipe left or right with three fingers to change pages." value:0 table:0];
    [v35 addObject:v38];
  }

  v39 = [v35 componentsJoinedByString:@". "];
  [v19 setAccessibilityHint:v39];

  [v19 setTag:v50];
  v40 = [(CRLiOSPresetCollectionViewController *)self layout];
  [v40 sizeOfPresetInSection:{objc_msgSend(v6, "section")}];
  v42 = v41;
  v44 = v43;

  v45 = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  v46 = [v19 presetButton];
  v47 = [(CRLiOSPresetCollectionViewController *)self p_backgroundColor];
  [v45 renderSwatchInView:v46 withSize:v47 backgroundColor:v6 atIndexPath:v8 context:{v42, v44}];

  v48 = [(CRLiOSPresetCollectionViewController *)self p_visibleCells];
  [v48 addObject:v19];

  return v19;
}

- (void)reloadDataIfNeeded
{
  if ([(CRLiOSPresetCollectionViewController *)self p_cancelledSwatchRendering])
  {
    [(CRLiOSPresetCollectionViewController *)self setP_cancelledSwatchRendering:0];

    [(CRLiOSPresetCollectionViewController *)self reloadData];
  }

  else
  {
    v6 = [(CRLiOSPresetCollectionViewController *)self p_cellsMissingImages];
    if ([v6 count])
    {
      v3 = [(CRLiOSPresetCollectionViewController *)self p_visibleCells];
      [v3 removeObjectsInArray:v6];

      v4 = [(CRLiOSPresetCollectionViewController *)self p_indexPathsForCells:v6];
      v5 = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
      [v5 reloadItemsAtIndexPaths:v4];
    }
  }
}

- (void)p_setupCollectionView
{
  v38 = [(CRLiOSPresetCollectionViewController *)self layout];
  v3 = [[CRLiOSPresetCollectionView alloc] initWithFrame:v38 collectionViewLayout:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CRLiOSPresetCollectionView *)v3 setDelaysContentTouches:0];
  [(CRLiOSPresetCollectionView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CRLiOSPresetCollectionView *)v3 setDataSource:self];
  [(CRLiOSPresetCollectionView *)v3 setDelegate:v38];
  [(CRLiOSPresetCollectionView *)v3 setPresetCollectionViewDelegate:self];
  v4 = [(CRLiOSPresetCollectionViewController *)self context];
  if ([v38 showsSubpageNavigator])
  {
    v5 = [v38 subpageNavigatorItems];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = [CRLiOSPresetCollectionContext alloc];
        v9 = [v4 contextType];
        [v4 contentSize];
        v11 = v10;
        v13 = v12;
        v14 = [v4 editingCoordinator];
        v15 = [v4 isSearching];
        v16 = [v4 pageIndex];
        v17 = [v4 traitCollection];
        v18 = [(CRLiOSPresetCollectionContext *)v8 initWithContextType:v9 contentSize:v14 editingCoordinator:v15 isSearching:v16 pageIndex:v7 subpageIndex:v17 traitCollection:v11, v13];

        [(CRLiOSPresetCollectionViewController *)self p_registerNibsInCollectionView:v3 layout:v38 context:v18];
        ++v7;
        v19 = [v38 subpageNavigatorItems];
        v20 = [v19 count];
      }

      while (v7 < v20);
    }
  }

  else
  {
    [(CRLiOSPresetCollectionViewController *)self p_registerNibsInCollectionView:v3 layout:v38 context:v4];
  }

  v21 = [(CRLiOSPresetCollectionViewController *)self p_backgroundColor];
  [(CRLiOSPresetCollectionView *)v3 setBackgroundColor:v21];

  [(CRLiOSPresetCollectionView *)v3 setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(CRLiOSPresetCollectionView *)v3 setDragDelegate:self];
  v22 = [(CRLiOSPresetCollectionViewController *)self view];
  [v22 addSubview:v3];
  v23 = [v22 safeAreaLayoutGuide];
  v24 = [v23 topAnchor];
  v25 = [(CRLiOSPresetCollectionView *)v3 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = [v22 bottomAnchor];
  v28 = [(CRLiOSPresetCollectionView *)v3 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v29 setActive:1];

  v30 = [v22 safeAreaLayoutGuide];
  v31 = [v30 leadingAnchor];
  v32 = [(CRLiOSPresetCollectionView *)v3 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  [v33 setActive:1];

  v34 = [v22 safeAreaLayoutGuide];
  v35 = [v34 trailingAnchor];
  v36 = [(CRLiOSPresetCollectionView *)v3 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v37 setActive:1];

  [(CRLiOSPresetCollectionViewController *)self setP_collectionView:v3];
}

- (void)p_registerNibsInCollectionView:(id)a3 layout:(id)a4 context:(id)a5
{
  v6 = a3;
  v7 = [a4 cellRegistrationDictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:v13];
        [v6 registerNib:v14 forCellWithReuseIdentifier:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)p_clearVisibleCellCache
{
  v3 = objc_alloc_init(NSMutableArray);
  [(CRLiOSPresetCollectionViewController *)self setP_visibleCells:v3];
}

- (unint64_t)p_numberOfSections
{
  v3 = [(CRLiOSPresetCollectionViewController *)self layout];
  v4 = [(CRLiOSPresetCollectionViewController *)self context];
  v5 = [v3 numberOfSectionsInCollectionViewForContext:v4];

  return v5;
}

- (unint64_t)p_numberOfItemsInSection:(unint64_t)a3
{
  v4 = [(CRLiOSPresetCollectionViewController *)self layout];
  v5 = [v4 numberOfItemsInSection:a3];

  return v5;
}

- (id)p_editingCoordinator
{
  v2 = [(CRLiOSPresetCollectionViewController *)self context];
  v3 = [v2 editingCoordinator];

  return v3;
}

- (id)p_backgroundColor
{
  v3 = [(CRLiOSPresetCollectionViewController *)self p_delegate];
  v4 = [v3 backgroundColorForPresetCollectionViewController:self];

  return v4;
}

- (id)p_indexPathsForCells:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
        v13 = [v12 indexPathForCell:v11];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)p_cellsMissingImages
{
  v3 = [(CRLiOSPresetCollectionViewController *)self p_visibleCells];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(CRLiOSPresetCollectionViewController *)self p_visibleCells];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = objc_opt_class();
        v18 = sub_1003038E0(v11, v12, 1, v13, v14, v15, v16, v17, &OBJC_PROTOCOL___CRLiOSPresetCollectionViewCell);
        v19 = v18;
        if (v18)
        {
          v20 = [v18 presetButton];
          v21 = [v20 crl_isPresetRenderingInvalid];

          if (v21)
          {
            [v4 addObject:v19];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)p_handlePresetsChanged
{
  [(CRLiOSPresetCollectionViewController *)self setP_presetsChanged:0];

  [(CRLiOSPresetCollectionViewController *)self reloadData];
}

- (BOOL)p_shouldUseDarkUI
{
  v2 = [(CRLiOSPresetCollectionViewController *)self traitCollection];
  v3 = [v2 crl_isUserInterfaceStyleDark];

  return v3;
}

- (void)p_setupUIInLabeledCell:(id)a3 atIndexPath:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v50 = [v10 section];
  v11 = [v8 label];
  v12 = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  v13 = [v12 localizedNameForPresetAtIndexPath:v10 context:v9];

  v14 = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  v15 = v9;
  v16 = [v14 isDefaultLocalizedNameForPresetAtIndexPath:v10 context:v9];

  [v8 setLabelHasDefaultLocalizedName:v16];
  v17 = objc_alloc_init(NSMutableParagraphStyle);
  [v11 setNumberOfLines:2];
  LODWORD(v18) = 0.5;
  [v17 setHyphenationFactor:v18];
  [v17 setLineBreakMode:4];
  v19 = [UIFont systemFontOfSize:12.0];
  [v17 setLineSpacing:1.0];
  [v17 setAlignment:1];
  LODWORD(v14) = [(CRLiOSPresetCollectionViewController *)self p_shouldUseDarkUI];
  v49 = v8;
  v20 = [v8 labelHasDefaultLocalizedName];
  if (v14)
  {
    if (v20)
    {
      v21 = 0.556862772;
LABEL_6:
      v22 = [UIColor colorWithRed:v21 green:v21 blue:v21 alpha:1.0];
      goto LABEL_8;
    }
  }

  else if (v20)
  {
    v21 = 0.643137276;
    goto LABEL_6;
  }

  v22 = +[UIColor labelColor];
LABEL_8:
  v51[0] = NSParagraphStyleAttributeName;
  v51[1] = NSForegroundColorAttributeName;
  v52[0] = v17;
  v52[1] = v22;
  v51[2] = NSFontAttributeName;
  v51[3] = NSKernAttributeName;
  v52[2] = v19;
  v52[3] = &off_1018E33B0;
  v23 = v22;
  v24 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
  v25 = v24;
  v26 = v13;
  v27 = v19;
  if (!v13)
  {
    v46 = v24;
    v28 = v17;
    v29 = v27;
    v45 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    v30 = v11;
    if (qword_101AD5A10 != -1)
    {
      sub_10137F4BC();
    }

    v31 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137F4E4(v45, v31);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137F5A0();
    }

    v32 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v32, v45);
    }

    v33 = [NSString stringWithUTF8String:"[CRLiOSPresetCollectionViewController p_setupUIInLabeledCell:atIndexPath:context:]"];
    v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSPresetCollectionViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:476 isFatal:0 description:"invalid nil value for '%{public}s'", "localizedName"];

    v26 = &stru_1018BCA28;
    v11 = v30;
    v13 = 0;
    v27 = v29;
    v17 = v28;
    v25 = v46;
  }

  v47 = v11;
  v48 = v27;
  v35 = [[NSAttributedString alloc] initWithString:v26 attributes:v25];
  [v11 setAttributedText:v35];
  v36 = [(CRLiOSPresetCollectionViewController *)self p_layout];
  [v36 additionalHeightForItemInSection:v50 context:v15];
  v38 = v37 - 30.0;
  v39 = [v49 labelVerticalSpacingConstraint];
  [v39 setConstant:v38];

  v40 = [(CRLiOSPresetCollectionViewController *)self p_layout];
  [v40 horizontalInsetForItemInSection:v50 context:v15];
  v42 = v41;

  v43 = [v49 presetViewLeadingConstraint];
  [v43 setConstant:v42];

  v44 = [v49 presetViewTrailingConstraint];
  [v44 setConstant:v42];
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(CRLiOSPresetCollectionViewController *)self p_delegate];
  v10 = [v9 allowsInsertDrag];

  if (v10)
  {
    v11 = [(CRLiOSPresetCollectionViewController *)self p_delegate];
    v12 = [v11 itemsForBeginningDragSessionForPresetCollectionViewController:self forCollectionView:v7 atIndexPath:v8];
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v4 = objc_alloc_init(UIDragPreviewParameters);
  v5 = +[UIColor clearColor];
  [v4 setBackgroundColor:v5];

  v6 = +[UIBezierPath bezierPath];
  [v4 setShadowPath:v6];

  return v4;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v4 = [(CRLiOSPresetCollectionViewController *)self presentingViewController:a3];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (CRLiOSPresetCollectionViewControllerDelegate)p_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end