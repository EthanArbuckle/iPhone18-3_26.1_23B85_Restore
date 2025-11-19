@interface STHistoricalNotificationsCellAccessibility
- (id)accessibilityElements;
@end

@implementation STHistoricalNotificationsCellAccessibility

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(STHistoricalNotificationsCellAccessibility *)self safeValueForKey:@"_historicalUsageViewController"];
  v5 = [v4 accessibilityElements];

  [v3 axSafelyAddObjectsFromArray:v5];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __67__STHistoricalNotificationsCellAccessibility_accessibilityElements__block_invoke;
  v7[3] = &unk_29F2F39E0;
  objc_copyWeak(&v8, &location);
  [v3 enumerateObjectsUsingBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v3;
}

void __67__STHistoricalNotificationsCellAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setAccessibilityContainer:WeakRetained];
}

@end