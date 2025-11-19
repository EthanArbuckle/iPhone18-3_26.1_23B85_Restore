@interface PBAAlertControllerVisualStyleActionSheet
- (UIEdgeInsets)contentInsetsForContainerView:(id)a3;
@end

@implementation PBAAlertControllerVisualStyleActionSheet

- (UIEdgeInsets)contentInsetsForContainerView:(id)a3
{
  v3 = a3;
  v4 = SBFEffectiveHomeButtonType();
  [v3 layoutMargins];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (v4 == 2)
  {
    v11 = 40.0;
  }

  else
  {
    v11 = 44.0;
  }

  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v11;
  result.left = v13;
  result.top = v12;
  return result;
}

@end