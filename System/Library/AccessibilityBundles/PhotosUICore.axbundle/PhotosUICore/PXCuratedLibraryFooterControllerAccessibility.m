@interface PXCuratedLibraryFooterControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_shouldRevealPhotosFooterView;
- (void)scrollViewControllerDidScroll:(id)a3;
@end

@implementation PXCuratedLibraryFooterControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXCuratedLibraryFooterController" hasInstanceMethod:@"_shouldRevealPhotosFooterView" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXCuratedLibraryFooterController" hasInstanceMethod:@"gridView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGView" hasInstanceMethod:@"scrollViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXUIScrollViewController"];
  [v3 validateClass:@"PXUIScrollViewController" hasInstanceMethod:@"isScrolledAtEdge:tolerance:" withFullSignature:{"B", "I", "d", 0}];
  [v3 validateProtocol:@"PXScrollViewControllerObserver" hasMethod:@"scrollViewControllerDidScroll:" isInstanceMethod:1 isRequired:0];
  [v3 validateClass:@"PXCuratedLibraryFooterController" conformsToProtocol:@"PXScrollViewControllerObserver"];
  [v3 validateClass:@"PXCuratedLibraryFooterController" hasInstanceMethod:@"_conditionallyRevealPhotosFooterView" withFullSignature:{"v", 0}];
}

- (BOOL)_shouldRevealPhotosFooterView
{
  v12.receiver = self;
  v12.super_class = PXCuratedLibraryFooterControllerAccessibility;
  v3 = [(PXCuratedLibraryFooterControllerAccessibility *)&v12 _shouldRevealPhotosFooterView];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    v4 = [(PXCuratedLibraryFooterControllerAccessibility *)self safeValueForKey:@"gridView"];
    v5 = [v4 safeValueForKey:@"scrollViewController"];

    MEMORY[0x29C2E6930](@"PXUIScrollViewController");
    if (objc_opt_isKindOfClass())
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v11 = 0;
      v7 = v5;
      AXPerformSafeBlock();
      v3 = *(v9 + 24);

      _Block_object_dispose(&v8, 8);
    }
  }

  return v3 & 1;
}

uint64_t __78__PXCuratedLibraryFooterControllerAccessibility__shouldRevealPhotosFooterView__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isScrolledAtEdge:3 tolerance:1.0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryFooterControllerAccessibility;
  [(PXCuratedLibraryFooterControllerAccessibility *)&v3 scrollViewControllerDidScroll:a3];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    AXPerformSafeBlock();
  }
}

@end