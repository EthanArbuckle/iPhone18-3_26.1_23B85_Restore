@interface SLSheetTextComposeViewAccessibility
- (SLSheetTextComposeViewAccessibility)initWithFrame:(CGRect)frame;
@end

@implementation SLSheetTextComposeViewAccessibility

- (SLSheetTextComposeViewAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SLSheetTextComposeViewAccessibility;
  v3 = [(SLSheetTextComposeViewAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [(SLSheetTextComposeViewAccessibility *)v3 safeValueForKey:@"textView"];
  [v4 setAccessibilityIdentifier:@"SocialSheetComposeTextView"];

  return v3;
}

@end