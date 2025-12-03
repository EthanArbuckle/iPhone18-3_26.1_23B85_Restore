@interface CompactMonthWeekDayNumberAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsSpeakThisElement;
- (BOOL)_prefersFocusContainment;
- (BOOL)canBecomeFocused;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (NSString)focusGroupIdentifier;
- (id)_axCalendarModel;
- (id)_axEventStore;
- (id)_axStringForNumberOfEvents:(unint64_t)events;
- (id)_preferredFocusRegionCoordinateSpace;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)focusItemsInRect:(CGRect)rect;
- (unint64_t)accessibilityTraits;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation CompactMonthWeekDayNumberAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CompactWidthMonthViewController"];
  [validationsCopy validateClass:@"CompactMonthWeekView"];
  [validationsCopy validateClass:@"CompactMonthWeekView" hasInstanceVariable:@"_today" withType:"CompactMonthWeekDayNumber"];
  [validationsCopy validateClass:@"CompactWidthMonthViewController" hasInstanceVariable:@"_model" withType:"CUIKCalendarModel"];
  [validationsCopy validateClass:@"CompactMonthWeekDayNumber" hasInstanceMethod:@"calendarDate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CompactMonthWeekDayNumber" hasInstanceMethod:@"attachedTodayCircle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CompactMonthWeekTodayCircle" hasInstanceMethod:@"drawCircle" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CompactMonthWeekDayNumber" hasInstanceMethod:@"frame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(CompactMonthWeekDayNumberAccessibility *)self safeValueForKey:@"calendarDate"];
  v3 = v2 != 0;

  return v3;
}

- (CGRect)accessibilityFrame
{
  accessibilityContainer = [(CompactMonthWeekDayNumberAccessibility *)self accessibilityContainer];
  v4 = [(CompactMonthWeekDayNumberAccessibility *)self safeValueForKey:@"layer"];
  v5 = [v4 safeValueForKey:@"frame"];
  [v5 CGRectValue];
  UIAccessibilityFrameForBounds();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;

  return CGRectInset(*&v14, -10.0, -10.0);
}

- (id)accessibilityLabel
{
  v3 = [(CompactMonthWeekDayNumberAccessibility *)self safeValueForKey:@"calendarDate"];
  v4 = [v3 safeValueForKey:@"date"];
  v5 = _AXGetStringsForDate(v4);

  accessibilityContainer = [(CompactMonthWeekDayNumberAccessibility *)self accessibilityContainer];
  v7 = [accessibilityContainer safeValueForKey:@"_today"];

  if (v7 == self)
  {
    v8 = accessibilityLocalizedString(@"today.indicator");
    v9 = __UIAXStringForVariables();

    v5 = v9;
  }

  return v5;
}

- (id)accessibilityUserInputLabels
{
  objc_opt_class();
  v3 = [(CompactMonthWeekDayNumberAccessibility *)self safeValueForKey:@"calendarDate"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 day];
  v5 = AXFormatInteger();
  v6 = MEMORY[0x29C2DF2E0]();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(CompactMonthWeekDayNumberAccessibility *)self safeValueForKey:@"attachedTodayCircle"];
  v4 = v3;
  if (v3 && [v3 safeBoolForKey:@"drawCircle"])
  {
    v2 |= *MEMORY[0x29EDC7FC0];
  }

  return v2;
}

- (id)_axCalendarModel
{
  v2 = [(CompactMonthWeekDayNumberAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Compactmonthwe_2.isa)];
  if (v2)
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsSafeCategory();
    _accessibilityMonthViewController = [v3 _accessibilityMonthViewController];

    if (_accessibilityMonthViewController)
    {
      v5 = [_accessibilityMonthViewController safeValueForKey:@"_model"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    _AXAssert();
    v5 = 0;
  }

  return v5;
}

- (id)_axEventStore
{
  _axCalendarModel = [(CompactMonthWeekDayNumberAccessibility *)self _axCalendarModel];
  v3 = [_axCalendarModel safeValueForKey:@"eventStore"];

  return v3;
}

- (id)_axStringForNumberOfEvents:(unint64_t)events
{
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"event.count");
  events = [v4 localizedStringWithFormat:v5, events];

  return events;
}

