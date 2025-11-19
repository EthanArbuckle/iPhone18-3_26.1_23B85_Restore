@interface CRLiOSPresetCollectionViewLayout
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)isCellEditableForSection:(unint64_t)a3 context:(id)a4;
- (BOOL)p_shouldVerticallyDistributeEvenlyInContext:(id)a3;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (BOOL)shouldVerticallyDistributeEvenlyForContext:(id)a3;
- (BOOL)showsSubpageNavigator;
- (BOOL)supportsSearch;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)p_swatchInsets;
- (CGSize)sizeOfPresetInSection:(unint64_t)a3;
- (CRLiOSPresetCollectionViewLayout)initWithPresetCollectionViewLayoutProvider:(id)a3 delegate:(id)a4;
- (CRLiOSPresetCollectionViewLayoutDelegate)p_delegate;
- (NSArray)pageControlTitles;
- (NSArray)subpageNavigatorItems;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIEdgeInsets)p_insetsInSection:(unint64_t)a3 forContext:(id)a4;
- (double)additionalHeightForItemInSection:(unint64_t)a3 context:(id)a4;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (double)horizontalInsetForItemInSection:(unint64_t)a3 context:(id)a4;
- (double)p_horizontalSpacingInSection:(unint64_t)a3 forContext:(id)a4;
- (double)p_minimumInteritemSpacingInSection:(unint64_t)a3 forContext:(id)a4;
- (double)p_minimumLineSpacingInSection:(unint64_t)a3 forContext:(id)a4;
- (double)p_swatchHeightGivenWidth:(double)a3 context:(id)a4;
- (double)p_swatchWidthInSection:(unint64_t)a3 forContext:(id)a4;
- (double)p_verticalSpacingForSection:(unint64_t)a3 context:(id)a4;
- (id)cellRegistrationDictionary;
- (id)cellReuseIdentifierForSection:(unint64_t)a3 context:(id)a4;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)p_context;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
- (unint64_t)numberOfSectionsInCollectionViewForContext:(id)a3;
- (unint64_t)p_itemsPerRowInContext:(id)a3;
- (unint64_t)pageControlType;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
@end

@implementation CRLiOSPresetCollectionViewLayout

- (CRLiOSPresetCollectionViewLayout)initWithPresetCollectionViewLayoutProvider:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRLiOSPresetCollectionViewLayout;
  v9 = [(CRLiOSPresetCollectionViewLayout *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutProvider, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (double)additionalHeightForItemInSection:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v8 = objc_opt_respondsToSelector();

  v9 = 0.0;
  if (v8)
  {
    v10 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
    [v10 additionalHeightForItemInSection:a3 context:v6];
    v9 = v11;
  }

  return v9;
}

- (id)cellReuseIdentifierForSection:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v8 = [v7 cellReuseIdentifierForSection:a3 context:v6];

  return v8;
}

- (id)cellRegistrationDictionary
{
  v2 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v3 = [v2 cellRegistrationDictionary];

  return v3;
}

- (BOOL)isCellEditableForSection:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  LOBYTE(a3) = [v7 isCellEditableForSection:a3 context:v6];

  return a3;
}

- (double)horizontalInsetForItemInSection:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v8 = objc_opt_respondsToSelector();

  v9 = 0.0;
  if (v8)
  {
    v10 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
    [v10 horizontalInsetForItemInSection:a3 context:v6];
    v9 = v11;
  }

  return v9;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  v5 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v6 = [(CRLiOSPresetCollectionViewLayout *)self p_context];
  v7 = [v5 numberOfItemsInSection:a3 context:v6];

  return v7;
}

- (unint64_t)numberOfSectionsInCollectionViewForContext:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
    v8 = [v7 numberOfSectionsInCollectionViewForContext:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (CGSize)sizeOfPresetInSection:(unint64_t)a3
{
  v5 = [(CRLiOSPresetCollectionViewLayout *)self p_context];
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchWidthInSection:a3 forContext:v5];
  v7 = v6;
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchHeightGivenWidth:v5 context:?];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v5 = [a4 layer];
  [v5 setHidden:0];
}

- (BOOL)showsSubpageNavigator
{
  v2 = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  v3 = [v2 showsSubpageNavigator];

  return v3;
}

- (NSArray)subpageNavigatorItems
{
  v2 = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 subpageTitles];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (BOOL)supportsSearch
{
  v2 = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  v3 = [v2 supportsSearch];

  return v3;
}

- (unint64_t)pageControlType
{
  v2 = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  v3 = [v2 pageControlType];

  return v3;
}

