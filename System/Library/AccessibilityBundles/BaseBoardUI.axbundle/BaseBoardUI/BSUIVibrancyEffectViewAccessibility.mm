@interface BSUIVibrancyEffectViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation BSUIVibrancyEffectViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BSUIVibrancyEffectView" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"BSUIVibrancyEffectView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  if ([(BSUIVibrancyEffectViewAccessibility *)self safeBoolForKey:@"isEnabled"])
  {
    v3 = [(BSUIVibrancyEffectViewAccessibility *)self safeUIViewForKey:@"contentView"];
    subviews = [v3 subviews];

    [subviews enumerateObjectsUsingBlock:&__block_literal_global_0];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BSUIVibrancyEffectViewAccessibility;
    subviews = [(BSUIVibrancyEffectViewAccessibility *)&v6 accessibilityElements];
  }

  return subviews;
}

@end