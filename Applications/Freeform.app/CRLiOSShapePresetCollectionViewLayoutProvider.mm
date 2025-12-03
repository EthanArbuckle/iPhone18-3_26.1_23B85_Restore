@interface CRLiOSShapePresetCollectionViewLayoutProvider
- (BOOL)p_isLabeledContext:(id)context;
- (BOOL)p_isUserDefinedShapeContext:(id)context;
- (BOOL)shouldVerticallyDistributeEvenlyForContext:(id)context;
- (CGSize)p_preferredGridSpacingInSection:(unint64_t)section forContext:(id)context;
- (CGSize)p_preferredSwatchSize;
- (CGSize)swatchInsets;
- (CRLiOSShapePresetCollectionViewLayoutProvider)initWithShapeCollectionDataSource:(id)source searchResultsCollection:(id)collection;
- (NSArray)pageControlTitles;
- (double)additionalHeightForItemInSection:(unint64_t)section context:(id)context;
- (double)horizontalInsetForItemInSection:(unint64_t)section context:(id)context;
- (double)minimumHorizontalSpacingMultiplierInSection:(unint64_t)section forContext:(id)context;
- (double)minimumVerticalSpacingMultiplierInSection:(unint64_t)section forContext:(id)context;
- (id)cellRegistrationDictionary;
- (id)cellReuseIdentifierForSection:(unint64_t)section context:(id)context;
- (unint64_t)itemsPerRowForContext:(id)context;
- (unint64_t)numberOfItemsInSection:(unint64_t)section context:(id)context;
- (unint64_t)numberOfSectionsInCollectionViewForContext:(id)context;
@end

@implementation CRLiOSShapePresetCollectionViewLayoutProvider

- (CRLiOSShapePresetCollectionViewLayoutProvider)initWithShapeCollectionDataSource:(id)source searchResultsCollection:(id)collection
{
  sourceCopy = source;
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = CRLiOSShapePresetCollectionViewLayoutProvider;
  v9 = [(CRLiOSShapePresetCollectionViewLayoutProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shapeCollectionDataSource, source);
    objc_storeStrong(&v10->_searchResultsCollection, collection);
  }

  return v10;
}

- (double)additionalHeightForItemInSection:(unint64_t)section context:(id)context
{
  v4 = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_isLabeledContext:context];
  result = 30.0 + -2.0;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (id)cellReuseIdentifierForSection:(unint64_t)section context:(id)context
{
  if ([(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_isLabeledContext:context])
  {
    v4 = @"CRLiOSPresetCollectionViewLabeledCell";
  }

  else
  {
    v4 = @"CRLiOSPresetCollectionViewCell";
  }

  return v4;
}

- (id)cellRegistrationDictionary
{
  v2 = [UINib nibWithNibName:@"CRLiOSPresetCollectionViewCell" bundle:0];
  v3 = [UINib nibWithNibName:@"CRLiOSPresetCollectionViewLabeledCell" bundle:0];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10137FCB0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10137FCC4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10137FD74();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v5);
  }

  v6 = [NSString stringWithUTF8String:"[CRLiOSShapePresetCollectionViewLayoutProvider cellRegistrationDictionary]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapePresetCollectionViewLayoutProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:73 isFatal:0 description:"invalid nil value for '%{public}s'", "cellNib"];

  if (!v4)
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137FD9C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137FDC4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137FE74();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSShapePresetCollectionViewLayoutProvider cellRegistrationDictionary]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapePresetCollectionViewLayoutProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:74 isFatal:0 description:"invalid nil value for '%{public}s'", "labeledCellNib"];
  }

LABEL_22:
  v15[0] = @"CRLiOSPresetCollectionViewCell";
  v11 = v2;
  if (!v2)
  {
    v11 = +[NSNull null];
  }

  v15[1] = @"CRLiOSPresetCollectionViewLabeledCell";
  v16[0] = v11;
  v12 = v4;
  if (!v4)
  {
    v12 = +[NSNull null];
  }

  v16[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  if (v4)
  {
    if (v2)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v2)
    {
      goto LABEL_28;
    }
  }

