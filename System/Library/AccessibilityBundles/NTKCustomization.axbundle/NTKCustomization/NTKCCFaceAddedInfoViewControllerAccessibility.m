@interface NTKCCFaceAddedInfoViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation NTKCCFaceAddedInfoViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCCFaceAddedInfoViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NTKCCFaceAddedInfoViewController" hasInstanceVariable:@"_header" withType:"UILabel"];
  [v3 validateClass:@"NTKCCFaceAddedInfoViewController" hasInstanceVariable:@"_close" withType:"UIButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = NTKCCFaceAddedInfoViewControllerAccessibility;
  [(NTKCCFaceAddedInfoViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(NTKCCFaceAddedInfoViewControllerAccessibility *)self safeValueForKey:@"_header"];
  [v3 setAccessibilityTraits:UIAccessibilityTraitHeader];

  v4 = [(NTKCCFaceAddedInfoViewControllerAccessibility *)self safeValueForKey:@"_close"];
  v5 = accessibilityLocalizedCustomizationString(@"close.button");
  [v4 setAccessibilityLabel:v5];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NTKCCFaceAddedInfoViewControllerAccessibility;
  [(NTKCCFaceAddedInfoViewControllerAccessibility *)&v3 viewDidLoad];
  [(NTKCCFaceAddedInfoViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end