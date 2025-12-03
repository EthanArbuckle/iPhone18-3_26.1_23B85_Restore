@interface INUIAddVoiceShortcutButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation INUIAddVoiceShortcutButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"INUIAddVoiceShortcutButton" hasInstanceMethod:@"addToSiriLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"INUIAddVoiceShortcutButton" hasInstanceMethod:@"phraseLabel" withFullSignature:{"@", 0}];
}

@end