LABEL_28:

  return v13;
}

- (double)horizontalInsetForItemInSection:(unint64_t)section context:(id)context
{
  v4 = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_isLabeledContext:context];
  result = 0.0;
  if (v4)
  {
    return 8.0;
  }

  return result;
}

- (unint64_t)itemsPerRowForContext:(id)context
{
  contextCopy = context;
  if (([contextCopy hasCompactHeightRegularWidthTraitCollection] & 1) != 0 || objc_msgSend(contextCopy, "hasCompactHeightCompactWidthTraitCollection"))
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (double)minimumHorizontalSpacingMultiplierInSection:(unint64_t)section forContext:(id)context
{
  [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_preferredGridSpacingInSection:section forContext:context];
  v6 = v5;
  [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_preferredSwatchSize];
  return v6 / v7;
}

- (double)minimumVerticalSpacingMultiplierInSection:(unint64_t)section forContext:(id)context
{
  [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_preferredGridSpacingInSection:section forContext:context];
  v6 = v5;
  [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_preferredSwatchSize];
  return v6 / v7;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section context:(id)context
{
  contextCopy = context;
  if ([contextCopy isSearching])
  {
    p_searchResultsCollection = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_searchResultsCollection];
    v8 = [p_searchResultsCollection numberOfShapesInSection:section];
  }

  else
  {
    p_searchResultsCollection = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_shapeCollectionDataSource];
    v8 = [p_searchResultsCollection numberOfShapesInCategoryAtIndex:{objc_msgSend(contextCopy, "pageIndex")}];
  }

  v9 = v8;

  return v9;
}

- (unint64_t)numberOfSectionsInCollectionViewForContext:(id)context
{
  if (![context isSearching])
  {
    return 1;
  }

  p_searchResultsCollection = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_searchResultsCollection];
  numberOfSections = [p_searchResultsCollection numberOfSections];

  return numberOfSections;
}

