@interface SB_UIScenePresentationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)_accessibilityCompareFrameForScrollParent:(id)parent frame:(CGRect)frame fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation;
- (CGRect)_accessibilityFrameForSorting;
@end

@implementation SB_UIScenePresentationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIconView"];
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityFrameForSorting" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityCompareFrameForScrollParent:frame:fromOrientation:toOrientation:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "q", "q", 0}];
}

- (CGRect)_accessibilityFrameForSorting
{
  _accessibilitySpringBoardIconView = [(SB_UIScenePresentationViewAccessibility *)self _accessibilitySpringBoardIconView];
  v4 = _accessibilitySpringBoardIconView;
  if (_accessibilitySpringBoardIconView)
  {
    [_accessibilitySpringBoardIconView _accessibilityFrameForSorting];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SB_UIScenePresentationViewAccessibility;
    [(SB_UIScenePresentationViewAccessibility *)&v17 _accessibilityFrameForSorting];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_accessibilityCompareFrameForScrollParent:(id)parent frame:(CGRect)frame fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  parentCopy = parent;
  _accessibilitySpringBoardIconView = [(SB_UIScenePresentationViewAccessibility *)self _accessibilitySpringBoardIconView];
  v15 = _accessibilitySpringBoardIconView;
  if (_accessibilitySpringBoardIconView)
  {
    [_accessibilitySpringBoardIconView _accessibilityCompareFrameForScrollParent:parentCopy frame:orientation fromOrientation:toOrientation toOrientation:{x, y, width, height}];
  }

  else
  {
    v28.receiver = self;
    v28.super_class = SB_UIScenePresentationViewAccessibility;
    [(SB_UIScenePresentationViewAccessibility *)&v28 _accessibilityCompareFrameForScrollParent:parentCopy frame:orientation fromOrientation:toOrientation toOrientation:x, y, width, height];
  }

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;

  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

@end