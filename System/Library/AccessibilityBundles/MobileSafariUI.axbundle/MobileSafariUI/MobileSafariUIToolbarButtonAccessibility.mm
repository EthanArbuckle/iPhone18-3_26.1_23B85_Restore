@interface MobileSafariUIToolbarButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityContainingParentForOrdering;
@end

@implementation MobileSafariUIToolbarButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NavigationBar"];
  [validationsCopy validateClass:@"BrowserToolbar"];
}

- (id)_accessibilityContainingParentForOrdering
{
  v3 = [(MobileSafariUIToolbarButtonAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Browsertoolbar.isa)];

  if (!v3 || ([(MobileSafariUIToolbarButtonAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Navigationbar_0.isa)], (_accessibilityContainingParentForOrdering = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6.receiver = self;
    v6.super_class = MobileSafariUIToolbarButtonAccessibility;
    _accessibilityContainingParentForOrdering = [(MobileSafariUIToolbarButtonAccessibility *)&v6 _accessibilityContainingParentForOrdering];
  }

  return _accessibilityContainingParentForOrdering;
}

@end