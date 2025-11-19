@interface BKLibraryBookshelfUserBooksGridLayout
- (BKLibraryBookshelfLayout)bookshelfLayout;
- (BKLibraryBookshelfUserBooksGridLayout)initWithLayout:(id)a3;
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

@implementation BKLibraryBookshelfUserBooksGridLayout

- (BKLibraryBookshelfUserBooksGridLayout)initWithLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfUserBooksGridLayout;
  v5 = [(BKLibraryBookshelfUserBooksGridLayout *)&v8 init];
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
  [(BKLibraryBookshelfUserBooksGridLayout *)self setNoBooksAttr:v5];

  [(BKLibraryBookshelfUserBooksGridLayout *)self layoutAreaLeftMargin];
  v7 = v6;
  [(BKLibraryBookshelfUserBooksGridLayout *)self booksAreaTop];
  v9 = v8;
  [(BKLibraryBookshelfUserBooksGridLayout *)self layoutAreaWidth];
  v11 = v10;
  v12 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v13 = [v12 collectionView];
  [v13 bounds];
  v15 = v14 - v9;
  v16 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
  [v16 setFrame:{v7, v9, v11, v15}];

  v17 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v18 = [v17 mainHeaderMetrics];
  v19 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
  [v19 setMainHeaderMetrics:v18];

  v20 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v21 = [v20 metrics];
  v22 = [v21 compactWidth];
  v23 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
  [v23 setCompactLayout:v22];

  v24 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v25 = [v24 measuring];
  v26 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
  [v25 adjustHeight:v26];

  v27 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
  [v27 frame];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setTotalHeightOfBooksSection:CGRectGetMaxY(v29)];
}

- (BOOL)isSupplementalContentPDFPicker
{
  v2 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v3 = [v2 delegate];
  v4 = [v3 dataSourceAdaptor];
  v5 = [v4 supplementaryDataSource];
  v6 = [v5 supplementalContentPDFPicker];

  return v6;
}

