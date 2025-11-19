@interface ListTodayCardCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation ListTodayCardCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppInstallExtension.ListTodayCardCollectionViewCell" hasSwiftField:@"labelsView" withSwiftType:"TodayCardLabelsView"];
  [v3 validateClass:@"AppInstallExtension.ListTodayCardCollectionViewCell" hasSwiftField:@"lockupContainer" withSwiftType:"TodayListCardLockupContainer"];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(ListTodayCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"labelsView"];
  [v4 setIsAccessibilityElement:1];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v3 axSafelyAddObject:v4];
  objc_opt_class();
  v5 = [(ListTodayCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"lockupContainer"];
  v6 = __UIAccessibilityCastAsClass();

  [v3 axSafelyAddObject:v6];

  return v3;
}

@end