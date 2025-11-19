@interface SB_UIScenePresentationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)_accessibilityCompareFrameForScrollParent:(id)a3 frame:(CGRect)a4 fromOrientation:(int64_t)a5 toOrientation:(int64_t)a6;
- (CGRect)_accessibilityFrameForSorting;
@end

@implementation SB_UIScenePresentationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBIconView"];
  [v3 validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityFrameForSorting" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityCompareFrameForScrollParent:frame:fromOrientation:toOrientation:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "q", "q", 0}];
}

- (CGRect)_accessibilityFrameForSorting
{
  v3 = [(SB_UIScenePresentationViewAccessibility *)self _accessibilitySpringBoardIconView];
  v4 = v3;
  if (v3)
  {
    [v3 _accessibilityFrameForSorting];
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

- (CGRect)_accessibilityCompareFrameForScrollParent:(id)a3 frame:(CGRect)a4 fromOrientation:(int64_t)a5 toOrientation:(int64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = [(SB_UIScenePresentationViewAccessibility *)self _accessibilitySpringBoardIconView];
  v15 = v14;
  if (v14)
  {
    [v14 _accessibilityCompareFrameForScrollParent:v13 frame:a5 fromOrientation:a6 toOrientation:{x, y, width, height}];
  }

  else
  {
    v28.receiver = self;
    v28.super_class = SB_UIScenePresentationViewAccessibility;
    [(SB_UIScenePresentationViewAccessibility *)&v28 _accessibilityCompareFrameForScrollParent:v13 frame:a5 fromOrientation:a6 toOrientation:x, y, width, height];
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