@interface CRLiOSPresetCollectionViewController
- (BOOL)isLowContrastWithBackgroundColor:(id)color;
- (BOOL)p_shouldUseDarkUI;
- (BOOL)shouldVerticallyDistributeEvenly;
- (CRLiOSPresetCollectionContext)context;
- (CRLiOSPresetCollectionViewController)initWithPresetCollectionType:(unint64_t)type delegate:(id)delegate;
- (CRLiOSPresetCollectionViewControllerDelegate)p_delegate;
- (UIEdgeInsets)swatchInsets;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)p_backgroundColor;
- (id)p_cellsMissingImages;
- (id)p_editingCoordinator;
- (id)p_indexPathsForCells:(id)cells;
- (unint64_t)p_numberOfItemsInSection:(unint64_t)section;
- (unint64_t)p_numberOfSections;
- (void)accessibilityFocusFirstVisiblePreset;
- (void)cancelSwatchRenderingIfNeeded;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)p_clearVisibleCellCache;
- (void)p_handlePresetsChanged;
- (void)p_registerNibsInCollectionView:(id)view layout:(id)layout context:(id)context;
- (void)p_setupCollectionView;
- (void)p_setupUIInLabeledCell:(id)cell atIndexPath:(id)path context:(id)context;
- (void)presetCollectionViewDidLayoutSubviews:(id)subviews;
- (void)presetCollectionViewLayoutDidHighlightPresetAtIndexPath:(id)path;
- (void)presetCollectionViewLayoutDidSelectPresetAtIndexPath:(id)path;
- (void)presetCollectionViewLayoutDidUnhighlightPresetAtIndexPath:(id)path;
- (void)reloadData;
- (void)reloadDataIfNeeded;
- (void)scrollToBottom;
- (void)scrollToTop;
- (void)setPresetsChanged;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CRLiOSPresetCollectionViewController

