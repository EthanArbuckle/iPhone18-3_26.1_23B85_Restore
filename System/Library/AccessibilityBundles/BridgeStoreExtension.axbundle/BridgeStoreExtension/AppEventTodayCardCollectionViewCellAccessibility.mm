@interface AppEventTodayCardCollectionViewCellAccessibility
- (id)accessibilityElements;
@end

@implementation AppEventTodayCardCollectionViewCellAccessibility

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(AppEventTodayCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"formattedDateView"];
  [v3 axSafelyAddObject:v4];
  v7.receiver = self;
  v7.super_class = AppEventTodayCardCollectionViewCellAccessibility;
  v5 = [(AppEventTodayCardCollectionViewCellAccessibility *)&v7 accessibilityElements];
  [v3 axSafelyAddObjectsFromArray:v5];

  return v3;
}

@end