@interface SBHLibrarySearchControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setActive:(BOOL)active;
@end

@implementation SBHLibrarySearchControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHLibrarySearchController" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHLibrarySearchController" hasInstanceMethod:@"setActive:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBHLibrarySearchController" hasInstanceMethod:@"searchResultsController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconLibraryTableViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = SBHLibrarySearchControllerAccessibility;
  [(SBHLibrarySearchControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(SBHLibrarySearchControllerAccessibility *)self safeValueForKey:@"searchResultsController"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    view = [v4 view];
    superview = [view superview];

    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __85__SBHLibrarySearchControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v7[3] = &unk_29F300190;
    objc_copyWeak(&v8, &location);
    [superview _setAccessibilityViewIsModalBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

uint64_t __85__SBHLibrarySearchControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isActive"];

  return v2;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(SBHLibrarySearchControllerAccessibility *)self safeBoolForKey:@"isActive"];
  if (v2)
  {
    AXPerformSafeBlock();
  }

  return v2;
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v5 = [(SBHLibrarySearchControllerAccessibility *)self safeBoolForKey:@"isActive"];
  v6.receiver = self;
  v6.super_class = SBHLibrarySearchControllerAccessibility;
  [(SBHLibrarySearchControllerAccessibility *)&v6 setActive:activeCopy];
  if (v5 != activeCopy)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

@end