@interface ListTodayCardCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation ListTodayCardCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.ListTodayCardCollectionViewCell" hasSwiftField:@"labelsView" withSwiftType:"TodayCardLabelsView"];
  [validationsCopy validateClass:@"AppStore.ListTodayCardCollectionViewCell" hasSwiftField:@"lockupContainer" withSwiftType:"TodayListCardLockupContainer"];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(ListTodayCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"labelsView"];
  [v4 setIsAccessibilityElement:1];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [array axSafelyAddObject:v4];
  objc_opt_class();
  v5 = [(ListTodayCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"lockupContainer"];
  v6 = __UIAccessibilityCastAsClass();

  [array axSafelyAddObject:v6];

  return array;
}

@end