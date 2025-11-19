@interface STHistoricalScreenTimeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation STHistoricalScreenTimeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STHistoricalScreenTimeCell" hasInstanceVariable:@"_historicalUsageViewController" withType:"STHistoricalUsageViewController"];
  [v3 validateClass:@"STHistoricalScreenTimeCell" hasInstanceMethod:@"topItemsView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(STHistoricalScreenTimeCellAccessibility *)self safeValueForKey:@"_historicalUsageViewController"];
  v5 = [v4 accessibilityElements];

  [v3 axSafelyAddObjectsFromArray:v5];
  v6 = [(STHistoricalScreenTimeCellAccessibility *)self safeUIViewForKey:@"topItemsView"];
  [v3 axSafelyAddObject:v6];

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __64__STHistoricalScreenTimeCellAccessibility_accessibilityElements__block_invoke;
  v8[3] = &unk_29F2F39E0;
  objc_copyWeak(&v9, &location);
  [v3 enumerateObjectsUsingBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __64__STHistoricalScreenTimeCellAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setAccessibilityContainer:WeakRetained];
}

@end