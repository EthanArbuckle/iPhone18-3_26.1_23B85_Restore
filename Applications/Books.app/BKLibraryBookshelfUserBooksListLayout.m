@interface BKLibraryBookshelfUserBooksListLayout
- (BKLibraryBookshelfLayout)bookshelfLayout;
- (BKLibraryBookshelfUserBooksListLayout)initWithLayout:(id)a3;
- (BOOL)isSupplementalContentPDFPicker;
- (CGRect)_frameOfBookCellAtIndexPath:(id)a3;
- (CGRect)_frameOfSectionHeaderAtIndexPath:(id)a3;
- (double)prepareLayoutForBooksSection:(double)a3;
- (id)layoutAttributesForBooksInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (int64_t)_rowAtPos:(double)a3 inSection:(id)a4;
- (int64_t)_sectionAtPos:(double)a3;
- (void)prepareLayoutForNoBooks;
- (void)prepareLayoutForUserCollectionBooksSection;
@end

@implementation BKLibraryBookshelfUserBooksListLayout

- (BKLibraryBookshelfUserBooksListLayout)initWithLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfUserBooksListLayout;
  v5 = [(BKLibraryBookshelfUserBooksListLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_bookshelfLayout, v4);
  }

  return v6;
}

- (BOOL)isSupplementalContentPDFPicker
{
  v2 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v3 = [v2 delegate];
  v4 = [v3 dataSourceAdaptor];
  v5 = [v4 supplementaryDataSource];
  v6 = [v5 supplementalContentPDFPicker];

  return v6;
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
  v12 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v13 = [v12 collectionView];
  [v13 bounds];
  v15 = v14 - v9;
  v16 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
  [v16 setFrame:{v7, v9, v11, v15}];

  v17 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v18 = [v17 mainHeaderMetrics];
  v19 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
  [v19 setMainHeaderMetrics:v18];

  v20 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v21 = [v20 metrics];
  v22 = [v21 compactWidth];
  v23 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
  [v23 setCompactLayout:v22];

  v24 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v25 = [v24 measuring];
  v26 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
  [v25 adjustHeight:v26];

  v27 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
  [v27 frame];
  [(BKLibraryBookshelfUserBooksListLayout *)self setTotalHeightOfBooksSection:CGRectGetMaxY(v29)];
}

