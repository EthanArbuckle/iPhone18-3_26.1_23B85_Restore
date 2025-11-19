@interface CertInfoSheetViewControllerAccessibility
- (void)_pushDetailsView;
@end

@implementation CertInfoSheetViewControllerAccessibility

- (void)_pushDetailsView
{
  v2.receiver = self;
  v2.super_class = CertInfoSheetViewControllerAccessibility;
  [(CertInfoSheetViewControllerAccessibility *)&v2 _pushDetailsView];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end