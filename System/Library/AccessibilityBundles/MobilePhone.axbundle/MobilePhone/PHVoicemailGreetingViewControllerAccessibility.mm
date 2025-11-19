@interface PHVoicemailGreetingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)viewDidLoad;
@end

@implementation PHVoicemailGreetingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHVoicemailGreetingViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PHVoicemailGreetingViewController" hasInstanceMethod:@"sliderCell" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHVoicemailGreetingSliderCell" hasInstanceVariable:@"_timelineSlider" withType:"VMPlayerTimelineSlider"];
  [v3 validateClass:@"PHVoicemailGreetingSliderCell" hasInstanceMethod:@"progressView" withFullSignature:{"@", 0}];
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