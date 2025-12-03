@interface STHistoricalScreenTimeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation STHistoricalScreenTimeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STHistoricalScreenTimeCell" hasInstanceVariable:@"_historicalUsageViewController" withType:"STHistoricalUsageViewController"];
  [validationsCopy validateClass:@"STHistoricalScreenTimeCell" hasInstanceMethod:@"topItemsView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(STHistoricalScreenTimeCellAccessibility *)self safeValueForKey:@"_historicalUsageViewController"];
  accessibilityElements = [v4 accessibilityElements];

  [array axSafelyAddObjectsFromArray:accessibilityElements];
  v6 = [(STHistoricalScreenTimeCellAccessibility *)self safeUIViewForKey:@"topItemsView"];
  [array axSafelyAddObject:v6];

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __64__STHistoricalScreenTimeCellAccessibility_accessibilityElements__block_invoke;
  v8[3] = &unk_29F2F39E0;
  objc_copyWeak(&v9, &location);
  [array enumerateObjectsUsingBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return array;
}

void __64__STHistoricalScreenTimeCellAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setAccessibilityContainer:WeakRetained];
}

@end