@interface AppEventTodayCardCollectionViewCellAccessibility
- (id)accessibilityElements;
@end

@implementation AppEventTodayCardCollectionViewCellAccessibility

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(AppEventTodayCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"formattedDateView"];
  [array axSafelyAddObject:v4];
  v7.receiver = self;
  v7.super_class = AppEventTodayCardCollectionViewCellAccessibility;
  accessibilityElements = [(AppEventTodayCardCollectionViewCellAccessibility *)&v7 accessibilityElements];
  [array axSafelyAddObjectsFromArray:accessibilityElements];

  return array;
}

@end