@interface SLSheetTextComposeViewAccessibility
- (SLSheetTextComposeViewAccessibility)initWithFrame:(CGRect)a3;
@end

@implementation SLSheetTextComposeViewAccessibility

- (SLSheetTextComposeViewAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SLSheetTextComposeViewAccessibility;
  v3 = [(SLSheetTextComposeViewAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(SLSheetTextComposeViewAccessibility *)v3 safeValueForKey:@"textView"];
  [v4 setAccessibilityIdentifier:@"SocialSheetComposeTextView"];

  return v3;
}

@end