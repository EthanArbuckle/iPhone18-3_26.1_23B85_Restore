@interface PUOneUpDetailsBarButtonControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axDetailsShowing;
- (id)_axAssetViewModel;
- (void)_axLoadDetailsButtonAccessibility:(id)a3;
- (void)update;
@end

@implementation PUOneUpDetailsBarButtonControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUAssetViewModel" hasInstanceMethod:@"isAccessoryViewVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"assetViewModelForAssetReference:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"currentAssetReference" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUOneUpDetailsBarButtonController" hasInstanceMethod:@"update" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUOneUpDetailsBarButtonController" hasSwiftField:@"browseViewModel" withSwiftType:"PUBrowsingViewModel"];
  [v3 validateClass:@"PUOneUpDetailsBarButtonController" hasSwiftField:@"barButtonItem" withSwiftType:"AnimatableBarButtonItem"];
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
  v2 = [(PUOneUpDetailsBarButtonControllerAccessibility *)self _axAssetViewModel];
  v3 = [v2 safeBoolForKey:@"isAccessoryViewVisible"];

  return v3;
}

- (void)_axLoadDetailsButtonAccessibility:(id)a3
{
  v7 = a3;
  if ([(PUOneUpDetailsBarButtonControllerAccessibility *)self _axDetailsShowing])
  {
    v4 = [v7 accessibilityTraits];
    v5 = *MEMORY[0x29EDC7FC0] | v4;
  }

  else
  {
    v6 = *MEMORY[0x29EDC7FC0];
    v5 = [v7 accessibilityTraits] & ~v6;
  }

  [v7 setAccessibilityTraits:v5];
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