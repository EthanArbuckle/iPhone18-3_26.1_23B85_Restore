@interface BKLibraryBookshelfFinishedBooksLayout
- (BKLibraryBookshelfFinishedBooksLayout)initWithLayout:(id)layout;
- (BKLibraryBookshelfLayout)bookshelfLayout;
- (CGRect)_frameOfDatedBookCellForFinishedCollectionAtRow:(int64_t)row;
- (CGRect)_frameOfNonDatedBookCellForFinishedCollectionAtRow:(int64_t)row;
- (CGRect)_frameOfNonDatedSectionHeader;
- (CGRect)lastBounds;
- (double)prepareLayoutForBooksSection:(double)section;
- (id)_nonDatedCellMetrics;
- (id)layoutAttributesForBooksInRect:(CGRect)rect;
- (id)layoutAttributesForDatedItemAtIndexPath:(id)path;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForNonDatedItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)_rowAtPos:(double)pos inSection:(id)section;
- (void)prepareLayoutForFinishedCollectionBooksSection;
- (void)prepareLayoutForNoBooks;
@end

@implementation BKLibraryBookshelfFinishedBooksLayout

- (BKLibraryBookshelfFinishedBooksLayout)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfFinishedBooksLayout;
  v5 = [(BKLibraryBookshelfFinishedBooksLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_bookshelfLayout, layoutCopy);
  }

  return v6;
}

- (void)prepareLayoutForNoBooks
{
  v3 = off_100ACEF48;
  v4 = [NSIndexPath indexPathWithIndex:0];
  v5 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v3 withIndexPath:v4];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setNoBooksAttr:v5];

  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutAreaLeftMargin];
  v7 = v6;
  [(BKLibraryBookshelfFinishedBooksLayout *)self booksAreaTop];
  v9 = v8;
  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutAreaWidth];
  v11 = v10;
  bookshelfLayout = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout collectionView];
  [collectionView bounds];
  v15 = v14 - v9;
  noBooksAttr = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
  [noBooksAttr setFrame:{v7, v9, v11, v15}];

  bookshelfLayout2 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  mainHeaderMetrics = [bookshelfLayout2 mainHeaderMetrics];
  noBooksAttr2 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
  [noBooksAttr2 setMainHeaderMetrics:mainHeaderMetrics];

  bookshelfLayout3 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  metrics = [bookshelfLayout3 metrics];
  compactWidth = [metrics compactWidth];
  noBooksAttr3 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
  [noBooksAttr3 setCompactLayout:compactWidth];

  bookshelfLayout4 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  measuring = [bookshelfLayout4 measuring];
  noBooksAttr4 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
  [measuring adjustHeight:noBooksAttr4];

  noBooksAttr5 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
  [noBooksAttr5 frame];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalHeightOfBooksSection:CGRectGetMaxY(v29)];
}

