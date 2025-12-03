@interface TVLabelAccessibility__TVMLKit__TVKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation TVLabelAccessibility__TVMLKit__TVKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"IKTextElement" hasInstanceMethod:@"badges" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IKTextBadgeAttachment" hasInstanceMethod:@"badge" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IKViewElement" hasInstanceMethod:@"accessibilityText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IKImageElement" hasInstanceMethod:@"url" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = TVLabelAccessibility__TVMLKit__TVKit;
  accessibilityLabel = [(TVLabelAccessibility__TVMLKit__TVKit *)&v7 accessibilityLabel];
  _atvaccessibilityITMLAccessibilityContent = [(TVLabelAccessibility__TVMLKit__TVKit *)self _atvaccessibilityITMLAccessibilityContent];
  v5 = [MEMORY[0x29EDBDE00] textByReconcilingClientText:accessibilityLabel withServerText:_atvaccessibilityITMLAccessibilityContent];

  return v5;
}

@end