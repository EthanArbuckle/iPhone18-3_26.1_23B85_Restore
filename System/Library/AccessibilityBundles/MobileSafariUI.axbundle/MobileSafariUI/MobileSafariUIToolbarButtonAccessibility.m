@interface MobileSafariUIToolbarButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityContainingParentForOrdering;
@end

@implementation MobileSafariUIToolbarButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NavigationBar"];
  [v3 validateClass:@"BrowserToolbar"];
}

- (id)_accessibilityContainingParentForOrdering
{
  v3 = [(MobileSafariUIToolbarButtonAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Browsertoolbar.isa)];

  if (!v3 || ([(MobileSafariUIToolbarButtonAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Navigationbar_0.isa)], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6.receiver = self;
    v6.super_class = MobileSafariUIToolbarButtonAccessibility;
    v4 = [(MobileSafariUIToolbarButtonAccessibility *)&v6 _accessibilityContainingParentForOrdering];
  }

  return v4;
}

@end