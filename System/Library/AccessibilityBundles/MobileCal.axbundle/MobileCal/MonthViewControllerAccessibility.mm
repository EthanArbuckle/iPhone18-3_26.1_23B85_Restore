@interface MonthViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axTopWeekViewWithTopPoint:(CGPoint)point;
- (id)accessibilityScrollStatusForScrollView:(id)view;
- (id)eventGestureController:(id)controller setUpAtPoint:(CGPoint)point withOccurrence:(id)occurrence forceNewEvent:(BOOL)event;
- (id)scrollView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateView;
- (void)_updateDraggingOffsetTimesForPoint:(CGPoint)point;
- (void)eventGestureController:(id)controller commitToPoint:(CGPoint)point;
- (void)viewDidLoad;
@end

@implementation MonthViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MonthViewController" isKindOfClass:@"InfiniteScrollViewController"];
  [validationsCopy validateClass:@"MonthViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"InfiniteScrollViewSubview" hasMethod:@"calendarDate" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"InfiniteScrollViewController" hasInstanceVariable:@"_views" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"MonthViewController" hasInstanceMethod:@"eventGestureController:setUpAtPoint:withOccurrence:forceNewEvent:" withFullSignature:{"@", "@", "{CGPoint=dd}", "@", "B", 0}];
  [validationsCopy validateClass:@"MonthViewController" hasInstanceMethod:@"_updateDraggingOffsetTimesForPoint:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"MonthViewController" hasInstanceMethod:@"eventGestureController: commitToPoint:" withFullSignature:{"v", "@", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"MonthViewController" hasInstanceVariable:@"_draggedOccurrence" withType:"EKEvent"];
  [validationsCopy validateClass:@"MonthViewController" hasInstanceVariable:@"_draggingExistingEvent" withType:"B"];
}

- (id)_axTopWeekViewWithTopPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v23 = *MEMORY[0x29EDCA608];
  v21 = 0;
  objc_opt_class();
  v6 = [(MonthViewControllerAccessibility *)self safeValueForKey:@"scrollView"];
  v7 = __UIAccessibilityCastAsClass();

  view = [(MonthViewControllerAccessibility *)self view];
  [v7 convertPoint:view fromView:{x, y}];
  v10 = v9;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(MonthViewControllerAccessibility *)self safeValueForKey:@"_views", 0];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        [v15 frame];
        if (v10 < CGRectGetMidY(v25))
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

- (id)accessibilityScrollStatusForScrollView:(id)view
{
  [view contentInset];
  v5 = [(MonthViewControllerAccessibility *)self _axTopWeekViewWithTopPoint:0.0, v4];
  v6 = [v5 safeValueForKey:@"calendarDate"];
  date = [v6 date];
  v8 = AXDateStringForFormat();

  return v8;
}

- (void)_axAnnotateView
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];
  [view accessibilitySetIdentification:@"_AXMonthViewIdentifier"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MonthViewControllerAccessibility;
  [(MonthViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MonthViewControllerAccessibility *)self _axAnnotateView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MonthViewControllerAccessibility;
  [(MonthViewControllerAccessibility *)&v3 viewDidLoad];
  [(MonthViewControllerAccessibility *)self _axAnnotateView];
}

- (id)scrollView
{
  v5.receiver = self;
  v5.super_class = MonthViewControllerAccessibility;
  scrollView = [(MonthViewControllerAccessibility *)&v5 scrollView];
  [scrollView setAccessibilityContainerType:4];
  v3 = accessibilityLocalizedString(@"months.container");
  [scrollView setAccessibilityLabel:v3];

  return scrollView;
}

- (id)eventGestureController:(id)controller setUpAtPoint:(CGPoint)point withOccurrence:(id)occurrence forceNewEvent:(BOOL)event
{
  eventCopy = event;
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  occurrenceCopy = occurrence;
  v22.receiver = self;
  v22.super_class = MonthViewControllerAccessibility;
  v13 = [(MonthViewControllerAccessibility *)&v22 eventGestureController:controllerCopy setUpAtPoint:occurrenceCopy withOccurrence:eventCopy forceNewEvent:x, y];
  if (UIAccessibilityIsVoiceOverRunning() && ([(MonthViewControllerAccessibility *)self safeBoolForKey:@"_draggingExistingEvent"]& 1) == 0)
  {
    _AXAssert();
  }

  objc_opt_class();
  v14 = [(MonthViewControllerAccessibility *)self safeValueForKey:@"_draggedOccurrence"];
  v15 = __UIAccessibilityCastAsClass();

  if (v15 && [v15 isEditable])
  {
    v16 = MEMORY[0x29EDBA0F8];
    v17 = accessibilityLocalizedString(@"began.time.adjust");
    startDate = [v15 startDate];
    v19 = AXDateStringForFormat();
    v20 = [v16 stringWithFormat:v17, v19];

    UIAccessibilitySpeak();
  }

  return v13;
}

- (void)_updateDraggingOffsetTimesForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v18 = 0;
  objc_opt_class();
  v6 = [(MonthViewControllerAccessibility *)self safeValueForKey:@"_draggedStartDate"];
  v7 = __UIAccessibilityCastAsClass();

  v17.receiver = self;
  v17.super_class = MonthViewControllerAccessibility;
  [(MonthViewControllerAccessibility *)&v17 _updateDraggingOffsetTimesForPoint:x, y];
  v18 = 0;
  objc_opt_class();
  v8 = [(MonthViewControllerAccessibility *)self safeValueForKey:@"_draggingEvent"];
  v9 = __UIAccessibilityCastAsClass();

  if (v18 == 1)
  {
    goto LABEL_14;
  }

  if (v9 && [v9 isEditable])
  {
    v18 = 0;
    objc_opt_class();
    v10 = [(MonthViewControllerAccessibility *)self safeValueForKey:@"_draggedStartDate"];
    v11 = __UIAccessibilityCastAsClass();

    if (v18 != 1)
    {
      if ([(MonthViewControllerAccessibility *)self _axIsCommittingTimeAdjustment])
      {
        v12 = MEMORY[0x29EDBA0F8];
        date2 = accessibilityLocalizedString(@"ended.time.adjust");
        date = [v11 date];
        v15 = AXDateStringForFormat();
        v16 = [v12 stringWithFormat:date2, v15];
      }

      else
      {
        if ([v7 isEqual:v11])
        {
LABEL_12:

          goto LABEL_13;
        }

        date2 = [v11 date];
        v16 = AXDateStringForFormat();
      }

      if (v16)
      {
        UIAccessibilitySpeak();
      }

      goto LABEL_12;
    }

LABEL_14:
    abort();
  }

LABEL_13:
}

- (void)eventGestureController:(id)controller commitToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  [(MonthViewControllerAccessibility *)self _axSetIsCommittingTimeAdjustment:1];
  v8.receiver = self;
  v8.super_class = MonthViewControllerAccessibility;
  [(MonthViewControllerAccessibility *)&v8 eventGestureController:controllerCopy commitToPoint:x, y];

  [(MonthViewControllerAccessibility *)self _axSetIsCommittingTimeAdjustment:0];
}

@end