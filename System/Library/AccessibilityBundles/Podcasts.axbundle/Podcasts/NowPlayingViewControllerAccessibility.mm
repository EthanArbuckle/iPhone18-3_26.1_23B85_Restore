@interface NowPlayingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation NowPlayingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NowPlayingUI.NowPlayingViewController" hasSwiftField:@"collectionView" withSwiftType:"Optional<NowPlayingCollectionView>"];
  [validationsCopy validateClass:@"NowPlayingUI.TitleSectionHeaderView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6 = 0;
  objc_opt_class();
  v3 = [(NowPlayingViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityIdentifier:@"NowPlayingScreen"];
  [v4 setAccessibilityViewIsModal:0];
  v5.receiver = self;
  v5.super_class = NowPlayingViewControllerAccessibility;
  [(NowPlayingViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NowPlayingViewControllerAccessibility;
  [(NowPlayingViewControllerAccessibility *)&v3 viewDidLoad];
  [(NowPlayingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end