- (double)prepareLayoutForBooksSection:(double)section
{
  bookshelfLayout = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout collectionView];

  bookshelfLayout2 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  metricsHaveChanged = [bookshelfLayout2 metricsHaveChanged];

  if (metricsHaveChanged)
  {
    bookshelfLayout3 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
    measuring = [bookshelfLayout3 measuring];
    [measuring bookCellHeightFor:0 editMode:0 metrics:0 clearCache:1];
  }

  v11 = +[NSMutableArray array];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setDatedRowInfos:v11];

  [(BKLibraryBookshelfFinishedBooksLayout *)self setNonDatedSectionInfo:0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalNumDatedBooks:0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalNumNonDatedBooks:0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setNonDatedBooksSectionIndex:-1];
  if ([collectionView numberOfSections] < 2)
  {
    if ([collectionView numberOfSections] == 1)
    {
      v12 = [collectionView numberOfItemsInSection:0];
      if (v12 >= 1)
      {
        v13 = v12;
        bookshelfLayout4 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
        delegate = [bookshelfLayout4 delegate];
        dataSourceAdaptor = [delegate dataSourceAdaptor];
        booksDataSource = [dataSourceAdaptor booksDataSource];
        v18 = [NSIndexPath indexPathForItem:0 inSection:0];
        v19 = [booksDataSource representedObjectForIndexPath:v18];

        hasSpecifiedFinishedDate = [v19 hasSpecifiedFinishedDate];
        if (hasSpecifiedFinishedDate)
        {
          v21 = v13;
        }

        else
        {
          v21 = 0;
        }

        if (hasSpecifiedFinishedDate)
        {
          v13 = 0;
        }

        v22 = (hasSpecifiedFinishedDate << 63) >> 63;
        [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalNumDatedBooks:v21];
        [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalNumNonDatedBooks:v13];
        [(BKLibraryBookshelfFinishedBooksLayout *)self setNonDatedBooksSectionIndex:v22];
      }
    }
  }

  else
  {
    -[BKLibraryBookshelfFinishedBooksLayout setTotalNumDatedBooks:](self, "setTotalNumDatedBooks:", [collectionView numberOfItemsInSection:0]);
    -[BKLibraryBookshelfFinishedBooksLayout setTotalNumNonDatedBooks:](self, "setTotalNumNonDatedBooks:", [collectionView numberOfItemsInSection:1]);
    [(BKLibraryBookshelfFinishedBooksLayout *)self setNonDatedBooksSectionIndex:1];
  }

  bookshelfLayout5 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  columnMetrics = [bookshelfLayout5 columnMetrics];

  [collectionView bounds];
  v26 = v25;
  [collectionView safeAreaInsets];
  v29 = v26 - (v27 + v28);
  [columnMetrics margins];
  v31 = v30;
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLayoutWidth:v29];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLayoutLeftMargin:0.0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLayoutAreaLeftMargin:v31 + 0.0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutWidth];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLayoutAreaWidth:v32 + v31 * -2.0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setBooksAreaTop:section];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalHeightOfBooksSection:section];
  [(BKLibraryBookshelfFinishedBooksLayout *)self prepareLayoutForFinishedCollectionBooksSection];
  if ([(BKLibraryBookshelfFinishedBooksLayout *)self hasSomeBooks])
  {
    [(BKLibraryBookshelfFinishedBooksLayout *)self setNoBooksAttr:0];
  }

  else
  {
    [(BKLibraryBookshelfFinishedBooksLayout *)self prepareLayoutForNoBooks];
  }

  [(BKLibraryBookshelfFinishedBooksLayout *)self totalHeightOfBooksSection];
  v34 = v33;

  return v34;
}

- (id)_nonDatedCellMetrics
{
  bookshelfLayout = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  metrics = [bookshelfLayout metrics];
  computedMetrics = [metrics computedMetrics];
  v5 = [computedMetrics objectForKeyedSubscript:@"bookCellListUser"];
  v6 = BUProtocolCast();

  return v6;
}

