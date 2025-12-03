@interface UIKeyboardCandidateViewStateAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setArrowButtonPosition:(int64_t)position;
@end

@implementation UIKeyboardCandidateViewStateAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIKeyboardCandidateViewState" hasInstanceMethod:@"setArrowButtonPosition:" withFullSignature:{"v", "q", 0}];
  objc_storeStrong(v4, obj);
}

- (void)setArrowButtonPosition:(int64_t)position
{
  selfCopy = self;
  v8 = a2;
  positionCopy = position;
  activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
  IsPad = 0;
  if ([activeInstance accessibilityUsesExtendedKeyboardPredictionsEnabled])
  {
    IsPad = AXDeviceIsPad();
  }

  *&v3 = MEMORY[0x29EDC9740](activeInstance).n128_u64[0];
  if (IsPad)
  {
    positionCopy = 0;
  }

  v6.receiver = selfCopy;
  v6.super_class = UIKeyboardCandidateViewStateAccessibility;
  [(UIKeyboardCandidateViewStateAccessibility *)&v6 setArrowButtonPosition:positionCopy, v3];
}

@end