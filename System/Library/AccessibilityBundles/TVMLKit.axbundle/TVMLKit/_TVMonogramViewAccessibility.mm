@interface _TVMonogramViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityPath;
@end

@implementation _TVMonogramViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVMonogramView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVMonogramView" hasInstanceMethod:@"configuration" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVMonogramView" hasInstanceMethod:@"monogramDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVMonogramViewConfiguration" hasInstanceMethod:@"focusedSizeIncrease" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"_TVMonogramDescription" hasInstanceMethod:@"cornerRadius" withFullSignature:{"d", 0}];
}

- (id)accessibilityPath
{
  objc_opt_class();
  v3 = [(_TVMonogramViewAccessibility *)self safeValueForKey:@"imageView"];
  v4 = __UIAccessibilityCastAsClass();

  _accessibilityCirclePathBasedOnBoundsWidth = [v4 _accessibilityCirclePathBasedOnBoundsWidth];

  return _accessibilityCirclePathBasedOnBoundsWidth;
}

@end