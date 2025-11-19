@interface STHistoricalPickupsCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation STHistoricalPickupsCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STHistoricalPickupsCell" hasInstanceVariable:@"_historicalUsageViewController" withType:"STHistoricalUsageViewController"];
  [v3 validateClass:@"STHistoricalPickupsCell" hasInstanceMethod:@"pickupMetricsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STHistoricalPickupsCell" hasInstanceVariable:@"_firstUsedAfterPickupLabel" withType:"UILabel"];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(STHistoricalPickupsCellAccessibility *)self safeValueForKey:@"_historicalUsageViewController"];
  v5 = [v4 accessibilityElements];

  [v3 axSafelyAddObjectsFromArray:v5];
  v6 = [(STHistoricalPickupsCellAccessibility *)self safeUIViewForKey:@"pickupMetricsView"];
  [v3 axSafelyAddObject:v6];

  v7 = [(STHistoricalPickupsCellAccessibility *)self safeUIViewForKey:@"_firstUsedAfterPickupLabel"];
  [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  [v3 axSafelyAddObject:v7];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __61__STHistoricalPickupsCellAccessibility_accessibilityElements__block_invoke;
  v9[3] = &unk_29F2F39E0;
  objc_copyWeak(&v10, &location);
  [v3 enumerateObjectsUsingBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v3;
}

void __61__STHistoricalPickupsCellAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setAccessibilityContainer:WeakRetained];
}

@end