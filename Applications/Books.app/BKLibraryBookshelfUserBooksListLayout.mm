@interface BKLibraryBookshelfUserBooksListLayout
- (BKLibraryBookshelfLayout)bookshelfLayout;
- (BKLibraryBookshelfUserBooksListLayout)initWithLayout:(id)layout;
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

@implementation BKLibraryBookshelfUserBooksListLayout

- (BKLibraryBookshelfUserBooksListLayout)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfUserBooksListLayout;
  v5 = [(BKLibraryBookshelfUserBooksListLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_bookshelfLayout, layoutCopy);
  }

  return v6;
}

- (BOOL)isSupplementalContentPDFPicker
{
  bookshelfLayout = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  delegate = [bookshelfLayout delegate];
  dataSourceAdaptor = [delegate dataSourceAdaptor];
  supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
  supplementalContentPDFPicker = [supplementaryDataSource supplementalContentPDFPicker];

  return supplementalContentPDFPicker;
}

- (void)prepareLayoutForNoBooks
{
  v3 = off_100ACEF48;
  v4 = [NSIndexPath indexPathWithIndex:0];
  v5 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v3 withIndexPath:v4];
  [(BKLibraryBookshelfUserBooksListLayout *)self setNoBooksAttr:v5];

  [(BKLibraryBookshelfUserBooksListLayout *)self layoutAreaLeftMargin];
  v7 = v6;
  [(BKLibraryBookshelfUserBooksListLayout *)self booksAreaTop];
  v9 = v8;
  [(BKLibraryBookshelfUserBooksListLayout *)self layoutAreaWidth];
  v11 = v10;
  bookshelfLayout = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout collectionView];
  [collectionView bounds];
  v15 = v14 - v9;
  noBooksAttr = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
  [noBooksAttr setFrame:{v7, v9, v11, v15}];

  bookshelfLayout2 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  mainHeaderMetrics = [bookshelfLayout2 mainHeaderMetrics];
  noBooksAttr2 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
  [noBooksAttr2 setMainHeaderMetrics:mainHeaderMetrics];

  bookshelfLayout3 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  metrics = [bookshelfLayout3 metrics];
  compactWidth = [metrics compactWidth];
  noBooksAttr3 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
  [noBooksAttr3 setCompactLayout:compactWidth];

  bookshelfLayout4 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  measuring = [bookshelfLayout4 measuring];
  noBooksAttr4 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
  [measuring adjustHeight:noBooksAttr4];

  noBooksAttr5 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
  [noBooksAttr5 frame];
  [(BKLibraryBookshelfUserBooksListLayout *)self setTotalHeightOfBooksSection:CGRectGetMaxY(v29)];
}

- (double)prepareLayoutForBooksSection:(double)section
{
  bookshelfLayout = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  columnMetrics = [bookshelfLayout columnMetrics];

  bookshelfLayout2 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout2 collectionView];

  [collectionView bounds];
  v10 = v9;
  [collectionView safeAreaInsets];
  v13 = v10 - (v11 + v12);
  [columnMetrics margins];
  v15 = v14;
  [(BKLibraryBookshelfUserBooksListLayout *)self setLayoutWidth:v13];
  [(BKLibraryBookshelfUserBooksListLayout *)self setLayoutLeftMargin:0.0];
  [(BKLibraryBookshelfUserBooksListLayout *)self setLayoutAreaLeftMargin:v15 + 0.0];
  [(BKLibraryBookshelfUserBooksListLayout *)self layoutWidth];
  v17 = v16;
  [columnMetrics margins];
  [(BKLibraryBookshelfUserBooksListLayout *)self setLayoutAreaWidth:v17 + v18 * -2.0];
  [(BKLibraryBookshelfUserBooksListLayout *)self setBooksAreaTop:section];
  [(BKLibraryBookshelfUserBooksListLayout *)self setTotalHeightOfBooksSection:section];
  [(BKLibraryBookshelfUserBooksListLayout *)self prepareLayoutForUserCollectionBooksSection];
  if ([(BKLibraryBookshelfUserBooksListLayout *)self hasSomeBooks])
  {
    [(BKLibraryBookshelfUserBooksListLayout *)self setNoBooksAttr:0];
  }

  else
  {
    [(BKLibraryBookshelfUserBooksListLayout *)self prepareLayoutForNoBooks];
  }

  [(BKLibraryBookshelfUserBooksListLayout *)self totalHeightOfBooksSection];
  v20 = v19;

  return v20;
}