- (CRLiOSPresetCollectionViewController)initWithPresetCollectionType:(unint64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = CRLiOSPresetCollectionViewController;
  v7 = [(CRLiOSPresetCollectionViewController *)&v20 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v8->_presetCollectionType = type;
    if (type)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      p_delegate = [(CRLiOSPresetCollectionViewController *)v8 p_delegate];
      itemCollectionDataSource = [p_delegate itemCollectionDataSource];

      p_delegate2 = [(CRLiOSPresetCollectionViewController *)v8 p_delegate];
      searchResultsCollection = [p_delegate2 searchResultsCollection];

      v10 = [[CRLiOSShapePresetCollectionViewLayoutProvider alloc] initWithShapeCollectionDataSource:itemCollectionDataSource searchResultsCollection:searchResultsCollection];
      v9 = [[CRLiOSShapePresetProvider alloc] initWithShapeCollectionDataSource:itemCollectionDataSource searchResultsCollection:searchResultsCollection];
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

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CRLiOSPresetCollectionViewController;
  [(CRLiOSPresetCollectionViewController *)&v6 viewWillAppear:appear];
  if ([(CRLiOSPresetCollectionViewController *)self p_presetsChanged])
  {
    [(CRLiOSPresetCollectionViewController *)self p_handlePresetsChanged];
  }

  p_backgroundColor = [(CRLiOSPresetCollectionViewController *)self p_backgroundColor];
  p_collectionView = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  [p_collectionView setBackgroundColor:p_backgroundColor];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CRLiOSPresetCollectionViewController;
  [(CRLiOSPresetCollectionViewController *)&v5 viewDidAppear:appear];
  p_collectionView = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  [p_collectionView flashScrollIndicators];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CRLiOSPresetCollectionViewController;
  [(CRLiOSPresetCollectionViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CRLiOSPresetCollectionViewController;
  [(CRLiOSPresetCollectionViewController *)&v4 viewDidDisappear:disappear];
  [(CRLiOSPresetCollectionViewController *)self cancelSwatchRenderingIfNeeded];
}

- (void)reloadData
{
  [(CRLiOSPresetCollectionViewController *)self p_clearVisibleCellCache];
  p_collectionView = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  [p_collectionView reloadData];
}

- (void)scrollToTop
{
  p_collectionView = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  [p_collectionView setContentOffset:{CGPointZero.x, CGPointZero.y}];
}

- (void)scrollToBottom
{
  v3 = [(CRLiOSPresetCollectionViewController *)self p_numberOfSections]- 1;
  v4 = [(CRLiOSPresetCollectionViewController *)self p_numberOfItemsInSection:v3];
  p_collectionView = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  [p_collectionView layoutIfNeeded];

  p_collectionView2 = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  v6 = [NSIndexPath indexPathForItem:v4 - 1 inSection:v3];
  [p_collectionView2 scrollToItemAtIndexPath:v6 atScrollPosition:4 animated:0];
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

- (BOOL)isLowContrastWithBackgroundColor:(id)color
{
  colorCopy = color;
  p_presetRenderer = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  context = [(CRLiOSPresetCollectionViewController *)self context];
  v7 = [p_presetRenderer contextIsLowContrast:context forBackgroundColor:colorCopy];

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
  p_presetRenderer = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  -[CRLiOSPresetCollectionViewController setP_cancelledSwatchRendering:](self, "setP_cancelledSwatchRendering:", [p_presetRenderer cancelSwatchRenderingIfNeeded]);
}

- (UIEdgeInsets)swatchInsets
{
  p_presetRenderer = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  [p_presetRenderer swatchInsets];
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
  p_layout = [(CRLiOSPresetCollectionViewController *)self p_layout];
  context = [(CRLiOSPresetCollectionViewController *)self context];
  v5 = [p_layout shouldVerticallyDistributeEvenlyForContext:context];

  return v5;
}

- (void)presetCollectionViewDidLayoutSubviews:(id)subviews
{
  p_presetRenderer = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  context = [(CRLiOSPresetCollectionViewController *)self context];
  [p_presetRenderer waitOnSwatchRenderingAndDeliverResultsIfNeededInContext:context];
}

- (CRLiOSPresetCollectionContext)context
{
  p_delegate = [(CRLiOSPresetCollectionViewController *)self p_delegate];
  v4 = [p_delegate contextWithPresetCollectionViewController:self];

  return v4;
}

- (void)presetCollectionViewLayoutDidHighlightPresetAtIndexPath:(id)path
{
  pathCopy = path;
  p_collectionView = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  v6 = [p_collectionView cellForItemAtIndexPath:pathCopy];

  v7 = objc_opt_class();
  v14 = sub_100303920(v6, v7, 1, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLiOSPresetCollectionViewCell);

  presetButton = [v14 presetButton];
  [presetButton setHighlighted:1];
}

- (void)presetCollectionViewLayoutDidUnhighlightPresetAtIndexPath:(id)path
{
  pathCopy = path;
  p_collectionView = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
  v6 = [p_collectionView cellForItemAtIndexPath:pathCopy];

  v7 = objc_opt_class();
  v14 = sub_100303920(v6, v7, 1, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLiOSPresetCollectionViewCell);

  presetButton = [v14 presetButton];
  [presetButton setHighlighted:0];
}

- (void)presetCollectionViewLayoutDidSelectPresetAtIndexPath:(id)path
{
  pathCopy = path;
  [(CRLiOSPresetCollectionViewController *)self cancelSwatchRenderingIfNeeded];
  p_delegate = [(CRLiOSPresetCollectionViewController *)self p_delegate];
  [p_delegate presetCollectionViewController:self didSelectPresetAtIndexPath:pathCopy];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  context = [(CRLiOSPresetCollectionViewController *)self context];
  section = [pathCopy section];
  layout = [(CRLiOSPresetCollectionViewController *)self layout];
  v11 = [layout cellReuseIdentifierForSection:section context:context];

  v52 = v11;
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  v13 = objc_opt_class();
  v19 = sub_100303920(v12, v13, 1, v14, v15, v16, v17, v18, &OBJC_PROTOCOL___CRLiOSPresetCollectionViewCell);

  [v19 setExclusiveTouch:1];
  presetButton = [v19 presetButton];
  [presetButton setHighlighted:0];

  presetButton2 = [v19 presetButton];
  imageView = [presetButton2 imageView];
  [imageView setContentMode:1];

  defaultBackgroundConfiguration = [v19 defaultBackgroundConfiguration];
  v24 = +[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled];
  v25 = &unk_101462A38;
  if (!v24)
  {
    v25 = &unk_101462A30;
  }

  [defaultBackgroundConfiguration setCornerRadius:*v25];
  v51 = defaultBackgroundConfiguration;
  [v19 setBackgroundConfiguration:defaultBackgroundConfiguration];
  contentView = [v19 contentView];
  [contentView setUserInteractionEnabled:0];

  v50 = [pathCopy row];
  v27 = objc_opt_class();
  v28 = sub_100014370(v27, v19);
  if (v28)
  {
    [(CRLiOSPresetCollectionViewController *)self p_setupUIInLabeledCell:v28 atIndexPath:pathCopy context:context];
  }

  [v19 setIsAccessibilityElement:1];
  p_presetRenderer = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  v30 = [p_presetRenderer localizedAccessibilityNameForPresetAtIndexPath:pathCopy context:context];
  [v19 setAccessibilityLabel:v30];

  v31 = [NSMutableArray alloc];
  v32 = +[NSBundle mainBundle];
  v33 = [v32 localizedStringForKey:@"Double tap to insert" value:0 table:0];
  v53 = v33;
  v34 = [NSArray arrayWithObjects:&v53 count:1];
  v35 = [v31 initWithArray:v34];

  context2 = [(CRLiOSPresetCollectionViewController *)self context];
  LOBYTE(v34) = [context2 isSearching];

  if ((v34 & 1) == 0)
  {
    v37 = +[NSBundle mainBundle];
    v38 = [v37 localizedStringForKey:@"Swipe left or right with three fingers to change pages." value:0 table:0];
    [v35 addObject:v38];
  }

  v39 = [v35 componentsJoinedByString:@". "];
  [v19 setAccessibilityHint:v39];

  [v19 setTag:v50];
  layout2 = [(CRLiOSPresetCollectionViewController *)self layout];
  [layout2 sizeOfPresetInSection:{objc_msgSend(pathCopy, "section")}];
  v42 = v41;
  v44 = v43;

  p_presetRenderer2 = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  presetButton3 = [v19 presetButton];
  p_backgroundColor = [(CRLiOSPresetCollectionViewController *)self p_backgroundColor];
  [p_presetRenderer2 renderSwatchInView:presetButton3 withSize:p_backgroundColor backgroundColor:pathCopy atIndexPath:context context:{v42, v44}];

  p_visibleCells = [(CRLiOSPresetCollectionViewController *)self p_visibleCells];
  [p_visibleCells addObject:v19];

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
    p_cellsMissingImages = [(CRLiOSPresetCollectionViewController *)self p_cellsMissingImages];
    if ([p_cellsMissingImages count])
    {
      p_visibleCells = [(CRLiOSPresetCollectionViewController *)self p_visibleCells];
      [p_visibleCells removeObjectsInArray:p_cellsMissingImages];

      v4 = [(CRLiOSPresetCollectionViewController *)self p_indexPathsForCells:p_cellsMissingImages];
      p_collectionView = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
      [p_collectionView reloadItemsAtIndexPaths:v4];
    }
  }
}

- (void)p_setupCollectionView
{
  layout = [(CRLiOSPresetCollectionViewController *)self layout];
  v3 = [[CRLiOSPresetCollectionView alloc] initWithFrame:layout collectionViewLayout:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CRLiOSPresetCollectionView *)v3 setDelaysContentTouches:0];
  [(CRLiOSPresetCollectionView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CRLiOSPresetCollectionView *)v3 setDataSource:self];
  [(CRLiOSPresetCollectionView *)v3 setDelegate:layout];
  [(CRLiOSPresetCollectionView *)v3 setPresetCollectionViewDelegate:self];
  context = [(CRLiOSPresetCollectionViewController *)self context];
  if ([layout showsSubpageNavigator])
  {
    subpageNavigatorItems = [layout subpageNavigatorItems];
    v6 = [subpageNavigatorItems count];

    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = [CRLiOSPresetCollectionContext alloc];
        contextType = [context contextType];
        [context contentSize];
        v11 = v10;
        v13 = v12;
        editingCoordinator = [context editingCoordinator];
        isSearching = [context isSearching];
        pageIndex = [context pageIndex];
        traitCollection = [context traitCollection];
        v18 = [(CRLiOSPresetCollectionContext *)v8 initWithContextType:contextType contentSize:editingCoordinator editingCoordinator:isSearching isSearching:pageIndex pageIndex:v7 subpageIndex:traitCollection traitCollection:v11, v13];

        [(CRLiOSPresetCollectionViewController *)self p_registerNibsInCollectionView:v3 layout:layout context:v18];
        ++v7;
        subpageNavigatorItems2 = [layout subpageNavigatorItems];
        v20 = [subpageNavigatorItems2 count];
      }

      while (v7 < v20);
    }
  }

  else
  {
    [(CRLiOSPresetCollectionViewController *)self p_registerNibsInCollectionView:v3 layout:layout context:context];
  }

  p_backgroundColor = [(CRLiOSPresetCollectionViewController *)self p_backgroundColor];
  [(CRLiOSPresetCollectionView *)v3 setBackgroundColor:p_backgroundColor];

  [(CRLiOSPresetCollectionView *)v3 setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(CRLiOSPresetCollectionView *)v3 setDragDelegate:self];
  view = [(CRLiOSPresetCollectionViewController *)self view];
  [view addSubview:v3];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  topAnchor2 = [(CRLiOSPresetCollectionView *)v3 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v26 setActive:1];

  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [(CRLiOSPresetCollectionView *)v3 bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v29 setActive:1];

  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide2 leadingAnchor];
  leadingAnchor2 = [(CRLiOSPresetCollectionView *)v3 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v33 setActive:1];

  safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide3 trailingAnchor];
  trailingAnchor2 = [(CRLiOSPresetCollectionView *)v3 trailingAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v37 setActive:1];

  [(CRLiOSPresetCollectionViewController *)self setP_collectionView:v3];
}

