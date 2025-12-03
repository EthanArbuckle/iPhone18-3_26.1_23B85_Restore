@interface MKPlaceInfoContactRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MKPlaceInfoContactRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKPlaceInfoContactRowView" hasInstanceVariable:@"_titleLabel" withType:"MKVibrantLabel"];
  [validationsCopy validateClass:@"MKVibrantLabel" hasInstanceVariable:@"_label" withType:"UILabel"];
  [validationsCopy validateClass:@"MKPlaceInfoContactRowView" hasInstanceVariable:@"_valueLabel" withType:"_MKUILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(MKPlaceInfoContactRowViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  if (![accessibilityLabel length])
  {
    v5 = [(MKPlaceInfoContactRowViewAccessibility *)self safeValueForKey:@"_titleLabel"];
    v6 = [v5 safeValueForKey:@"_label"];
    accessibilityLabel2 = [v6 accessibilityLabel];

    accessibilityLabel = accessibilityLabel2;
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(MKPlaceInfoContactRowViewAccessibility *)self safeValueForKey:@"_valueLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end