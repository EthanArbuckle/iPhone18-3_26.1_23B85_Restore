@interface SBRemoteTransientOverlayHostViewControllerAccessibility
- (SBRemoteTransientOverlayHostViewControllerAccessibility)initWithNibName:(id)name bundle:(id)bundle;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillLayoutSubviews;
@end

@implementation SBRemoteTransientOverlayHostViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SBRemoteTransientOverlayHostViewControllerAccessibility;
  [(SBRemoteTransientOverlayHostViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBRemoteTransientOverlayHostViewControllerAccessibility *)self safeUIViewForKey:@"viewIfLoaded"];
  window = [v3 window];
  [window setAccessibilityViewIsModal:1];
}

- (SBRemoteTransientOverlayHostViewControllerAccessibility)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayHostViewControllerAccessibility;
  v4 = [(SBRemoteTransientOverlayHostViewControllerAccessibility *)&v6 initWithNibName:name bundle:bundle];
  [(SBRemoteTransientOverlayHostViewControllerAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBRemoteTransientOverlayHostViewControllerAccessibility;
  [(SBRemoteTransientOverlayHostViewControllerAccessibility *)&v3 viewWillLayoutSubviews];
  [(SBRemoteTransientOverlayHostViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end