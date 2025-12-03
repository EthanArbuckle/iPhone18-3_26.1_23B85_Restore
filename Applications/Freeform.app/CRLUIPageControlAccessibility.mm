@interface CRLUIPageControlAccessibility
+ (id)crlaxCastFrom:(id)from;
- (void)_accessibilityCurrentPageDidChange;
@end

@implementation CRLUIPageControlAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)_accessibilityCurrentPageDidChange
{
  if ([(CRLUIPageControlAccessibility *)self crlaxPageChangeCausesLayoutChange])
  {

    CRLAccessibilityPostLayoutChangedNotification(0);
  }

  else
  {
    v3.receiver = self;
    v3.super_class = CRLUIPageControlAccessibility;
    [(CRLUIPageControlAccessibility *)&v3 _accessibilityCurrentPageDidChange];
  }
}

@end