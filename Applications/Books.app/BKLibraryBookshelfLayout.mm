@interface BKLibraryBookshelfLayout
- (BKLibraryBookshelfLayoutDelegate)delegate;
- (BKLibraryBookshelfMeasuring)measuring;
- (BOOL)allowOnlyVerticalDrags;
- (BOOL)hasSeriesSequenceLabel;
- (BOOL)hasSomeBooks;
- (BOOL)isSupplementalContentPDFPicker;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (BOOL)titleShouldBeEditable;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGRect)layoutBoundsForRTLAdjustment;
- (CGSize)collectionViewContentSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)finalizeCollectionViewUpdates;
- (void)layoutCollectionInfoFooter;
- (void)layoutMainHeaderCollections;
- (void)layoutMainHeaderTitle;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareLayout;
- (void)setEditMode:(BOOL)mode;
- (void)setViewMode:(unint64_t)mode;
- (void)updateMetricsWithViewController:(id)controller;
@end

@implementation BKLibraryBookshelfLayout

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BKLibraryBookshelfLayout);
  delegate = [(BKLibraryBookshelfLayout *)self delegate];
  [(BKLibraryBookshelfLayout *)v4 setDelegate:delegate];

  measuring = [(BKLibraryBookshelfLayout *)self measuring];
  [(BKLibraryBookshelfLayout *)v4 setMeasuring:measuring];

  metrics = [(BKLibraryBookshelfLayout *)self metrics];
  [(BKLibraryBookshelfLayout *)v4 setMetrics:metrics];

  bookHeaderMetrics = [(BKLibraryBookshelfLayout *)self bookHeaderMetrics];
  [(BKLibraryBookshelfLayout *)v4 setBookHeaderMetrics:bookHeaderMetrics];

  columnMetrics = [(BKLibraryBookshelfLayout *)self columnMetrics];
  [(BKLibraryBookshelfLayout *)v4 setColumnMetrics:columnMetrics];

  mainHeaderMetrics = [(BKLibraryBookshelfLayout *)self mainHeaderMetrics];
  [(BKLibraryBookshelfLayout *)v4 setMainHeaderMetrics:mainHeaderMetrics];

  cellMetrics = [(BKLibraryBookshelfLayout *)self cellMetrics];
  [(BKLibraryBookshelfLayout *)v4 setCellMetrics:cellMetrics];

  actionBarMetrics = [(BKLibraryBookshelfLayout *)self actionBarMetrics];
  [(BKLibraryBookshelfLayout *)v4 setActionBarMetrics:actionBarMetrics];

  collectionsListMetrics = [(BKLibraryBookshelfLayout *)self collectionsListMetrics];
  [(BKLibraryBookshelfLayout *)v4 setCollectionsListMetrics:collectionsListMetrics];

  [(BKLibraryBookshelfLayout *)v4 setCollectionType:[(BKLibraryBookshelfLayout *)self collectionType]];
  [(BKLibraryBookshelfLayout *)v4 setEditableCollection:[(BKLibraryBookshelfLayout *)self editableCollection]];
  [(BKLibraryBookshelfLayout *)v4 setReorderableCollection:[(BKLibraryBookshelfLayout *)self reorderableCollection]];
  [(BKLibraryBookshelfLayout *)v4 setSupportsReadingListsButton:[(BKLibraryBookshelfLayout *)self supportsReadingListsButton]];
  [(BKLibraryBookshelfLayout *)v4 setIncludeReadingListsButton:[(BKLibraryBookshelfLayout *)self includeReadingListsButton]];
  [(BKLibraryBookshelfLayout *)v4 setIncludeCollectionInfo:[(BKLibraryBookshelfLayout *)self includeCollectionInfo]];
  [(BKLibraryBookshelfLayout *)v4 setRtlLayout:[(BKLibraryBookshelfLayout *)self rtlLayout]];
  [(BKLibraryBookshelfLayout *)v4 setViewMode:[(BKLibraryBookshelfLayout *)self viewMode]];
  [(BKLibraryBookshelfLayout *)v4 setEditMode:[(BKLibraryBookshelfLayout *)self editMode]];
  [(BKLibraryBookshelfLayout *)v4 setWantsStackedSortControl:[(BKLibraryBookshelfLayout *)self wantsStackedSortControl]];
  [(BKLibraryBookshelfLayout *)v4 setWantsSortControl:[(BKLibraryBookshelfLayout *)self wantsSortControl]];
  [(BKLibraryBookshelfLayout *)v4 setIsInteractivelyReordering:[(BKLibraryBookshelfLayout *)self isInteractivelyReordering]];
  return v4;
}

