@interface CRLiOSPresetCollectionViewLayout
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)isCellEditableForSection:(unint64_t)section context:(id)context;
- (BOOL)p_shouldVerticallyDistributeEvenlyInContext:(id)context;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (BOOL)shouldVerticallyDistributeEvenlyForContext:(id)context;
- (BOOL)showsSubpageNavigator;
- (BOOL)supportsSearch;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)p_swatchInsets;
- (CGSize)sizeOfPresetInSection:(unint64_t)section;
- (CRLiOSPresetCollectionViewLayout)initWithPresetCollectionViewLayoutProvider:(id)provider delegate:(id)delegate;
- (CRLiOSPresetCollectionViewLayoutDelegate)p_delegate;
- (NSArray)pageControlTitles;
- (NSArray)subpageNavigatorItems;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIEdgeInsets)p_insetsInSection:(unint64_t)section forContext:(id)context;
- (double)additionalHeightForItemInSection:(unint64_t)section context:(id)context;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (double)horizontalInsetForItemInSection:(unint64_t)section context:(id)context;
- (double)p_horizontalSpacingInSection:(unint64_t)section forContext:(id)context;
- (double)p_minimumInteritemSpacingInSection:(unint64_t)section forContext:(id)context;
- (double)p_minimumLineSpacingInSection:(unint64_t)section forContext:(id)context;
- (double)p_swatchHeightGivenWidth:(double)width context:(id)context;
- (double)p_swatchWidthInSection:(unint64_t)section forContext:(id)context;
- (double)p_verticalSpacingForSection:(unint64_t)section context:(id)context;
- (id)cellRegistrationDictionary;
- (id)cellReuseIdentifierForSection:(unint64_t)section context:(id)context;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)p_context;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSectionsInCollectionViewForContext:(id)context;
- (unint64_t)p_itemsPerRowInContext:(id)context;
- (unint64_t)pageControlType;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
@end

@implementation CRLiOSPresetCollectionViewLayout

