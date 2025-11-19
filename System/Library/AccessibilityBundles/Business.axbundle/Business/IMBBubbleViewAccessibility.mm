@interface IMBBubbleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation IMBBubbleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Business.IMBBubbleView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Business.IMBBubbleView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Business.IMBBubbleView" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = IMBBubbleViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(IMBBubbleViewAccessibility *)&v3 accessibilityTraits];
}

@end