- (BOOL)allowOnlyVerticalDrags
{
  booksLayout = [(BKLibraryBookshelfLayout *)self booksLayout];
  allowOnlyVerticalDrags = [booksLayout allowOnlyVerticalDrags];

  return allowOnlyVerticalDrags;
}

- (void)setViewMode:(unint64_t)mode
{
  self->_viewMode = mode;
  [(BKLibraryBookshelfLayout *)self setBooksLayout:0];
  [(BKLibraryBookshelfLayout *)self setBookHeaderMetrics:0];
  [(BKLibraryBookshelfLayout *)self setColumnMetrics:0];
  [(BKLibraryBookshelfLayout *)self setMainHeaderMetrics:0];
  [(BKLibraryBookshelfLayout *)self setCellMetrics:0];
  [(BKLibraryBookshelfLayout *)self setActionBarMetrics:0];
  [(BKLibraryBookshelfLayout *)self setCollectionsListMetrics:0];
  metrics = [(BKLibraryBookshelfLayout *)self metrics];
  [metrics invalidate];
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  collectionView = [(BKLibraryBookshelfLayout *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v10 = [indexPathsForVisibleItems sortedArrayUsingSelector:"compare:"];
  firstObject = [v10 firstObject];
  [(BKLibraryBookshelfLayout *)self setFirstVisibleItemIndex:firstObject];

  [(BKLibraryBookshelfLayout *)self layoutWidth];
  if (v12 != width)
  {
    return 1;
  }

  v14.receiver = self;
  v14.super_class = BKLibraryBookshelfLayout;
  return [(BKLibraryBookshelfLayout *)&v14 shouldInvalidateLayoutForBoundsChange:x, y, width, height];
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfLayout;
  return [(BKLibraryBookshelfLayout *)&v5 shouldInvalidateLayoutForPreferredLayoutAttributes:attributes withOriginalAttributes:originalAttributes];
}

- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfLayout;
  v4 = [(BKLibraryBookshelfLayout *)&v6 invalidationContextForPreferredLayoutAttributes:attributes withOriginalAttributes:originalAttributes];

  return v4;
}

- (BOOL)titleShouldBeEditable
{
  editableCollection = [(BKLibraryBookshelfLayout *)self editableCollection];
  if (editableCollection)
  {

    LOBYTE(editableCollection) = [(BKLibraryBookshelfLayout *)self editMode];
  }

  return editableCollection;
}

- (void)layoutMainHeaderTitle
{
  if (![(BKLibraryBookshelfLayout *)self isInteractivelyReordering])
  {
    v3 = off_100ACEF30;
    v4 = [NSIndexPath indexPathWithIndex:0];
    v5 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v3 withIndexPath:v4];
    [(BKLibraryBookshelfLayout *)self setTitleHeaderAttr:v5];

    columnMetrics = [(BKLibraryBookshelfLayout *)self columnMetrics];
    [columnMetrics margins];
    v8 = v7;

    [(BKLibraryBookshelfLayout *)self layoutWidth];
    v10 = v9 - v8;
    [(BKLibraryBookshelfLayout *)self layoutAreaLeftMargin];
    v12 = v11;
    if ([(BKLibraryBookshelfLayout *)self isSupplementalContentPDFPicker])
    {
      v13 = 0.0;
    }

    else
    {
      v13 = -1.0;
    }

    titleHeaderAttr = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [titleHeaderAttr setFrame:{v12, v13, v10, 0.0}];

    mainHeaderMetrics = [(BKLibraryBookshelfLayout *)self mainHeaderMetrics];
    titleHeaderAttr2 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [titleHeaderAttr2 setMainHeaderMetrics:mainHeaderMetrics];

    columnMetrics2 = [(BKLibraryBookshelfLayout *)self columnMetrics];
    titleHeaderAttr3 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [titleHeaderAttr3 setColumnMetrics:columnMetrics2];

    titleShouldBeEditable = [(BKLibraryBookshelfLayout *)self titleShouldBeEditable];
    titleHeaderAttr4 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [titleHeaderAttr4 setEditable:titleShouldBeEditable];

    editMode = [(BKLibraryBookshelfLayout *)self editMode];
    titleHeaderAttr5 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [titleHeaderAttr5 setEditMode:editMode];

    measuring = [(BKLibraryBookshelfLayout *)self measuring];
    titleHeaderAttr6 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [measuring adjustHeight:titleHeaderAttr6];
  }
}

