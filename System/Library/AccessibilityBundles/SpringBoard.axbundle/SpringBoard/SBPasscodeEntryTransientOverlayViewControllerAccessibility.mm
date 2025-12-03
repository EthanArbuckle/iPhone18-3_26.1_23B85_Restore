@interface SBPasscodeEntryTransientOverlayViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateView;
- (void)viewDidLoad;
@end

@implementation SBPasscodeEntryTransientOverlayViewControllerAccessibility

- (void)_axAnnotateView
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];
  [view setAccessibilityViewIsModal:1];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SBPasscodeEntryTransientOverlayViewControllerAccessibility;
  [(SBPasscodeEntryTransientOverlayViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SBPasscodeEntryTransientOverlayViewControllerAccessibility *)self _axAnnotateView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBPasscodeEntryTransientOverlayViewControllerAccessibility;
  [(SBPasscodeEntryTransientOverlayViewControllerAccessibility *)&v3 viewDidLoad];
  [(SBPasscodeEntryTransientOverlayViewControllerAccessibility *)self _axAnnotateView];
}

@end