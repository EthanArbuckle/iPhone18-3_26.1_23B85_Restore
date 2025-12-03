@interface YearMonthAnimatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)animateTransition:(id)transition;
@end

@implementation YearMonthAnimatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"YearMonthAnimator" hasInstanceMethod:@"animateTransition:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"YearMonthAnimator" hasInstanceMethod:@"transitionDuration:" withFullSignature:{"d", "@", 0}];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v6.receiver = self;
  v6.super_class = YearMonthAnimatorAccessibility;
  [(YearMonthAnimatorAccessibility *)&v6 animateTransition:transitionCopy];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  AXPerformSafeBlock();
  _Block_object_dispose(v5, 8);
  AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __52__YearMonthAnimatorAccessibility_animateTransition___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) transitionDuration:0];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

@end