- (CGRect)layoutBoundsForRTLAdjustment
{
  [(BKLibraryBookshelfLayout *)self layoutLeftMargin];
  v4 = v3;
  [(BKLibraryBookshelfLayout *)self layoutWidth];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  result.size.height = v8;
  result.size.width = v6;
  result.origin.y = v7;
  result.origin.x = v9;
  return result;
}

- (void)layoutMainHeaderCollections
{
  if (![(BKLibraryBookshelfLayout *)self isInteractivelyReordering])
  {
    if ([(BKLibraryBookshelfLayout *)self includeReadingListsButton])
    {
      v3 = off_100ACEF38;
      v4 = [NSIndexPath indexPathWithIndex:0];
      v5 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v3 withIndexPath:v4];
      [(BKLibraryBookshelfLayout *)self setCollectionsHeaderAttr:v5];

      titleHeaderAttr = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
      [titleHeaderAttr frame];
      CGRectGetMaxY(v24);
      [(BKLibraryBookshelfLayout *)self layoutWidth];
      mainHeaderMetrics = [(BKLibraryBookshelfLayout *)self mainHeaderMetrics];
      [mainHeaderMetrics readingListHeight];

      [(BKLibraryBookshelfLayout *)self rtlLayout];
      [(BKLibraryBookshelfLayout *)self layoutBoundsForRTLAdjustment];
      IMRectFlippedForRTL();
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      collectionsHeaderAttr = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [collectionsHeaderAttr setFrame:{v9, v11, v13, v15}];

      mainHeaderMetrics2 = [(BKLibraryBookshelfLayout *)self mainHeaderMetrics];
      collectionsHeaderAttr2 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [collectionsHeaderAttr2 setMainHeaderMetrics:mainHeaderMetrics2];

      columnMetrics = [(BKLibraryBookshelfLayout *)self columnMetrics];
      collectionsHeaderAttr3 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [collectionsHeaderAttr3 setColumnMetrics:columnMetrics];

      editMode = [(BKLibraryBookshelfLayout *)self editMode];
      collectionsHeaderAttr4 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [collectionsHeaderAttr4 setEditMode:editMode];
    }

    else
    {

      [(BKLibraryBookshelfLayout *)self setCollectionsHeaderAttr:0];
    }
  }
}