- (NSArray)pageControlTitles
{
  v2 = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 pageControlTitles];
    v4 = [v3 crl_arrayByMappingObjectsUsingBlock:&stru_10183C120];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (BOOL)shouldVerticallyDistributeEvenlyForContext:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  v6 = [v5 shouldVerticallyDistributeEvenlyForContext:v4];

  return v6;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [a5 section];
  [(CRLiOSPresetCollectionViewLayout *)self sizeOfPresetInSection:v6];
  v8 = v7;
  v10 = v9;
  v11 = [(CRLiOSPresetCollectionViewLayout *)self p_context];
  [(CRLiOSPresetCollectionViewLayout *)self horizontalInsetForItemInSection:v6 context:v11];
  v13 = v8 + v12 * 2.0;
  [(CRLiOSPresetCollectionViewLayout *)self additionalHeightForItemInSection:v6 context:v11];
  v15 = v10 + v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = [(CRLiOSPresetCollectionViewLayout *)self p_context:a3];
  [(CRLiOSPresetCollectionViewLayout *)self p_insetsInSection:a5 forContext:v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v7 = [(CRLiOSPresetCollectionViewLayout *)self p_context:a3];
  [(CRLiOSPresetCollectionViewLayout *)self p_minimumInteritemSpacingInSection:a5 forContext:v7];
  v9 = v8;

  return v9;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  v7 = [(CRLiOSPresetCollectionViewLayout *)self p_context:a3];
  [(CRLiOSPresetCollectionViewLayout *)self p_minimumLineSpacingInSection:a5 forContext:v7];
  v9 = v8;

  return v9;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CRLiOSPresetCollectionViewLayout *)self p_delegate];
  v7 = [v6 presetCollectionViewLayoutShouldHighlightPresetAtIndexPath:v5];

  return v7;
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CRLiOSPresetCollectionViewLayout *)self p_delegate];
  [v6 presetCollectionViewLayoutDidHighlightPresetAtIndexPath:v5];
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CRLiOSPresetCollectionViewLayout *)self p_delegate];
  [v6 presetCollectionViewLayoutDidUnhighlightPresetAtIndexPath:v5];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CRLiOSPresetCollectionViewLayout *)self p_delegate];
  [v6 presetCollectionViewLayoutDidSelectPresetAtIndexPath:v5];
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20.receiver = self;
  v20.super_class = CRLiOSPresetCollectionViewLayout;
  if ([(CRLiOSPresetCollectionViewLayout *)&v20 shouldInvalidateLayoutForBoundsChange:?])
  {
    return 1;
  }

  v9 = [(CRLiOSPresetCollectionViewLayout *)self collectionView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v21.origin.x = v11;
  v21.origin.y = v13;
  v21.size.width = v15;
  v21.size.height = v17;
  v18 = CGRectGetHeight(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v19 = CGRectGetHeight(v22);
  return v18 != v19 && vabdd_f64(v18, v19) >= fabs(v19 * 0.000000999999997);
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  rect = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  v28.receiver = self;
  v28.super_class = CRLiOSPresetCollectionViewLayout;
  v9 = [(CRLiOSPresetCollectionViewLayout *)&v28 invalidationContextForBoundsChange:x, y, width, height];
  v10 = sub_100013F00(v8, v9);

  v11 = [(CRLiOSPresetCollectionViewLayout *)self collectionView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v30.origin.x = v13;
  v30.origin.y = v15;
  v30.size.width = v17;
  v30.size.height = v19;
  v20 = CGRectGetWidth(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = rect;
  v21 = CGRectGetWidth(v31);
  v22 = v20 != v21 && vabdd_f64(v20, v21) >= fabs(v21 * 0.000000999999997);
  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  v23 = CGRectGetHeight(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = rect;
  v24 = CGRectGetHeight(v33);
  v25 = v23 != v24 && vabdd_f64(v23, v24) >= fabs(v24 * 0.000000999999997);
  [v10 setInvalidateFlowLayoutDelegateMetrics:{(objc_msgSend(v10, "invalidateFlowLayoutDelegateMetrics") | (v22 || v25)) & 1}];
  [v10 setInvalidateFlowLayoutAttributes:{(objc_msgSend(v10, "invalidateFlowLayoutAttributes") | v25) & 1}];

  return v10;
}

- (id)p_context
{
  v2 = [(CRLiOSPresetCollectionViewLayout *)self p_delegate];
  v3 = [v2 context];

  return v3;
}

- (double)p_swatchWidthInSection:(unint64_t)a3 forContext:(id)a4
{
  v6 = a4;
  v7 = [(CRLiOSPresetCollectionViewLayout *)self p_itemsPerRowInContext:v6];
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
  v9 = v8;
  v10 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  [v10 minimumHorizontalSpacingMultiplierInSection:a3 forContext:v6];
  v12 = v11;

  v13 = v7 + v12 * (v7 + 1.0);
  [v6 contentSize];
  v15 = v14;

  return floor(v15 / v13 + v9 * 2.0);
}

- (double)p_swatchHeightGivenWidth:(double)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  [v7 presetWidthToHeightRatioForContext:v6];
  v9 = v8;

  return floor(a3 / v9);
}

- (UIEdgeInsets)p_insetsInSection:(unint64_t)a3 forContext:(id)a4
{
  v6 = a4;
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
  v8 = v7;
  v10 = v9;
  [(CRLiOSPresetCollectionViewLayout *)self p_horizontalSpacingInSection:a3 forContext:v6];
  v12 = v11;
  [(CRLiOSPresetCollectionViewLayout *)self horizontalInsetForItemInSection:a3 context:v6];
  v14 = v13;
  [(CRLiOSPresetCollectionViewLayout *)self p_verticalSpacingForSection:a3 context:v6];
  v16 = v15;
  LODWORD(a3) = [(CRLiOSPresetCollectionViewLayout *)self p_shouldVerticallyDistributeEvenlyInContext:v6];

  v17 = fmin(v16 - v10, 32.0);
  if (a3)
  {
    v17 = v16;
  }

  v18 = v12 - (v8 + v14);
  v19 = v17;
  v20 = v18;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (double)p_minimumLineSpacingInSection:(unint64_t)a3 forContext:(id)a4
{
  v6 = a4;
  [(CRLiOSPresetCollectionViewLayout *)self p_verticalSpacingForSection:a3 context:v6];
  v8 = v7;
  LOBYTE(a3) = [(CRLiOSPresetCollectionViewLayout *)self p_shouldVerticallyDistributeEvenlyInContext:v6];

  if (a3)
  {
    return v8;
  }

  [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
  return v8 + v10 * -2.0;
}

- (double)p_minimumInteritemSpacingInSection:(unint64_t)a3 forContext:(id)a4
{
  v6 = a4;
  [(CRLiOSPresetCollectionViewLayout *)self p_horizontalSpacingInSection:a3 forContext:v6];
  v8 = v7;
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
  v10 = v9;
  [(CRLiOSPresetCollectionViewLayout *)self horizontalInsetForItemInSection:a3 context:v6];
  v12 = v11;

  return v8 + (v10 + v12) * -2.0;
}

- (double)p_horizontalSpacingInSection:(unint64_t)a3 forContext:(id)a4
{
  v6 = a4;
  v7 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  [v7 minimumHorizontalSpacingMultiplierInSection:a3 forContext:v6];
  v9 = v8;

  [(CRLiOSPresetCollectionViewLayout *)self p_swatchWidthInSection:a3 forContext:v6];
  v11 = v10;

  [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
  return v9 * (v11 + v12 * -2.0);
}

- (BOOL)p_shouldVerticallyDistributeEvenlyInContext:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v6 = [v5 shouldVerticallyDistributeEvenlyForContext:v4];

  return v6;
}

- (double)p_verticalSpacingForSection:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchWidthInSection:a3 forContext:v6];
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchHeightGivenWidth:v6 context:?];
  v8 = v7;
  if ([(CRLiOSPresetCollectionViewLayout *)self p_shouldVerticallyDistributeEvenlyInContext:v6])
  {
    v9 = vcvtps_u32_f32([(CRLiOSPresetCollectionViewLayout *)self numberOfItemsInSection:a3]/ [(CRLiOSPresetCollectionViewLayout *)self p_itemsPerRowInContext:v6]);
    [v6 contentSize];
    v11 = floor((v10 - v9 * v8) / (v9 + 1));
  }

  else
  {
    v12 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
    [v12 minimumVerticalSpacingMultiplierInSection:a3 forContext:v6];
    v14 = v13;

    [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
    v11 = v14 * (v8 + v15 * -2.0);
  }

  return v11;
}

- (unint64_t)p_itemsPerRowInContext:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  v6 = [v5 itemsPerRowForContext:v4];

  return v6;
}

- (CGSize)p_swatchInsets
{
  v2 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  [v2 swatchInsets];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CRLiOSPresetCollectionViewLayoutDelegate)p_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end