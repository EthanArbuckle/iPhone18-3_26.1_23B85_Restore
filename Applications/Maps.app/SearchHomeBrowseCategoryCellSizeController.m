@interface SearchHomeBrowseCategoryCellSizeController
- (BOOL)isEqual:(id)a3;
- (CGSize)imageSize;
- (SearchHomeBrowseCategoryCellSizeController)initWithStrings:(id)a3 traitCollection:(id)a4 availableWidth:(double)a5 wantsOneColumnLayout:(BOOL)a6 isSearchAlongRoute:(BOOL)a7 supportsFullTextSearch:(BOOL)a8;
- (double)imageToLabelPaddingWithContentSizeCategory:(id)a3;
- (double)labelTopAndBottomPaddingWithContentSizeCategory:(id)a3;
- (double)longestLabelWidthWithStrings:(id)a3 titleLabelFont:(id)a4 imageToLabelPadding:(double)a5 imageSize:(CGSize)a6;
- (double)singleColumnLeadingPadding;
- (id)columnWidthsWithTraitCollection:(id)a3 strings:(id)a4 availableWidth:(double)a5 numberOfColumns:(unint64_t)a6;
- (id)stringsInColumnAtIndex:(unint64_t)a3 withStrings:(id)a4;
- (id)titleLabelFontWithTraitCollection:(id)a3;
- (unint64_t)hash;
- (unint64_t)numberOfColumnWithContentSizeCategory:(id)a3 numberOfItems:(unint64_t)a4;
- (unint64_t)numberOfColumns;
@end

@implementation SearchHomeBrowseCategoryCellSizeController

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)longestLabelWidthWithStrings:(id)a3 titleLabelFont:(id)a4 imageToLabelPadding:(double)a5 imageSize:(CGSize)a6
{
  width = a6.width;
  v9 = a3;
  v10 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    v14 = width + a5;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v26 = NSFontAttributeName;
        v27 = v10;
        v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [v17 sizeWithAttributes:v18];
        v20 = ceil(v19);

        v15 = fmax(v15, v14 + v20);
      }

      v12 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v12);
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

- (id)stringsInColumnAtIndex:(unint64_t)a3 withStrings:(id)a4
{
  v6 = a4;
  v7 = [[NSMutableArray alloc] initWithCapacity:{-[SearchHomeBrowseCategoryCellSizeController numberOfRows](self, "numberOfRows")}];
  v8 = [(SearchHomeBrowseCategoryCellSizeController *)self numberOfRows]* a3;
  if (v8 < [(SearchHomeBrowseCategoryCellSizeController *)self numberOfRows]+ v8)
  {
    v9 = v8;
    do
    {
      if (v9 < [v6 count])
      {
        v10 = [v6 objectAtIndex:v9];
        [v7 addObject:v10];
      }

      ++v9;
    }

    while (v9 < [(SearchHomeBrowseCategoryCellSizeController *)self numberOfRows]+ v8);
  }

  v11 = [v7 copy];

  return v11;
}

- (id)columnWidthsWithTraitCollection:(id)a3 strings:(id)a4 availableWidth:(double)a5 numberOfColumns:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [[NSMutableArray alloc] initWithCapacity:{-[SearchHomeBrowseCategoryCellSizeController numberOfColumns](self, "numberOfColumns")}];
  v13 = [(SearchHomeBrowseCategoryCellSizeController *)self effectiveTraitCollectionWithTraitCollection:v10];
  [UIFont _maps_bodyScaledValueForValue:v13 compatibleWithTraitCollection:166.0];
  v15 = v14;

  if (a6)
  {
    v16 = 0;
    v17 = a5 * 0.9;
    do
    {
      v18 = [(SearchHomeBrowseCategoryCellSizeController *)self stringsInColumnAtIndex:v16 withStrings:v11];
      v19 = [v18 copy];
      v20 = [(SearchHomeBrowseCategoryCellSizeController *)self titleLabelFont];
      [(SearchHomeBrowseCategoryCellSizeController *)self imageToLabelPadding];
      v22 = v21;
      [(SearchHomeBrowseCategoryCellSizeController *)self imageSize];
      [(SearchHomeBrowseCategoryCellSizeController *)self longestLabelWidthWithStrings:v19 titleLabelFont:v20 imageToLabelPadding:v22 imageSize:v23, v24];
      v26 = v25;

      v27 = [NSNumber numberWithDouble:fmin(fmax(v15, v26), v17)];
      [v12 addObject:v27];

      ++v16;
    }

    while (a6 != v16);
  }

  v28 = [v12 copy];

  return v28;
}

