@interface TLKAuxilliaryTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation TLKAuxilliaryTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TLKAuxilliaryTextView" hasInstanceMethod:@"topLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKAuxilliaryTextView" hasInstanceMethod:@"middleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKAuxilliaryTextView" hasInstanceMethod:@"bottomLabel" withFullSignature:{"@", 0}];
}

@end