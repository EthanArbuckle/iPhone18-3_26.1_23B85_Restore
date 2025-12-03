@interface PUOneUpDetailsBarButtonControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axDetailsShowing;
- (id)_axAssetViewModel;
- (void)_axLoadDetailsButtonAccessibility:(id)accessibility;
- (void)update;
@end

@implementation PUOneUpDetailsBarButtonControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUAssetViewModel" hasInstanceMethod:@"isAccessoryViewVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"assetViewModelForAssetReference:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"currentAssetReference" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUOneUpDetailsBarButtonController" hasInstanceMethod:@"update" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUOneUpDetailsBarButtonController" hasSwiftField:@"browseViewModel" withSwiftType:"PUBrowsingViewModel"];
  [validationsCopy validateClass:@"PUOneUpDetailsBarButtonController" hasSwiftField:@"barButtonItem" withSwiftType:"AnimatableBarButtonItem"];
}

- (id)_axAssetViewModel
{
  v2 = [(PUOneUpDetailsBarButtonControllerAccessibility *)self safeSwiftValueForKey:@"browseViewModel"];
  v3 = [v2 safeValueForKey:@"currentAssetReference"];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v6 = v2;
  v7 = v3;
  AXPerformSafeBlock();
  v4 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __67__PUOneUpDetailsBarButtonControllerAccessibility__axAssetViewModel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetViewModelForAssetReference:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_axDetailsShowing
{
  _axAssetViewModel = [(PUOneUpDetailsBarButtonControllerAccessibility *)self _axAssetViewModel];
  v3 = [_axAssetViewModel safeBoolForKey:@"isAccessoryViewVisible"];

  return v3;
}

- (void)_axLoadDetailsButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  if ([(PUOneUpDetailsBarButtonControllerAccessibility *)self _axDetailsShowing])
  {
    accessibilityTraits = [accessibilityCopy accessibilityTraits];
    v5 = *MEMORY[0x29EDC7FC0] | accessibilityTraits;
  }

  else
  {
    v6 = *MEMORY[0x29EDC7FC0];
    v5 = [accessibilityCopy accessibilityTraits] & ~v6;
  }

  [accessibilityCopy setAccessibilityTraits:v5];
}

- (void)update
{
  v2.receiver = self;
  v2.super_class = PUOneUpDetailsBarButtonControllerAccessibility;
  [(PUOneUpDetailsBarButtonControllerAccessibility *)&v2 update];
  AXPerformSafeBlock();
}

void __56__PUOneUpDetailsBarButtonControllerAccessibility_update__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeSwiftValueForKey:@"barButtonItem"];
  [*(a1 + 32) _axLoadDetailsButtonAccessibility:v2];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end