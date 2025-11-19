@interface BKLibraryBookshelfFinishedBooksLayout
- (BKLibraryBookshelfFinishedBooksLayout)initWithLayout:(id)a3;
- (BKLibraryBookshelfLayout)bookshelfLayout;
- (CGRect)_frameOfDatedBookCellForFinishedCollectionAtRow:(int64_t)a3;
- (CGRect)_frameOfNonDatedBookCellForFinishedCollectionAtRow:(int64_t)a3;
- (CGRect)_frameOfNonDatedSectionHeader;
- (CGRect)lastBounds;
- (double)prepareLayoutForBooksSection:(double)a3;
- (id)_nonDatedCellMetrics;
- (id)layoutAttributesForBooksInRect:(CGRect)a3;
- (id)layoutAttributesForDatedItemAtIndexPath:(id)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForNonDatedItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (int64_t)_rowAtPos:(double)a3 inSection:(id)a4;
- (void)prepareLayoutForFinishedCollectionBooksSection;
- (void)prepareLayoutForNoBooks;
@end

@implementation BKLibraryBookshelfFinishedBooksLayout

- (BKLibraryBookshelfFinishedBooksLayout)initWithLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfFinishedBooksLayout;
  v5 = [(BKLibraryBookshelfFinishedBooksLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_bookshelfLayout, v4);
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
  v12 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v13 = [v12 collectionView];
  [v13 bounds];
  v15 = v14 - v9;
  v16 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
  [v16 setFrame:{v7, v9, v11, v15}];

  v17 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v18 = [v17 mainHeaderMetrics];
  v19 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
  [v19 setMainHeaderMetrics:v18];

  v20 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v21 = [v20 metrics];
  v22 = [v21 compactWidth];
  v23 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
  [v23 setCompactLayout:v22];

  v24 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v25 = [v24 measuring];
  v26 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
  [v25 adjustHeight:v26];

  v27 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
  [v27 frame];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalHeightOfBooksSection:CGRectGetMaxY(v29)];
}

- (double)prepareLayoutForBooksSection:(double)a3
{
  v5 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v6 = [v5 collectionView];

  v7 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v8 = [v7 metricsHaveChanged];

  if (v8)
  {
    v9 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
    v10 = [v9 measuring];
    [v10 bookCellHeightFor:0 editMode:0 metrics:0 clearCache:1];
  }

  v11 = +[NSMutableArray array];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setDatedRowInfos:v11];

  [(BKLibraryBookshelfFinishedBooksLayout *)self setNonDatedSectionInfo:0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalNumDatedBooks:0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalNumNonDatedBooks:0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setNonDatedBooksSectionIndex:-1];
  if ([v6 numberOfSections] < 2)
  {
    if ([v6 numberOfSections] == 1)
    {
      v12 = [v6 numberOfItemsInSection:0];
      if (v12 >= 1)
      {
        v13 = v12;
        v14 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
        v15 = [v14 delegate];
        v16 = [v15 dataSourceAdaptor];
        v17 = [v16 booksDataSource];
        v18 = [NSIndexPath indexPathForItem:0 inSection:0];
        v19 = [v17 representedObjectForIndexPath:v18];

        v20 = [v19 hasSpecifiedFinishedDate];
        if (v20)
        {
          v21 = v13;
        }

        else
        {
          v21 = 0;
        }

        if (v20)
        {
          v13 = 0;
        }

        v22 = (v20 << 63) >> 63;
        [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalNumDatedBooks:v21];
        [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalNumNonDatedBooks:v13];
        [(BKLibraryBookshelfFinishedBooksLayout *)self setNonDatedBooksSectionIndex:v22];
      }
    }
  }

  else
  {
    -[BKLibraryBookshelfFinishedBooksLayout setTotalNumDatedBooks:](self, "setTotalNumDatedBooks:", [v6 numberOfItemsInSection:0]);
    -[BKLibraryBookshelfFinishedBooksLayout setTotalNumNonDatedBooks:](self, "setTotalNumNonDatedBooks:", [v6 numberOfItemsInSection:1]);
    [(BKLibraryBookshelfFinishedBooksLayout *)self setNonDatedBooksSectionIndex:1];
  }

  v23 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v24 = [v23 columnMetrics];

  [v6 bounds];
  v26 = v25;
  [v6 safeAreaInsets];
  v29 = v26 - (v27 + v28);
  [v24 margins];
  v31 = v30;
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLayoutWidth:v29];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLayoutLeftMargin:0.0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLayoutAreaLeftMargin:v31 + 0.0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutWidth];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLayoutAreaWidth:v32 + v31 * -2.0];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setBooksAreaTop:a3];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalHeightOfBooksSection:a3];
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
  v2 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v3 = [v2 metrics];
  v4 = [v3 computedMetrics];
  v5 = [v4 objectForKeyedSubscript:@"bookCellListUser"];
  v6 = BUProtocolCast();

  return v6;
}

