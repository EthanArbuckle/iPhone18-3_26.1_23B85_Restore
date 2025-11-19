@interface WFCompactPlatterPresentationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation WFCompactPlatterPresentationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WFCompactPlatterPresentationController" hasInstanceVariable:@"_containerView" withType:"UIView"];
  [v3 validateClass:@"WFCompactPlatterView"];
  [v3 validateClass:@"WFCompactPlatterView" hasInstanceMethod:@"primaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFCompactPlatterPresentationController" hasInstanceMethod:@"presentationTransitionDidEnd:" withFullSignature:{"v", "B", 0}];
}

uint64_t __84__WFCompactPlatterPresentationControllerAccessibility_presentationTransitionDidEnd___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Wfcompactplatt_2.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end