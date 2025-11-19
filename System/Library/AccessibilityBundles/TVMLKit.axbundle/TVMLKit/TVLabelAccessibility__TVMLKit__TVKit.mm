@interface TVLabelAccessibility__TVMLKit__TVKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation TVLabelAccessibility__TVMLKit__TVKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"IKTextElement" hasInstanceMethod:@"badges" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IKTextBadgeAttachment" hasInstanceMethod:@"badge" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IKViewElement" hasInstanceMethod:@"accessibilityText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IKImageElement" hasInstanceMethod:@"url" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = TVLabelAccessibility__TVMLKit__TVKit;
  v3 = [(TVLabelAccessibility__TVMLKit__TVKit *)&v7 accessibilityLabel];
  v4 = [(TVLabelAccessibility__TVMLKit__TVKit *)self _atvaccessibilityITMLAccessibilityContent];
  v5 = [MEMORY[0x29EDBDE00] textByReconcilingClientText:v3 withServerText:v4];

  return v5;
}

@end