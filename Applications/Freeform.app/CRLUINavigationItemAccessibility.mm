@interface CRLUINavigationItemAccessibility
+ (id)crlaxCastFrom:(id)from;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CRLUINavigationItemAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CRLUINavigationItemAccessibility;
  [(CRLUINavigationItemAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CRLUINavigationItemAccessibility *)self crlaxLoadAccessibilityInformation];
}

@end