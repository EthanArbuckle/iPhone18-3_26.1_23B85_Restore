@interface BKLibraryBookshelfLayout
- (BKLibraryBookshelfLayoutDelegate)delegate;
- (BKLibraryBookshelfMeasuring)measuring;
- (BOOL)allowOnlyVerticalDrags;
- (BOOL)hasSeriesSequenceLabel;
- (BOOL)hasSomeBooks;
- (BOOL)isSupplementalContentPDFPicker;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (BOOL)titleShouldBeEditable;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGRect)layoutBoundsForRTLAdjustment;
- (CGSize)collectionViewContentSize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)finalizeCollectionViewUpdates;
- (void)layoutCollectionInfoFooter;
- (void)layoutMainHeaderCollections;
- (void)layoutMainHeaderTitle;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareLayout;
- (void)setEditMode:(BOOL)a3;
- (void)setViewMode:(unint64_t)a3;
- (void)updateMetricsWithViewController:(id)a3;
@end

@implementation BKLibraryBookshelfLayout

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BKLibraryBookshelfLayout);
  v5 = [(BKLibraryBookshelfLayout *)self delegate];
  [(BKLibraryBookshelfLayout *)v4 setDelegate:v5];

  v6 = [(BKLibraryBookshelfLayout *)self measuring];
  [(BKLibraryBookshelfLayout *)v4 setMeasuring:v6];

  v7 = [(BKLibraryBookshelfLayout *)self metrics];
  [(BKLibraryBookshelfLayout *)v4 setMetrics:v7];

  v8 = [(BKLibraryBookshelfLayout *)self bookHeaderMetrics];
  [(BKLibraryBookshelfLayout *)v4 setBookHeaderMetrics:v8];

  v9 = [(BKLibraryBookshelfLayout *)self columnMetrics];
  [(BKLibraryBookshelfLayout *)v4 setColumnMetrics:v9];

  v10 = [(BKLibraryBookshelfLayout *)self mainHeaderMetrics];
  [(BKLibraryBookshelfLayout *)v4 setMainHeaderMetrics:v10];

  v11 = [(BKLibraryBookshelfLayout *)self cellMetrics];
  [(BKLibraryBookshelfLayout *)v4 setCellMetrics:v11];

  v12 = [(BKLibraryBookshelfLayout *)self actionBarMetrics];
  [(BKLibraryBookshelfLayout *)v4 setActionBarMetrics:v12];

  v13 = [(BKLibraryBookshelfLayout *)self collectionsListMetrics];
  [(BKLibraryBookshelfLayout *)v4 setCollectionsListMetrics:v13];

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
  v2 = [(BKLibraryBookshelfLayout *)self booksLayout];
  v3 = [v2 allowOnlyVerticalDrags];

  return v3;
}

- (void)setViewMode:(unint64_t)a3
{
  self->_viewMode = a3;
  [(BKLibraryBookshelfLayout *)self setBooksLayout:0];
  [(BKLibraryBookshelfLayout *)self setBookHeaderMetrics:0];
  [(BKLibraryBookshelfLayout *)self setColumnMetrics:0];
  [(BKLibraryBookshelfLayout *)self setMainHeaderMetrics:0];
  [(BKLibraryBookshelfLayout *)self setCellMetrics:0];
  [(BKLibraryBookshelfLayout *)self setActionBarMetrics:0];
  [(BKLibraryBookshelfLayout *)self setCollectionsListMetrics:0];
  v4 = [(BKLibraryBookshelfLayout *)self metrics];
  [v4 invalidate];
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(BKLibraryBookshelfLayout *)self collectionView];
  v9 = [v8 indexPathsForVisibleItems];
  v10 = [v9 sortedArrayUsingSelector:"compare:"];
  v11 = [v10 firstObject];
  [(BKLibraryBookshelfLayout *)self setFirstVisibleItemIndex:v11];

  [(BKLibraryBookshelfLayout *)self layoutWidth];
  if (v12 != width)
  {
    return 1;
  }

  v14.receiver = self;
  v14.super_class = BKLibraryBookshelfLayout;
  return [(BKLibraryBookshelfLayout *)&v14 shouldInvalidateLayoutForBoundsChange:x, y, width, height];
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfLayout;
  return [(BKLibraryBookshelfLayout *)&v5 shouldInvalidateLayoutForPreferredLayoutAttributes:a3 withOriginalAttributes:a4];
}

- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfLayout;
  v4 = [(BKLibraryBookshelfLayout *)&v6 invalidationContextForPreferredLayoutAttributes:a3 withOriginalAttributes:a4];

  return v4;
}

- (BOOL)titleShouldBeEditable
{
  v3 = [(BKLibraryBookshelfLayout *)self editableCollection];
  if (v3)
  {

    LOBYTE(v3) = [(BKLibraryBookshelfLayout *)self editMode];
  }

  return v3;
}

- (void)layoutMainHeaderTitle
{
  if (![(BKLibraryBookshelfLayout *)self isInteractivelyReordering])
  {
    v3 = off_100ACEF30;
    v4 = [NSIndexPath indexPathWithIndex:0];
    v5 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v3 withIndexPath:v4];
    [(BKLibraryBookshelfLayout *)self setTitleHeaderAttr:v5];

    v6 = [(BKLibraryBookshelfLayout *)self columnMetrics];
    [v6 margins];
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

    v14 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [v14 setFrame:{v12, v13, v10, 0.0}];

    v15 = [(BKLibraryBookshelfLayout *)self mainHeaderMetrics];
    v16 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [v16 setMainHeaderMetrics:v15];

    v17 = [(BKLibraryBookshelfLayout *)self columnMetrics];
    v18 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [v18 setColumnMetrics:v17];

    v19 = [(BKLibraryBookshelfLayout *)self titleShouldBeEditable];
    v20 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [v20 setEditable:v19];

    v21 = [(BKLibraryBookshelfLayout *)self editMode];
    v22 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [v22 setEditMode:v21];

    v24 = [(BKLibraryBookshelfLayout *)self measuring];
    v23 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [v24 adjustHeight:v23];
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

      v6 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
      [v6 frame];
      CGRectGetMaxY(v24);
      [(BKLibraryBookshelfLayout *)self layoutWidth];
      v7 = [(BKLibraryBookshelfLayout *)self mainHeaderMetrics];
      [v7 readingListHeight];

      [(BKLibraryBookshelfLayout *)self rtlLayout];
      [(BKLibraryBookshelfLayout *)self layoutBoundsForRTLAdjustment];
      IMRectFlippedForRTL();
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [v16 setFrame:{v9, v11, v13, v15}];

      v17 = [(BKLibraryBookshelfLayout *)self mainHeaderMetrics];
      v18 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [v18 setMainHeaderMetrics:v17];

      v19 = [(BKLibraryBookshelfLayout *)self columnMetrics];
      v20 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [v20 setColumnMetrics:v19];

      v21 = [(BKLibraryBookshelfLayout *)self editMode];
      v22 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [v22 setEditMode:v21];
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
      v6 = [(BKLibraryBookshelfLayout *)self totalHeightExcludingFooter];
      v7 = [(BKLibraryBookshelfLayout *)self collectionView];
      [v7 bounds];
      v9 = v8;
      v10 = [(BKLibraryBookshelfLayout *)self collectionView];
      [v10 safeAreaInsets];
      v12 = v9 - v11;
      v13 = [(BKLibraryBookshelfLayout *)self collectionView];
      [v13 adjustedContentInset];
      if (v12 - v14 < v6)
      {
        v23 = [(BKLibraryBookshelfLayout *)self totalHeightExcludingFooter];
      }

      else
      {
        v15 = [(BKLibraryBookshelfLayout *)self collectionView];
        [v15 bounds];
        v17 = v16;
        v18 = [(BKLibraryBookshelfLayout *)self collectionView];
        [v18 safeAreaInsets];
        v20 = v17 - v19;
        v21 = [(BKLibraryBookshelfLayout *)self collectionView];
        [v21 adjustedContentInset];
        v23 = v20 - v22;
      }

      [(BKLibraryBookshelfLayout *)self layoutAreaLeftMargin];
      [(BKLibraryBookshelfLayout *)self rtlLayout];
      [(BKLibraryBookshelfLayout *)self layoutBoundsForRTLAdjustment];
      IMRectFlippedForRTL();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [v32 setFrame:{v25, v27, v29, v31}];

      v33 = [(BKLibraryBookshelfLayout *)self mainHeaderMetrics];
      v34 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [v34 setMainHeaderMetrics:v33];

      v35 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [v35 setZIndex:-2];

      v36 = [(BKLibraryBookshelfLayout *)self measuring];
      v37 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [v36 adjustHeight:v37];

      if (v23 != [(BKLibraryBookshelfLayout *)self totalHeightExcludingFooter])
      {
        v38 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
        [v38 frame];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;

        v47 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
        [v47 setFrame:{v40, v42 - v46, v44, v46}];
      }

      v48 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [v48 frame];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      v57 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
      [v57 setFrame:{v50, v52 + -11.0, v54, v56}];
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

  v4 = [(BKLibraryBookshelfLayout *)self booksLayout];

  if (!v4)
  {
    v5 = [(BKLibraryBookshelfLayout *)self collectionType]- 1;
    if (v5 >= 3)
    {
      v7 = [(BKLibraryBookshelfLayout *)self viewMode];
      v6 = off_1009F8598;
      if (v7 == 2)
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

  v9 = [(BKLibraryBookshelfLayout *)self collectionView];
  [v9 bounds];
  v11 = v10;
  v12 = [(BKLibraryBookshelfLayout *)self collectionView];
  [v12 safeAreaInsets];
  v15 = v11 - (v13 + v14);

  v16 = [(BKLibraryBookshelfLayout *)self columnMetrics];
  [v16 margins];
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
      v21 = [(BKLibraryBookshelfLayout *)self bookHeaderMetrics];
      [v21 topMargin];
      Height = v22;
    }

    v23 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];

    if (v23)
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
      v24 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [v24 frame];
      Height = CGRectGetHeight(v40);
    }

    v25 = [(BKLibraryBookshelfLayout *)self bookHeaderMetrics];
    [v25 topMargin];
    v27 = v26;
    v28 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [v28 frame];
    [(BKLibraryBookshelfLayout *)self setBooksAreaTop:(Height + v27 + CGRectGetMaxY(v41))];
  }

  v31 = [(BKLibraryBookshelfLayout *)self booksLayout];
  [v31 prepareLayoutForBooksSection:{-[BKLibraryBookshelfLayout booksAreaTop](self, "booksAreaTop")}];
  [(BKLibraryBookshelfLayout *)self setTotalHeightExcludingFooter:v32];

  [(BKLibraryBookshelfLayout *)self layoutCollectionInfoFooter];
  v33 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];

  if (v33)
  {
    v34 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
    [v34 frame];
    [(BKLibraryBookshelfLayout *)self setBooksAreaBottom:CGRectGetMinY(v43)];

    v35 = [(BKLibraryBookshelfLayout *)self totalHeightExcludingFooter];
    v36 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
    [v36 bounds];
    [(BKLibraryBookshelfLayout *)self setTotalHeight:(v37 + v35)];
  }

  else
  {
    [(BKLibraryBookshelfLayout *)self setTotalHeight:[(BKLibraryBookshelfLayout *)self totalHeightExcludingFooter]];
  }

  v38 = [(BKLibraryBookshelfLayout *)self delegate];
  [v38 didUpdateLibraryBookshelfLayout:self];

  [(BKLibraryBookshelfLayout *)self setMetricsHaveChanged:0];
}