- (void)layoutCollectionInfoFooter
{
  if (![(BKLibraryBookshelfLayout *)self isInteractivelyReordering])
  {
    if ([(BKLibraryBookshelfLayout *)self includeCollectionInfo]&& [(BKLibraryBookshelfLayout *)self shouldAllowHeaders]&& ![(BKLibraryBookshelfLayout *)self editMode])
    {
      v3 = off_100ACEF40;
      v4 = [NSIndexPath indexPathWithIndex:0];
      v5 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v3 withIndexPath:v4];
      [(BKLibraryBookshelfLayout *)self setCollectionInfoFooterAttr:v5];

      [(BKLibraryBookshelfLayout *)self layoutAreaWidth];
      totalHeightExcludingFooter = [(BKLibraryBookshelfLayout *)self totalHeightExcludingFooter];
      collectionView = [(BKLibraryBookshelfLayout *)self collectionView];
      [collectionView bounds];
      v9 = v8;
      collectionView2 = [(BKLibraryBookshelfLayout *)self collectionView];
      [collectionView2 safeAreaInsets];
      v12 = v9 - v11;
      collectionView3 = [(BKLibraryBookshelfLayout *)self collectionView];
      [collectionView3 adjustedContentInset];
      if (v12 - v14 < totalHeightExcludingFooter)
      {
        totalHeightExcludingFooter2 = [(BKLibraryBookshelfLayout *)self totalHeightExcludingFooter];
      }

      else
      {
        collectionView4 = [(BKLibraryBookshelfLayout *)self collectionView];
        [collectionView4 bounds];
        v17 = v16;
        collectionView5 = [(BKLibraryBookshelfLayout *)self collectionView];
        [collectionView5 safeAreaInsets];
        v20 = v17 - v19;
        collectionView6 = [(BKLibraryBookshelfLayout *)self collectionView];
        [collectionView6 adjustedContentInset];
        totalHeightExcludingFooter2 = v20 - v22;
      }

      [(BKLibraryBookshelfLayout *)self layoutAreaLeftMargin];
      [(BKLibraryBookshelfLayout *)self rtlLayout];
      [(BKLibraryBookshelfLayout *)self layoutBoundsForRTLAdjustment];
      IMRectFlippedForRTL();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      collectionInfoFooterAttr = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [collectionInfoFooterAttr setFrame:{v25, v27, v29, v31}];

      mainHeaderMetrics = [(BKLibraryBookshelfLayout *)self mainHeaderMetrics];
      collectionInfoFooterAttr2 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [collectionInfoFooterAttr2 setMainHeaderMetrics:mainHeaderMetrics];

      collectionInfoFooterAttr3 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [collectionInfoFooterAttr3 setZIndex:-2];

      measuring = [(BKLibraryBookshelfLayout *)self measuring];
      collectionInfoFooterAttr4 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [measuring adjustHeight:collectionInfoFooterAttr4];

      if (totalHeightExcludingFooter2 != [(BKLibraryBookshelfLayout *)self totalHeightExcludingFooter])
      {
        collectionInfoFooterAttr5 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
        [collectionInfoFooterAttr5 frame];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;

        collectionInfoFooterAttr6 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
        [collectionInfoFooterAttr6 setFrame:{v40, v42 - v46, v44, v46}];
      }

      collectionInfoFooterAttr7 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [collectionInfoFooterAttr7 frame];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      collectionInfoFooterAttr8 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [collectionInfoFooterAttr8 setFrame:{v50, v52 + -11.0, v54, v56}];
    }

    else
    {

      [(BKLibraryBookshelfLayout *)self setCollectionInfoFooterAttr:0];
    }
  }
}

