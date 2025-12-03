@interface PXCuratedLibraryFooterControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_shouldRevealPhotosFooterView;
- (void)scrollViewControllerDidScroll:(id)scroll;
@end

@implementation PXCuratedLibraryFooterControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXCuratedLibraryFooterController" hasInstanceMethod:@"_shouldRevealPhotosFooterView" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryFooterController" hasInstanceMethod:@"gridView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGView" hasInstanceMethod:@"scrollViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXUIScrollViewController"];
  [validationsCopy validateClass:@"PXUIScrollViewController" hasInstanceMethod:@"isScrolledAtEdge:tolerance:" withFullSignature:{"B", "I", "d", 0}];
  [validationsCopy validateProtocol:@"PXScrollViewControllerObserver" hasMethod:@"scrollViewControllerDidScroll:" isInstanceMethod:1 isRequired:0];
  [validationsCopy validateClass:@"PXCuratedLibraryFooterController" conformsToProtocol:@"PXScrollViewControllerObserver"];
  [validationsCopy validateClass:@"PXCuratedLibraryFooterController" hasInstanceMethod:@"_conditionallyRevealPhotosFooterView" withFullSignature:{"v", 0}];
}

- (BOOL)_shouldRevealPhotosFooterView
{
  v12.receiver = self;
  v12.super_class = PXCuratedLibraryFooterControllerAccessibility;
  _shouldRevealPhotosFooterView = [(PXCuratedLibraryFooterControllerAccessibility *)&v12 _shouldRevealPhotosFooterView];
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
      _shouldRevealPhotosFooterView = *(v9 + 24);

      _Block_object_dispose(&v8, 8);
    }
  }

  return _shouldRevealPhotosFooterView & 1;
}

uint64_t __78__PXCuratedLibraryFooterControllerAccessibility__shouldRevealPhotosFooterView__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isScrolledAtEdge:3 tolerance:1.0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryFooterControllerAccessibility;
  [(PXCuratedLibraryFooterControllerAccessibility *)&v3 scrollViewControllerDidScroll:scroll];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    AXPerformSafeBlock();
  }
}

@end