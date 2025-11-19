@interface PBFAmbientEditingCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PBFAmbientEditingCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PBFAmbientEditingCollectionViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PBFAmbientEditingCollectionViewController" hasSwiftField:@"editingSceneViewController" withSwiftType:"Optional<PREditingSceneViewController>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PBFAmbientEditingCollectionViewControllerAccessibility;
  [(PBFAmbientEditingCollectionViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PBFAmbientEditingCollectionViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __100__PBFAmbientEditingCollectionViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2EB468;
  v4[4] = self;
  [v3 setAccessibilityElementsHiddenBlock:v4];
}

BOOL __100__PBFAmbientEditingCollectionViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeSwiftValueForKey:@"editingSceneViewController"];
  v2 = v1 != 0;

  return v2;
}

@end