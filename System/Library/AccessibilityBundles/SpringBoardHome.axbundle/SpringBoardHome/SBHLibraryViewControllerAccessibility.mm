@interface SBHLibraryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation SBHLibraryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHLibraryViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBHLibraryViewController" hasInstanceMethod:@"libraryPodFolderControllerRequestsDismissal:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBHLibraryViewController" hasInstanceVariable:@"_podFolderViewController" withType:"SBHLibraryPodFolderController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = SBHLibraryViewControllerAccessibility;
  [(SBHLibraryViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBHLibraryViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];

  objc_initWeak(&location, self);
  view = [(SBHLibraryViewControllerAccessibility *)self view];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __83__SBHLibraryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F300190;
  objc_copyWeak(&v6, &location);
  [view setAccessibilityElementsHiddenBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

BOOL __83__SBHLibraryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained contentVisibility] == 2;

  return v2;
}

- (BOOL)accessibilityPerformEscape
{
  IsPad = AXDeviceIsPad();
  if (IsPad)
  {
    AXPerformSafeBlock();
  }

  return IsPad;
}

void __67__SBHLibraryViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 safeValueForKey:@"_podFolderViewController"];
  [v1 libraryPodFolderControllerRequestsDismissal:v2];

  v3 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v3, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = SBHLibraryViewControllerAccessibility;
  [(SBHLibraryViewControllerAccessibility *)&v3 viewDidAppear:appear];
  if (AXDeviceIsPad())
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = SBHLibraryViewControllerAccessibility;
  [(SBHLibraryViewControllerAccessibility *)&v3 viewDidDisappear:disappear];
  if (AXDeviceIsPad())
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

@end