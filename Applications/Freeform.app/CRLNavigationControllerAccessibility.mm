@interface CRLNavigationControllerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
@end

@implementation CRLNavigationControllerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = CRLNavigationControllerAccessibility;
  [(CRLNavigationControllerAccessibility *)&v4 didShowViewController:controller animated:animated];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

@end