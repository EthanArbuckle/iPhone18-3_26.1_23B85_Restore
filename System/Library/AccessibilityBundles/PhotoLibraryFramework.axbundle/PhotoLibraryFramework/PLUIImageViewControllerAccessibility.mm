@interface PLUIImageViewControllerAccessibility
- (void)cropOverlayWasOKed:(id)a3;
@end

@implementation PLUIImageViewControllerAccessibility

- (void)cropOverlayWasOKed:(id)a3
{
  v3.receiver = self;
  v3.super_class = PLUIImageViewControllerAccessibility;
  [(PLUIImageViewControllerAccessibility *)&v3 cropOverlayWasOKed:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end