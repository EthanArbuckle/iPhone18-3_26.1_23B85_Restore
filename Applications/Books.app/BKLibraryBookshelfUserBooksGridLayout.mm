@interface BKLibraryBookshelfUserBooksGridLayout
- (BKLibraryBookshelfLayout)bookshelfLayout;
- (BKLibraryBookshelfUserBooksGridLayout)initWithLayout:(id)layout;
- (BOOL)isSupplementalContentPDFPicker;
- (CGRect)_frameOfBookCellAtIndexPath:(id)path;
- (CGRect)_frameOfSectionHeaderAtIndexPath:(id)path;
- (double)prepareLayoutForBooksSection:(double)section;
- (id)layoutAttributesForBooksInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)_rowAtPos:(double)pos inSection:(id)section;
- (int64_t)_sectionAtPos:(double)pos;
- (void)prepareLayoutForNoBooks;
- (void)prepareLayoutForUserCollectionBooksSection;
@end

@implementation BKLibraryBookshelfUserBooksGridLayout

- (BKLibraryBookshelfUserBooksGridLayout)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfUserBooksGridLayout;
  v5 = [(BKLibraryBookshelfUserBooksGridLayout *)&v8 init];
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
  [(BKLibraryBookshelfUserBooksGridLayout *)self setNoBooksAttr:v5];

  [(BKLibraryBookshelfUserBooksGridLayout *)self layoutAreaLeftMargin];
  v7 = v6;
  [(BKLibraryBookshelfUserBooksGridLayout *)self booksAreaTop];
  v9 = v8;
  [(BKLibraryBookshelfUserBooksGridLayout *)self layoutAreaWidth];
  v11 = v10;
  bookshelfLayout = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout collectionView];
  [collectionView bounds];
  v15 = v14 - v9;
  noBooksAttr = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
  [noBooksAttr setFrame:{v7, v9, v11, v15}];

  bookshelfLayout2 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  mainHeaderMetrics = [bookshelfLayout2 mainHeaderMetrics];
  noBooksAttr2 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
  [noBooksAttr2 setMainHeaderMetrics:mainHeaderMetrics];

  bookshelfLayout3 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  metrics = [bookshelfLayout3 metrics];
  compactWidth = [metrics compactWidth];
  noBooksAttr3 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
  [noBooksAttr3 setCompactLayout:compactWidth];

  bookshelfLayout4 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  measuring = [bookshelfLayout4 measuring];
  noBooksAttr4 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
  [measuring adjustHeight:noBooksAttr4];

  noBooksAttr5 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
  [noBooksAttr5 frame];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setTotalHeightOfBooksSection:CGRectGetMaxY(v29)];
}

- (BOOL)isSupplementalContentPDFPicker
{
  bookshelfLayout = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  delegate = [bookshelfLayout delegate];
  dataSourceAdaptor = [delegate dataSourceAdaptor];
  supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
  supplementalContentPDFPicker = [supplementaryDataSource supplementalContentPDFPicker];

  return supplementalContentPDFPicker;
}

