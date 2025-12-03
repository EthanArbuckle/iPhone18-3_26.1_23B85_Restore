@interface CRLNSObjectAccessibility_iOS
+ (id)crlaxCastFrom:(id)from;
- (BOOL)_accessibilityServesAsFirstElement;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CRLNSObjectAccessibility_iOS

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (BOOL)_accessibilityServesAsFirstElement
{
  v3 = +[CRLAccessibility sharedInstance];
  _firstElementForUpcomingScreenChange = [v3 _firstElementForUpcomingScreenChange];

  if (_firstElementForUpcomingScreenChange == self)
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