- (void)prepareLayoutForFinishedCollectionBooksSection
{
  v3 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v51 = [v3 measuring];

  objc_opt_class();
  v4 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v5 = [v4 cellMetrics];
  v6 = BUDynamicCast();

  v7 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v8 = [v7 collectionView];

  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutAreaWidth];
  v10 = v9;
  v11 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v12 = [v11 columnMetrics];
  [v12 margins];
  [v6 setCellWidth:v10 + v13 * -2.0];

  v14 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v15 = [v14 editMode];

  v16 = v15 ^ [(BKLibraryBookshelfFinishedBooksLayout *)self lastEditMode];
  v17 = v6;
  [v6 cellHeight];
  v50 = v15;
  if (v18 == 0.0)
  {
    v15 = 0;
  }

  [(BKLibraryBookshelfFinishedBooksLayout *)self lastBounds];
  if (!CGRectIsEmpty(v53))
  {
    [(BKLibraryBookshelfFinishedBooksLayout *)self lastBounds];
    v20 = v19;
    [v8 bounds];
    if (v20 == v21)
    {
      [(BKLibraryBookshelfFinishedBooksLayout *)self lastBounds];
      v23 = v22;
      [v8 bounds];
      LOBYTE(v16) = (v23 != v24) | v16;
    }

    else
    {
      LOBYTE(v16) = 1;
    }
  }

  [v8 bounds];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLastBounds:?];
  [(BKLibraryBookshelfFinishedBooksLayout *)self setLastEditMode:v50];
  if (v16)
  {
    [v51 bookCellHeightFor:0 editMode:0 metrics:0 clearCache:1];
  }

  v49 = v8;
  v25 = [(BKLibraryBookshelfFinishedBooksLayout *)self totalNumDatedBooks];
  v47 = [(BKLibraryBookshelfFinishedBooksLayout *)self totalNumNonDatedBooks];
  if ((v47 + v25 < 0) ^ __OFADD__(v47, v25) | (v47 + v25 == 0))
  {
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  [(BKLibraryBookshelfFinishedBooksLayout *)self setHasSomeBooks:v26, v47];
  [(BKLibraryBookshelfFinishedBooksLayout *)self booksAreaTop];
  v28 = v27;
  if (v25 >= 1)
  {
    for (i = 0; i != v25; ++i)
    {
      v30 = [NSIndexPath indexPathForItem:i inSection:0];
      if (v15)
      {
        [v17 cellHeight];
      }

      else
      {
        [v51 bookCellHeightFor:v30 editMode:v50 metrics:v17 clearCache:0];
      }

      v32 = v31;
      v33 = objc_alloc_init(FinishedRowInfo);
      [(FinishedRowInfo *)v33 setTopOfCell:v28];
      v28 = v28 + v32;
      [(FinishedRowInfo *)v33 setBottomOfCell:v28];
      v34 = [(BKLibraryBookshelfFinishedBooksLayout *)self datedRowInfos];
      [v34 addObject:v33];
    }
  }

  v35 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v36 = [v35 bookHeaderMetrics];

  if (v48 <= 0)
  {
    v46 = 0.0;
  }

  else
  {
    v37 = [(BKLibraryBookshelfFinishedBooksLayout *)self _nonDatedCellMetrics];
    [v37 cellHeight];
    v39 = v38;
    v40 = objc_alloc_init(BKLibraryNonDatedListSectionInfo);
    [(BKLibraryBookshelfFinishedBooksLayout *)self setNonDatedSectionInfo:v40];
    [(BKLibraryNonDatedListSectionInfo *)v40 setVertOffset:v28];
    [(BKLibraryNonDatedListSectionInfo *)v40 setNumBooks:v48];
    [(BKLibraryNonDatedListSectionInfo *)v40 setNumRows:[(BKLibraryNonDatedListSectionInfo *)v40 numBooks]];
    [(BKLibraryNonDatedListSectionInfo *)v40 setRowHeight:v39];
    [v36 sectionHeaderHeight];
    [(BKLibraryNonDatedListSectionInfo *)v40 setHeaderHeight:?];
    v41 = [(BKLibraryNonDatedListSectionInfo *)v40 numRows];
    [(BKLibraryNonDatedListSectionInfo *)v40 rowHeight];
    v43 = v42;
    [(BKLibraryNonDatedListSectionInfo *)v40 headerHeight];
    [(BKLibraryNonDatedListSectionInfo *)v40 setHeight:v44 + v41 * v43];
    [(BKLibraryNonDatedListSectionInfo *)v40 height];
    v28 = v28 + v45;

    [v36 bottomMargin];
  }

  [(BKLibraryBookshelfFinishedBooksLayout *)self setTotalHeightOfBooksSection:v28 + v46];
}