- (double)prepareLayoutForBooksSection:(double)section
{
  bookshelfLayout = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  columnMetrics = [bookshelfLayout columnMetrics];

  bookshelfLayout2 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout2 collectionView];

  [collectionView bounds];
  v10 = v9;
  [collectionView safeAreaInsets];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setLayoutWidth:v10 - (v11 + v12)];
  if ([(BKLibraryBookshelfUserBooksGridLayout *)self isSupplementalContentPDFPicker])
  {
    [columnMetrics smallMargins];
  }

  else
  {
    [columnMetrics margins];
  }

  [(BKLibraryBookshelfUserBooksGridLayout *)self setMargins:?];
  [(BKLibraryBookshelfUserBooksGridLayout *)self layoutWidth];
  v14 = v13;
  [columnMetrics maxWidth];
  if (v14 > v15)
  {
    [(BKLibraryBookshelfUserBooksGridLayout *)self layoutWidth];
    v17 = v16;
    [columnMetrics maxWidth];
    v19 = (v17 - v18) * 0.5;
    [(BKLibraryBookshelfUserBooksGridLayout *)self margins];
    [(BKLibraryBookshelfUserBooksGridLayout *)self setMargins:v20 + v19];
  }

  if ([(BKLibraryBookshelfUserBooksGridLayout *)self isSupplementalContentPDFPicker])
  {
    [columnMetrics smallGutter];
  }

  else
  {
    [columnMetrics gutter];
  }

  [(BKLibraryBookshelfUserBooksGridLayout *)self setGutter:?];
  [columnMetrics vertical];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setVertical:?];
  bookshelfLayout3 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  -[BKLibraryBookshelfUserBooksGridLayout setHideInfoBar:](self, "setHideInfoBar:", [bookshelfLayout3 editMode]);

  [(BKLibraryBookshelfUserBooksGridLayout *)self margins];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setLayoutAreaLeftMargin:?];
  [(BKLibraryBookshelfUserBooksGridLayout *)self layoutWidth];
  v23 = v22;
  [(BKLibraryBookshelfUserBooksGridLayout *)self margins];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setLayoutAreaWidth:v23 + v24 * -2.0];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setBooksAreaTop:section];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setTotalHeightOfBooksSection:section];
  [(BKLibraryBookshelfUserBooksGridLayout *)self prepareLayoutForUserCollectionBooksSection];
  if ([(BKLibraryBookshelfUserBooksGridLayout *)self hasSomeBooks])
  {
    [(BKLibraryBookshelfUserBooksGridLayout *)self setNoBooksAttr:0];
  }

  else
  {
    [(BKLibraryBookshelfUserBooksGridLayout *)self prepareLayoutForNoBooks];
  }

  [(BKLibraryBookshelfUserBooksGridLayout *)self totalHeightOfBooksSection];
  v26 = v25;

  return v26;
}

- (void)prepareLayoutForUserCollectionBooksSection
{
  bookshelfLayout = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  columnMetrics = [bookshelfLayout columnMetrics];

  objc_opt_class();
  bookshelfLayout2 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  cellMetrics = [bookshelfLayout2 cellMetrics];
  v6 = BUDynamicCast();

  bookshelfLayout3 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  bookHeaderMetrics = [bookshelfLayout3 bookHeaderMetrics];

  bookshelfLayout4 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout4 collectionView];

  if ([(BKLibraryBookshelfUserBooksGridLayout *)self isSupplementalContentPDFPicker])
  {
    smallColumns = [columnMetrics smallColumns];
  }

  else
  {
    [(BKLibraryBookshelfUserBooksGridLayout *)self layoutWidth];
    smallColumns = [columnMetrics columnsForContainingWidth:?];
  }

  [(BKLibraryBookshelfUserBooksGridLayout *)self setNumColumns:smallColumns];
  bookshelfLayout5 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  hasSeriesSequenceLabel = [bookshelfLayout5 hasSeriesSequenceLabel];

  if (hasSeriesSequenceLabel)
  {
    [v6 seriesSequenceLabelTopMargin];
    v15 = v14;
    [v6 seriesSequenceLabelHeight];
    v55 = v15 + v16;
    [v6 seriesSequenceLabelBottomMargin];
    v18 = v17;
  }

  else
  {
    [v6 infoBarSpacing];
    v18 = v19;
    v55 = 0.0;
  }

  v20 = 0.0;
  if (![(BKLibraryBookshelfUserBooksGridLayout *)self hideInfoBar])
  {
    [v6 infoBarHeight];
    v20 = v18 + v21;
  }

  [v6 cellAspect];
  v23 = v22;
  [(BKLibraryBookshelfUserBooksGridLayout *)self layoutWidth];
  v25 = v24;
  [(BKLibraryBookshelfUserBooksGridLayout *)self margins];
  v27 = v26;
  [(BKLibraryBookshelfUserBooksGridLayout *)self gutter];
  v29 = v28;
  numColumns = [(BKLibraryBookshelfUserBooksGridLayout *)self numColumns];
  [(BKLibraryBookshelfUserBooksGridLayout *)self gutter];
  v32 = v31;
  [(BKLibraryBookshelfUserBooksGridLayout *)self vertical];
  v34 = v33;
  [(BKLibraryBookshelfUserBooksGridLayout *)self setHasSomeBooks:0];
  numberOfSections = [collectionView numberOfSections];
  v36 = +[NSMutableArray array];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setSectionInfo:v36];

  [(BKLibraryBookshelfUserBooksGridLayout *)self booksAreaTop];
  v38 = v37;
  if (numberOfSections >= 1)
  {
    v39 = 0;
    v40 = v34 + v20 + v56 + round(v23 * (round((v25 + v27 * -2.0 + v29) / numColumns) - v32));
    while (1)
    {
      v41 = objc_alloc_init(BKLibrarySectionInfo);
      sectionInfo = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
      [sectionInfo addObject:v41];

      [(BKLibrarySectionInfo *)v41 setVertOffset:v38];
      -[BKLibrarySectionInfo setNumBooks:](v41, "setNumBooks:", [collectionView numberOfItemsInSection:v39]);
      [(BKLibrarySectionInfo *)v41 setNumRows:vcvtpd_s64_f64([(BKLibrarySectionInfo *)v41 numBooks]/ [(BKLibraryBookshelfUserBooksGridLayout *)self numColumns])];
      if ([v6 sectionItemRowLimit])
      {
        if (numberOfSections >= 2)
        {
          break;
        }
      }

      [(BKLibrarySectionInfo *)v41 setRowHeight:v40];
      v46 = 0.0;
      if (numberOfSections >= 2)
      {
        goto LABEL_18;
      }

LABEL_19:
      [(BKLibrarySectionInfo *)v41 setHeaderHeight:v46];
      numRows = [(BKLibrarySectionInfo *)v41 numRows];
      [(BKLibrarySectionInfo *)v41 rowHeight];
      v49 = v48;
      [(BKLibrarySectionInfo *)v41 headerHeight];
      [(BKLibrarySectionInfo *)v41 setHeight:v50 + numRows * v49];
      [(BKLibrarySectionInfo *)v41 height];
      v52 = v51;
      v53 = [(BKLibraryBookshelfUserBooksGridLayout *)self hasSomeBooks]|| [(BKLibrarySectionInfo *)v41 numBooks]> 0;
      v38 = v38 + v52;
      [(BKLibraryBookshelfUserBooksGridLayout *)self setHasSomeBooks:v53];

      if (numberOfSections == ++v39)
      {
        goto LABEL_23;
      }
    }

    numRows2 = [(BKLibrarySectionInfo *)v41 numRows];
    sectionItemRowLimit = [v6 sectionItemRowLimit];
    if (numRows2 >= sectionItemRowLimit)
    {
      v45 = sectionItemRowLimit;
    }

    else
    {
      v45 = numRows2;
    }

    [(BKLibrarySectionInfo *)v41 setNumRows:v45];
    [(BKLibrarySectionInfo *)v41 setRowHeight:v40];
LABEL_18:
    [bookHeaderMetrics sectionHeaderHeight];
    goto LABEL_19;
  }

