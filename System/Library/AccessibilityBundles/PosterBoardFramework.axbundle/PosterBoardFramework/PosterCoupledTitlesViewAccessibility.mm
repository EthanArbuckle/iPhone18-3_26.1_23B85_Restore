@interface PosterCoupledTitlesViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didTransitionFromLayout:(id)layout toLayout:(id)toLayout;
@end

@implementation PosterCoupledTitlesViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PosterBoard.PosterCoupledTitlesView" hasSwiftFieldOfAnyClass:@"titleLabel"];
  [validationsCopy validateClass:@"PosterBoard.PosterRackCollectionViewController" hasSwiftField:@"layoutMode" withSwiftType:"PRUISSwitcherLayoutMode"];
  [validationsCopy validateClass:@"PosterBoard.PosterCoupledTitlesView" isKindOfClass:@"UICollectionReusableView"];
  [validationsCopy validateClass:@"UICollectionReusableView" hasInstanceMethod:@"didTransitionFromLayout:toLayout:" withFullSignature:{"v", "@", "@", 0}];
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

- (void)didTransitionFromLayout:(id)layout toLayout:(id)toLayout
{
  layoutCopy = layout;
  toLayoutCopy = toLayout;
  v13.receiver = self;
  v13.super_class = PosterCoupledTitlesViewAccessibility;
  [(PosterCoupledTitlesViewAccessibility *)&v13 didTransitionFromLayout:layoutCopy toLayout:toLayoutCopy];
  objc_opt_class();
  collectionView = [toLayoutCopy collectionView];
  dataSource = [collectionView dataSource];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v10 safeSwiftValueForKey:@"layoutMode"];
  v12 = AXConvertToLayoutMode();

  if (v12 == 3)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
  }
}

@end