- (unint64_t)numberOfColumnWithContentSizeCategory:(id)a3 numberOfItems:(unint64_t)a4
{
  v6 = a3;
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 5)
  {
    goto LABEL_5;
  }

  if (qword_10195EFC8 != -1)
  {
    dispatch_once(&qword_10195EFC8, &stru_101651060);
  }

  if ([qword_10195EFC0 containsObject:v6])
  {
LABEL_5:
    v9 = 1;
    goto LABEL_10;
  }

  v10 = +[MapsOfflineUIHelper sharedHelper];
  if (![v10 isUsingOfflineMaps] || self->_searchAlongRoute)
  {

LABEL_9:
    v9 = a4 - (a4 >> 1);
    goto LABEL_10;
  }

  supportsFullTextSearch = self->_supportsFullTextSearch;

  if (supportsFullTextSearch)
  {
    goto LABEL_9;
  }

  if (a4 % 5)
  {
    v9 = a4 / 5 + 1;
  }

  else
  {
    v9 = a4 / 5;
  }

LABEL_10:

  return v9;
}

- (id)titleLabelFontWithTraitCollection:(id)a3
{
  v3 = [(SearchHomeBrowseCategoryCellSizeController *)self effectiveTraitCollectionWithTraitCollection:a3];
  v4 = [UIFont system17CompatibleWithTraitCollection:v3];

  return v4;
}

- (double)labelTopAndBottomPaddingWithContentSizeCategory:(id)a3
{
  v3 = qword_10195EFB8;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195EFB8, &stru_101651040);
  }

  v5 = [qword_10195EFB0 containsObject:v4];

  result = 10.0;
  if (v5)
  {
    return 12.0;
  }

  return result;
}

- (double)imageToLabelPaddingWithContentSizeCategory:(id)a3
{
  v3 = qword_10195EFA8;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195EFA8, &stru_101651020);
  }

  v5 = [qword_10195EFA0 containsObject:v4];

  result = 12.0;
  if (v5)
  {
    return 8.0;
  }

  return result;
}

- (double)singleColumnLeadingPadding
{
  v2 = +[UIDevice currentDevice];
  [v2 userInterfaceIdiom];

  return 16.0;
}

