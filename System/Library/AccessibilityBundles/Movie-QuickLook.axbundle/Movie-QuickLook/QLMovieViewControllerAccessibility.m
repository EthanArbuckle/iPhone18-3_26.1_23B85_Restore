@interface QLMovieViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation QLMovieViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"QLMovieViewController" hasInstanceVariable:@"_playButton" withType:"QLOverlayPlayButton"];
  [v3 validateClass:@"QLOverlayPlayButton" hasInstanceVariable:@"_button" withType:"UIButton"];
  [v3 validateClass:@"QLMovieViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = accessibilityLocalizedString(@"movie.play.button");
  v8 = 0;
  objc_opt_class();
  v4 = [(QLMovieViewControllerAccessibility *)self safeValueForKey:@"_playButton"];
  v5 = [v4 safeValueForKey:@"_button"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 setAccessibilityLabel:v3];
  v7.receiver = self;
  v7.super_class = QLMovieViewControllerAccessibility;
  [(QLMovieViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = QLMovieViewControllerAccessibility;
  [(QLMovieViewControllerAccessibility *)&v3 loadView];
  [(QLMovieViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end