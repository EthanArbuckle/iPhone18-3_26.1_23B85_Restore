@interface AXEventKitUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXEventKitUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_383 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_392];

    _Failover = [objc_allocWithZone(AXEventKitUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __49__AXEventKitUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"EKDayOccurrenceView"];
  [v2 validateClass:@"EKEventDetailTitleCell"];
  [v2 validateClass:@"EKEvent"];
  [v2 validateClass:@"EKDayGridView"];
  [v2 validateClass:@"EKCalendarChooserCell"];
  [v2 validateClass:@"EKDayViewContent"];
  [v2 validateClass:@"EKDayTimeView"];
  [v2 validateClass:@"CalendarNotesCell"];
  [v2 validateClass:@"EKCalendarChooserCell" isKindOfClass:@"UITableViewCell"];
  [v2 validateClass:@"EKDayView" hasInstanceVariable:@"_displayDate" withType:"NSDateComponents"];
  [v2 validateClass:@"EKEventDetailAttendeesListView" hasInstanceVariable:@"_ungrouped" withType:"NSArray"];
  [v2 validateClass:@"EKDayViewContent" hasInstanceVariable:@"_startDate" withType:"EKCalendarDate"];
  [v2 validateClass:@"EKDayViewContent" hasInstanceVariable:@"_dayStarts" withType:"NSMutableArray"];
  [v2 validateClass:@"EKDayOccurrenceView" hasInstanceVariable:@"_startResizeHandle" withType:"UIView"];
  [v2 validateClass:@"EKDayOccurrenceView" hasInstanceVariable:@"_endResizeHandle" withType:"UIView"];
  [v2 validateClass:@"EKCalendarItem" hasInstanceMethod:@"calendar" withFullSignature:{"@", 0}];
  [v2 validateClass:@"EKCalendar" hasInstanceMethod:@"source" withFullSignature:{"@", 0}];
  [v2 validateClass:@"EKSource" hasInstanceMethod:@"isFacebookSource" withFullSignature:{"B", 0}];
  [v2 validateClass:@"EKCalendarChooserCell" hasInstanceMethod:@"checked" withFullSignature:{"B", 0}];
  [v2 validateClass:@"EKCalendarChooserCell" hasInstanceMethod:@"showCheckmarksOnLeft" withFullSignature:{"B", 0}];
  [v2 validateClass:@"EKDayGridView" hasInstanceMethod:@"hourHeight" withFullSignature:{"d", 0}];
  [v2 validateClass:@"EKDayGridView" hasInstanceMethod:@"topPadding" withFullSignature:{"d", 0}];
  [v2 validateProtocol:@"EKEventGestureControllerDelegate" hasRequiredInstanceMethod:@"eventGestureController:heightForOccurrenceViewOfDuration:"];

  return 1;
}

uint64_t __49__AXEventKitUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"EventKit UI AX Bundle"];
  [v2 setOverrideProcessName:@"EventKit UI"];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXEventKitUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CalendarNotesCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKDateTimeCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventDetailTextCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventDetailTitleCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKDayOccurrenceViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKDayGridViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKDayViewContentAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKDayOccurrenceResizeHandleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventDetailAttendeesCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CalendarMessageUIProxyAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventGestureControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventDetailCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKDayViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKDayViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKExpandingTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKCalendarChooserCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKCalendarItemEditorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventDateEditItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIScrollViewAccessibility_EventKit_UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PreferencesDoubleTwoPartValueCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PreferencesTwoPartValueCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TwoPartTextLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKDayAllDayViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventViewControllerDefaultImplAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUIInviteesViewInviteesCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUIEventInviteesViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKDayViewContentItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUIInviteesViewTimeSlotCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUIYearMonthViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventEstimatedTravelTimeResultCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKDayPreviewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKCalendarItemCalendarEditItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventCalendarDetailItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventMapCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKCurrentTimeMarkerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKTextViewWithLabelTextMetricsAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKCalendarItemLocationInlineEditItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventAttachmentsEditItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUIDividedGridViewTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUIDividedGridViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventConferenceInformationDetailItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUITableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventEditorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UILabelAccessibility__EventKitUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKEventEditViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUIAvailabilityViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUIAvailabilityFreeSpanViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUIParticipantContainerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUIPopupTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DayTwoPartLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKUIListViewTimedEventCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EKReminderTitleDetailCellAccessibility" canInteractWithTargetClass:1];
}

@end