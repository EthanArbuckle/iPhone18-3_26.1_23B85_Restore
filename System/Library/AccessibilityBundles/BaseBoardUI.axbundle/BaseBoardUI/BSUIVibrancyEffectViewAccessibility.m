@interface BSUIVibrancyEffectViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation BSUIVibrancyEffectViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BSUIVibrancyEffectView" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"BSUIVibrancyEffectView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  if ([(BSUIVibrancyEffectViewAccessibility *)self safeBoolForKey:@"isEnabled"])
  {
    v3 = [(BSUIVibrancyEffectViewAccessibility *)self safeUIViewForKey:@"contentView"];
    v4 = [v3 subviews];

    [v4 enumerateObjectsUsingBlock:&__block_literal_global_0];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BSUIVibrancyEffectViewAccessibility;
    v4 = [(BSUIVibrancyEffectViewAccessibility *)&v6 accessibilityElements];
  }

  return v4;
}

@end