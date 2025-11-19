@interface UIDocumentLaunchViewControllerAccessibility
@end

@implementation UIDocumentLaunchViewControllerAccessibility

uint64_t __90___UIDocumentLaunchViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uiremoteview.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

BOOL __90___UIDocumentLaunchViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"_browserPresentationController"];
  v2 = [v3 safeStringForKey:@"selectedDetentIdentifier"];
  v5 = [v2 isEqualToString:@"_UIDocumentUnavailableViewBrowserViewControllerMediumDetent"];
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](WeakRetained);
  return (v5 & 1) != 0;
}

@end