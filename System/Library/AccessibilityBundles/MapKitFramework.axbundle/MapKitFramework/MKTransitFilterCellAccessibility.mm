@interface MKTransitFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation MKTransitFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKTransitFilterCell" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKTransitFilterCell" hasInstanceVariable:@"_label" withType:"UILabel"];
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v3 = [(MKTransitFilterCellAccessibility *)self safeValueForKey:@"_label"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = *MEMORY[0x29EDC7F70];
  v6 = [v4 textColor];
  v7 = [MEMORY[0x29EDC7A00] systemWhiteColor];

  v8 = *MEMORY[0x29EDC7FC0];
  if (v6 != v7)
  {
    v8 = 0;
  }

  return v8 | v5;
}

@end