- (unint64_t)numberOfColumns
{
  v2 = [(SearchHomeBrowseCategoryCellSizeController *)self columnWidths];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)hash
{
  [(SearchHomeBrowseCategoryCellSizeController *)self imageToLabelPadding];
  *&v3 = v3;
  *&v3 = fabsf(*&v3);
  v4 = floorf(*&v3 + 0.5);
  v5 = (*&v3 - v4) * 1.8447e19;
  v6 = v4 - (truncf(v4 * 5.421e-20) * 1.8447e19);
  v7 = 2654435761u * v6;
  v8 = v7 + v5;
  if (v5 <= 0.0)
  {
    v8 = 2654435761u * v6;
  }

  v9 = v7 - fabsf(v5);
  if (v5 >= 0.0)
  {
    v9 = v8;
  }

  v58 = v9;
  [(SearchHomeBrowseCategoryCellSizeController *)self imageLeadingPadding];
  *&v10 = v10;
  *&v10 = fabsf(*&v10);
  v11 = floorf(*&v10 + 0.5);
  v12 = (*&v10 - v11) * 1.8447e19;
  v13 = v11 - (truncf(v11 * 5.421e-20) * 1.8447e19);
  v14 = 2654435761u * v13;
  v15 = v14 + v12;
  if (v12 <= 0.0)
  {
    v15 = 2654435761u * v13;
  }

  v16 = v14 - fabsf(v12);
  if (v12 >= 0.0)
  {
    v16 = v15;
  }

  [(SearchHomeBrowseCategoryCellSizeController *)self imageSize];
  v18 = v17;
  v19 = fabsf(v18);
  *&v17 = floorf(v19 + 0.5);
  v20 = (v19 - *&v17) * 1.8447e19;
  v21 = *&v17 - (truncf(*&v17 * 5.421e-20) * 1.8447e19);
  v22 = 2654435761u * v21;
  v23 = v22 + v20;
  if (v20 <= 0.0)
  {
    v23 = 2654435761u * v21;
  }

  v24 = v22 - fabsf(v20);
  if (v20 < 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  [(SearchHomeBrowseCategoryCellSizeController *)self imageSize];
  *&v26 = v26;
  *&v26 = fabsf(*&v26);
  v27 = floorf(*&v26 + 0.5);
  v28 = (*&v26 - v27) * 1.8447e19;
  v29 = v27 - (truncf(v27 * 5.421e-20) * 1.8447e19);
  v30 = 2654435761u * v29;
  v31 = v30 + v28;
  if (v28 <= 0.0)
  {
    v31 = 2654435761u * v29;
  }

  v32 = v30 - fabsf(v28);
  if (v28 < 0.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

  [(SearchHomeBrowseCategoryCellSizeController *)self labelTopAndBottomPadding];
  *&v34 = v34;
  *&v34 = fabsf(*&v34);
  v35 = floorf(*&v34 + 0.5);
  v36 = (*&v34 - v35) * 1.8447e19;
  v37 = v35 - (truncf(v35 * 5.421e-20) * 1.8447e19);
  v38 = 2654435761u * v37;
  v39 = v38 + v36;
  if (v36 <= 0.0)
  {
    v39 = 2654435761u * v37;
  }

  v40 = v38 - fabsf(v36);
  if (v36 < 0.0)
  {
    v41 = v40;
  }

  else
  {
    v41 = v39;
  }

  v42 = [(SearchHomeBrowseCategoryCellSizeController *)self titleLabelFont];
  v43 = [v42 hash];
  v44 = [(SearchHomeBrowseCategoryCellSizeController *)self numberOfRows];
  v45 = [(SearchHomeBrowseCategoryCellSizeController *)self columnWidths];
  v46 = [v45 hash];
  [(SearchHomeBrowseCategoryCellSizeController *)self paddingBetweenCells];
  *&v47 = v47;
  *&v47 = fabsf(*&v47);
  v48 = floorf(*&v47 + 0.5);
  v49 = (*&v47 - v48) * 1.8447e19;
  v50 = 2654435761u * (v48 - (truncf(v48 * 5.421e-20) * 1.8447e19));
  v51 = v50 + v49;
  v52 = fabsf(v49);
  if (v49 <= 0.0)
  {
    v51 = v50;
  }

  v53 = v50 - v52;
  if (v49 >= 0.0)
  {
    v53 = v51;
  }

  v54 = v57 ^ v58 ^ v25 ^ v33 ^ v41 ^ v43 ^ (2654435761u * v44);
  v55 = v46 ^ v53;

  return v54 ^ v55;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(SearchHomeBrowseCategoryCellSizeController *)self imageToLabelPadding];
      v7 = v6;
      [(SearchHomeBrowseCategoryCellSizeController *)v5 imageToLabelPadding];
      if (v7 == v8)
      {
        [(SearchHomeBrowseCategoryCellSizeController *)self imageLeadingPadding];
        v10 = v9;
        [(SearchHomeBrowseCategoryCellSizeController *)v5 imageLeadingPadding];
        if (v10 == v11)
        {
          [(SearchHomeBrowseCategoryCellSizeController *)self imageSize];
          v13 = v12;
          v15 = v14;
          [(SearchHomeBrowseCategoryCellSizeController *)v5 imageSize];
          v17 = 0;
          if (v13 != v18 || v15 != v16)
          {
            goto LABEL_15;
          }

          [(SearchHomeBrowseCategoryCellSizeController *)self labelTopAndBottomPadding];
          v20 = v19;
          [(SearchHomeBrowseCategoryCellSizeController *)v5 labelTopAndBottomPadding];
          if (v20 == v21)
          {
            v22 = [(SearchHomeBrowseCategoryCellSizeController *)self titleLabelFont];
            v23 = [(SearchHomeBrowseCategoryCellSizeController *)v5 titleLabelFont];
            if ([v22 isEqual:v23] && (v24 = -[SearchHomeBrowseCategoryCellSizeController numberOfRows](self, "numberOfRows"), v24 == -[SearchHomeBrowseCategoryCellSizeController numberOfRows](v5, "numberOfRows")))
            {
              v25 = [(SearchHomeBrowseCategoryCellSizeController *)self columnWidths];
              v26 = [(SearchHomeBrowseCategoryCellSizeController *)v5 columnWidths];
              if ([v25 isEqualToArray:v26])
              {
                [(SearchHomeBrowseCategoryCellSizeController *)self paddingBetweenCells];
                v28 = v27;
                [(SearchHomeBrowseCategoryCellSizeController *)v5 paddingBetweenCells];
                v17 = v28 == v29;
              }

              else
              {
                v17 = 0;
              }
            }

            else
            {
              v17 = 0;
            }

            goto LABEL_15;
          }
        }
      }

      v17 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v17 = 0;
  }

LABEL_16:

  return v17;
}