- (CGRect)_frameOfDatedBookCellForFinishedCollectionAtRow:(int64_t)a3
{
  v5 = [(BKLibraryBookshelfFinishedBooksLayout *)self datedRowInfos];
  v6 = [v5 objectAtIndex:a3];

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

- (CGRect)_frameOfNonDatedBookCellForFinishedCollectionAtRow:(int64_t)a3
{
  v5 = [(BKLibraryBookshelfFinishedBooksLayout *)self nonDatedSectionInfo];
  [v5 vertOffset];
  v7 = v6;
  [v5 headerHeight];
  v9 = v7 + v8;
  [v5 rowHeight];
  v11 = v9 + a3 * v10;
  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutLeftMargin];
  v13 = v12;
  [(BKLibraryBookshelfFinishedBooksLayout *)self layoutWidth];
  v15 = v14;
  [v5 rowHeight];
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
  v3 = [(BKLibraryBookshelfFinishedBooksLayout *)self nonDatedSectionInfo];
  [v3 vertOffset];
  v5 = v4;
  [v3 headerHeight];
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

- (int64_t)_rowAtPos:(double)a3 inSection:(id)a4
{
  v5 = a4;
  [v5 vertOffset];
  v7 = v6;
  [v5 headerHeight];
  v9 = a3 - (v7 + v8);
  [v5 rowHeight];
  v11 = vcvtmd_s64_f64(v9 / v10);
  v12 = (v11 & ~(v11 >> 63));
  if (v12 >= [v5 numRows])
  {
    v12 = [v5 numRows] - 1;
  }

  return v12;
}

- (id)layoutAttributesForBooksInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v11 = [(BKLibraryBookshelfFinishedBooksLayout *)self datedRowInfos];
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v11);
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

        v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v13);
    }

    v22 = [(BKLibraryBookshelfFinishedBooksLayout *)self nonDatedSectionInfo];
    if (v22)
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

      v25 = [(BKLibraryBookshelfFinishedBooksLayout *)self _rowAtPos:v22 inSection:MinY];
      v26 = [(BKLibraryBookshelfFinishedBooksLayout *)self _rowAtPos:v22 inSection:MaxY];
      if (v25 <= v26)
      {
        v27 = v26 + 1;
        do
        {
          if ((v25 & 0x8000000000000000) == 0 && v25 < [v22 numBooks])
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
    v30 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];

    if (v30)
    {
      v31 = [(BKLibraryBookshelfFinishedBooksLayout *)self noBooksAttr];
      [v8 addObject:v31];
    }
  }

  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 == [(BKLibraryBookshelfFinishedBooksLayout *)self nonDatedBooksSectionIndex])
  {
    [(BKLibraryBookshelfFinishedBooksLayout *)self layoutAttributesForNonDatedItemAtIndexPath:v4];
  }

  else
  {
    [(BKLibraryBookshelfFinishedBooksLayout *)self layoutAttributesForDatedItemAtIndexPath:v4];
  }
  v6 = ;

  return v6;
}

