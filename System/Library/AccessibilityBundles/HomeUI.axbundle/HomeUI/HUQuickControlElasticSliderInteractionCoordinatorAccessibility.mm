@interface HUQuickControlElasticSliderInteractionCoordinatorAccessibility
- (HUQuickControlElasticSliderInteractionCoordinatorAccessibility)initWithControlView:(id)view delegate:(id)delegate;
@end

@implementation HUQuickControlElasticSliderInteractionCoordinatorAccessibility

- (HUQuickControlElasticSliderInteractionCoordinatorAccessibility)initWithControlView:(id)view delegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = HUQuickControlElasticSliderInteractionCoordinatorAccessibility;
  viewCopy = view;
  v6 = [(HUQuickControlElasticSliderInteractionCoordinatorAccessibility *)&v8 initWithControlView:viewCopy delegate:delegate];
  [viewCopy _accessibilitySetAssignedValue:v6 forKey:{AXControlUpdateDelegateKey, v8.receiver, v8.super_class}];

  return v6;
}

@end