- (void)prepareLayoutForUserCollectionBooksSection
{
  bookshelfLayout = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  cellMetrics = [bookshelfLayout cellMetrics];
  v5 = BUProtocolCast();

  bookshelfLayout2 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  bookHeaderMetrics = [bookshelfLayout2 bookHeaderMetrics];

  bookshelfLayout3 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout3 collectionView];

  if ([(BKLibraryBookshelfUserBooksListLayout *)self isSupplementalContentPDFPicker])
  {
    [v5 smallCellHeight];
  }

  else
  {
    [v5 cellHeight];
  }

  v11 = v10;
  bookshelfLayout4 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  if ([bookshelfLayout4 collectionType] == 1)
  {
  }

  else
  {
    bookshelfLayout5 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
    collectionType = [bookshelfLayout5 collectionType];

    if (collectionType != 3)
    {
      goto LABEL_18;
    }
  }

  +[NSLocale preferredLanguages];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = v39 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if ([*(*(&v36 + 1) + 8 * i) hasPrefix:{@"ur-", v36}])
        {
          v11 = v11 * 1.15;
          goto LABEL_17;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

LABEL_18:
  [(BKLibraryBookshelfUserBooksListLayout *)self setHasSomeBooks:0, v36];
  [(BKLibraryBookshelfUserBooksListLayout *)self setTotalNumBooks:0];
  numberOfSections = [collectionView numberOfSections];
  v21 = +[NSMutableArray array];
  [(BKLibraryBookshelfUserBooksListLayout *)self setSectionInfo:v21];

  [(BKLibraryBookshelfUserBooksListLayout *)self booksAreaTop];
  v23 = v22;
  if (numberOfSections >= 1)
  {
    for (j = 0; j != numberOfSections; ++j)
    {
      v25 = objc_alloc_init(BKLibraryListSectionInfo);
      sectionInfo = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
      [sectionInfo addObject:v25];

      [(BKLibraryListSectionInfo *)v25 setVertOffset:v23];
      -[BKLibraryListSectionInfo setNumBooks:](v25, "setNumBooks:", [collectionView numberOfItemsInSection:j]);
      [(BKLibraryListSectionInfo *)v25 setNumRows:[(BKLibraryListSectionInfo *)v25 numBooks]];
      [(BKLibraryListSectionInfo *)v25 setRowHeight:v11];
      v27 = 0.0;
      if (numberOfSections >= 2)
      {
        [bookHeaderMetrics sectionHeaderHeight];
      }

      [(BKLibraryListSectionInfo *)v25 setHeaderHeight:v27];
      numRows = [(BKLibraryListSectionInfo *)v25 numRows];
      [(BKLibraryListSectionInfo *)v25 rowHeight];
      v30 = v29;
      [(BKLibraryListSectionInfo *)v25 headerHeight];
      [(BKLibraryListSectionInfo *)v25 setHeight:v31 + numRows * v30];
      [(BKLibraryListSectionInfo *)v25 height];
      v33 = v32;
      [(BKLibraryBookshelfUserBooksListLayout *)self setTotalNumBooks:[(BKLibraryListSectionInfo *)v25 numBooks]+ [(BKLibraryBookshelfUserBooksListLayout *)self totalNumBooks]];
      v34 = [(BKLibraryBookshelfUserBooksListLayout *)self hasSomeBooks]|| [(BKLibraryListSectionInfo *)v25 numBooks]> 0;
      v23 = v23 + v33;
      [(BKLibraryBookshelfUserBooksListLayout *)self setHasSomeBooks:v34];
    }
  }

  [bookHeaderMetrics bottomMargin];
  [(BKLibraryBookshelfUserBooksListLayout *)self setTotalHeightOfBooksSection:v23 + v35];
}

