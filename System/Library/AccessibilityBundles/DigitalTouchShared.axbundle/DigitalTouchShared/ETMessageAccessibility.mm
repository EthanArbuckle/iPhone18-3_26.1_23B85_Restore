@interface ETMessageAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityColorString;
@end

@implementation ETMessageAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETMessageAccessibility"];
  [validationsCopy validateClass:@"ETMessage" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
}

- (id)_accessibilityColorString
{
  v2 = [(ETMessageAccessibility *)self safeValueForKey:@"color"];
  axColorStringForSpeaking = [v2 axColorStringForSpeaking];

  return axColorStringForSpeaking;
}

@end