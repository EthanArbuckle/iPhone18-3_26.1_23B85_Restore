@interface AXMobileCalGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMobileCalGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_403 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_412];

    v3 = [objc_allocWithZone(AXMobileCalGlue) init];
    v4 = _Failover;
    _Failover = v3;

    mEMORY[0x29EDBD690] = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690] addHandler:&__block_literal_global_540 forFramework:@"AddressBookUI"];
  }
}

uint64_t __48__AXMobileCalGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"CUIKCalendarModel"];
  [v2 validateClass:@"PreferencesDoubleTwoPartValueCell"];
  [v2 validateClass:@"PreferencesTwoPartValueCell"];
  [v2 validateClass:@"ListViewController"];
  [v2 validateClass:@"TwoPartTextLabel"];
  [v2 validateClass:@"PreferencesTwoPartValueCell" isKindOfClass:@"UITableViewCell"];
  [v2 validateClass:@"WeekView" hasInstanceVariable:@"_allDayView" withType:"WeekAllDayView"];
  [v2 validateClass:@"ListViewController" hasInstanceVariable:@"_model" withType:"CUIKCalendarModel"];
  [v2 validateClass:@"TwoPartTextLabel" hasInstanceVariable:@"_secondTextPart" withType:"NSString"];
  [v2 validateClass:@"CUIKCalendarModel" hasInstanceMethod:@"cachedOccurrenceAtIndexPath:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"CUIKCalendarModel" hasInstanceMethod:@"eventStore" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CUIKCalendarModel" hasInstanceMethod:@"occurrencesForDay: waitForLoad:" withFullSignature:{"@", "@", "B", 0}];
  [v2 validateClass:@"CUIKCalendarModel" hasInstanceMethod:@"selectedCalendars" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CUIKCalendarModel" hasInstanceMethod:@"setSelectedDate:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"CUIKOccurrencesCollection" hasInstanceMethod:@"occurrences" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CUIKOccurrencesCollection" hasInstanceMethod:@"allDayOccurrences" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PreferencesDoubleTwoPartValueCell" hasInstanceMethod:@"textLabel2" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PreferencesDoubleTwoPartValueCell" hasInstanceMethod:@"twoPartTextLabel2" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PreferencesTwoPartValueCell" hasInstanceMethod:@"twoPartTextLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"ListViewController" hasInstanceMethod:@"tableView: viewForHeaderInSection:" withFullSignature:{"@", "@", "q", 0}];
  [v2 validateClass:@"ListViewController" isKindOfClass:@"MainViewController"];
  [v2 validateClass:@"MainViewController" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
  [v2 validateClass:@"NSCalendar" hasInstanceMethod:@"components: fromDate:" withFullSignature:{"@", "Q", "@", 0}];
  [v2 validateClass:@"NSCalendar" hasClassMethod:@"calendarWithIdentifier:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"WeekGroupView"];
  [v2 validateClass:@"WeekViewController"];
  [v2 validateClass:@"WeekViewController" hasInstanceVariable:@"_eventGestureController" withType:"EKEventGestureController"];
  [v2 validateClass:@"CUIKDateStrings" hasClassMethod:@"overlayShortStringForDate: inCalendar:" withFullSignature:{"@", "@", "@", 0}];

  return 1;
}

uint64_t __48__AXMobileCalGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MobileCal AX Bundle"];
  [v2 setOverrideProcessName:@"MobileCal"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXMobileCalGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CUIKCalendarModelAccessibility__MobileCal__CalendarUIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DayNavigationWeekScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DayNavigationViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DayNavigationViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"InfiniteScrollViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobileCalUIAccessibilityElementMockViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobileCalUIScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MonthViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeMonthViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CompactMonthViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeMonthWeekViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeWeekViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CompactWidthMonthViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CompactMonthWeekDayNumberAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CompactMonthWeekTodayCircleAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CompactMonthWeekViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RootNavigationControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WeekAllDayViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WeekDayInitialsHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WeekTimeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WeekViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WeekViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"YearViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"YearViewYearHeaderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MainViewControllerContainerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DayViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SearchResultsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ListTableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"YearMonthAnimatorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobileCalUIDimmingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobileCalUIViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobileCalUITransitionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CompactDayNavigationViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeDayNavigationViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SplashScreenViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MainWindowControlHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MainWindowRootViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MainWindowContentContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeTextLargeMonthWeekViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeYearMonthViewAccessibility" canInteractWithTargetClass:1];
}

void __48__AXMobileCalGlue_accessibilityInitializeBundle__block_invoke_5()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.AddressBookUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];
}

@end