@interface HUHomePodStereoSwapperCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (HUHomePodStereoSwapperCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUHomePodStereoSwapperCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUHomePodStereoSwapperCell" hasInstanceVariable:@"_swapButton" withType:"UIButton"];
  [validationsCopy validateClass:@"HUHomePodStereoSwapperCell" hasInstanceVariable:@"_leftHomePod" withType:"HUHomePodDetailView"];
  [validationsCopy validateClass:@"HUHomePodStereoSwapperCell" hasInstanceVariable:@"_rightHomePod" withType:"HUHomePodDetailView"];
  [validationsCopy validateClass:@"HUHomePodStereoSwapperCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:" withFullSignature:{"q", "@", 0}];
}

- (HUHomePodStereoSwapperCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = HUHomePodStereoSwapperCellAccessibility;
  v4 = [(HUHomePodStereoSwapperCellAccessibility *)&v6 initWithStyle:style reuseIdentifier:identifier];
  [(HUHomePodStereoSwapperCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HUHomePodStereoSwapperCellAccessibility;
  [(HUHomePodStereoSwapperCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HUHomePodStereoSwapperCellAccessibility *)self safeValueForKey:@"_swapButton"];
  v4 = accessibilityHomeLocalizedString(@"swap.speakers");
  [v3 setAccessibilityLabel:v4];
}

@end