@interface AllRefinementsSizeController
- (UIEdgeInsets)multiSelectBackgroundContentInsets;
- (UIEdgeInsets)multiSelectSectionContentInsets;
- (UIEdgeInsets)togglesBackgroundContentInsets;
- (UIEdgeInsets)togglesSectionContentInsets;
- (double)headerHeightWithTitle:(id)a3 collectionView:(id)a4;
- (double)multiSelectHeaderLeadingAdjustment;
@end

@implementation AllRefinementsSizeController

- (double)multiSelectHeaderLeadingAdjustment
{
  +[_TtC4Maps23MapsDesignConstantsShim textHorizontalPadding];
  v4 = v3;
  [(AllRefinementsSizeController *)self multiSelectSectionContentInsets];
  return v4 - v5;
}

- (UIEdgeInsets)multiSelectBackgroundContentInsets
{
  +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
  v3 = v2;
  v4 = 10.0;
  v5 = 10.0;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)multiSelectSectionContentInsets
{
  [(AllRefinementsSizeController *)self multiSelectBackgroundContentInsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
  v11 = v10;
  +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
  v12 = v11 + v5;
  v14 = v13 + v7;
  v15 = v11 + v9;
  v16 = v13 + v3;
  result.right = v15;
  result.bottom = v14;
  result.left = v12;
  result.top = v16;
  return result;
}

- (UIEdgeInsets)togglesBackgroundContentInsets
{
  +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
  v3 = v2;
  v4 = 10.0;
  v5 = 10.0;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)togglesSectionContentInsets
{
  [(AllRefinementsSizeController *)self togglesBackgroundContentInsets];
  v5 = v4 + -4.0;
  v7 = v6 + -4.0;
  result.right = v7;
  result.bottom = v3;
  result.left = v5;
  result.top = v2;
  return result;
}

- (double)headerHeightWithTitle:(id)a3 collectionView:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = objc_alloc_init(AllRefinementsHeaderView);
    [(AllRefinementsHeaderView *)v7 setTitle:v5];
    [v6 frame];
    v9 = v8;
    LODWORD(v8) = 1148846080;
    LODWORD(v10) = 1132068864;
    [(AllRefinementsHeaderView *)v7 systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:v8, v10];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

@end