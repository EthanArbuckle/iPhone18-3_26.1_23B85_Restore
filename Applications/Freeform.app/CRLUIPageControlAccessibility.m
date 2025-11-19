@interface CRLUIPageControlAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (void)_accessibilityCurrentPageDidChange;
@end

@implementation CRLUIPageControlAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

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