@interface SearchHomeBrowseCategoryCellSizeController
- (BOOL)isEqual:(id)equal;
- (CGSize)imageSize;
- (SearchHomeBrowseCategoryCellSizeController)initWithStrings:(id)strings traitCollection:(id)collection availableWidth:(double)width wantsOneColumnLayout:(BOOL)layout isSearchAlongRoute:(BOOL)route supportsFullTextSearch:(BOOL)search;
- (double)imageToLabelPaddingWithContentSizeCategory:(id)category;
- (double)labelTopAndBottomPaddingWithContentSizeCategory:(id)category;
- (double)longestLabelWidthWithStrings:(id)strings titleLabelFont:(id)font imageToLabelPadding:(double)padding imageSize:(CGSize)size;
- (double)singleColumnLeadingPadding;
- (id)columnWidthsWithTraitCollection:(id)collection strings:(id)strings availableWidth:(double)width numberOfColumns:(unint64_t)columns;
- (id)stringsInColumnAtIndex:(unint64_t)index withStrings:(id)strings;
- (id)titleLabelFontWithTraitCollection:(id)collection;
- (unint64_t)hash;
- (unint64_t)numberOfColumnWithContentSizeCategory:(id)category numberOfItems:(unint64_t)items;
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

- (double)longestLabelWidthWithStrings:(id)strings titleLabelFont:(id)font imageToLabelPadding:(double)padding imageSize:(CGSize)size
{
  width = size.width;
  stringsCopy = strings;
  fontCopy = font;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [stringsCopy countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    v14 = width + padding;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(stringsCopy);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v26 = NSFontAttributeName;
        v27 = fontCopy;
        v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [v17 sizeWithAttributes:v18];
        v20 = ceil(v19);

        v15 = fmax(v15, v14 + v20);
      }

      v12 = [stringsCopy countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v12);
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

- (id)stringsInColumnAtIndex:(unint64_t)index withStrings:(id)strings
{
  stringsCopy = strings;
  v7 = [[NSMutableArray alloc] initWithCapacity:{-[SearchHomeBrowseCategoryCellSizeController numberOfRows](self, "numberOfRows")}];
  v8 = [(SearchHomeBrowseCategoryCellSizeController *)self numberOfRows]* index;
  if (v8 < [(SearchHomeBrowseCategoryCellSizeController *)self numberOfRows]+ v8)
  {
    v9 = v8;
    do
    {
      if (v9 < [stringsCopy count])
      {
        v10 = [stringsCopy objectAtIndex:v9];
        [v7 addObject:v10];
      }

      ++v9;
    }

    while (v9 < [(SearchHomeBrowseCategoryCellSizeController *)self numberOfRows]+ v8);
  }

  v11 = [v7 copy];

  return v11;
}

- (id)columnWidthsWithTraitCollection:(id)collection strings:(id)strings availableWidth:(double)width numberOfColumns:(unint64_t)columns
{
  collectionCopy = collection;
  stringsCopy = strings;
  v12 = [[NSMutableArray alloc] initWithCapacity:{-[SearchHomeBrowseCategoryCellSizeController numberOfColumns](self, "numberOfColumns")}];
  v13 = [(SearchHomeBrowseCategoryCellSizeController *)self effectiveTraitCollectionWithTraitCollection:collectionCopy];
  [UIFont _maps_bodyScaledValueForValue:v13 compatibleWithTraitCollection:166.0];
  v15 = v14;

  if (columns)
  {
    v16 = 0;
    v17 = width * 0.9;
    do
    {
      v18 = [(SearchHomeBrowseCategoryCellSizeController *)self stringsInColumnAtIndex:v16 withStrings:stringsCopy];
      v19 = [v18 copy];
      titleLabelFont = [(SearchHomeBrowseCategoryCellSizeController *)self titleLabelFont];
      [(SearchHomeBrowseCategoryCellSizeController *)self imageToLabelPadding];
      v22 = v21;
      [(SearchHomeBrowseCategoryCellSizeController *)self imageSize];
      [(SearchHomeBrowseCategoryCellSizeController *)self longestLabelWidthWithStrings:v19 titleLabelFont:titleLabelFont imageToLabelPadding:v22 imageSize:v23, v24];
      v26 = v25;

      v27 = [NSNumber numberWithDouble:fmin(fmax(v15, v26), v17)];
      [v12 addObject:v27];

      ++v16;
    }

    while (columns != v16);
  }

  v28 = [v12 copy];

  return v28;
}

- (unint64_t)numberOfColumnWithContentSizeCategory:(id)category numberOfItems:(unint64_t)items
{
  categoryCopy = category;
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    goto LABEL_5;
  }

  if (qword_10195EFC8 != -1)
  {
    dispatch_once(&qword_10195EFC8, &stru_101651060);
  }

  if ([qword_10195EFC0 containsObject:categoryCopy])
  {
LABEL_5:
    v9 = 1;
    goto LABEL_10;
  }

  v10 = +[MapsOfflineUIHelper sharedHelper];
  if (![v10 isUsingOfflineMaps] || self->_searchAlongRoute)
  {

LABEL_9:
    v9 = items - (items >> 1);
    goto LABEL_10;
  }

  supportsFullTextSearch = self->_supportsFullTextSearch;

  if (supportsFullTextSearch)
  {
    goto LABEL_9;
  }

  if (items % 5)
  {
    v9 = items / 5 + 1;
  }

  else
  {
    v9 = items / 5;
  }

LABEL_10:

  return v9;
}