- (BOOL)shouldVerticallyDistributeEvenlyForContext:(id)context
{
  contextCopy = context;
  pageIndex = [contextCopy pageIndex];
  traitCollection = [contextCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  [contextCopy contentSize];
  if (userInterfaceIdiom)
  {
    v8 = v7 < 450.0;
  }

  else
  {
    v8 = 0;
  }

  if ((!v8 || pageIndex != 0) && pageIndex == 0)
  {
    isInPopover = [contextCopy isInPopover];
    if (userInterfaceIdiom)
    {
      v11 = isInPopover;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGSize)swatchInsets
{
  v2 = +[CRLSwatchCache swatchCache];
  [v2 shapeSwatchInset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSArray)pageControlTitles
{
  p_shapeCollectionDataSource = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_shapeCollectionDataSource];
  categoryNames = [p_shapeCollectionDataSource categoryNames];

  return categoryNames;
}

- (CGSize)p_preferredSwatchSize
{
  v2 = 62.0;
  v3 = 62.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)p_preferredGridSpacingInSection:(unint64_t)section forContext:(id)context
{
  contextCopy = context;
  traitCollection = [contextCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    [contextCopy contentSize];
    v9 = v8;
    v10 = v8 <= 438.0 && v8 > 375.0;
    pageIndex = [contextCopy pageIndex];
    v12 = +[UIScreen crl_deviceIsLandscape];
    isSearching = [contextCopy isSearching];
    isInPopover = [contextCopy isInPopover];
    if ([contextCopy isSidebarLike])
    {
      if (v9 <= 375.0)
      {
        if (v12)
        {
          v26 = 28.0;
        }

        else
        {
          v26 = 34.0;
        }

        v21 = 33.5;
      }

      else
      {
        if (pageIndex)
        {
          v15 = isSearching == 0;
          if (v12)
          {
            v16 = 35.0;
            v17 = 31.0;
          }

          else
          {
            v16 = 40.0;
            v17 = 34.0;
          }
        }

        else
        {
          v15 = v12 == 0;
          v16 = 34.0;
          v17 = 30.0;
        }

        if (v15)
        {
          v26 = v16;
        }

        else
        {
          v26 = v17;
        }

        v21 = 49.0;
      }

      goto LABEL_54;
    }

    v24 = 62.5;
    v25 = 80.0;
    if (!v12)
    {
      v25 = 62.5;
    }

    if (!v10)
    {
      v24 = 33.5;
    }

    if (v9 <= 438.0)
    {
      v21 = v24;
    }

    else
    {
      v21 = v25;
    }

    v20 = pageIndex == 0;
    if (isInPopover)
    {
      v22 = 25.0;
      v23 = 17.0;
      goto LABEL_41;
    }

    if (pageIndex)
    {
      v27 = isSearching == 0;
      if (v10)
      {
        v28 = 32.0;
        v33 = 28.0;
        goto LABEL_51;
      }

      v28 = 36.0;
      v29 = 0x4041000000000000;
    }

    else
    {
      v27 = v12 == 0;
      v28 = 32.0;
      v29 = 0x4042000000000000;
    }

    v33 = *&v29;
LABEL_51:
    if (v27)
    {
      v26 = v28;
    }

    else
    {
      v26 = v33;
    }

    goto LABEL_54;
  }

  traitCollection2 = [contextCopy traitCollection];
  verticalSizeClass = [traitCollection2 verticalSizeClass];

  if (+[UIScreen crl_screenClass]== 4)
  {
    v20 = verticalSizeClass == 1;
    v21 = dbl_101465EA0[verticalSizeClass == 1];
    v22 = 32.0;
    v23 = 27.0;
    goto LABEL_41;
  }

  if (+[UIScreen crl_phoneUI568H])
  {
    v20 = verticalSizeClass == 1;
    v21 = dbl_101465E90[verticalSizeClass == 1];
    v22 = 36.0;
    v23 = 30.0;
    goto LABEL_41;
  }

  if (!+[UIScreen crl_screenClassPhoneUIRegularOrLarge])
  {
    v20 = verticalSizeClass == 1;
    v21 = dbl_101465E70[verticalSizeClass == 1];
    v22 = 35.0;
    v23 = 20.0;
LABEL_41:
    if (v20)
    {
      v26 = v23;
    }

    else
    {
      v26 = v22;
    }

    goto LABEL_54;
  }

  pageIndex2 = [contextCopy pageIndex];
  v21 = dbl_101465E80[verticalSizeClass == 1];
  v31 = 56.0;
  if (verticalSizeClass == 1)
  {
    v31 = 23.0;
  }

  v32 = 40.0;
  if (verticalSizeClass == 1)
  {
    v32 = 20.0;
  }

  if (pageIndex2)
  {
    v26 = v32;
  }

  else
  {
    v26 = v31;
  }

LABEL_54:
  if ([(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_isLabeledContext:contextCopy])
  {
    v26 = v26 + -5.0;
  }

  v34 = v21;
  v35 = v26;
  result.height = v35;
  result.width = v34;
  return result;
}

- (BOOL)p_isLabeledContext:(id)context
{
  contextCopy = context;
  if ([(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_isUserDefinedShapeContext:contextCopy])
  {
    isSearching = 1;
  }

  else
  {
    isSearching = [contextCopy isSearching];
  }

  return isSearching;
}

- (BOOL)p_isUserDefinedShapeContext:(id)context
{
  pageIndex = [context pageIndex];
  p_shapeCollectionDataSource = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_shapeCollectionDataSource];
  LOBYTE(pageIndex) = pageIndex == [p_shapeCollectionDataSource indexOfUserDefinedLibraryCategory];

  return pageIndex;
}

@end