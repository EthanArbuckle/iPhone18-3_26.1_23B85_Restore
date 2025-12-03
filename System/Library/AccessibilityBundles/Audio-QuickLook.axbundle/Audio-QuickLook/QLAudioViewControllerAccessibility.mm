@interface QLAudioViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation QLAudioViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLAudioViewController" hasInstanceVariable:@"_playButton" withType:"QLOverlayPlayButton"];
  [validationsCopy validateClass:@"QLOverlayPlayButton" hasInstanceVariable:@"_button" withType:"UIButton"];
  [validationsCopy validateClass:@"QLAudioViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = accessibilityLocalizedString(@"audio.play.button");
  v8 = 0;
  objc_opt_class();
  v4 = [(QLAudioViewControllerAccessibility *)self safeValueForKey:@"_playButton"];
  v5 = [v4 safeValueForKey:@"_button"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 setAccessibilityLabel:v3];
  v7.receiver = self;
  v7.super_class = QLAudioViewControllerAccessibility;
  [(QLAudioViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = QLAudioViewControllerAccessibility;
  [(QLAudioViewControllerAccessibility *)&v3 loadView];
  [(QLAudioViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end