- (void)updateMetricsWithViewController:(id)a3
{
  v38 = a3;
  v4 = [v38 viewIfLoaded];
  v5 = [v4 traitCollection];
  v6 = [v4 window];
  v7 = v6;
  if (v4 && v5 && v6)
  {
    [v4 safeAreaInsets];
    v9 = v8;
    v11 = v10;
    v12 = [TUIEnvironment alloc];
    [v4 bounds];
    v14 = v13;
    v16 = v15;
    [v7 bounds];
    v19 = [v12 initWithTraitCollection:v5 viewController:v38 viewSize:v14 viewSafeAreaInsets:v16 windowSize:{0.0, v9, 0.0, v11, v17, v18}];
    if ([(BKLibraryBookshelfLayout *)self viewMode]== 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v21 = [(BKLibraryBookshelfLayout *)self metrics];
    v22 = [v21 updateIfNeededWithEnvironment:v19 bookshelfLayoutMode:v20 editMode:-[BKLibraryBookshelfLayout editMode](self isPopover:{"editMode"), 0}];

    if (v22)
    {
      v23 = [(BKLibraryBookshelfLayout *)self metrics];
      v24 = [v23 computedMetrics];

      v25 = +[BKLibraryBookshelfBookHeaderMetrics sectionName];
      v26 = [v24 objectForKey:v25];
      [(BKLibraryBookshelfLayout *)self setBookHeaderMetrics:v26];

      v27 = +[BKLibraryBookshelfColumnMetrics sectionName];
      v28 = [v24 objectForKey:v27];
      [(BKLibraryBookshelfLayout *)self setColumnMetrics:v28];

      v29 = +[BKLibraryBookshelfMainHeaderMetrics sectionName];
      v30 = [v24 objectForKey:v29];
      [(BKLibraryBookshelfLayout *)self setMainHeaderMetrics:v30];

      v31 = [BKLibraryBookshelfCellMetrics sectionNameForCollectionType:[(BKLibraryBookshelfLayout *)self collectionType] layoutMode:v20];
      v32 = [v24 objectForKey:v31];
      [(BKLibraryBookshelfLayout *)self setCellMetrics:v32];

      v33 = +[BKLibraryBookshelfActionBarMetrics sectionName];
      v34 = [v24 objectForKey:v33];
      [(BKLibraryBookshelfLayout *)self setActionBarMetrics:v34];

      v35 = +[BKLibraryCollectionsListMetrics sectionName];
      v36 = [v24 objectForKey:v35];
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

- (void)setEditMode:(BOOL)a3
{
  if (self->_editMode != a3)
  {
    self->_editMode = a3;
    [(BKLibraryBookshelfLayout *)self invalidateLayout];
  }
}

- (CGSize)collectionViewContentSize
{
  v3 = [(BKLibraryBookshelfLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(BKLibraryBookshelfLayout *)self collectionView];
  [v12 bounds];
  v14 = v13;
  v15 = [(BKLibraryBookshelfLayout *)self collectionView];
  [v15 safeAreaInsets];
  v17 = v16;
  v19 = v18;

  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  Height = CGRectGetHeight(v30);
  v21 = [(BKLibraryBookshelfLayout *)self collectionView];
  [v21 adjustedContentInset];
  v23 = Height - v22;
  v24 = [(BKLibraryBookshelfLayout *)self collectionView];
  [v24 adjustedContentInset];
  v26 = v23 - v25;

  if (v26 < [(BKLibraryBookshelfLayout *)self totalHeight])
  {
    v26 = [(BKLibraryBookshelfLayout *)self totalHeight];
  }

  v27 = v14 - (v17 + v19);
  v28 = v26;
  result.height = v28;
  result.width = v27;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[NSMutableArray array];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MinY = CGRectGetMinY(v20);
  if (MinY < [(BKLibraryBookshelfLayout *)self booksAreaTop])
  {
    v10 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
    [v8 addObject:v10];

    if ([(BKLibraryBookshelfLayout *)self includeReadingListsButton])
    {
      v11 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
      [v8 addObject:v11];
    }
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MaxY = CGRectGetMaxY(v21);
  if (MaxY > [(BKLibraryBookshelfLayout *)self booksAreaTop])
  {
    v13 = [(BKLibraryBookshelfLayout *)self booksLayout];
    v14 = [v13 layoutAttributesForBooksInRect:{x, y, width, height}];

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
        v16 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];

        if (v16)
        {
          v17 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
          [v8 addObject:v17];
        }
      }
    }
  }

  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfLayout *)self booksLayout];
  v6 = [v5 layoutAttributesForItemAtIndexPath:v4];

  return v6;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] || objc_msgSend(v7, "item") != 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(v6, "isEqualToString:", off_100ACEF50) & 1) != 0)
  {
    v8 = [(BKLibraryBookshelfLayout *)self booksLayout];
    v9 = [v8 layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];

    goto LABEL_5;
  }

  if ([v6 isEqualToString:off_100ACEF30])
  {
    [(BKLibraryBookshelfLayout *)self layoutMainHeaderTitle];
    v11 = [(BKLibraryBookshelfLayout *)self titleHeaderAttr];
LABEL_14:
    v9 = v11;
    goto LABEL_5;
  }

  if ([v6 isEqualToString:off_100ACEF38])
  {
    [(BKLibraryBookshelfLayout *)self layoutMainHeaderTitle];
    [(BKLibraryBookshelfLayout *)self layoutMainHeaderCollections];
    v11 = [(BKLibraryBookshelfLayout *)self collectionsHeaderAttr];
    goto LABEL_14;
  }

  if ([v6 isEqualToString:off_100ACEF40])
  {
    [(BKLibraryBookshelfLayout *)self layoutMainHeaderTitle];
    [(BKLibraryBookshelfLayout *)self layoutMainHeaderCollections];
    [(BKLibraryBookshelfLayout *)self layoutCollectionInfoFooter];
    v11 = [(BKLibraryBookshelfLayout *)self collectionInfoFooterAttr];
    goto LABEL_14;
  }

  [v6 isEqualToString:off_100ACEF48];
  v9 = 0;
