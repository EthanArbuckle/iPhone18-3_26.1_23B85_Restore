@interface CRLNSObjectAccessibility_iOS
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)_accessibilityServesAsFirstElement;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CRLNSObjectAccessibility_iOS

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (BOOL)_accessibilityServesAsFirstElement
{
  v3 = +[CRLAccessibility sharedInstance];
  v4 = [v3 _firstElementForUpcomingScreenChange];

  if (v4 == self)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CRLNSObjectAccessibility_iOS;
  return [(CRLNSObjectAccessibility_iOS *)&v6 _accessibilityServesAsFirstElement];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CRLNSObjectAccessibility_iOS;
  [(CRLNSObjectAccessibility_iOS *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CRLNSObjectAccessibility_iOS *)self crlaxLoadAccessibilityInformation];
}

@end