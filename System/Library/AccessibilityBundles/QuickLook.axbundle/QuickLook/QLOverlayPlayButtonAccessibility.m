@interface QLOverlayPlayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (QLOverlayPlayButtonAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_playButtonTapped:(id)a3;
@end

@implementation QLOverlayPlayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"QLOverlayPlayButton" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"QLOverlayPlayButton" hasInstanceMethod:@"_playButtonTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"QLOverlayPlayButton" hasInstanceVariable:@"_button" withType:"UIButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = QLOverlayPlayButtonAccessibility;
  [(QLOverlayPlayButtonAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(QLOverlayPlayButtonAccessibility *)self safeValueForKey:@"_button"];
  v4 = accessibilityLocalizedString(@"play.button");
  [v3 setAccessibilityLabel:v4];
}

- (QLOverlayPlayButtonAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = QLOverlayPlayButtonAccessibility;
  v3 = [(QLOverlayPlayButtonAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(QLOverlayPlayButtonAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

- (void)_playButtonTapped:(id)a3
{
  v3.receiver = self;
  v3.super_class = QLOverlayPlayButtonAccessibility;
  [(QLOverlayPlayButtonAccessibility *)&v3 _playButtonTapped:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end