- (id)accessibilityValue
{
  _axEventStore = [(CompactMonthWeekDayNumberAccessibility *)self _axEventStore];
  _axCalendarModel = [(CompactMonthWeekDayNumberAccessibility *)self _axCalendarModel];
  v5 = [_axCalendarModel safeValueForKey:@"selectedCalendars"];

  v6 = [(CompactMonthWeekDayNumberAccessibility *)self safeValueForKey:@"calendarDate"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    components = [v6 components];
    [components setHour:0];
    [components setMinute:0];
    [components setSecond:0];
    v8 = MEMORY[0x29EDC0AC0];
    timeZone = [_axEventStore timeZone];
    v10 = [v8 calendarDateWithDateComponents:components timeZone:timeZone];

    v18 = [v10 calendarDateByAddingDays:1];
    date = [v10 date];
    date2 = [v18 date];
    allObjects = [v5 allObjects];
    v14 = [_axEventStore predicateForEventsWithStartDate:date endDate:date2 calendars:allObjects];

    v15 = [_axEventStore eventsMatchingPredicate:v14];
    v16 = -[CompactMonthWeekDayNumberAccessibility _axStringForNumberOfEvents:](self, "_axStringForNumberOfEvents:", [v15 count]);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)accessibilityCustomContent
{
  v54 = *MEMORY[0x29EDCA608];
  v3 = accessibilityLocalizedString(@"event.calendars.none");
  _axEventStore = [(CompactMonthWeekDayNumberAccessibility *)self _axEventStore];
  _axCalendarModel = [(CompactMonthWeekDayNumberAccessibility *)self _axCalendarModel];
  v6 = [_axCalendarModel safeValueForKey:@"selectedCalendars"];

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [(CompactMonthWeekDayNumberAccessibility *)self safeValueForKey:@"calendarDate"];
  v46 = v6;
  v47 = _axEventStore;
  v45 = v9;
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v3;
      allComponents = [v10 allComponents];
      [allComponents setHour:0];
      [allComponents setMinute:0];
      [allComponents setSecond:0];
      v12 = MEMORY[0x29EDC0AC0];
      timeZone = [_axEventStore timeZone];
      v43 = allComponents;
      v14 = [v12 calendarDateWithDateComponents:allComponents timeZone:timeZone];

      v15 = [v14 calendarDateByAddingDays:1];
      v42 = v14;
      date = [v14 date];
      v41 = v15;
      date2 = [v15 date];
      allObjects = [v6 allObjects];
      v19 = [_axEventStore predicateForEventsWithStartDate:date endDate:date2 calendars:allObjects];

      v40 = v19;
      v20 = [_axEventStore eventsMatchingPredicate:v19];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v49;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v49 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v48 + 1) + 8 * i);
            calendar = [v25 calendar];
            title = [calendar title];
            [v7 addObject:title];

            title2 = [v25 title];
            [v8 addObject:title2];
          }

          v22 = [v20 countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v22);
      }

      allObjects2 = [v7 allObjects];
      v3 = [allObjects2 componentsJoinedByString:{@", "}];
    }
  }

  v30 = MEMORY[0x29EDB8058];
  v31 = accessibilityLocalizedString(@"event.calendars");
  v32 = [v30 customContentWithLabel:v31 value:v3];
  v52[0] = v32;
  v33 = v3;
  v34 = MEMORY[0x29EDB8058];
  v35 = accessibilityLocalizedString(@"rotor.events");
  v36 = [v8 componentsJoinedByString:{@", "}];
  v37 = [v34 customContentWithLabel:v35 value:v36];
  v52[1] = v37;
  v38 = [MEMORY[0x29EDB8D80] arrayWithObjects:v52 count:2];

  return v38;
}

- (BOOL)_accessibilityIsSpeakThisElement
{
  accessibilityValue = [(CompactMonthWeekDayNumberAccessibility *)self accessibilityValue];
  v3 = accessibilityLocalizedString(@"event.count.none");
  v4 = [accessibilityValue isEqualToString:v3];

  return v4 ^ 1;
}