- (id)layoutAttributesForDatedItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfFinishedBooksLayout *)self totalNumDatedBooks]- 1;
  objc_opt_class();
  v6 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v7 = [v6 cellMetrics];
  v8 = BUDynamicCast();

  v9 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v10 = [v9 collectionView];

  v11 = [BKLibraryLayoutAttributes layoutAttributesForCellWithIndexPath:v4];
  v12 = [v10 indexPathsForSelectedItems];
  v13 = [v12 containsObject:v4];

  -[BKLibraryBookshelfFinishedBooksLayout _frameOfDatedBookCellForFinishedCollectionAtRow:](self, "_frameOfDatedBookCellForFinishedCollectionAtRow:", [v4 item]);
  [v11 setFrame:?];
  [v11 setCellMetrics:v8];
  v14 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v15 = [v14 columnMetrics];
  [v11 setColumnMetrics:v15];

  v16 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  [v11 setEditMode:{objc_msgSend(v16, "editMode")}];

  [v11 setFirstItem:{objc_msgSend(v4, "item") == 0}];
  v17 = [v4 item];

  [v11 setLastItem:v17 == v5];
  v18 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v19 = [v18 editMode];
  v20 = 1.0;
  if (v19 && (v13 & 1) == 0)
  {
    [v8 shrinkAlpha];
  }

  [v11 setAlpha:v20];

  return v11;
}

- (id)layoutAttributesForNonDatedItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfFinishedBooksLayout *)self totalNumNonDatedBooks]- 1;
  v6 = [(BKLibraryBookshelfFinishedBooksLayout *)self _nonDatedCellMetrics];
  v7 = [BKLibraryLayoutAttributes layoutAttributesForCellWithIndexPath:v4];
  -[BKLibraryBookshelfFinishedBooksLayout _frameOfNonDatedBookCellForFinishedCollectionAtRow:](self, "_frameOfNonDatedBookCellForFinishedCollectionAtRow:", [v4 item]);
  [v7 setFrame:?];
  [v7 setCellMetrics:v6];
  v8 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v9 = [v8 columnMetrics];
  [v7 setColumnMetrics:v9];

  v10 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  [v7 setEditMode:{objc_msgSend(v10, "editMode")}];

  [v7 setFirstItem:{objc_msgSend(v4, "item") == 0}];
  v11 = [v4 item];

  [v7 setLastItem:v11 == v5];
  v12 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  [v7 setEditable:{objc_msgSend(v12, "reorderableCollection")}];

  return v7;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
  v9 = [v8 bookHeaderMetrics];

  if ([v6 isEqualToString:off_100ACEF50])
  {
    v10 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v6 withIndexPath:v7];
    v11 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
    [v10 setRtlLayout:{objc_msgSend(v11, "rtlLayout")}];

    [(BKLibraryBookshelfFinishedBooksLayout *)self _frameOfNonDatedSectionHeader];
    [v10 setFrame:?];
    v12 = [v9 largeHeaderFontAttributes];
    v13 = [v12 attributes];
    [v10 setFontAttrs:v13];

    v14 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
    v15 = [v14 columnMetrics];
    [v10 setColumnMetrics:v15];

    v16 = [(BKLibraryBookshelfFinishedBooksLayout *)self bookshelfLayout];
    v17 = [v16 mainHeaderMetrics];
    [v10 setMainHeaderMetrics:v17];
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