- (void)prepareLayout
{
  v39.receiver = self;
  v39.super_class = BKLibraryBookshelfLayout;
  [(BKLibraryBookshelfLayout *)&v39 prepareLayout];
  v3 = +[UIApplication sharedApplication];
  -[BKLibraryBookshelfLayout setRtlLayout:](self, "setRtlLayout:", [v3 userInterfaceLayoutDirection] == 1);

  booksLayout = [(BKLibraryBookshelfLayout *)self booksLayout];

  if (!booksLayout)
  {
    v5 = [(BKLibraryBookshelfLayout *)self collectionType]- 1;
    if (v5 >= 3)
    {
      viewMode = [(BKLibraryBookshelfLayout *)self viewMode];
      v6 = off_1009F8598;
      if (viewMode == 2)
      {
        v6 = off_1009F85A0;
      }
    }

    else
    {
      v6 = (&off_100A086E0)[v5];
    }

    v8 = [objc_alloc(*v6) initWithLayout:self];
    [(BKLibraryBookshelfLayout *)self setBooksLayout:v8];
  }

  collectionView = [(BKLibraryBookshelfLayout *)self collectionView];
  [collectionView bounds];
  v11 = v10;
  collectionView2 = [(BKLibraryBookshelfLayout *)self collectionView];
  [collectionView2 safeAreaInsets];
  v15 = v11 - (v13 + v14);

  columnMetrics = [(BKLibraryBookshelfLayout *)self columnMetrics];
  [columnMetrics margins];
  v18 = v17;

  [(BKLibraryBookshelfLayout *)self setLayoutWidth:v15];
  Height = 0.0;
  [(BKLibraryBookshelfLayout *)self setLayoutLeftMargin:0.0];
  [(BKLibraryBookshelfLayout *)self setLayoutAreaLeftMargin:v18 + 0.0];
  [(BKLibraryBookshelfLayout *)self layoutWidth];
  [(BKLibraryBookshelfLayout *)self setLayoutAreaWidth:v20 + v18 * -2.0];
  [(BKLibraryBookshelfLayout *)self layoutMainHeaderTitle];
  [(BKLibraryBookshelfLayout *)self layoutMainHeaderCollections];
  if ([(BKLibraryBookshelfLayout *)self shouldAllowHeaders])
  {
    if ([(BKLibraryBookshelfLayout *)self viewMode]!= 2 || [(BKLibraryBookshelfLayout *)self collectionType]== 2)
    {
      bookHeaderMetrics = [(BKLibraryBookshelfLayout *)self bookHeaderMetrics];
      [bookHeaderMetrics topMargin];
      Height = v22;
    }

    collectionsHeaderAttr = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];

    if (collectionsHeaderAttr)
    {
      [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
    }

    else
    {
      [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    }
    v29 = ;
    [v29 frame];
    MaxY = CGRectGetMaxY(v42);

    [(BKLibraryBookshelfLayout *)self setBooksAreaTop:(Height + MaxY)];
  }

  else
  {
    if ([(BKLibraryBookshelfLayout *)self includeReadingListsButton])
    {
      collectionsHeaderAttr2 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [collectionsHeaderAttr2 frame];
      Height = CGRectGetHeight(v40);
    }

    bookHeaderMetrics2 = [(BKLibraryBookshelfLayout *)self bookHeaderMetrics];
    [bookHeaderMetrics2 topMargin];
    v27 = v26;
    titleHeaderAttr = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [titleHeaderAttr frame];
    [(BKLibraryBookshelfLayout *)self setBooksAreaTop:(Height + v27 + CGRectGetMaxY(v41))];
  }

  booksLayout2 = [(BKLibraryBookshelfLayout *)self booksLayout];
  [booksLayout2 prepareLayoutForBooksSection:{-[BKLibraryBookshelfLayout booksAreaTop](self, "booksAreaTop")}];
  [(BKLibraryBookshelfLayout *)self setTotalHeightExcludingFooter:v32];

  [(BKLibraryBookshelfLayout *)self layoutCollectionInfoFooter];
  collectionInfoFooterAttr = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];

  if (collectionInfoFooterAttr)
  {
    collectionInfoFooterAttr2 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
    [collectionInfoFooterAttr2 frame];
    [(BKLibraryBookshelfLayout *)self setBooksAreaBottom:CGRectGetMinY(v43)];

    totalHeightExcludingFooter = [(BKLibraryBookshelfLayout *)self totalHeightExcludingFooter];
    collectionInfoFooterAttr3 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
    [collectionInfoFooterAttr3 bounds];
    [(BKLibraryBookshelfLayout *)self setTotalHeight:(v37 + totalHeightExcludingFooter)];
  }

  else
  {
    [(BKLibraryBookshelfLayout *)self setTotalHeight:[(BKLibraryBookshelfLayout *)self totalHeightExcludingFooter]];
  }

  delegate = [(BKLibraryBookshelfLayout *)self delegate];
  [delegate didUpdateLibraryBookshelfLayout:self];

  [(BKLibraryBookshelfLayout *)self setMetricsHaveChanged:0];
}