- (double)prepareLayoutForBooksSection:(double)a3
{
  v5 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v6 = [v5 columnMetrics];

  v7 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v8 = [v7 collectionView];

  [v8 bounds];
  v10 = v9;
  [v8 safeAreaInsets];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setLayoutWidth:v10 - (v11 + v12)];
  if ([(BKLibraryBookshelfUserBooksGridLayout *)self isSupplementalContentPDFPicker])
  {
    [v6 smallMargins];
  }

  else
  {
    [v6 margins];
  }

  [(BKLibraryBookshelfUserBooksGridLayout *)self setMargins:?];
  [(BKLibraryBookshelfUserBooksGridLayout *)self layoutWidth];
  v14 = v13;
  [v6 maxWidth];
  if (v14 > v15)
  {
    [(BKLibraryBookshelfUserBooksGridLayout *)self layoutWidth];
    v17 = v16;
    [v6 maxWidth];
    v19 = (v17 - v18) * 0.5;
    [(BKLibraryBookshelfUserBooksGridLayout *)self margins];
    [(BKLibraryBookshelfUserBooksGridLayout *)self setMargins:v20 + v19];
  }

  if ([(BKLibraryBookshelfUserBooksGridLayout *)self isSupplementalContentPDFPicker])
  {
    [v6 smallGutter];
  }

  else
  {
    [v6 gutter];
  }

  [(BKLibraryBookshelfUserBooksGridLayout *)self setGutter:?];
  [v6 vertical];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setVertical:?];
  v21 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  -[BKLibraryBookshelfUserBooksGridLayout setHideInfoBar:](self, "setHideInfoBar:", [v21 editMode]);

  [(BKLibraryBookshelfUserBooksGridLayout *)self margins];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setLayoutAreaLeftMargin:?];
  [(BKLibraryBookshelfUserBooksGridLayout *)self layoutWidth];
  v23 = v22;
  [(BKLibraryBookshelfUserBooksGridLayout *)self margins];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setLayoutAreaWidth:v23 + v24 * -2.0];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setBooksAreaTop:a3];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setTotalHeightOfBooksSection:a3];
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
  v3 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v57 = [v3 columnMetrics];

  objc_opt_class();
  v4 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v5 = [v4 cellMetrics];
  v6 = BUDynamicCast();

  v7 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v8 = [v7 bookHeaderMetrics];

  v9 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v10 = [v9 collectionView];

  if ([(BKLibraryBookshelfUserBooksGridLayout *)self isSupplementalContentPDFPicker])
  {
    v11 = [v57 smallColumns];
  }

  else
  {
    [(BKLibraryBookshelfUserBooksGridLayout *)self layoutWidth];
    v11 = [v57 columnsForContainingWidth:?];
  }

  [(BKLibraryBookshelfUserBooksGridLayout *)self setNumColumns:v11];
  v12 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v13 = [v12 hasSeriesSequenceLabel];

  if (v13)
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
  v30 = [(BKLibraryBookshelfUserBooksGridLayout *)self numColumns];
  [(BKLibraryBookshelfUserBooksGridLayout *)self gutter];
  v32 = v31;
  [(BKLibraryBookshelfUserBooksGridLayout *)self vertical];
  v34 = v33;
  [(BKLibraryBookshelfUserBooksGridLayout *)self setHasSomeBooks:0];
  v35 = [v10 numberOfSections];
  v36 = +[NSMutableArray array];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setSectionInfo:v36];

  [(BKLibraryBookshelfUserBooksGridLayout *)self booksAreaTop];
  v38 = v37;
  if (v35 >= 1)
  {
    v39 = 0;
    v40 = v34 + v20 + v56 + round(v23 * (round((v25 + v27 * -2.0 + v29) / v30) - v32));
    while (1)
    {
      v41 = objc_alloc_init(BKLibrarySectionInfo);
      v42 = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
      [v42 addObject:v41];

      [(BKLibrarySectionInfo *)v41 setVertOffset:v38];
      -[BKLibrarySectionInfo setNumBooks:](v41, "setNumBooks:", [v10 numberOfItemsInSection:v39]);
      [(BKLibrarySectionInfo *)v41 setNumRows:vcvtpd_s64_f64([(BKLibrarySectionInfo *)v41 numBooks]/ [(BKLibraryBookshelfUserBooksGridLayout *)self numColumns])];
      if ([v6 sectionItemRowLimit])
      {
        if (v35 >= 2)
        {
          break;
        }
      }

      [(BKLibrarySectionInfo *)v41 setRowHeight:v40];
      v46 = 0.0;
      if (v35 >= 2)
      {
        goto LABEL_18;
      }

LABEL_19:
      [(BKLibrarySectionInfo *)v41 setHeaderHeight:v46];
      v47 = [(BKLibrarySectionInfo *)v41 numRows];
      [(BKLibrarySectionInfo *)v41 rowHeight];
      v49 = v48;
      [(BKLibrarySectionInfo *)v41 headerHeight];
      [(BKLibrarySectionInfo *)v41 setHeight:v50 + v47 * v49];
      [(BKLibrarySectionInfo *)v41 height];
      v52 = v51;
      v53 = [(BKLibraryBookshelfUserBooksGridLayout *)self hasSomeBooks]|| [(BKLibrarySectionInfo *)v41 numBooks]> 0;
      v38 = v38 + v52;
      [(BKLibraryBookshelfUserBooksGridLayout *)self setHasSomeBooks:v53];

      if (v35 == ++v39)
      {
        goto LABEL_23;
      }
    }

    v43 = [(BKLibrarySectionInfo *)v41 numRows];
    v44 = [v6 sectionItemRowLimit];
    if (v43 >= v44)
    {
      v45 = v44;
    }

    else
    {
      v45 = v43;
    }

    [(BKLibrarySectionInfo *)v41 setNumRows:v45];
    [(BKLibrarySectionInfo *)v41 setRowHeight:v40];
LABEL_18:
    [v8 sectionHeaderHeight];
    goto LABEL_19;
  }

LABEL_23:
  [v8 bottomMargin];
  [(BKLibraryBookshelfUserBooksGridLayout *)self setTotalHeightOfBooksSection:v38 + v54];
}

