@interface STHistoricalPickupsCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation STHistoricalPickupsCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STHistoricalPickupsCell" hasInstanceVariable:@"_historicalUsageViewController" withType:"STHistoricalUsageViewController"];
  [validationsCopy validateClass:@"STHistoricalPickupsCell" hasInstanceMethod:@"pickupMetricsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STHistoricalPickupsCell" hasInstanceVariable:@"_firstUsedAfterPickupLabel" withType:"UILabel"];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(STHistoricalPickupsCellAccessibility *)self safeValueForKey:@"_historicalUsageViewController"];
  accessibilityElements = [v4 accessibilityElements];

  [array axSafelyAddObjectsFromArray:accessibilityElements];
  v6 = [(STHistoricalPickupsCellAccessibility *)self safeUIViewForKey:@"pickupMetricsView"];
  [array axSafelyAddObject:v6];

  v7 = [(STHistoricalPickupsCellAccessibility *)self safeUIViewForKey:@"_firstUsedAfterPickupLabel"];
  [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  [array axSafelyAddObject:v7];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __61__STHistoricalPickupsCellAccessibility_accessibilityElements__block_invoke;
  v9[3] = &unk_29F2F39E0;
  objc_copyWeak(&v10, &location);
  [array enumerateObjectsUsingBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return array;
}

void __61__STHistoricalPickupsCellAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setAccessibilityContainer:WeakRetained];
}

@end