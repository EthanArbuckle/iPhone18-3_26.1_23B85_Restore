@interface UIReferenceLibraryViewControllerAccessibility
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation UIReferenceLibraryViewControllerAccessibility

- (void)viewDidLoad
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIReferenceLibraryViewControllerAccessibility;
  [(UIReferenceLibraryViewControllerAccessibility *)&v3 viewDidLoad];
  location = [(UIReferenceLibraryViewControllerAccessibility *)v5 safeValueForKey:@"view"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [location setAccessibilityViewIsModal:1];
  }

  objc_storeStrong(&location, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = UIReferenceLibraryViewControllerAccessibility;
  [(UIReferenceLibraryViewControllerAccessibility *)&v6 viewWillDisappear:a3];
  location = [(UIReferenceLibraryViewControllerAccessibility *)v9 safeValueForKey:@"view"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [location window];
    [v3 _setAccessibilityIsMainWindow:0];
    v4 = [location superview];
    [v4 setAccessibilityViewIsModal:0];
    MEMORY[0x29EDC9740](v4);
  }

  objc_storeStrong(&location, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = UIReferenceLibraryViewControllerAccessibility;
  [(UIReferenceLibraryViewControllerAccessibility *)&v6 viewDidAppear:a3];
  location = [(UIReferenceLibraryViewControllerAccessibility *)v9 safeValueForKey:@"view"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [location window];
    [v3 _setAccessibilityIsMainWindow:1];
    v4 = [location superview];
    [v4 setAccessibilityViewIsModal:1];
    MEMORY[0x29EDC9740](v4);
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  objc_storeStrong(&location, 0);
}

@end