- (CGRect)_frameOfSectionHeaderAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
  v6 = [v4 section];

  v7 = [v5 objectAtIndexedSubscript:v6];

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

- (CGRect)_frameOfBookCellAtIndexPath:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v6 = [v5 cellMetrics];
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

  v8 = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
  v9 = [v8 objectAtIndex:{objc_msgSend(v4, "section")}];

  v10 = [(BKLibraryBookshelfUserBooksGridLayout *)self numColumns];
  v11 = [v4 item];
  v12 = [v4 item];

  v13 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v14 = [v13 rtlLayout];

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
  v33 = [(BKLibraryBookshelfUserBooksGridLayout *)self hideInfoBar];
  v34 = 0.0;
  if ((v33 & 1) == 0)
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

  v44 = v12 % v10;
  if (v14)
  {
    v44 = v10 + ~(v12 % v10);
  }

  v45 = round((v22 + v24 * -2.0 + v55) / v10);
  v46 = round(v32 + v45 * v44);
  v47 = round(v16 + v18 + (v11 / v10) * v20);
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

- (int64_t)_sectionAtPos:(double)a3
{
  v5 = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
  if ([v5 count])
  {
    v6 = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
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
  v11 = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
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

    v11 = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
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
  v8 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v9 = [v8 collectionView];

  v10 = +[NSMutableArray array];
  if ([(BKLibraryBookshelfUserBooksGridLayout *)self hasSomeBooks])
  {
    v27 = [v9 numberOfSections];
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
        if (v27 >= 2)
        {
          v12 = [NSIndexPath indexPathForItem:0 inSection:v11];
          v13 = [(BKLibraryBookshelfUserBooksGridLayout *)self layoutAttributesForSupplementaryViewOfKind:off_100ACEF50 atIndexPath:v12];
          [v10 addObject:v13];
        }

        v14 = [(BKLibraryBookshelfUserBooksGridLayout *)self sectionInfo];
        v15 = [v14 objectAtIndexedSubscript:v11];

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
    v24 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];

    if (v24)
    {
      v25 = [(BKLibraryBookshelfUserBooksGridLayout *)self noBooksAttr];
      [v10 addObject:v25];
    }
  }

  return v10;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v6 = [v5 cellMetrics];
  v7 = BUDynamicCast();

  v8 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v9 = [v8 collectionView];

  v10 = [v9 indexPathsForSelectedItems];
  v11 = [v10 containsObject:v4];

  v12 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v13 = [v12 editMode];

  v14 = [BKLibraryLayoutAttributes layoutAttributesForCellWithIndexPath:v4];
  [(BKLibraryBookshelfUserBooksGridLayout *)self _frameOfBookCellAtIndexPath:v4];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v14 setFrame:{v16, v18, v20, v22}];
  [v14 setCellMetrics:v7];
  v23 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v24 = [v23 columnMetrics];
  [v14 setColumnMetrics:v24];

  [v14 setEditMode:v13];
  if (v13 && !v11)
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
  if (!(v11 & 1 | ((v13 & 1) == 0)))
  {
    [v7 dimmedAlpha];
  }

  [v14 setAlpha:v29];

  return v14;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
  v9 = [v8 bookHeaderMetrics];

  if ([v6 isEqualToString:off_100ACEF50])
  {
    v10 = [BKLibraryLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v6 withIndexPath:v7];
    v11 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
    [v10 setRtlLayout:{objc_msgSend(v11, "rtlLayout")}];

    [(BKLibraryBookshelfUserBooksGridLayout *)self _frameOfSectionHeaderAtIndexPath:v7];
    [v10 setFrame:?];
    v12 = [v9 headerFontAttributes];
    v13 = [v12 attributes];
    [v10 setFontAttrs:v13];

    v14 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
    v15 = [v14 columnMetrics];
    [v10 setColumnMetrics:v15];

    v16 = [(BKLibraryBookshelfUserBooksGridLayout *)self bookshelfLayout];
    v17 = [v16 mainHeaderMetrics];
    [v10 setMainHeaderMetrics:v17];

    [v10 setFirstItem:{objc_msgSend(v7, "section") == 0}];
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