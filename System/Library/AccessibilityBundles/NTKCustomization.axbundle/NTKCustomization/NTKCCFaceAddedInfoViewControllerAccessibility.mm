@interface NTKCCFaceAddedInfoViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation NTKCCFaceAddedInfoViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCCFaceAddedInfoViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKCCFaceAddedInfoViewController" hasInstanceVariable:@"_header" withType:"UILabel"];
  [validationsCopy validateClass:@"NTKCCFaceAddedInfoViewController" hasInstanceVariable:@"_close" withType:"UIButton"];
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