- (NSString)focusGroupIdentifier
{
  v9.receiver = self;
  v9.super_class = CompactMonthWeekDayNumberAccessibility;
  focusGroupIdentifier = [(CompactMonthWeekDayNumberAccessibility *)&v9 focusGroupIdentifier];
  if (focusGroupIdentifier || (-[CompactMonthWeekDayNumberAccessibility _accessibilityParentView](self, "_accessibilityParentView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 safeValueForKey:@"_containingScrollView"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    _accessibilityDefaultFocusGroupIdentifier = focusGroupIdentifier;
  }

  else
  {
    _accessibilityDefaultFocusGroupIdentifier = [(CompactMonthWeekDayNumberAccessibility *)self _accessibilityDefaultFocusGroupIdentifier];
  }

  v7 = _accessibilityDefaultFocusGroupIdentifier;

  return v7;
}

- (void)setNeedsFocusUpdate
{
  v3 = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
  [(CompactMonthWeekDayNumberAccessibility *)self _updateFocusLayerFrame];
}

- (void)updateFocusIfNeeded
{
  v3 = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:self];
  [v3 updateFocusIfNeeded];
  [(CompactMonthWeekDayNumberAccessibility *)self _updateFocusLayerFrame];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __111__CompactMonthWeekDayNumberAccessibility_UIFocusConformance__didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v8[3] = &unk_29F2D2918;
  v9 = contextCopy;
  selfCopy = self;
  v7 = contextCopy;
  [coordinator addCoordinatedAnimations:v8 completion:0];
}

uint64_t __111__CompactMonthWeekDayNumberAccessibility_UIFocusConformance__didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nextFocusedItem];
  v3 = *(a1 + 40);
  if (v2 != v3)
  {

LABEL_7:
    v9 = MEMORY[0x29EDC7A98];
    v10 = *(a1 + 40);

    return [v9 removeRingFromFocusItem:v10];
  }

  v4 = [v3 _accessibilityParentView];
  v5 = [v4 _accessibilityIsFKARunningForFocusItem];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = MEMORY[0x29EDC7A98];
  v7 = *(a1 + 40);

  return [v6 moveRingToFocusItem:v7];
}

- (BOOL)canBecomeFocused
{
  isAccessibilityElement = [(CompactMonthWeekDayNumberAccessibility *)self isAccessibilityElement];
  if (isAccessibilityElement)
  {

    LOBYTE(isAccessibilityElement) = [(CompactMonthWeekDayNumberAccessibility *)self accessibilityRespondsToUserInteraction];
  }

  return isAccessibilityElement;
}

- (id)_preferredFocusRegionCoordinateSpace
{
  _accessibilityParentView = [(CompactMonthWeekDayNumberAccessibility *)self _accessibilityParentView];
  _screen = [_accessibilityParentView _screen];
  coordinateSpace = [_screen coordinateSpace];

  return coordinateSpace;
}

- (id)focusItemsInRect:(CGRect)rect
{
  v4 = [(CompactMonthWeekDayNumberAccessibility *)self accessibilityElements:rect.origin.x];
  if (v4)
  {
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __79__CompactMonthWeekDayNumberAccessibility_UIFocusConformance__focusItemsInRect___block_invoke;
    v12[3] = &unk_29F2D29B0;
    v12[4] = self;
    v5 = [MEMORY[0x29EDBA0A8] predicateWithBlock:v12];
    v6 = [v4 filteredArrayUsingPredicate:v5];
  }

  else if ([(CompactMonthWeekDayNumberAccessibility *)self accessibilityElementCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[CompactMonthWeekDayNumberAccessibility accessibilityElementCount](self, "accessibilityElementCount")}];
    if ([(CompactMonthWeekDayNumberAccessibility *)self accessibilityElementCount])
    {
      v7 = 0;
      do
      {
        v8 = [(CompactMonthWeekDayNumberAccessibility *)self accessibilityElementAtIndex:v7];
        if ([v8 conformsToProtocol:&unk_2A22145C8])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [(CompactMonthWeekDayNumberAccessibility *)self _accessibilityFKAShouldIncludeViewsAsElements])
          {
            [v6 axSafelyAddObject:v8];
          }
        }

        ++v7;
      }

      while (v7 < [(CompactMonthWeekDayNumberAccessibility *)self accessibilityElementCount]);
    }
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x29EDB8E90];
  }

  v10 = v9;

  return v9;
}

uint64_t __79__CompactMonthWeekDayNumberAccessibility_UIFocusConformance__focusItemsInRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2A22145C8])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [*(a1 + 32) _accessibilityFKAShouldIncludeViewsAsElements];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_prefersFocusContainment
{
  if ([(CompactMonthWeekDayNumberAccessibility *)self conformsToProtocol:&unk_2A2219CB0]|| ([(CompactMonthWeekDayNumberAccessibility *)self _accessibilityIsTouchContainer]& 1) != 0)
  {
    return 1;
  }

  return [(CompactMonthWeekDayNumberAccessibility *)self shouldGroupAccessibilityChildren];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  if (&unk_2A22145C8 == protocol || &unk_2A2214290 == protocol || &unk_2A2214720 == protocol || &unk_2A2214B48 == protocol)
  {
    return 1;
  }

  v10 = v3;
  v11 = v4;
  v9.receiver = self;
  v9.super_class = CompactMonthWeekDayNumberAccessibility;
  return [(CompactMonthWeekDayNumberAccessibility *)&v9 conformsToProtocol:?];
}

@end