LABEL_23:
  [bookHeaderMetrics bottomMargin];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setTotalHeightOfBooksSection:v38 + v54];
}

- (CGRect)_frameOfSectionHeaderAtIndexPath:(id)path
{
  pathCopy = path;
  sectionInfo = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
  section = [pathCopy section];

  v7 = [sectionInfo objectAtIndexedSubscript:section];

  [v7 vertOffset];
  v9 = v8;
  [v7 headerHeight];
  v11 = v10;
  [(BKLibraryBookshelfUserBooksGridLayout *)self layoutWidth];
  v13 = v12;

  v14 = 0.0;
  v15 = v9;
  v16 = v13;
  v17 = v11;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_frameOfBookCellAtIndexPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  bookshelfLayout = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  cellMetrics = [bookshelfLayout cellMetrics];
  v7 = BUDynamicCast();

  if ([(BKLibraryBookshelfUserBooksGridLayout *)self isSupplementalContentPDFPicker])
  {
    [v7 smallCellSize];
  }

  else
  {
    [v7 cellSize];
  }

  if ([(BKLibraryBookshelfUserBooksGridLayout *)self isSupplementalContentPDFPicker])
  {
    [v7 smallCellSize];
  }

  else
  {
    [v7 cellSize];
  }

  sectionInfo = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
  v9 = [sectionInfo objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  numColumns = [(BKLibraryBookshelfUserBooksGridLayout *)self numColumns];
  item = [pathCopy item];
  item2 = [pathCopy item];

  bookshelfLayout2 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  rtlLayout = [bookshelfLayout2 rtlLayout];

  [v9 vertOffset];
  v16 = v15;
  [v9 headerHeight];
  v18 = v17;
  [v9 rowHeight];
  v20 = v19;
  [(BKLibraryBookshelfUserBooksGridLayout *)self layoutWidth];
  v22 = v21;
  [(BKLibraryBookshelfUserBooksGridLayout *)self margins];
  v24 = v23;
  [(BKLibraryBookshelfUserBooksGridLayout *)self gutter];
  v55 = v25;
  [v9 rowHeight];
  v27 = v26;
  [(BKLibraryBookshelfUserBooksGridLayout *)self vertical];
  v29 = v28;
  [(BKLibraryBookshelfUserBooksGridLayout *)self gutter];
  v56 = v30;
  [(BKLibraryBookshelfUserBooksGridLayout *)self margins];
  v32 = v31;
  hideInfoBar = [(BKLibraryBookshelfUserBooksGridLayout *)self hideInfoBar];
  v34 = 0.0;
  if ((hideInfoBar & 1) == 0)
  {
    [v7 infoBarDateSpacing];
    v54 = v24;
    v35 = v22;
    v36 = v29;
    v37 = v27;
    v38 = v20;
    v39 = v18;
    v40 = v16;
    v42 = v41;
    [v7 infoBarExpectedDateHeight];
    v34 = v42 + v43;
    v16 = v40;
    v18 = v39;
    v20 = v38;
    v27 = v37;
    v29 = v36;
    v22 = v35;
    v24 = v54;
  }

  v44 = item2 % numColumns;
  if (rtlLayout)
  {
    v44 = numColumns + ~(item2 % numColumns);
  }

  v45 = round((v22 + v24 * -2.0 + v55) / numColumns);
  v46 = round(v32 + v45 * v44);
  v47 = round(v16 + v18 + (item / numColumns) * v20);
  v48 = v45 - v56;
  v49 = v27 - v29 + v34;

  v50 = v46;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

- (int64_t)_sectionAtPos:(double)pos
{
  sectionInfo = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
  if ([sectionInfo count])
  {
    sectionInfo2 = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
    v7 = [sectionInfo2 objectAtIndexedSubscript:0];
    [v7 vertOffset];
    v9 = v8;

    v10 = 0;
    if (v9 > pos)
    {
      return v10;
    }
  }

  else
  {
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  sectionInfo3 = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
  v12 = [sectionInfo3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v24;
LABEL_7:
    v16 = 0;
    v10 = v14;
    v14 = &v13[v14];
    while (1)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(sectionInfo3);
      }

      v17 = *(*(&v23 + 1) + 8 * v16);
      [v17 vertOffset];
      if (v18 <= pos)
      {
        [v17 vertOffset];
        v20 = v19;
        [v17 height];
        if (v20 + v21 > pos)
        {
          break;
        }
      }

      ++v10;
      if (v13 == ++v16)
      {
        v13 = [sectionInfo3 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:

    sectionInfo3 = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
    v10 = [sectionInfo3 count] - 1;
  }

  return v10;
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
  bookshelfLayout = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout collectionView];

  v10 = +[NSMutableArray array];
  if ([(BKLibraryBookshelfUserBooksGridLayout *)self hasSomeBooks])
  {
    numberOfSections = [collectionView numberOfSections];
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v11 = [(BKLibraryBookshelfUserBooksGridLayout *)self _sectionAtPos:CGRectGetMinY(v30)];
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v28 = [(BKLibraryBookshelfUserBooksGridLayout *)self _sectionAtPos:CGRectGetMaxY(v31)];
    if ((v11 & 0x8000000000000000) == 0 && (v28 & 0x8000000000000000) == 0 && v11 <= v28)
    {
      do
      {
        if (numberOfSections >= 2)
        {
          v12 = [NSIndexPath indexPathForItem:0 inSection:v11];
          v13 = [(BKLibraryBookshelfUserBooksGridLayout *)self layoutAttributesForSupplementaryViewOfKind:off_100ACEF50 atIndexPath:v12];
          [v10 addObject:v13];
        }

        sectionInfo = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
        v15 = [sectionInfo objectAtIndexedSubscript:v11];

        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        v16 = [(BKLibraryBookshelfUserBooksGridLayout *)self _rowAtPos:v15 inSection:CGRectGetMinY(v32)];
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        v17 = [(BKLibraryBookshelfUserBooksGridLayout *)self _rowAtPos:v15 inSection:CGRectGetMaxY(v33)];
        if (v16 <= v17)
        {
          v18 = v17;
          do
          {
            if ([(BKLibraryBookshelfUserBooksGridLayout *)self numColumns]>= 1)
            {
              v19 = 0;
              do
              {
                v20 = v19 + v16 * [(BKLibraryBookshelfUserBooksGridLayout *)self numColumns];
                if ((v20 & 0x8000000000000000) == 0 && v20 < [v15 numBooks])
                {
                  v21 = [NSIndexPath indexPathForItem:v20 inSection:v11];
                  v22 = [(BKLibraryBookshelfUserBooksGridLayout *)self layoutAttributesForItemAtIndexPath:v21];
                  [v22 frame];
                  v35.origin.x = x;
                  v35.origin.y = y;
                  v35.size.width = width;
                  v35.size.height = height;
                  if (CGRectIntersectsRect(v34, v35))
                  {
                    [v10 addObject:v22];
                  }
                }

                ++v19;
              }

              while (v19 < [(BKLibraryBookshelfUserBooksGridLayout *)self numColumns]);
            }

            v23 = v16++ == v18;
          }

          while (!v23);
        }

        v23 = v11++ == v28;
      }

      while (!v23);
    }
  }

  else
  {
    noBooksAttr = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];

    if (noBooksAttr)
    {
      noBooksAttr2 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
      [v10 addObject:noBooksAttr2];
    }
  }

  return v10;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  bookshelfLayout = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  cellMetrics = [bookshelfLayout cellMetrics];
  v7 = BUDynamicCast();

  bookshelfLayout2 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout2 collectionView];

  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v11 = [indexPathsForSelectedItems containsObject:pathCopy];

  bookshelfLayout3 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  editMode = [bookshelfLayout3 editMode];

  v14 = [BKLibraryLayoutAttributes layoutAttributesForCellWithIndexPath:pathCopy];
  [(BKLibraryBookshelfUserBooksGridLayout *)self _frameOfBookCellAtIndexPath:pathCopy];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v14 setFrame:{v16, v18, v20, v22}];
  [v14 setCellMetrics:v7];
  bookshelfLayout4 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  columnMetrics = [bookshelfLayout4 columnMetrics];
  [v14 setColumnMetrics:columnMetrics];

  [v14 setEditMode:editMode];
  if (editMode && !v11)
  {
    [v7 dimmedScale];
    v27 = v26;
    [v7 dimmedScale];
    CGAffineTransformMakeScale(&v32, v27, v28);
  }

  else
  {
    v25 = *&CGAffineTransformIdentity.c;
    *&v32.a = *&CGAffineTransformIdentity.a;
    *&v32.c = v25;
    *&v32.tx = *&CGAffineTransformIdentity.tx;
  }

  v31 = v32;
  [v14 setTransform:&v31];
  v29 = 1.0;
  if (!(v11 & 1 | ((editMode & 1) == 0)))
  {
    [v7 dimmedAlpha];
  }

  [v14 setAlpha:v29];

  return v14;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  bookshelfLayout = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  bookHeaderMetrics = [bookshelfLayout bookHeaderMetrics];

  if ([kindCopy isEqualToString:off_100ACEF50])
  {
    v10 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:kindCopy withIndexPath:pathCopy];
    bookshelfLayout2 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
    [v10 setRtlLayout:{objc_msgSend(bookshelfLayout2, "rtlLayout")}];

    [(BKLibraryBookshelfUserBooksGridLayout *)self _frameOfSectionHeaderAtIndexPath:pathCopy];
    [v10 setFrame:?];
    headerFontAttributes = [bookHeaderMetrics headerFontAttributes];
    attributes = [headerFontAttributes attributes];
    [v10 setFontAttrs:attributes];

    bookshelfLayout3 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
    columnMetrics = [bookshelfLayout3 columnMetrics];
    [v10 setColumnMetrics:columnMetrics];

    bookshelfLayout4 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
    mainHeaderMetrics = [bookshelfLayout4 mainHeaderMetrics];
    [v10 setMainHeaderMetrics:mainHeaderMetrics];

    [v10 setFirstItem:{objc_msgSend(pathCopy, "section") == 0}];
    [v10 setUseAllCaps:1];
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

@end