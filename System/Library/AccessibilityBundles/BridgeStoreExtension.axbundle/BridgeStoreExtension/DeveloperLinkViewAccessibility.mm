@interface DeveloperLinkViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation DeveloperLinkViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BridgeStoreExtension.DeveloperLinkView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.DeveloperLinkView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = DeveloperLinkViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(DeveloperLinkViewAccessibility *)&v3 accessibilityTraits];
}

@end