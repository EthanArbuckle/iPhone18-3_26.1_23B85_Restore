@interface CalloutViewRegularAccessibility
- (void)updateText:(int64_t)text;
@end

@implementation CalloutViewRegularAccessibility

- (void)updateText:(int64_t)text
{
  axCalloutText = [(CalloutViewAccessibility *)self axCalloutText];
  v6.receiver = self;
  v6.super_class = CalloutViewRegularAccessibility;
  [(CalloutViewRegularAccessibility *)&v6 updateText:text];
  [(CalloutViewAccessibility *)self axDidUpdateFromPreviousCalloutText:axCalloutText];
}

@end