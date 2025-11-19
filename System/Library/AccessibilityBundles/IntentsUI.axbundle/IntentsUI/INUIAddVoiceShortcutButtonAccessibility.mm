@interface INUIAddVoiceShortcutButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation INUIAddVoiceShortcutButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"INUIAddVoiceShortcutButton" hasInstanceMethod:@"addToSiriLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"INUIAddVoiceShortcutButton" hasInstanceMethod:@"phraseLabel" withFullSignature:{"@", 0}];
}

@end