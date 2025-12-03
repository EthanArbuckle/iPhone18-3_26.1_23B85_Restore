@interface PBAAlertControllerVisualStyleActionSheet
- (UIEdgeInsets)contentInsetsForContainerView:(id)view;
@end

@implementation PBAAlertControllerVisualStyleActionSheet

- (UIEdgeInsets)contentInsetsForContainerView:(id)view
{
  viewCopy = view;
  v4 = SBFEffectiveHomeButtonType();
  [viewCopy layoutMargins];
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