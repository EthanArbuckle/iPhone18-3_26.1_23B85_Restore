@interface UIWebPlugInViewAccessibility
- (void)webPlugInStart;
@end

@implementation UIWebPlugInViewAccessibility

- (void)webPlugInStart
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIWebPlugInViewAccessibility;
  [(UIWebPlugInViewAccessibility *)&v2 webPlugInStart];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end