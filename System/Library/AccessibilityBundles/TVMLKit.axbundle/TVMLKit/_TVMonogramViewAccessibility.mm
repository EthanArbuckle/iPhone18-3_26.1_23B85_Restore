@interface _TVMonogramViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityPath;
@end

@implementation _TVMonogramViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVMonogramView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVMonogramView" hasInstanceMethod:@"configuration" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVMonogramView" hasInstanceMethod:@"monogramDescription" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVMonogramViewConfiguration" hasInstanceMethod:@"focusedSizeIncrease" withFullSignature:{"d", 0}];
  [v3 validateClass:@"_TVMonogramDescription" hasInstanceMethod:@"cornerRadius" withFullSignature:{"d", 0}];
}

- (id)accessibilityPath
{
  objc_opt_class();
  v3 = [(_TVMonogramViewAccessibility *)self safeValueForKey:@"imageView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _accessibilityCirclePathBasedOnBoundsWidth];

  return v5;
}

@end