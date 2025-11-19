@interface CallistoViewControllerAccessibility
- (void)showUIIfReady;
@end

@implementation CallistoViewControllerAccessibility

- (void)showUIIfReady
{
  v2.receiver = self;
  v2.super_class = CallistoViewControllerAccessibility;
  [(CallistoViewControllerAccessibility *)&v2 showUIIfReady];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end