- (void)prepareLayoutForFinishedCollectionBooksSection
{
  bookshelfLayout = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  measuring = [bookshelfLayout measuring];

  objc_opt_class();
  bookshelfLayout2 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  cellMetrics = [bookshelfLayout2 cellMetrics];
  v6 = BUDynamicCast();

  bookshelfLayout3 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout3 collectionView];

  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutAreaWidth];
  v10 = v9;
  bookshelfLayout4 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  columnMetrics = [bookshelfLayout4 columnMetrics];
  [columnMetrics margins];
  [v6 setCellWidth:v10 + v13 * -2.0];

  bookshelfLayout5 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  editMode = [bookshelfLayout5 editMode];

  v16 = editMode ^ [(BKLibraryBookshelfFinishedBooksLayout *)self lastEditMode];
  v17 = v6;
  [v6 cellHeight];
  v50 = editMode;
  if (v18 == 0.0)
  {
    editMode = 0;
  }

  [(BKLibraryBookshelfFinishedBooksLayout *)self lastBounds];
  if (!CGRectIsEmpty(v53))
  {
    [(BKLibraryBookshelfFinishedBooksLayout *)self lastBounds];
    v20 = v19;
    [collectionView bounds];
    if (v20 == v21)
    {
      [(BKLibraryBookshelfFinishedBooksLayout *)self lastBounds];
      v23 = v22;
      [collectionView bounds];
      LOBYTE(v16) = (v23 != v24) | v16;
    }

    else
    {
      LOBYTE(v16) = 1;
    }
  }

  [collectionView bounds];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLastBounds:?];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLastEditMode:v50];
  if (v16)
  {
    [measuring bookCellHeightFor:0 editMode:0 metrics:0 clearCache:1];
  }

  v49 = collectionView;
  totalNumDatedBooks = [(BKLibraryBookshelfFinishedBooksLayout *)self totalNumDatedBooks];
  totalNumNonDatedBooks = [(BKLibraryBookshelfFinishedBooksLayout *)self totalNumNonDatedBooks];
  if ((totalNumNonDatedBooks + totalNumDatedBooks < 0) ^ __OFADD__(totalNumNonDatedBooks, totalNumDatedBooks) | (totalNumNonDatedBooks + totalNumDatedBooks == 0))
  {
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  [(BKLibraryBookshelfFinishedBooksLayout *)self setHasSomeBooks:v26, totalNumNonDatedBooks];
  [(BKLibraryBookshelfFinishedBooksLayout *)self booksAreaTop];
  v28 = v27;
  if (totalNumDatedBooks >= 1)
  {
    for (i = 0; i != totalNumDatedBooks; ++i)
    {
      v30 = [NSIndexPath indexPathForItem:i inSection:0];
      if (editMode)
      {
        [v17 cellHeight];
      }

      else
      {
        [measuring bookCellHeightFor:v30 editMode:v50 metrics:v17 clearCache:0];
      }

      v32 = v31;
      v33 = objc_alloc_init(FinishedRowInfo);
      [(FinishedRowInfo *)v33 setTopOfCell:v28];
      v28 = v28 + v32;
      [(FinishedRowInfo *)v33 setBottomOfCell:v28];
      datedRowInfos = [(BKLibraryBookshelfFinishedBooksLayout *)self datedRowInfos];
      [datedRowInfos addObject:v33];
    }
  }

  bookshelfLayout6 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  bookHeaderMetrics = [bookshelfLayout6 bookHeaderMetrics];

  if (v48 <= 0)
  {
    v46 = 0.0;
  }

  else
  {
    _nonDatedCellMetrics = [(BKLibraryBookshelfFinishedBooksLayout *)self _nonDatedCellMetrics];
    [_nonDatedCellMetrics cellHeight];
    v39 = v38;
    v40 = objc_alloc_init(BKLibraryNonDatedListSectionInfo);
    [(BKLibraryBookshelfFinishedBooksLayout *)self setNonDatedSectionInfo:v40];
    [(BKLibraryNonDatedListSectionInfo *)v40 setVertOffset:v28];
    [(BKLibraryNonDatedListSectionInfo *)v40 setNumBooks:v48];
    [(BKLibraryNonDatedListSectionInfo *)v40 setNumRows:[(BKLibraryNonDatedListSectionInfo *)v40 numBooks]];
    [(BKLibraryNonDatedListSectionInfo *)v40 setRowHeight:v39];
    [bookHeaderMetrics sectionHeaderHeight];
    [(BKLibraryNonDatedListSectionInfo *)v40 setHeaderHeight:?];
    numRows = [(BKLibraryNonDatedListSectionInfo *)v40 numRows];
    [(BKLibraryNonDatedListSectionInfo *)v40 rowHeight];
    v43 = v42;
    [(BKLibraryNonDatedListSectionInfo *)v40 headerHeight];
    [(BKLibraryNonDatedListSectionInfo *)v40 setHeight:v44 + numRows * v43];
    [(BKLibraryNonDatedListSectionInfo *)v40 height];
    v28 = v28 + v45;

    [bookHeaderMetrics bottomMargin];
  }

  [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalHeightOfBooksSection:v28 + v46];
}

- (CGRect)_frameOfDatedBookCellForFinishedCollectionAtRow:(int64_t)row
{
  datedRowInfos = [(BKLibraryBookshelfFinishedBooksLayout *)self datedRowInfos];
  v6 = [datedRowInfos objectAtIndex:row];

  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutLeftMargin];
  v8 = v7;
  [v6 topOfCell];
  v10 = v9;
  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutWidth];
  v12 = v11;
  [v6 bottomOfCell];
  v14 = v13;
  [v6 topOfCell];
  v16 = v14 - v15;

  v17 = v8;
  v18 = v10;
  v19 = v12;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_frameOfNonDatedBookCellForFinishedCollectionAtRow:(int64_t)row
{
  nonDatedSectionInfo = [(BKLibraryBookshelfFinishedBooksLayout *)self nonDatedSectionInfo];
  [nonDatedSectionInfo vertOffset];
  v7 = v6;
  [nonDatedSectionInfo headerHeight];
  v9 = v7 + v8;
  [nonDatedSectionInfo rowHeight];
  v11 = v9 + row * v10;
  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutLeftMargin];
  v13 = v12;
  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutWidth];
  v15 = v14;
  [nonDatedSectionInfo rowHeight];
  v17 = v16;

  v18 = v13;
  v19 = round(v11);
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_frameOfNonDatedSectionHeader
{
  nonDatedSectionInfo = [(BKLibraryBookshelfFinishedBooksLayout *)self nonDatedSectionInfo];
  [nonDatedSectionInfo vertOffset];
  v5 = v4;
  [nonDatedSectionInfo headerHeight];
  v7 = v6;
  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutWidth];
  v9 = v8;

  v10 = 0.0;
  v11 = v5;
  v12 = v9;
  v13 = v7;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (int64_t)_rowAtPos:(double)pos inSection:(id)section
{
  sectionCopy = section;
  [sectionCopy vertOffset];
  v7 = v6;
  [sectionCopy headerHeight];
  v9 = pos - (v7 + v8);
  [sectionCopy rowHeight];
  v11 = vcvtmd_s64_f64(v9 / v10);
  v12 = (v11 & ~(v11 >> 63));
  if (v12 >= [sectionCopy numRows])
  {
    v12 = [sectionCopy numRows] - 1;
  }

  return v12;
}