- (double)prepareLayoutForBooksSection:(double)a3
{
  v5 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v6 = [v5 columnMetrics];

  v7 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v8 = [v7 collectionView];

  [v8 bounds];
  v10 = v9;
  [v8 safeAreaInsets];
  v13 = v10 - (v11 + v12);
  [v6 margins];
  v15 = v14;
  [(BKLibraryBookshelfUserBooksListLayout *)self setLayoutWidth:v13];
  [(BKLibraryBookshelfUserBooksListLayout *)self setLayoutLeftMargin:0.0];
  [(BKLibraryBookshelfUserBooksListLayout *)self setLayoutAreaLeftMargin:v15 + 0.0];
  [(BKLibraryBookshelfUserBooksListLayout *)self layoutWidth];
  v17 = v16;
  [v6 margins];
  [(BKLibraryBookshelfUserBooksListLayout *)self setLayoutAreaWidth:v17 + v18 * -2.0];
  [(BKLibraryBookshelfUserBooksListLayout *)self setBooksAreaTop:a3];
  [(BKLibraryBookshelfUserBooksListLayout *)self setTotalHeightOfBooksSection:a3];
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
  v3 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v4 = [v3 cellMetrics];
  v5 = BUProtocolCast();

  v6 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v7 = [v6 bookHeaderMetrics];

  v8 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v9 = [v8 collectionView];

  if ([(BKLibraryBookshelfUserBooksListLayout *)self isSupplementalContentPDFPicker])
  {
    [v5 smallCellHeight];
  }

  else
  {
    [v5 cellHeight];
  }

  v11 = v10;
  v12 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  if ([v12 collectionType] == 1)
  {
  }

  else
  {
    v13 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
    v14 = [v13 collectionType];

    if (v14 != 3)
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
  v20 = [v9 numberOfSections];
  v21 = +[NSMutableArray array];
  [(BKLibraryBookshelfUserBooksListLayout *)self setSectionInfo:v21];

  [(BKLibraryBookshelfUserBooksListLayout *)self booksAreaTop];
  v23 = v22;
  if (v20 >= 1)
  {
    for (j = 0; j != v20; ++j)
    {
      v25 = objc_alloc_init(BKLibraryListSectionInfo);
      v26 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
      [v26 addObject:v25];

      [(BKLibraryListSectionInfo *)v25 setVertOffset:v23];
      -[BKLibraryListSectionInfo setNumBooks:](v25, "setNumBooks:", [v9 numberOfItemsInSection:j]);
      [(BKLibraryListSectionInfo *)v25 setNumRows:[(BKLibraryListSectionInfo *)v25 numBooks]];
      [(BKLibraryListSectionInfo *)v25 setRowHeight:v11];
      v27 = 0.0;
      if (v20 >= 2)
      {
        [v7 sectionHeaderHeight];
      }

      [(BKLibraryListSectionInfo *)v25 setHeaderHeight:v27];
      v28 = [(BKLibraryListSectionInfo *)v25 numRows];
      [(BKLibraryListSectionInfo *)v25 rowHeight];
      v30 = v29;
      [(BKLibraryListSectionInfo *)v25 headerHeight];
      [(BKLibraryListSectionInfo *)v25 setHeight:v31 + v28 * v30];
      [(BKLibraryListSectionInfo *)v25 height];
      v33 = v32;
      [(BKLibraryBookshelfUserBooksListLayout *)self setTotalNumBooks:[(BKLibraryListSectionInfo *)v25 numBooks]+ [(BKLibraryBookshelfUserBooksListLayout *)self totalNumBooks]];
      v34 = [(BKLibraryBookshelfUserBooksListLayout *)self hasSomeBooks]|| [(BKLibraryListSectionInfo *)v25 numBooks]> 0;
      v23 = v23 + v33;
      [(BKLibraryBookshelfUserBooksListLayout *)self setHasSomeBooks:v34];
    }
  }

  [v7 bottomMargin];
  [(BKLibraryBookshelfUserBooksListLayout *)self setTotalHeightOfBooksSection:v23 + v35];
}

- (CGRect)_frameOfSectionHeaderAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
  v6 = [v4 section];

  v7 = [v5 objectAtIndexedSubscript:v6];

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

- (CGRect)_frameOfBookCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    v8 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
    v9 = [v8 objectAtIndex:{objc_msgSend(v4, "section")}];

    v10 = [v4 item];
    [v9 vertOffset];
    v12 = v11;
    [v9 headerHeight];
    v14 = v12 + v13;
    [v9 rowHeight];
    v16 = v14 + v10 * v15;
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

- (int64_t)_sectionAtPos:(double)a3
{
  v5 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
  if ([v5 count])
  {
    v6 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
    v7 = [v6 objectAtIndexedSubscript:0];
    [v7 vertOffset];
    v9 = v8;

    v10 = 0;
    if (v9 > a3)
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
  v11 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v23 + 1) + 8 * v16);
      [v17 vertOffset];
      if (v18 <= a3)
      {
        [v17 vertOffset];
        v20 = v19;
        [v17 height];
        if (v20 + v21 > a3)
        {
          break;
        }
      }

      ++v10;
      if (v13 == ++v16)
      {
        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

    v11 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
    v10 = [v11 count] - 1;
  }

  return v10;
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
  v8 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v9 = [v8 collectionView];

  v10 = +[NSMutableArray array];
  if ([(BKLibraryBookshelfUserBooksListLayout *)self hasSomeBooks])
  {
    v28 = [v9 numberOfSections];
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
          if (v28 >= 2)
          {
            v14 = [NSIndexPath indexPathForItem:0 inSection:v11];
            v15 = [(BKLibraryBookshelfUserBooksListLayout *)self layoutAttributesForSupplementaryViewOfKind:off_100ACEF50 atIndexPath:v14];
            [v10 addObject:v15];
          }

          v16 = [(BKLibraryBookshelfUserBooksListLayout *)self sectionInfo];
          v17 = [v16 objectAtIndexedSubscript:v11];

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
    v24 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];

    if (v24)
    {
      v25 = [(BKLibraryBookshelfUserBooksListLayout *)self noBooksAttr];
      [v10 addObject:v25];
    }
  }

  return v10;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfUserBooksListLayout *)self totalNumBooks]- 1;
  v6 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v7 = [v6 cellMetrics];
  v8 = BUProtocolCast();

  v9 = [BKLibraryLayoutAttributes layoutAttributesForCellWithIndexPath:v4];
  [(BKLibraryBookshelfUserBooksListLayout *)self _frameOfBookCellAtIndexPath:v4];
  [v9 setFrame:?];
  [v9 setCellMetrics:v8];
  v10 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v11 = [v10 columnMetrics];
  [v9 setColumnMetrics:v11];

  v12 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  [v9 setEditMode:{objc_msgSend(v12, "editMode")}];

  [v9 setFirstItem:{objc_msgSend(v4, "item") == 0}];
  v13 = [v4 item];

  [v9 setLastItem:v13 == v5];
  v14 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  [v9 setEditable:{objc_msgSend(v14, "reorderableCollection")}];

  return v9;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
  v9 = [v8 bookHeaderMetrics];

  if ([v6 isEqualToString:off_100ACEF50])
  {
    v10 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v6 withIndexPath:v7];
    v11 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
    [v10 setRtlLayout:{objc_msgSend(v11, "rtlLayout")}];

    [(BKLibraryBookshelfUserBooksListLayout *)self _frameOfSectionHeaderAtIndexPath:v7];
    [v10 setFrame:?];
    v12 = [v9 headerFontAttributes];
    v13 = [v12 attributes];
    [v10 setFontAttrs:v13];

    v14 = [(BKLibraryBookshelfUserBooksListLayout *)self bookshelfLayout];
    v15 = [v14 columnMetrics];
    [v10 setColumnMetrics:v15];

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