@interface DOMNodeAccessibility
- (void)handleKeyWebEvent:(id)event;
@end

@implementation DOMNodeAccessibility

- (void)handleKeyWebEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = DOMNodeAccessibility;
  eventCopy = event;
  [(DOMNodeAccessibility *)&v4 handleKeyWebEvent:eventCopy];
  sendNotificationAfterHandlingWebKeyEventIfNeeded(eventCopy);
}

@end