- (CRLiOSPresetCollectionViewLayout)initWithPresetCollectionViewLayoutProvider:(id)provider delegate:(id)delegate
{
  providerCopy = provider;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = CRLiOSPresetCollectionViewLayout;
  v9 = [(CRLiOSPresetCollectionViewLayout *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutProvider, provider);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (double)additionalHeightForItemInSection:(unint64_t)section context:(id)context
{
  contextCopy = context;
  presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v8 = objc_opt_respondsToSelector();

  v9 = 0.0;
  if (v8)
  {
    presetCollectionViewLayoutProvider2 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
    [presetCollectionViewLayoutProvider2 additionalHeightForItemInSection:section context:contextCopy];
    v9 = v11;
  }

  return v9;
}

- (id)cellReuseIdentifierForSection:(unint64_t)section context:(id)context
{
  contextCopy = context;
  presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v8 = [presetCollectionViewLayoutProvider cellReuseIdentifierForSection:section context:contextCopy];

  return v8;
}

- (id)cellRegistrationDictionary
{
  presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  cellRegistrationDictionary = [presetCollectionViewLayoutProvider cellRegistrationDictionary];

  return cellRegistrationDictionary;
}

- (BOOL)isCellEditableForSection:(unint64_t)section context:(id)context
{
  contextCopy = context;
  p_layoutProvider = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  LOBYTE(section) = [p_layoutProvider isCellEditableForSection:section context:contextCopy];

  return section;
}

- (double)horizontalInsetForItemInSection:(unint64_t)section context:(id)context
{
  contextCopy = context;
  presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v8 = objc_opt_respondsToSelector();

  v9 = 0.0;
  if (v8)
  {
    presetCollectionViewLayoutProvider2 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
    [presetCollectionViewLayoutProvider2 horizontalInsetForItemInSection:section context:contextCopy];
    v9 = v11;
  }

  return v9;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  p_context = [(CRLiOSPresetCollectionViewLayout *)self p_context];
  v7 = [presetCollectionViewLayoutProvider numberOfItemsInSection:section context:p_context];

  return v7;
}

- (unint64_t)numberOfSectionsInCollectionViewForContext:(id)context
{
  contextCopy = context;
  presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    presetCollectionViewLayoutProvider2 = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
    v8 = [presetCollectionViewLayoutProvider2 numberOfSectionsInCollectionViewForContext:contextCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (CGSize)sizeOfPresetInSection:(unint64_t)section
{
  p_context = [(CRLiOSPresetCollectionViewLayout *)self p_context];
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchWidthInSection:section forContext:p_context];
  v7 = v6;
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchHeightGivenWidth:p_context context:?];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  layer = [cell layer];
  [layer setHidden:0];
}

- (BOOL)showsSubpageNavigator
{
  p_layoutProvider = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  showsSubpageNavigator = [p_layoutProvider showsSubpageNavigator];

  return showsSubpageNavigator;
}

- (NSArray)subpageNavigatorItems
{
  p_layoutProvider = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  if (objc_opt_respondsToSelector())
  {
    subpageTitles = [p_layoutProvider subpageTitles];
  }

  else
  {
    subpageTitles = &__NSArray0__struct;
  }

  return subpageTitles;
}

- (BOOL)supportsSearch
{
  p_layoutProvider = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  supportsSearch = [p_layoutProvider supportsSearch];

  return supportsSearch;
}

- (unint64_t)pageControlType
{
  p_layoutProvider = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  pageControlType = [p_layoutProvider pageControlType];

  return pageControlType;
}

- (NSArray)pageControlTitles
{
  p_layoutProvider = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  if (objc_opt_respondsToSelector())
  {
    pageControlTitles = [p_layoutProvider pageControlTitles];
    v4 = [pageControlTitles crl_arrayByMappingObjectsUsingBlock:&stru_10183C120];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (BOOL)shouldVerticallyDistributeEvenlyForContext:(id)context
{
  contextCopy = context;
  p_layoutProvider = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  v6 = [p_layoutProvider shouldVerticallyDistributeEvenlyForContext:contextCopy];

  return v6;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  section = [path section];
  [(CRLiOSPresetCollectionViewLayout *)self sizeOfPresetInSection:section];
  v8 = v7;
  v10 = v9;
  p_context = [(CRLiOSPresetCollectionViewLayout *)self p_context];
  [(CRLiOSPresetCollectionViewLayout *)self horizontalInsetForItemInSection:section context:p_context];
  v13 = v8 + v12 * 2.0;
  [(CRLiOSPresetCollectionViewLayout *)self additionalHeightForItemInSection:section context:p_context];
  v15 = v10 + v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v7 = [(CRLiOSPresetCollectionViewLayout *)self p_context:view];
  [(CRLiOSPresetCollectionViewLayout *)self p_insetsInSection:index forContext:v7];
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

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  v7 = [(CRLiOSPresetCollectionViewLayout *)self p_context:view];
  [(CRLiOSPresetCollectionViewLayout *)self p_minimumInteritemSpacingInSection:index forContext:v7];
  v9 = v8;

  return v9;
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  v7 = [(CRLiOSPresetCollectionViewLayout *)self p_context:view];
  [(CRLiOSPresetCollectionViewLayout *)self p_minimumLineSpacingInSection:index forContext:v7];
  v9 = v8;

  return v9;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  p_delegate = [(CRLiOSPresetCollectionViewLayout *)self p_delegate];
  v7 = [p_delegate presetCollectionViewLayoutShouldHighlightPresetAtIndexPath:pathCopy];

  return v7;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  p_delegate = [(CRLiOSPresetCollectionViewLayout *)self p_delegate];
  [p_delegate presetCollectionViewLayoutDidHighlightPresetAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  p_delegate = [(CRLiOSPresetCollectionViewLayout *)self p_delegate];
  [p_delegate presetCollectionViewLayoutDidUnhighlightPresetAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  p_delegate = [(CRLiOSPresetCollectionViewLayout *)self p_delegate];
  [p_delegate presetCollectionViewLayoutDidSelectPresetAtIndexPath:pathCopy];
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v20.receiver = self;
  v20.super_class = CRLiOSPresetCollectionViewLayout;
  if ([(CRLiOSPresetCollectionViewLayout *)&v20 shouldInvalidateLayoutForBoundsChange:?])
  {
    return 1;
  }

  collectionView = [(CRLiOSPresetCollectionViewLayout *)self collectionView];
  [collectionView bounds];
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

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  rect = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v8 = objc_opt_class();
  v28.receiver = self;
  v28.super_class = CRLiOSPresetCollectionViewLayout;
  height = [(CRLiOSPresetCollectionViewLayout *)&v28 invalidationContextForBoundsChange:x, y, width, height];
  v10 = sub_100013F00(v8, height);

  collectionView = [(CRLiOSPresetCollectionViewLayout *)self collectionView];
  [collectionView bounds];
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
  p_delegate = [(CRLiOSPresetCollectionViewLayout *)self p_delegate];
  context = [p_delegate context];

  return context;
}

- (double)p_swatchWidthInSection:(unint64_t)section forContext:(id)context
{
  contextCopy = context;
  v7 = [(CRLiOSPresetCollectionViewLayout *)self p_itemsPerRowInContext:contextCopy];
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
  v9 = v8;
  presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  [presetCollectionViewLayoutProvider minimumHorizontalSpacingMultiplierInSection:section forContext:contextCopy];
  v12 = v11;

  v13 = v7 + v12 * (v7 + 1.0);
  [contextCopy contentSize];
  v15 = v14;

  return floor(v15 / v13 + v9 * 2.0);
}

- (double)p_swatchHeightGivenWidth:(double)width context:(id)context
{
  contextCopy = context;
  presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  [presetCollectionViewLayoutProvider presetWidthToHeightRatioForContext:contextCopy];
  v9 = v8;

  return floor(width / v9);
}

- (UIEdgeInsets)p_insetsInSection:(unint64_t)section forContext:(id)context
{
  contextCopy = context;
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
  v8 = v7;
  v10 = v9;
  [(CRLiOSPresetCollectionViewLayout *)self p_horizontalSpacingInSection:section forContext:contextCopy];
  v12 = v11;
  [(CRLiOSPresetCollectionViewLayout *)self horizontalInsetForItemInSection:section context:contextCopy];
  v14 = v13;
  [(CRLiOSPresetCollectionViewLayout *)self p_verticalSpacingForSection:section context:contextCopy];
  v16 = v15;
  LODWORD(section) = [(CRLiOSPresetCollectionViewLayout *)self p_shouldVerticallyDistributeEvenlyInContext:contextCopy];

  v17 = fmin(v16 - v10, 32.0);
  if (section)
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

- (double)p_minimumLineSpacingInSection:(unint64_t)section forContext:(id)context
{
  contextCopy = context;
  [(CRLiOSPresetCollectionViewLayout *)self p_verticalSpacingForSection:section context:contextCopy];
  v8 = v7;
  LOBYTE(section) = [(CRLiOSPresetCollectionViewLayout *)self p_shouldVerticallyDistributeEvenlyInContext:contextCopy];

  if (section)
  {
    return v8;
  }

  [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
  return v8 + v10 * -2.0;
}

- (double)p_minimumInteritemSpacingInSection:(unint64_t)section forContext:(id)context
{
  contextCopy = context;
  [(CRLiOSPresetCollectionViewLayout *)self p_horizontalSpacingInSection:section forContext:contextCopy];
  v8 = v7;
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
  v10 = v9;
  [(CRLiOSPresetCollectionViewLayout *)self horizontalInsetForItemInSection:section context:contextCopy];
  v12 = v11;

  return v8 + (v10 + v12) * -2.0;
}

- (double)p_horizontalSpacingInSection:(unint64_t)section forContext:(id)context
{
  contextCopy = context;
  presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  [presetCollectionViewLayoutProvider minimumHorizontalSpacingMultiplierInSection:section forContext:contextCopy];
  v9 = v8;

  [(CRLiOSPresetCollectionViewLayout *)self p_swatchWidthInSection:section forContext:contextCopy];
  v11 = v10;

  [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
  return v9 * (v11 + v12 * -2.0);
}

- (BOOL)p_shouldVerticallyDistributeEvenlyInContext:(id)context
{
  contextCopy = context;
  presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  v6 = [presetCollectionViewLayoutProvider shouldVerticallyDistributeEvenlyForContext:contextCopy];

  return v6;
}

- (double)p_verticalSpacingForSection:(unint64_t)section context:(id)context
{
  contextCopy = context;
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchWidthInSection:section forContext:contextCopy];
  [(CRLiOSPresetCollectionViewLayout *)self p_swatchHeightGivenWidth:contextCopy context:?];
  v8 = v7;
  if ([(CRLiOSPresetCollectionViewLayout *)self p_shouldVerticallyDistributeEvenlyInContext:contextCopy])
  {
    v9 = vcvtps_u32_f32([(CRLiOSPresetCollectionViewLayout *)self numberOfItemsInSection:section]/ [(CRLiOSPresetCollectionViewLayout *)self p_itemsPerRowInContext:contextCopy]);
    [contextCopy contentSize];
    v11 = floor((v10 - v9 * v8) / (v9 + 1));
  }

  else
  {
    presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
    [presetCollectionViewLayoutProvider minimumVerticalSpacingMultiplierInSection:section forContext:contextCopy];
    v14 = v13;

    [(CRLiOSPresetCollectionViewLayout *)self p_swatchInsets];
    v11 = v14 * (v8 + v15 * -2.0);
  }

  return v11;
}

- (unint64_t)p_itemsPerRowInContext:(id)context
{
  contextCopy = context;
  p_layoutProvider = [(CRLiOSPresetCollectionViewLayout *)self p_layoutProvider];
  v6 = [p_layoutProvider itemsPerRowForContext:contextCopy];

  return v6;
}

- (CGSize)p_swatchInsets
{
  presetCollectionViewLayoutProvider = [(CRLiOSPresetCollectionViewLayout *)self presetCollectionViewLayoutProvider];
  [presetCollectionViewLayoutProvider swatchInsets];
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