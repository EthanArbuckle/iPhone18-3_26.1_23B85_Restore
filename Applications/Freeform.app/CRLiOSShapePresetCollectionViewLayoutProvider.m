@interface CRLiOSShapePresetCollectionViewLayoutProvider
- (BOOL)p_isLabeledContext:(id)a3;
- (BOOL)p_isUserDefinedShapeContext:(id)a3;
- (BOOL)shouldVerticallyDistributeEvenlyForContext:(id)a3;
- (CGSize)p_preferredGridSpacingInSection:(unint64_t)a3 forContext:(id)a4;
- (CGSize)p_preferredSwatchSize;
- (CGSize)swatchInsets;
- (CRLiOSShapePresetCollectionViewLayoutProvider)initWithShapeCollectionDataSource:(id)a3 searchResultsCollection:(id)a4;
- (NSArray)pageControlTitles;
- (double)additionalHeightForItemInSection:(unint64_t)a3 context:(id)a4;
- (double)horizontalInsetForItemInSection:(unint64_t)a3 context:(id)a4;
- (double)minimumHorizontalSpacingMultiplierInSection:(unint64_t)a3 forContext:(id)a4;
- (double)minimumVerticalSpacingMultiplierInSection:(unint64_t)a3 forContext:(id)a4;
- (id)cellRegistrationDictionary;
- (id)cellReuseIdentifierForSection:(unint64_t)a3 context:(id)a4;
- (unint64_t)itemsPerRowForContext:(id)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3 context:(id)a4;
- (unint64_t)numberOfSectionsInCollectionViewForContext:(id)a3;
@end

@implementation CRLiOSShapePresetCollectionViewLayoutProvider

- (CRLiOSShapePresetCollectionViewLayoutProvider)initWithShapeCollectionDataSource:(id)a3 searchResultsCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRLiOSShapePresetCollectionViewLayoutProvider;
  v9 = [(CRLiOSShapePresetCollectionViewLayoutProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shapeCollectionDataSource, a3);
    objc_storeStrong(&v10->_searchResultsCollection, a4);
  }

  return v10;
}

- (double)additionalHeightForItemInSection:(unint64_t)a3 context:(id)a4
{
  v4 = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_isLabeledContext:a4];
  result = 30.0 + -2.0;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (id)cellReuseIdentifierForSection:(unint64_t)a3 context:(id)a4
{
  if ([(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_isLabeledContext:a4])
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

- (double)horizontalInsetForItemInSection:(unint64_t)a3 context:(id)a4
{
  v4 = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_isLabeledContext:a4];
  result = 0.0;
  if (v4)
  {
    return 8.0;
  }

  return result;
}

- (unint64_t)itemsPerRowForContext:(id)a3
{
  v3 = a3;
  if (([v3 hasCompactHeightRegularWidthTraitCollection] & 1) != 0 || objc_msgSend(v3, "hasCompactHeightCompactWidthTraitCollection"))
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (double)minimumHorizontalSpacingMultiplierInSection:(unint64_t)a3 forContext:(id)a4
{
  [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_preferredGridSpacingInSection:a3 forContext:a4];
  v6 = v5;
  [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_preferredSwatchSize];
  return v6 / v7;
}

- (double)minimumVerticalSpacingMultiplierInSection:(unint64_t)a3 forContext:(id)a4
{
  [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_preferredGridSpacingInSection:a3 forContext:a4];
  v6 = v5;
  [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_preferredSwatchSize];
  return v6 / v7;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  if ([v6 isSearching])
  {
    v7 = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_searchResultsCollection];
    v8 = [v7 numberOfShapesInSection:a3];
  }

  else
  {
    v7 = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_shapeCollectionDataSource];
    v8 = [v7 numberOfShapesInCategoryAtIndex:{objc_msgSend(v6, "pageIndex")}];
  }

  v9 = v8;

  return v9;
}

- (unint64_t)numberOfSectionsInCollectionViewForContext:(id)a3
{
  if (![a3 isSearching])
  {
    return 1;
  }

  v4 = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_searchResultsCollection];
  v5 = [v4 numberOfSections];

  return v5;
}

- (BOOL)shouldVerticallyDistributeEvenlyForContext:(id)a3
{
  v3 = a3;
  v4 = [v3 pageIndex];
  v5 = [v3 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  [v3 contentSize];
  if (v6)
  {
    v8 = v7 < 450.0;
  }

  else
  {
    v8 = 0;
  }

  if ((!v8 || v4 != 0) && v4 == 0)
  {
    v12 = [v3 isInPopover];
    if (v6)
    {
      v11 = v12;
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
  v2 = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_shapeCollectionDataSource];
  v3 = [v2 categoryNames];

  return v3;
}

- (CGSize)p_preferredSwatchSize
{
  v2 = 62.0;
  v3 = 62.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)p_preferredGridSpacingInSection:(unint64_t)a3 forContext:(id)a4
{
  v5 = a4;
  v6 = [v5 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7)
  {
    [v5 contentSize];
    v9 = v8;
    v10 = v8 <= 438.0 && v8 > 375.0;
    v11 = [v5 pageIndex];
    v12 = +[UIScreen crl_deviceIsLandscape];
    v13 = [v5 isSearching];
    v14 = [v5 isInPopover];
    if ([v5 isSidebarLike])
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
        if (v11)
        {
          v15 = v13 == 0;
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

    v20 = v11 == 0;
    if (v14)
    {
      v22 = 25.0;
      v23 = 17.0;
      goto LABEL_41;
    }

    if (v11)
    {
      v27 = v13 == 0;
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

  v18 = [v5 traitCollection];
  v19 = [v18 verticalSizeClass];

  if (+[UIScreen crl_screenClass]== 4)
  {
    v20 = v19 == 1;
    v21 = dbl_101465EA0[v19 == 1];
    v22 = 32.0;
    v23 = 27.0;
    goto LABEL_41;
  }

  if (+[UIScreen crl_phoneUI568H])
  {
    v20 = v19 == 1;
    v21 = dbl_101465E90[v19 == 1];
    v22 = 36.0;
    v23 = 30.0;
    goto LABEL_41;
  }

  if (!+[UIScreen crl_screenClassPhoneUIRegularOrLarge])
  {
    v20 = v19 == 1;
    v21 = dbl_101465E70[v19 == 1];
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

  v30 = [v5 pageIndex];
  v21 = dbl_101465E80[v19 == 1];
  v31 = 56.0;
  if (v19 == 1)
  {
    v31 = 23.0;
  }

  v32 = 40.0;
  if (v19 == 1)
  {
    v32 = 20.0;
  }

  if (v30)
  {
    v26 = v32;
  }

  else
  {
    v26 = v31;
  }

LABEL_54:
  if ([(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_isLabeledContext:v5])
  {
    v26 = v26 + -5.0;
  }

  v34 = v21;
  v35 = v26;
  result.height = v35;
  result.width = v34;
  return result;
}

- (BOOL)p_isLabeledContext:(id)a3
{
  v4 = a3;
  if ([(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_isUserDefinedShapeContext:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isSearching];
  }

  return v5;
}

- (BOOL)p_isUserDefinedShapeContext:(id)a3
{
  v4 = [a3 pageIndex];
  v5 = [(CRLiOSShapePresetCollectionViewLayoutProvider *)self p_shapeCollectionDataSource];
  LOBYTE(v4) = v4 == [v5 indexOfUserDefinedLibraryCategory];

  return v4;
}

@end