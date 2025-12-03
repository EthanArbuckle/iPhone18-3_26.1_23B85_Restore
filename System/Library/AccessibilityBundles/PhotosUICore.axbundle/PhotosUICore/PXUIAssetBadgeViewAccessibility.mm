@interface PXUIAssetBadgeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PXUIAssetBadgeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXUIAssetBadgeView" hasInstanceMethod:@"badgeInfo" withFullSignature:{"{PXAssetBadgeInfo=Qdqq}", 0}];
  [validationsCopy validateClass:@"PXUIAssetBadgeView" hasInstanceMethod:@"style" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PXUIAssetBadgeView" hasInstanceVariable:@"_topLeftPrimaryGroup" withType:"_PXUIAssetBadgeTopGroup"];
  [validationsCopy validateClass:@"_PXUIAssetBadgeTopGroup" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __57__PXUIAssetBadgeViewAccessibility_isAccessibilityElement__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 badgeInfo];
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  return [*(a1 + 32) setAccessibilityElementsHidden:{1, 0, 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PXUIAssetBadgeViewAccessibility *)self safeValueForKey:@"_topLeftPrimaryGroup"];
  if (v3)
  {
    v9 = 0;
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"label"];
    v5 = __UIAccessibilityCastAsClass();

    accessibilityLabel = [v5 accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PXUIAssetBadgeViewAccessibility;
    accessibilityLabel = [(PXUIAssetBadgeViewAccessibility *)&v8 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__2;
  v8 = __Block_byref_object_dispose__2;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __53__PXUIAssetBadgeViewAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 badgeInfo];
  }
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = PXUIAssetBadgeViewAccessibility;
  accessibilityTraits = [(PXUIAssetBadgeViewAccessibility *)&v8 accessibilityTraits];
  v4 = [(PXUIAssetBadgeViewAccessibility *)self safeValueForKey:@"style"];
  integerValue = [v4 integerValue];

  v6 = *MEMORY[0x29EDC7F70];
  if (integerValue != 4)
  {
    v6 = 0;
  }

  return v6 | accessibilityTraits;
}

@end