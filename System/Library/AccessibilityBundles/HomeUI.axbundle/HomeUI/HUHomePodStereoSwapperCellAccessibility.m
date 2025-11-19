@interface HUHomePodStereoSwapperCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (HUHomePodStereoSwapperCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUHomePodStereoSwapperCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUHomePodStereoSwapperCell" hasInstanceVariable:@"_swapButton" withType:"UIButton"];
  [v3 validateClass:@"HUHomePodStereoSwapperCell" hasInstanceVariable:@"_leftHomePod" withType:"HUHomePodDetailView"];
  [v3 validateClass:@"HUHomePodStereoSwapperCell" hasInstanceVariable:@"_rightHomePod" withType:"HUHomePodDetailView"];
  [v3 validateClass:@"HUHomePodStereoSwapperCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:" withFullSignature:{"q", "@", 0}];
}

- (HUHomePodStereoSwapperCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = HUHomePodStereoSwapperCellAccessibility;
  v4 = [(HUHomePodStereoSwapperCellAccessibility *)&v6 initWithStyle:a3 reuseIdentifier:a4];
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