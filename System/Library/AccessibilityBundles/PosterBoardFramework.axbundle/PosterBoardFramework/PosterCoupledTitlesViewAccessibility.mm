@interface PosterCoupledTitlesViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didTransitionFromLayout:(id)a3 toLayout:(id)a4;
@end

@implementation PosterCoupledTitlesViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PosterBoard.PosterCoupledTitlesView" hasSwiftFieldOfAnyClass:@"titleLabel"];
  [v3 validateClass:@"PosterBoard.PosterRackCollectionViewController" hasSwiftField:@"layoutMode" withSwiftType:"PRUISSwitcherLayoutMode"];
  [v3 validateClass:@"PosterBoard.PosterCoupledTitlesView" isKindOfClass:@"UICollectionReusableView"];
  [v3 validateClass:@"UICollectionReusableView" hasInstanceMethod:@"didTransitionFromLayout:toLayout:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PosterCoupledTitlesViewAccessibility;
  [(PosterCoupledTitlesViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PosterCoupledTitlesViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (id)accessibilityElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(PosterCoupledTitlesViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (void)didTransitionFromLayout:(id)a3 toLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PosterCoupledTitlesViewAccessibility;
  [(PosterCoupledTitlesViewAccessibility *)&v13 didTransitionFromLayout:v6 toLayout:v7];
  objc_opt_class();
  v8 = [v7 collectionView];
  v9 = [v8 dataSource];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v10 safeSwiftValueForKey:@"layoutMode"];
  v12 = AXConvertToLayoutMode();

  if (v12 == 3)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
  }
}

@end