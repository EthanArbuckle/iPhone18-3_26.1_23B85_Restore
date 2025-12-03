@interface WFCompactPlatterPresentationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation WFCompactPlatterPresentationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFCompactPlatterPresentationController" hasInstanceVariable:@"_containerView" withType:"UIView"];
  [validationsCopy validateClass:@"WFCompactPlatterView"];
  [validationsCopy validateClass:@"WFCompactPlatterView" hasInstanceMethod:@"primaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFCompactPlatterPresentationController" hasInstanceMethod:@"presentationTransitionDidEnd:" withFullSignature:{"v", "B", 0}];
}

uint64_t __84__WFCompactPlatterPresentationControllerAccessibility_presentationTransitionDidEnd___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Wfcompactplatt_2.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end