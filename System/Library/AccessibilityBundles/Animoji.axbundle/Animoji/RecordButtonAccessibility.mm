@interface RecordButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation RecordButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RecordButton" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"enabled" withFullSignature:{"B", 0}];
}

@end