- (SearchHomeBrowseCategoryCellSizeController)initWithStrings:(id)a3 traitCollection:(id)a4 availableWidth:(double)a5 wantsOneColumnLayout:(BOOL)a6 isSearchAlongRoute:(BOOL)a7 supportsFullTextSearch:(BOOL)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v45.receiver = self;
  v45.super_class = SearchHomeBrowseCategoryCellSizeController;
  v16 = [(SearchHomeBrowseCategoryCellSizeController *)&v45 init];
  v17 = v16;
  if (v16)
  {
    v16->_searchAlongRoute = v9;
    v16->_supportsFullTextSearch = a8;
    if (v9)
    {
      v18 = [v15 _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:UIContentSizeCategoryExtraLarge maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];

      v15 = v18;
    }

    v19 = [v15 preferredContentSizeCategory];
    [(SearchHomeBrowseCategoryCellSizeController *)v17 imageToLabelPaddingWithContentSizeCategory:v19];
    v17->_imageToLabelPadding = v20;

    v17->_paddingBetweenCells = 8.0;
    v21 = [(SearchHomeBrowseCategoryCellSizeController *)v17 titleLabelFontWithTraitCollection:v15];
    titleLabelFont = v17->_titleLabelFont;
    v17->_titleLabelFont = v21;

    if (a6)
    {
      v23 = 1;
    }

    else
    {
      v24 = [v15 preferredContentSizeCategory];
      v23 = -[SearchHomeBrowseCategoryCellSizeController numberOfColumnWithContentSizeCategory:numberOfItems:](v17, "numberOfColumnWithContentSizeCategory:numberOfItems:", v24, [v14 count]);
    }

    v25 = +[UIDevice currentDevice];
    v26 = [v25 userInterfaceIdiom];

    if (v26 == 5)
    {
      __asm { FMOV            V0.2D, #24.0 }

      v17->_imageSize = _Q0;
      v17->_labelTopAndBottomPadding = 10.0;
    }

    else
    {
      v32 = 45.0;
      if (!v9)
      {
        v32 = 30.0;
      }

      v17->_imageSize.width = v32;
      v17->_imageSize.height = v32;
      v33 = [v15 preferredContentSizeCategory];
      [(SearchHomeBrowseCategoryCellSizeController *)v17 labelTopAndBottomPaddingWithContentSizeCategory:v33];
      v17->_labelTopAndBottomPadding = v34;
    }

    if (v23 == 1)
    {
      [(SearchHomeBrowseCategoryCellSizeController *)v17 singleColumnLeadingPadding];
      v17->_imageLeadingPadding = v35;
      v17->_numberOfRows = [v14 count];
      v36 = [NSNumber numberWithDouble:a5];
      v46 = v36;
      v37 = [NSArray arrayWithObjects:&v46 count:1];
      columnWidths = v17->_columnWidths;
      v17->_columnWidths = v37;
    }

    else
    {
      v17->_imageLeadingPadding = 0.0;
      v39 = +[MapsOfflineUIHelper sharedHelper];
      v40 = [v39 isUsingOfflineMaps];

      v41 = 2;
      if (v40 && !v9)
      {
        if (v17->_supportsFullTextSearch)
        {
          v42 = [v14 count];
          v41 = ([v14 count] & 1) + (v42 >> 1);
        }

        else
        {
          v41 = 5;
        }
      }

      v17->_numberOfRows = v41;
      v43 = [(SearchHomeBrowseCategoryCellSizeController *)v17 columnWidthsWithTraitCollection:v15 strings:v14 availableWidth:v23 numberOfColumns:a5];
      v36 = v17->_columnWidths;
      v17->_columnWidths = v43;
    }
  }

  return v17;
}

@end