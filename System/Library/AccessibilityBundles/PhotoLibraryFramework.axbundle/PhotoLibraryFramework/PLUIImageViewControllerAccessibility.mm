@interface PLUIImageViewControllerAccessibility
- (void)cropOverlayWasOKed:(id)ked;
@end

@implementation PLUIImageViewControllerAccessibility

- (void)cropOverlayWasOKed:(id)ked
{
  v3.receiver = self;
  v3.super_class = PLUIImageViewControllerAccessibility;
  [(PLUIImageViewControllerAccessibility *)&v3 cropOverlayWasOKed:ked];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end