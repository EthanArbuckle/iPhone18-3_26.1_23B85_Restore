@interface MTACountDownPickerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation MTACountDownPickerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTACountDownPicker" isKindOfClass:@"UITextField"];
  [v3 validateClass:@"MTACountDownPicker" hasInstanceMethod:@"incrementValue" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MTACountDownPicker" hasInstanceMethod:@"decrementValue" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MTACountDownPicker" hasInstanceMethod:@"incrementValueContinuouslly" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MTACountDownPicker" hasInstanceMethod:@"decrementValueContinuouslly" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MTACountDownPicker" hasInstanceMethod:@"pressesEnded:withEvent:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"MTACountDownPicker" hasInstanceMethod:@"selectedField" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MTACountDownPicker" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
  [v3 validateClass:@"MTACountDownPicker" hasInstanceMethod:@"setSelectedField:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"MTACountDownPicker" hasInstanceMethod:@"hourHighlightFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"MTACountDownPicker" hasInstanceMethod:@"minuteHighlightFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"MTACountDownPicker" hasInstanceMethod:@"secondHighlightFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

@end