- (id)layoutAttributesForBooksInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = +[NSMutableArray array];
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MaxY = CGRectGetMaxY(v40);
  if ([(BKLibraryBookshelfFinishedBooksLayout *)self hasSomeBooks])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    datedRowInfos = [(BKLibraryBookshelfFinishedBooksLayout *)self datedRowInfos];
    v12 = [datedRowInfos countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v34;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(datedRowInfos);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          [v17 topOfCell];
          if (v18 < MaxY)
          {
            [v17 bottomOfCell];
            if (v19 > MinY)
            {
              v20 = [NSIndexPath indexPathForItem:v14 inSection:0];
              v21 = [(BKLibraryBookshelfFinishedBooksLayout *)self layoutAttributesForItemAtIndexPath:v20];
              [v21 frame];
              v44.origin.x = x;
              v44.origin.y = y;
              v44.size.width = width;
              v44.size.height = height;
              if (CGRectIntersectsRect(v41, v44))
              {
                [v8 addObject:v21];
              }
            }
          }

          ++v14;
        }

        v13 = [datedRowInfos countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v13);
    }

    nonDatedSectionInfo = [(BKLibraryBookshelfFinishedBooksLayout *)self nonDatedSectionInfo];
    if (nonDatedSectionInfo)
    {
      v23 = [NSIndexPath indexPathForItem:0 inSection:[(BKLibraryBookshelfFinishedBooksLayout *)self nonDatedBooksSectionIndex]];
      v24 = [(BKLibraryBookshelfFinishedBooksLayout *)self layoutAttributesForSupplementaryViewOfKind:off_100ACEF50 atIndexPath:v23];
      [v24 frame];
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      if (CGRectIntersectsRect(v42, v45))
      {
        [v8 addObject:v24];
      }

      v25 = [(BKLibraryBookshelfFinishedBooksLayout *)self _rowAtPos:nonDatedSectionInfo inSection:MinY];
      v26 = [(BKLibraryBookshelfFinishedBooksLayout *)self _rowAtPos:nonDatedSectionInfo inSection:MaxY];
      if (v25 <= v26)
      {
        v27 = v26 + 1;
        do
        {
          if ((v25 & 0x8000000000000000) == 0 && v25 < [nonDatedSectionInfo numBooks])
          {
            v28 = [NSIndexPath indexPathForItem:v25 inSection:[(BKLibraryBookshelfFinishedBooksLayout *)self nonDatedBooksSectionIndex]];
            v29 = [(BKLibraryBookshelfFinishedBooksLayout *)self layoutAttributesForItemAtIndexPath:v28];
            [v29 frame];
            v46.origin.x = x;
            v46.origin.y = y;
            v46.size.width = width;
            v46.size.height = height;
            if (CGRectIntersectsRect(v43, v46))
            {
              [v8 addObject:v29];
            }
          }

          ++v25;
        }

        while (v27 != v25);
      }
    }
  }

  else
  {
    noBooksAttr = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];

    if (noBooksAttr)
    {
      noBooksAttr2 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
      [v8 addObject:noBooksAttr2];
    }
  }

  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(BKLibraryBookshelfFinishedBooksLayout *)self nonDatedBooksSectionIndex])
  {
    [(BKLibraryBookshelfFinishedBooksLayout *)self layoutAttributesForNonDatedItemAtIndexPath:pathCopy];
  }

  else
  {
    [(BKLibraryBookshelfFinishedBooksLayout *)self layoutAttributesForDatedItemAtIndexPath:pathCopy];
  }
  v6 = ;

  return v6;
}

