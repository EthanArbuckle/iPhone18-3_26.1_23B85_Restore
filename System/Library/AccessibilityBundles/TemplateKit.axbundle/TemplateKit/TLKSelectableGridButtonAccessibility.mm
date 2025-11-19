@interface TLKSelectableGridButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation TLKSelectableGridButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKSelectableGridButton" hasInstanceMethod:@"topLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKSelectableGridButton" hasInstanceMethod:@"bottomLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = TLKSelectableGridButtonAccessibility;
  v3 = [(TLKSelectableGridButtonAccessibility *)&v8 accessibilityTraits];
  v4 = [(TLKSelectableGridButtonAccessibility *)self layer];
  v5 = [v4 backgroundColor];

  v6 = *MEMORY[0x29EDC7FC0];
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | v3;
}

@end