- (void)p_registerNibsInCollectionView:(id)view layout:(id)layout context:(id)context
{
  viewCopy = view;
  cellRegistrationDictionary = [layout cellRegistrationDictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [cellRegistrationDictionary allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [cellRegistrationDictionary objectForKeyedSubscript:v13];
        [viewCopy registerNib:v14 forCellWithReuseIdentifier:v13];
      }

      v10 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  layout = [(CRLiOSPresetCollectionViewController *)self layout];
  context = [(CRLiOSPresetCollectionViewController *)self context];
  v5 = [layout numberOfSectionsInCollectionViewForContext:context];

  return v5;
}

- (unint64_t)p_numberOfItemsInSection:(unint64_t)section
{
  layout = [(CRLiOSPresetCollectionViewController *)self layout];
  v5 = [layout numberOfItemsInSection:section];

  return v5;
}

- (id)p_editingCoordinator
{
  context = [(CRLiOSPresetCollectionViewController *)self context];
  editingCoordinator = [context editingCoordinator];

  return editingCoordinator;
}

- (id)p_backgroundColor
{
  p_delegate = [(CRLiOSPresetCollectionViewController *)self p_delegate];
  v4 = [p_delegate backgroundColorForPresetCollectionViewController:self];

  return v4;
}

- (id)p_indexPathsForCells:(id)cells
{
  cellsCopy = cells;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [cellsCopy count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = cellsCopy;
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
        p_collectionView = [(CRLiOSPresetCollectionViewController *)self p_collectionView];
        v13 = [p_collectionView indexPathForCell:v11];

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
  p_visibleCells = [(CRLiOSPresetCollectionViewController *)self p_visibleCells];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [p_visibleCells count]);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  p_visibleCells2 = [(CRLiOSPresetCollectionViewController *)self p_visibleCells];
  v6 = [p_visibleCells2 copy];

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
          presetButton = [v18 presetButton];
          crl_isPresetRenderingInvalid = [presetButton crl_isPresetRenderingInvalid];

          if (crl_isPresetRenderingInvalid)
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
  traitCollection = [(CRLiOSPresetCollectionViewController *)self traitCollection];
  crl_isUserInterfaceStyleDark = [traitCollection crl_isUserInterfaceStyleDark];

  return crl_isUserInterfaceStyleDark;
}

- (void)p_setupUIInLabeledCell:(id)cell atIndexPath:(id)path context:(id)context
{
  cellCopy = cell;
  contextCopy = context;
  pathCopy = path;
  section = [pathCopy section];
  label = [cellCopy label];
  p_presetRenderer = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  v13 = [p_presetRenderer localizedNameForPresetAtIndexPath:pathCopy context:contextCopy];

  p_presetRenderer2 = [(CRLiOSPresetCollectionViewController *)self p_presetRenderer];
  v15 = contextCopy;
  v16 = [p_presetRenderer2 isDefaultLocalizedNameForPresetAtIndexPath:pathCopy context:contextCopy];

  [cellCopy setLabelHasDefaultLocalizedName:v16];
  v17 = objc_alloc_init(NSMutableParagraphStyle);
  [label setNumberOfLines:2];
  LODWORD(v18) = 0.5;
  [v17 setHyphenationFactor:v18];
  [v17 setLineBreakMode:4];
  v19 = [UIFont systemFontOfSize:12.0];
  [v17 setLineSpacing:1.0];
  [v17 setAlignment:1];
  LODWORD(p_presetRenderer2) = [(CRLiOSPresetCollectionViewController *)self p_shouldUseDarkUI];
  v49 = cellCopy;
  labelHasDefaultLocalizedName = [cellCopy labelHasDefaultLocalizedName];
  if (p_presetRenderer2)
  {
    if (labelHasDefaultLocalizedName)
    {
      v21 = 0.556862772;
LABEL_6:
      v22 = [UIColor colorWithRed:v21 green:v21 blue:v21 alpha:1.0];
      goto LABEL_8;
    }
  }

  else if (labelHasDefaultLocalizedName)
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
    v30 = label;
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
    label = v30;
    v13 = 0;
    v27 = v29;
    v17 = v28;
    v25 = v46;
  }

  v47 = label;
  v48 = v27;
  v35 = [[NSAttributedString alloc] initWithString:v26 attributes:v25];
  [label setAttributedText:v35];
  p_layout = [(CRLiOSPresetCollectionViewController *)self p_layout];
  [p_layout additionalHeightForItemInSection:section context:v15];
  v38 = v37 - 30.0;
  labelVerticalSpacingConstraint = [v49 labelVerticalSpacingConstraint];
  [labelVerticalSpacingConstraint setConstant:v38];

  p_layout2 = [(CRLiOSPresetCollectionViewController *)self p_layout];
  [p_layout2 horizontalInsetForItemInSection:section context:v15];
  v42 = v41;

  presetViewLeadingConstraint = [v49 presetViewLeadingConstraint];
  [presetViewLeadingConstraint setConstant:v42];

  presetViewTrailingConstraint = [v49 presetViewTrailingConstraint];
  [presetViewTrailingConstraint setConstant:v42];
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  p_delegate = [(CRLiOSPresetCollectionViewController *)self p_delegate];
  allowsInsertDrag = [p_delegate allowsInsertDrag];

  if (allowsInsertDrag)
  {
    p_delegate2 = [(CRLiOSPresetCollectionViewController *)self p_delegate];
    v12 = [p_delegate2 itemsForBeginningDragSessionForPresetCollectionViewController:self forCollectionView:viewCopy atIndexPath:pathCopy];
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v4 = objc_alloc_init(UIDragPreviewParameters);
  v5 = +[UIColor clearColor];
  [v4 setBackgroundColor:v5];

  v6 = +[UIBezierPath bezierPath];
  [v4 setShadowPath:v6];

  return v4;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  v4 = [(CRLiOSPresetCollectionViewController *)self presentingViewController:view];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (CRLiOSPresetCollectionViewControllerDelegate)p_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end