- (void)updateMetricsWithViewController:(id)controller
{
  controllerCopy = controller;
  viewIfLoaded = [controllerCopy viewIfLoaded];
  traitCollection = [viewIfLoaded traitCollection];
  window = [viewIfLoaded window];
  v7 = window;
  if (viewIfLoaded && traitCollection && window)
  {
    [viewIfLoaded safeAreaInsets];
    v9 = v8;
    v11 = v10;
    v12 = [TUIEnvironment alloc];
    [viewIfLoaded bounds];
    v14 = v13;
    v16 = v15;
    [v7 bounds];
    v19 = [v12 initWithTraitCollection:traitCollection viewController:controllerCopy viewSize:v14 viewSafeAreaInsets:v16 windowSize:{0.0, v9, 0.0, v11, v17, v18}];
    if ([(BKLibraryBookshelfLayout *)self viewMode]== 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    metrics = [(BKLibraryBookshelfLayout *)self metrics];
    v22 = [metrics updateIfNeededWithEnvironment:v19 bookshelfLayoutMode:v20 editMode:-[BKLibraryBookshelfLayout editMode](self isPopover:{"editMode"), 0}];

    if (v22)
    {
      metrics2 = [(BKLibraryBookshelfLayout *)self metrics];
      computedMetrics = [metrics2 computedMetrics];

      v25 = +[BKLibraryBookshelfBookHeaderMetrics sectionName];
      v26 = [computedMetrics objectForKey:v25];
      [(BKLibraryBookshelfLayout *)self setBookHeaderMetrics:v26];

      v27 = +[BKLibraryBookshelfColumnMetrics sectionName];
      v28 = [computedMetrics objectForKey:v27];
      [(BKLibraryBookshelfLayout *)self setColumnMetrics:v28];

      v29 = +[BKLibraryBookshelfMainHeaderMetrics sectionName];
      v30 = [computedMetrics objectForKey:v29];
      [(BKLibraryBookshelfLayout *)self setMainHeaderMetrics:v30];

      v31 = [BKLibraryBookshelfCellMetrics sectionNameForCollectionType:[(BKLibraryBookshelfLayout *)self collectionType] layoutMode:v20];
      v32 = [computedMetrics objectForKey:v31];
      [(BKLibraryBookshelfLayout *)self setCellMetrics:v32];

      v33 = +[BKLibraryBookshelfActionBarMetrics sectionName];
      v34 = [computedMetrics objectForKey:v33];
      [(BKLibraryBookshelfLayout *)self setActionBarMetrics:v34];

      v35 = +[BKLibraryCollectionsListMetrics sectionName];
      v36 = [computedMetrics objectForKey:v35];
      [(BKLibraryBookshelfLayout *)self setCollectionsListMetrics:v36];

      if ([(BKLibraryBookshelfLayout *)self supportsReadingListsButton])
      {
        v37 = [v19 widthClass] == 1;
      }

      else
      {
        v37 = 0;
      }

      [(BKLibraryBookshelfLayout *)self setIncludeReadingListsButton:v37];
      [(BKLibraryBookshelfLayout *)self setMetricsHaveChanged:1];
      [(BKLibraryBookshelfLayout *)self invalidateLayout];
    }
  }
}

- (void)setEditMode:(BOOL)mode
{
  if (self->_editMode != mode)
  {
    self->_editMode = mode;
    [(BKLibraryBookshelfLayout *)self invalidateLayout];
  }
}

- (CGSize)collectionViewContentSize
{
  collectionView = [(BKLibraryBookshelfLayout *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  collectionView2 = [(BKLibraryBookshelfLayout *)self collectionView];
  [collectionView2 bounds];
  v14 = v13;
  collectionView3 = [(BKLibraryBookshelfLayout *)self collectionView];
  [collectionView3 safeAreaInsets];
  v17 = v16;
  v19 = v18;

  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  Height = CGRectGetHeight(v30);
  collectionView4 = [(BKLibraryBookshelfLayout *)self collectionView];
  [collectionView4 adjustedContentInset];
  v23 = Height - v22;
  collectionView5 = [(BKLibraryBookshelfLayout *)self collectionView];
  [collectionView5 adjustedContentInset];
  totalHeight = v23 - v25;

  if (totalHeight < [(BKLibraryBookshelfLayout *)self totalHeight])
  {
    totalHeight = [(BKLibraryBookshelfLayout *)self totalHeight];
  }

  v27 = v14 - (v17 + v19);
  v28 = totalHeight;
  result.height = v28;
  result.width = v27;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = +[NSMutableArray array];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MinY = CGRectGetMinY(v20);
  if (MinY < [(BKLibraryBookshelfLayout *)self booksAreaTop])
  {
    titleHeaderAttr = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [v8 addObject:titleHeaderAttr];

    if ([(BKLibraryBookshelfLayout *)self includeReadingListsButton])
    {
      collectionsHeaderAttr = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [v8 addObject:collectionsHeaderAttr];
    }
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MaxY = CGRectGetMaxY(v21);
  if (MaxY > [(BKLibraryBookshelfLayout *)self booksAreaTop])
  {
    booksLayout = [(BKLibraryBookshelfLayout *)self booksLayout];
    v14 = [booksLayout layoutAttributesForBooksInRect:{x, y, width, height}];

    [v8 addObjectsFromArray:v14];
  }

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v15 = CGRectGetMaxY(v22);
  if (v15 > [(BKLibraryBookshelfLayout *)self booksAreaBottom])
  {
    if ([(BKLibraryBookshelfLayout *)self shouldAllowHeaders])
    {
      if ([(BKLibraryBookshelfLayout *)self includeCollectionInfo])
      {
        collectionInfoFooterAttr = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];

        if (collectionInfoFooterAttr)
        {
          collectionInfoFooterAttr2 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
          [v8 addObject:collectionInfoFooterAttr2];
        }
      }
    }
  }

  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  booksLayout = [(BKLibraryBookshelfLayout *)self booksLayout];
  v6 = [booksLayout layoutAttributesForItemAtIndexPath:pathCopy];

  return v6;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  if ([pathCopy section] || objc_msgSend(pathCopy, "item") != 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(kindCopy, "isEqualToString:", off_100ACEF50) & 1) != 0)
  {
    booksLayout = [(BKLibraryBookshelfLayout *)self booksLayout];
    v9 = [booksLayout layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];

    goto LABEL_5;
  }

  if ([kindCopy isEqualToString:off_100ACEF30])
  {
    [(BKLibraryBookshelfLayout *)self layoutMainHeaderTitle];
    titleHeaderAttr = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
LABEL_14:
    v9 = titleHeaderAttr;
    goto LABEL_5;
  }

  if ([kindCopy isEqualToString:off_100ACEF38])
  {
    [(BKLibraryBookshelfLayout *)self layoutMainHeaderTitle];
    [(BKLibraryBookshelfLayout *)self layoutMainHeaderCollections];
    titleHeaderAttr = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
    goto LABEL_14;
  }

  if ([kindCopy isEqualToString:off_100ACEF40])
  {
    [(BKLibraryBookshelfLayout *)self layoutMainHeaderTitle];
    [(BKLibraryBookshelfLayout *)self layoutMainHeaderCollections];
    [(BKLibraryBookshelfLayout *)self layoutCollectionInfoFooter];
    titleHeaderAttr = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
    goto LABEL_14;
  }

  [kindCopy isEqualToString:off_100ACEF48];
  v9 = 0;
LABEL_5:

  return v9;
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  updatesCopy = updates;
  v5 = +[NSMutableArray array];
  [(BKLibraryBookshelfLayout *)self setDeleteIndexPaths:v5];

  v6 = +[NSMutableArray array];
  [(BKLibraryBookshelfLayout *)self setInsertIndexPaths:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = updatesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 updateAction] == 1)
        {
          deleteIndexPaths = [(BKLibraryBookshelfLayout *)self deleteIndexPaths];
          indexPathBeforeUpdate = [v12 indexPathBeforeUpdate];
        }

        else
        {
          if ([v12 updateAction])
          {
            continue;
          }

          deleteIndexPaths = [(BKLibraryBookshelfLayout *)self insertIndexPaths];
          indexPathBeforeUpdate = [v12 indexPathAfterUpdate];
        }

        v15 = indexPathBeforeUpdate;
        [deleteIndexPaths addObject:indexPathBeforeUpdate];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = BKLibraryBookshelfLayout;
  [(BKLibraryBookshelfLayout *)&v3 finalizeCollectionViewUpdates];
  [(BKLibraryBookshelfLayout *)self setDeleteIndexPaths:0];
  [(BKLibraryBookshelfLayout *)self setInsertIndexPaths:0];
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfLayout;
  pathCopy = path;
  v5 = [(BKLibraryBookshelfLayout *)&v9 initialLayoutAttributesForAppearingItemAtIndexPath:pathCopy];
  v6 = [(BKLibraryBookshelfLayout *)self insertIndexPaths:v9.receiver];
  v7 = [v6 containsObject:pathCopy];

  if (v7)
  {
    [v5 setAlpha:0.0];
  }

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfLayout;
  pathCopy = path;
  v5 = [(BKLibraryBookshelfLayout *)&v9 finalLayoutAttributesForDisappearingItemAtIndexPath:pathCopy];
  v6 = [(BKLibraryBookshelfLayout *)self deleteIndexPaths:v9.receiver];
  v7 = [v6 containsObject:pathCopy];

  if (v7)
  {
    [v5 setAlpha:0.0];
  }

  return v5;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if (![(BKLibraryBookshelfLayout *)self coverAnimationRunningHack])
  {
    firstVisibleItemIndex = [(BKLibraryBookshelfLayout *)self firstVisibleItemIndex];
    if (firstVisibleItemIndex)
    {
      v9 = firstVisibleItemIndex;
      collectionView = [(BKLibraryBookshelfLayout *)self collectionView];
      if (([collectionView isDecelerating] & 1) == 0 && !-[BKLibraryBookshelfLayout isInteractivelyReordering](self, "isInteractivelyReordering"))
      {
        collectionView2 = [(BKLibraryBookshelfLayout *)self collectionView];
        if (![collectionView2 hasActiveDrag])
        {
          collectionView3 = [(BKLibraryBookshelfLayout *)self collectionView];
          hasActiveDrop = [collectionView3 hasActiveDrop];

          if ((hasActiveDrop & 1) == 0)
          {
            collectionView4 = [(BKLibraryBookshelfLayout *)self collectionView];
            [collectionView4 bounds];
            v16 = v15;

            firstVisibleItemIndex2 = [(BKLibraryBookshelfLayout *)self firstVisibleItemIndex];
            v18 = [(BKLibraryBookshelfLayout *)self layoutAttributesForItemAtIndexPath:firstVisibleItemIndex2];
            [v18 frame];
            MinY = CGRectGetMinY(v23);

            if (y > v16 || MinY > v16)
            {
              [(BKLibraryBookshelfLayout *)self setFirstVisibleItemIndex:0];
              y = MinY;
            }
          }

          goto LABEL_9;
        }
      }
    }

LABEL_9:
    [(BKLibraryBookshelfLayout *)&v20 targetContentOffsetForProposedContentOffset:x, y, self, BKLibraryBookshelfLayout, v21.receiver, v21.super_class];
    goto LABEL_14;
  }

  [(BKLibraryBookshelfLayout *)&v21 targetContentOffsetForProposedContentOffset:x, y, v20.receiver, v20.super_class, self, BKLibraryBookshelfLayout];
LABEL_14:
  result.y = v7;
  result.x = v6;
  return result;
}

- (BOOL)hasSomeBooks
{
  collectionView = [(BKLibraryBookshelfLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];
  v4 = numberOfSections >= 1 && (numberOfSections != 1 || [collectionView numberOfItemsInSection:0] > 0);

  return v4;
}

- (BOOL)hasSeriesSequenceLabel
{
  delegate = [(BKLibraryBookshelfLayout *)self delegate];
  dataSourceAdaptor = [delegate dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor booksDataSource];
  hasSeriesSequenceLabel = [booksDataSource hasSeriesSequenceLabel];

  return hasSeriesSequenceLabel;
}

- (BOOL)isSupplementalContentPDFPicker
{
  delegate = [(BKLibraryBookshelfLayout *)self delegate];
  dataSourceAdaptor = [delegate dataSourceAdaptor];
  supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
  supplementalContentPDFPicker = [supplementaryDataSource supplementalContentPDFPicker];

  return supplementalContentPDFPicker;
}

- (BKLibraryBookshelfLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BKLibraryBookshelfMeasuring)measuring
{
  WeakRetained = objc_loadWeakRetained(&self->_measuring);

  return WeakRetained;
}

@end