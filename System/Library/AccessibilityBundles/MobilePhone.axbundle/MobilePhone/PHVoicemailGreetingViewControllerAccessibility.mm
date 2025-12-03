@interface PHVoicemailGreetingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidLoad;
@end

@implementation PHVoicemailGreetingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHVoicemailGreetingViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHVoicemailGreetingViewController" hasInstanceMethod:@"sliderCell" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHVoicemailGreetingSliderCell" hasInstanceVariable:@"_timelineSlider" withType:"VMPlayerTimelineSlider"];
  [validationsCopy validateClass:@"PHVoicemailGreetingSliderCell" hasInstanceMethod:@"progressView" withFullSignature:{"@", 0}];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PHVoicemailGreetingViewControllerAccessibility;
  [(PHVoicemailGreetingViewControllerAccessibility *)&v7 viewDidLoad];
  v3 = [(PHVoicemailGreetingViewControllerAccessibility *)self safeValueForKey:@"sliderCell"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"_timelineSlider"];
  [v5 accessibilitySetIdentification:@"GreetingSlider"];

  v6 = [v4 safeValueForKey:@"_progressView"];
  [v6 setIsAccessibilityElement:0];
}

@end