LABEL_5:

  return v9;
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  [(BKLibraryBookshelfLayout *)self setDeleteIndexPaths:v5];

  v6 = +[NSMutableArray array];
  [(BKLibraryBookshelfLayout *)self setInsertIndexPaths:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
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
          v13 = [(BKLibraryBookshelfLayout *)self deleteIndexPaths];
          v14 = [v12 indexPathBeforeUpdate];
        }

        else
        {
          if ([v12 updateAction])
          {
            continue;
          }

          v13 = [(BKLibraryBookshelfLayout *)self insertIndexPaths];
          v14 = [v12 indexPathAfterUpdate];
        }

        v15 = v14;
        [v13 addObject:v14];
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

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfLayout;
  v4 = a3;
  v5 = [(BKLibraryBookshelfLayout *)&v9 initialLayoutAttributesForAppearingItemAtIndexPath:v4];
  v6 = [(BKLibraryBookshelfLayout *)self insertIndexPaths:v9.receiver];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    [v5 setAlpha:0.0];
  }

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfLayout;
  v4 = a3;
  v5 = [(BKLibraryBookshelfLayout *)&v9 finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
  v6 = [(BKLibraryBookshelfLayout *)self deleteIndexPaths:v9.receiver];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    [v5 setAlpha:0.0];
  }

  return v5;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(BKLibraryBookshelfLayout *)self coverAnimationRunningHack])
  {
    v8 = [(BKLibraryBookshelfLayout *)self firstVisibleItemIndex];
    if (v8)
    {
      v9 = v8;
      v10 = [(BKLibraryBookshelfLayout *)self collectionView];
      if (([v10 isDecelerating] & 1) == 0 && !-[BKLibraryBookshelfLayout isInteractivelyReordering](self, "isInteractivelyReordering"))
      {
        v11 = [(BKLibraryBookshelfLayout *)self collectionView];
        if (![v11 hasActiveDrag])
        {
          v12 = [(BKLibraryBookshelfLayout *)self collectionView];
          v13 = [v12 hasActiveDrop];

          if ((v13 & 1) == 0)
          {
            v14 = [(BKLibraryBookshelfLayout *)self collectionView];
            [v14 bounds];
            v16 = v15;

            v17 = [(BKLibraryBookshelfLayout *)self firstVisibleItemIndex];
            v18 = [(BKLibraryBookshelfLayout *)self layoutAttributesForItemAtIndexPath:v17];
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
  v2 = [(BKLibraryBookshelfLayout *)self collectionView];
  v3 = [v2 numberOfSections];
  v4 = v3 >= 1 && (v3 != 1 || [v2 numberOfItemsInSection:0] > 0);

  return v4;
}

- (BOOL)hasSeriesSequenceLabel
{
  v2 = [(BKLibraryBookshelfLayout *)self delegate];
  v3 = [v2 dataSourceAdaptor];
  v4 = [v3 booksDataSource];
  v5 = [v4 hasSeriesSequenceLabel];

  return v5;
}

- (BOOL)isSupplementalContentPDFPicker
{
  v2 = [(BKLibraryBookshelfLayout *)self delegate];
  v3 = [v2 dataSourceAdaptor];
  v4 = [v3 supplementaryDataSource];
  v5 = [v4 supplementalContentPDFPicker];

  return v5;
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