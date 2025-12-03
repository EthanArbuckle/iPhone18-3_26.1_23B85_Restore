@interface QLOverlayPlayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (QLOverlayPlayButtonAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_playButtonTapped:(id)tapped;
@end

@implementation QLOverlayPlayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLOverlayPlayButton" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"QLOverlayPlayButton" hasInstanceMethod:@"_playButtonTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"QLOverlayPlayButton" hasInstanceVariable:@"_button" withType:"UIButton"];
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

- (QLOverlayPlayButtonAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = QLOverlayPlayButtonAccessibility;
  v3 = [(QLOverlayPlayButtonAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(QLOverlayPlayButtonAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

- (void)_playButtonTapped:(id)tapped
{
  v3.receiver = self;
  v3.super_class = QLOverlayPlayButtonAccessibility;
  [(QLOverlayPlayButtonAccessibility *)&v3 _playButtonTapped:tapped];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end