- (id)layoutAttributesForDatedItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(BKLibraryBookshelfFinishedBooksLayout *)self totalNumDatedBooks]- 1;
  objc_opt_class();
  bookshelfLayout = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  cellMetrics = [bookshelfLayout cellMetrics];
  v8 = BUDynamicCast();

  bookshelfLayout2 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout2 collectionView];

  v11 = [BKLibraryLayoutAttributes layoutAttributesForCellWithIndexPath:pathCopy];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v13 = [indexPathsForSelectedItems containsObject:pathCopy];

  -[BKLibraryBookshelfFinishedBooksLayout _frameOfDatedBookCellForFinishedCollectionAtRow:](self, "_frameOfDatedBookCellForFinishedCollectionAtRow:", [pathCopy item]);
  [v11 setFrame:?];
  [v11 setCellMetrics:v8];
  bookshelfLayout3 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  columnMetrics = [bookshelfLayout3 columnMetrics];
  [v11 setColumnMetrics:columnMetrics];

  bookshelfLayout4 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  [v11 setEditMode:{objc_msgSend(bookshelfLayout4, "editMode")}];

  [v11 setFirstItem:{objc_msgSend(pathCopy, "item") == 0}];
  item = [pathCopy item];

  [v11 setLastItem:item == v5];
  bookshelfLayout5 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  editMode = [bookshelfLayout5 editMode];
  v20 = 1.0;
  if (editMode && (v13 & 1) == 0)
  {
    [v8 shrinkAlpha];
  }

  [v11 setAlpha:v20];

  return v11;
}

- (id)layoutAttributesForNonDatedItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(BKLibraryBookshelfFinishedBooksLayout *)self totalNumNonDatedBooks]- 1;
  _nonDatedCellMetrics = [(BKLibraryBookshelfFinishedBooksLayout *)self _nonDatedCellMetrics];
  v7 = [BKLibraryLayoutAttributes layoutAttributesForCellWithIndexPath:pathCopy];
  -[BKLibraryBookshelfFinishedBooksLayout _frameOfNonDatedBookCellForFinishedCollectionAtRow:](self, "_frameOfNonDatedBookCellForFinishedCollectionAtRow:", [pathCopy item]);
  [v7 setFrame:?];
  [v7 setCellMetrics:_nonDatedCellMetrics];
  bookshelfLayout = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  columnMetrics = [bookshelfLayout columnMetrics];
  [v7 setColumnMetrics:columnMetrics];

  bookshelfLayout2 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  [v7 setEditMode:{objc_msgSend(bookshelfLayout2, "editMode")}];

  [v7 setFirstItem:{objc_msgSend(pathCopy, "item") == 0}];
  item = [pathCopy item];

  [v7 setLastItem:item == v5];
  bookshelfLayout3 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  [v7 setEditable:{objc_msgSend(bookshelfLayout3, "reorderableCollection")}];

  return v7;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  bookshelfLayout = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  bookHeaderMetrics = [bookshelfLayout bookHeaderMetrics];

  if ([kindCopy isEqualToString:off_100ACEF50])
  {
    v10 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:kindCopy withIndexPath:pathCopy];
    bookshelfLayout2 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
    [v10 setRtlLayout:{objc_msgSend(bookshelfLayout2, "rtlLayout")}];

    [(BKLibraryBookshelfFinishedBooksLayout *)self _frameOfNonDatedSectionHeader];
    [v10 setFrame:?];
    largeHeaderFontAttributes = [bookHeaderMetrics largeHeaderFontAttributes];
    attributes = [largeHeaderFontAttributes attributes];
    [v10 setFontAttrs:attributes];

    bookshelfLayout3 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
    columnMetrics = [bookshelfLayout3 columnMetrics];
    [v10 setColumnMetrics:columnMetrics];

    bookshelfLayout4 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
    mainHeaderMetrics = [bookshelfLayout4 mainHeaderMetrics];
    [v10 setMainHeaderMetrics:mainHeaderMetrics];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BKLibraryBookshelfLayout)bookshelfLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_bookshelfLayout);

  return WeakRetained;
}

- (CGRect)lastBounds
{
  x = self->_lastBounds.origin.x;
  y = self->_lastBounds.origin.y;
  width = self->_lastBounds.size.width;
  height = self->_lastBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end