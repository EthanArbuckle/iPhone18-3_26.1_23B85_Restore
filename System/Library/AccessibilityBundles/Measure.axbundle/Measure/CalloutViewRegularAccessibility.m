@interface CalloutViewRegularAccessibility
- (void)updateText:(int64_t)a3;
@end

@implementation CalloutViewRegularAccessibility

- (void)updateText:(int64_t)a3
{
  v5 = [(CalloutViewAccessibility *)self axCalloutText];
  v6.receiver = self;
  v6.super_class = CalloutViewRegularAccessibility;
  [(CalloutViewRegularAccessibility *)&v6 updateText:a3];
  [(CalloutViewAccessibility *)self axDidUpdateFromPreviousCalloutText:v5];
}

@end