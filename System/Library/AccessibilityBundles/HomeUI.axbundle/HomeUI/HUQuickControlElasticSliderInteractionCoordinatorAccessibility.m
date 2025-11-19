@interface HUQuickControlElasticSliderInteractionCoordinatorAccessibility
- (HUQuickControlElasticSliderInteractionCoordinatorAccessibility)initWithControlView:(id)a3 delegate:(id)a4;
@end

@implementation HUQuickControlElasticSliderInteractionCoordinatorAccessibility

- (HUQuickControlElasticSliderInteractionCoordinatorAccessibility)initWithControlView:(id)a3 delegate:(id)a4
{
  v8.receiver = self;
  v8.super_class = HUQuickControlElasticSliderInteractionCoordinatorAccessibility;
  v5 = a3;
  v6 = [(HUQuickControlElasticSliderInteractionCoordinatorAccessibility *)&v8 initWithControlView:v5 delegate:a4];
  [v5 _accessibilitySetAssignedValue:v6 forKey:{AXControlUpdateDelegateKey, v8.receiver, v8.super_class}];

  return v6;
}

@end