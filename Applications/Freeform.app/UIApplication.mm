@interface UIApplication
- (void)accessibilityInitialize;
@end

@implementation UIApplication

- (void)accessibilityInitialize
{
  v2 = +[CRLAccessibility sharedInstance];

  [(CRLAccessibility *)v2 loadAccessibilitySupport];
}

@end