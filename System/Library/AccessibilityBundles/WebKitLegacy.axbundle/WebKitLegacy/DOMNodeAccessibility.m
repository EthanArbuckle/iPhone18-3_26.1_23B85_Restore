@interface DOMNodeAccessibility
- (void)handleKeyWebEvent:(id)a3;
@end

@implementation DOMNodeAccessibility

- (void)handleKeyWebEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = DOMNodeAccessibility;
  v3 = a3;
  [(DOMNodeAccessibility *)&v4 handleKeyWebEvent:v3];
  sendNotificationAfterHandlingWebKeyEventIfNeeded(v3);
}

@end