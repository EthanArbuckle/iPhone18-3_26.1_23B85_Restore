@interface StandardLinkViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation StandardLinkViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStore.StandardLinkView" hasInstanceMethod:@"accessibilityDescriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStore.StandardLinkView" hasInstanceMethod:@"accessibilitySummaryLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = StandardLinkViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(StandardLinkViewAccessibility *)&v3 accessibilityTraits];
}

@end