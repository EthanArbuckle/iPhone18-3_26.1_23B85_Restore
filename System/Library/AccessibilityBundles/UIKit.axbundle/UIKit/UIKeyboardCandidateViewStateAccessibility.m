@interface UIKeyboardCandidateViewStateAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setArrowButtonPosition:(int64_t)a3;
@end

@implementation UIKeyboardCandidateViewStateAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIKeyboardCandidateViewState" hasInstanceMethod:@"setArrowButtonPosition:" withFullSignature:{"v", "q", 0}];
  objc_storeStrong(v4, obj);
}

- (void)setArrowButtonPosition:(int64_t)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v4 = [MEMORY[0x29EDC7B08] activeInstance];
  IsPad = 0;
  if ([v4 accessibilityUsesExtendedKeyboardPredictionsEnabled])
  {
    IsPad = AXDeviceIsPad();
  }

  *&v3 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (IsPad)
  {
    v7 = 0;
  }

  v6.receiver = v9;
  v6.super_class = UIKeyboardCandidateViewStateAccessibility;
  [(UIKeyboardCandidateViewStateAccessibility *)&v6 setArrowButtonPosition:v7, v3];
}

@end