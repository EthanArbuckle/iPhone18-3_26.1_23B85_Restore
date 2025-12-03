@interface MTACountDownPickerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation MTACountDownPickerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTACountDownPicker" isKindOfClass:@"UITextField"];
  [validationsCopy validateClass:@"MTACountDownPicker" hasInstanceMethod:@"incrementValue" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTACountDownPicker" hasInstanceMethod:@"decrementValue" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MTACountDownPicker" hasInstanceMethod:@"incrementValueContinuouslly" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MTACountDownPicker" hasInstanceMethod:@"decrementValueContinuouslly" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MTACountDownPicker" hasInstanceMethod:@"pressesEnded:withEvent:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"MTACountDownPicker" hasInstanceMethod:@"selectedField" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"MTACountDownPicker" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"MTACountDownPicker" hasInstanceMethod:@"setSelectedField:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"MTACountDownPicker" hasInstanceMethod:@"hourHighlightFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"MTACountDownPicker" hasInstanceMethod:@"minuteHighlightFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"MTACountDownPicker" hasInstanceMethod:@"secondHighlightFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

@end