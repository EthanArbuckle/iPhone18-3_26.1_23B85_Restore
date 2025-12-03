@interface UIReferenceLibraryViewControllerAccessibility
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation UIReferenceLibraryViewControllerAccessibility

- (void)viewDidLoad
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIReferenceLibraryViewControllerAccessibility;
  [(UIReferenceLibraryViewControllerAccessibility *)&v3 viewDidLoad];
  location = [(UIReferenceLibraryViewControllerAccessibility *)selfCopy safeValueForKey:@"view"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [location setAccessibilityViewIsModal:1];
  }

  objc_storeStrong(&location, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v8 = a2;
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = UIReferenceLibraryViewControllerAccessibility;
  [(UIReferenceLibraryViewControllerAccessibility *)&v6 viewWillDisappear:disappear];
  location = [(UIReferenceLibraryViewControllerAccessibility *)selfCopy safeValueForKey:@"view"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = [location window];
    [window _setAccessibilityIsMainWindow:0];
    superview = [location superview];
    [superview setAccessibilityViewIsModal:0];
    MEMORY[0x29EDC9740](superview);
  }

  objc_storeStrong(&location, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = UIReferenceLibraryViewControllerAccessibility;
  [(UIReferenceLibraryViewControllerAccessibility *)&v6 viewDidAppear:appear];
  location = [(UIReferenceLibraryViewControllerAccessibility *)selfCopy safeValueForKey:@"view"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = [location window];
    [window _setAccessibilityIsMainWindow:1];
    superview = [location superview];
    [superview setAccessibilityViewIsModal:1];
    MEMORY[0x29EDC9740](superview);
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  objc_storeStrong(&location, 0);
}

@end