- (id)titleLabelFontWithTraitCollection:(id)collection
{
  v3 = [(SearchHomeBrowseCategoryCellSizeController *)self effectiveTraitCollectionWithTraitCollection:collection];
  v4 = [UIFont system17CompatibleWithTraitCollection:v3];

  return v4;
}

- (double)labelTopAndBottomPaddingWithContentSizeCategory:(id)category
{
  v3 = qword_10195EFB8;
  categoryCopy = category;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195EFB8, &stru_101651040);
  }

  v5 = [qword_10195EFB0 containsObject:categoryCopy];

  result = 10.0;
  if (v5)
  {
    return 12.0;
  }

  return result;
}

- (double)imageToLabelPaddingWithContentSizeCategory:(id)category
{
  v3 = qword_10195EFA8;
  categoryCopy = category;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195EFA8, &stru_101651020);
  }

  v5 = [qword_10195EFA0 containsObject:categoryCopy];

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
  columnWidths = [(SearchHomeBrowseCategoryCellSizeController *)self columnWidths];
  v3 = [columnWidths count];

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

  titleLabelFont = [(SearchHomeBrowseCategoryCellSizeController *)self titleLabelFont];
  v43 = [titleLabelFont hash];
  numberOfRows = [(SearchHomeBrowseCategoryCellSizeController *)self numberOfRows];
  columnWidths = [(SearchHomeBrowseCategoryCellSizeController *)self columnWidths];
  v46 = [columnWidths hash];
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

  v54 = v57 ^ v58 ^ v25 ^ v33 ^ v41 ^ v43 ^ (2654435761u * numberOfRows);
  v55 = v46 ^ v53;

  return v54 ^ v55;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
            titleLabelFont = [(SearchHomeBrowseCategoryCellSizeController *)self titleLabelFont];
            titleLabelFont2 = [(SearchHomeBrowseCategoryCellSizeController *)v5 titleLabelFont];
            if ([titleLabelFont isEqual:titleLabelFont2] && (v24 = -[SearchHomeBrowseCategoryCellSizeController numberOfRows](self, "numberOfRows"), v24 == -[SearchHomeBrowseCategoryCellSizeController numberOfRows](v5, "numberOfRows")))
            {
              columnWidths = [(SearchHomeBrowseCategoryCellSizeController *)self columnWidths];
              columnWidths2 = [(SearchHomeBrowseCategoryCellSizeController *)v5 columnWidths];
              if ([columnWidths isEqualToArray:columnWidths2])
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

- (SearchHomeBrowseCategoryCellSizeController)initWithStrings:(id)strings traitCollection:(id)collection availableWidth:(double)width wantsOneColumnLayout:(BOOL)layout isSearchAlongRoute:(BOOL)route supportsFullTextSearch:(BOOL)search
{
  routeCopy = route;
  stringsCopy = strings;
  collectionCopy = collection;
  v45.receiver = self;
  v45.super_class = SearchHomeBrowseCategoryCellSizeController;
  v16 = [(SearchHomeBrowseCategoryCellSizeController *)&v45 init];
  v17 = v16;
  if (v16)
  {
    v16->_searchAlongRoute = routeCopy;
    v16->_supportsFullTextSearch = search;
    if (routeCopy)
    {
      v18 = [collectionCopy _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:UIContentSizeCategoryExtraLarge maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];

      collectionCopy = v18;
    }

    preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
    [(SearchHomeBrowseCategoryCellSizeController *)v17 imageToLabelPaddingWithContentSizeCategory:preferredContentSizeCategory];
    v17->_imageToLabelPadding = v20;

    v17->_paddingBetweenCells = 8.0;
    v21 = [(SearchHomeBrowseCategoryCellSizeController *)v17 titleLabelFontWithTraitCollection:collectionCopy];
    titleLabelFont = v17->_titleLabelFont;
    v17->_titleLabelFont = v21;

    if (layout)
    {
      v23 = 1;
    }

    else
    {
      preferredContentSizeCategory2 = [collectionCopy preferredContentSizeCategory];
      v23 = -[SearchHomeBrowseCategoryCellSizeController numberOfColumnWithContentSizeCategory:numberOfItems:](v17, "numberOfColumnWithContentSizeCategory:numberOfItems:", preferredContentSizeCategory2, [stringsCopy count]);
    }

    v25 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v25 userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      __asm { FMOV            V0.2D, #24.0 }

      v17->_imageSize = _Q0;
      v17->_labelTopAndBottomPadding = 10.0;
    }

    else
    {
      v32 = 45.0;
      if (!routeCopy)
      {
        v32 = 30.0;
      }

      v17->_imageSize.width = v32;
      v17->_imageSize.height = v32;
      preferredContentSizeCategory3 = [collectionCopy preferredContentSizeCategory];
      [(SearchHomeBrowseCategoryCellSizeController *)v17 labelTopAndBottomPaddingWithContentSizeCategory:preferredContentSizeCategory3];
      v17->_labelTopAndBottomPadding = v34;
    }

    if (v23 == 1)
    {
      [(SearchHomeBrowseCategoryCellSizeController *)v17 singleColumnLeadingPadding];
      v17->_imageLeadingPadding = v35;
      v17->_numberOfRows = [stringsCopy count];
      v36 = [NSNumber numberWithDouble:width];
      v46 = v36;
      v37 = [NSArray arrayWithObjects:&v46 count:1];
      columnWidths = v17->_columnWidths;
      v17->_columnWidths = v37;
    }

    else
    {
      v17->_imageLeadingPadding = 0.0;
      v39 = +[MapsOfflineUIHelper sharedHelper];
      isUsingOfflineMaps = [v39 isUsingOfflineMaps];

      v41 = 2;
      if (isUsingOfflineMaps && !routeCopy)
      {
        if (v17->_supportsFullTextSearch)
        {
          v42 = [stringsCopy count];
          v41 = ([stringsCopy count] & 1) + (v42 >> 1);
        }

        else
        {
          v41 = 5;
        }
      }

      v17->_numberOfRows = v41;
      v43 = [(SearchHomeBrowseCategoryCellSizeController *)v17 columnWidthsWithTraitCollection:collectionCopy strings:stringsCopy availableWidth:v23 numberOfColumns:width];
      v36 = v17->_columnWidths;
      v17->_columnWidths = v43;
    }
  }

  return v17;
}

@end