- (CGRect)_frameOfSectionHeaderAtIndexPath:(id)path
{
  pathCopy = path;
  sectionInfo = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
  section = [pathCopy section];

  v7 = [sectionInfo objectAtIndexedSubscript:section];

  [v7 vertOffset];
  v9 = v8;
  [v7 headerHeight];
  v11 = v10;
  [(BKLibraryBookshelfUserBooksListLayout *)self layoutWidth];
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
  section = [pathCopy section];
  sectionInfo = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
  v7 = [sectionInfo count];

  if (section >= v7)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    sectionInfo2 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
    v9 = [sectionInfo2 objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    item = [pathCopy item];
    [v9 vertOffset];
    v12 = v11;
    [v9 headerHeight];
    v14 = v12 + v13;
    [v9 rowHeight];
    v16 = v14 + item * v15;
    [(BKLibraryBookshelfUserBooksListLayout *)self layoutLeftMargin];
    x = v17;
    y = round(v16);
    [(BKLibraryBookshelfUserBooksListLayout *)self layoutWidth];
    width = v20;
    [v9 rowHeight];
    height = v22;
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (int64_t)_sectionAtPos:(double)pos
{
  sectionInfo = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
  if ([sectionInfo count])
  {
    sectionInfo2 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
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
  sectionInfo3 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
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

    sectionInfo3 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
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
  bookshelfLayout = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  collectionView = [bookshelfLayout collectionView];

  v10 = +[NSMutableArray array];
  if ([(BKLibraryBookshelfUserBooksListLayout *)self hasSomeBooks])
  {
    numberOfSections = [collectionView numberOfSections];
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v11 = [(BKLibraryBookshelfUserBooksListLayout *)self _sectionAtPos:CGRectGetMinY(v30)];
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v12 = [(BKLibraryBookshelfUserBooksListLayout *)self _sectionAtPos:CGRectGetMaxY(v31)];
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v12;
      if ((v12 & 0x8000000000000000) == 0 && v11 <= v12)
      {
        do
        {
          if (numberOfSections >= 2)
          {
            v14 = [NSIndexPath indexPathForItem:0 inSection:v11];
            v15 = [(BKLibraryBookshelfUserBooksListLayout *)self layoutAttributesForSupplementaryViewOfKind:off_100ACEF50 atIndexPath:v14];
            [v10 addObject:v15];
          }

          sectionInfo = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
          v17 = [sectionInfo objectAtIndexedSubscript:v11];

          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v18 = [(BKLibraryBookshelfUserBooksListLayout *)self _rowAtPos:v17 inSection:CGRectGetMinY(v32)];
          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.width = width;
          v33.size.height = height;
          v19 = [(BKLibraryBookshelfUserBooksListLayout *)self _rowAtPos:v17 inSection:CGRectGetMaxY(v33)];
          if (v18 <= v19)
          {
            v20 = v19 + 1;
            do
            {
              if ((v18 & 0x8000000000000000) == 0 && v18 < [v17 numBooks])
              {
                v21 = [NSIndexPath indexPathForItem:v18 inSection:v11];
                v22 = [(BKLibraryBookshelfUserBooksListLayout *)self layoutAttributesForItemAtIndexPath:v21];
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

              ++v18;
            }

            while (v20 != v18);
          }
        }

        while (v11++ != v13);
      }
    }
  }

  else
  {
    noBooksAttr = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];

    if (noBooksAttr)
    {
      noBooksAttr2 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
      [v10 addObject:noBooksAttr2];
    }
  }

  return v10;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(BKLibraryBookshelfUserBooksListLayout *)self totalNumBooks]- 1;
  bookshelfLayout = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  cellMetrics = [bookshelfLayout cellMetrics];
  v8 = BUProtocolCast();

  v9 = [BKLibraryLayoutAttributes layoutAttributesForCellWithIndexPath:pathCopy];
  [(BKLibraryBookshelfUserBooksListLayout *)self _frameOfBookCellAtIndexPath:pathCopy];
  [v9 setFrame:?];
  [v9 setCellMetrics:v8];
  bookshelfLayout2 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  columnMetrics = [bookshelfLayout2 columnMetrics];
  [v9 setColumnMetrics:columnMetrics];

  bookshelfLayout3 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  [v9 setEditMode:{objc_msgSend(bookshelfLayout3, "editMode")}];

  [v9 setFirstItem:{objc_msgSend(pathCopy, "item") == 0}];
  item = [pathCopy item];

  [v9 setLastItem:item == v5];
  bookshelfLayout4 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  [v9 setEditable:{objc_msgSend(bookshelfLayout4, "reorderableCollection")}];

  return v9;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  bookshelfLayout = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  bookHeaderMetrics = [bookshelfLayout bookHeaderMetrics];

  if ([kindCopy isEqualToString:off_100ACEF50])
  {
    v10 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:kindCopy withIndexPath:pathCopy];
    bookshelfLayout2 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
    [v10 setRtlLayout:{objc_msgSend(bookshelfLayout2, "rtlLayout")}];

    [(BKLibraryBookshelfUserBooksListLayout *)self _frameOfSectionHeaderAtIndexPath:pathCopy];
    [v10 setFrame:?];
    headerFontAttributes = [bookHeaderMetrics headerFontAttributes];
    attributes = [headerFontAttributes attributes];
    [v10 setFontAttrs:attributes];

    bookshelfLayout3 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
    columnMetrics = [bookshelfLayout3 columnMetrics];
    [v10 setColumnMetrics:columnMetrics];

    [v10 setMainHeaderMetrics:0];
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