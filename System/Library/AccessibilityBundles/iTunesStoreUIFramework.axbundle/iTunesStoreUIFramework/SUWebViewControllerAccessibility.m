@interface SUWebViewControllerAccessibility
- (void)_removePlaceholderBackgroundView;
@end

@implementation SUWebViewControllerAccessibility

- (void)_removePlaceholderBackgroundView
{
  v2.receiver = self;
  v2.super_class = SUWebViewControllerAccessibility;
  [(SUWebViewControllerAccessibility *)&v2 _removePlaceholderBackgroundView];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end