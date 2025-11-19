@interface ScheduleOccurrenceAlarmVolumeTableViewCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ScheduleOccurrenceAlarmVolumeTableViewCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = ScheduleOccurrenceAlarmVolumeTableViewCellAccessibility;
  [(ScheduleOccurrenceAlarmVolumeTableViewCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(ScheduleOccurrenceAlarmVolumeTableViewCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_0];
  v4 = accessibilityLocalizedString(@"alarm.volume");
  [v3 setAccessibilityLabel:v4];
}

uint64_t __101__ScheduleOccurrenceAlarmVolumeTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end