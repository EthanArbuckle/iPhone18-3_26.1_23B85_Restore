@interface EKDayOccurrenceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsInWidget;
- (BOOL)_axIsInPreview;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrameForScrolling;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)_axDraggingView;
- (id)_axWidgetContainerView;
- (id)accessibilityCustomRotors;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
- (void)prepareForReuse;
@end

@implementation EKDayOccurrenceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKLayoutContainerView"];
  [validationsCopy validateClass:@"EKDayViewController"];
  [validationsCopy validateClass:@"EKDayGridView"];
  [validationsCopy validateClass:@"EKDayView"];
  [validationsCopy validateClass:@"EKEvent"];
  [validationsCopy validateClass:@"EKDayOccurrenceView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"EKLayoutContainerView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"arrayOfResizeHandles" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"occurrence" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isAllDay" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"prepareForReuse" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isCancelled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isBirthday" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isTentative" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isDeclined" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"needsReply" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isSelectedCopyView" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"setDrawsResizeHandles:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"occurrence" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKDayViewController" hasInstanceMethod:@"currentDayView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKDayViewController" hasInstanceVariable:@"_eventGestureController" withType:"EKEventGestureController"];
  [validationsCopy validateClass:@"EKEventGestureController" hasInstanceVariable:@"_draggingView" withType:"EKDayOccurrenceView"];
  [validationsCopy validateClass:@"EKEvent" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKEvent" hasInstanceMethod:@"virtualConference" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKVirtualConference" hasInstanceMethod:@"joinMethods" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKCalendarItem" hasInstanceMethod:@"location" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKEvent" isKindOfClass:@"EKCalendarItem"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)_axIsInPreview
{
  v2 = [(EKDayOccurrenceViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Ekdaygridview.isa)];
  accessibilityIsPreviewGridView = [v2 accessibilityIsPreviewGridView];

  return accessibilityIsPreviewGridView;
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(EKDayOccurrenceViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(EKDayOccurrenceViewAccessibility *)self isAccessibilityUserDefinedElement];
    bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];

    return bOOLValue;
  }

  else if (([(EKDayOccurrenceViewAccessibility *)self safeBoolForKey:@"isSelectedCopyView"]& 1) != 0)
  {
    return 0;
  }

  else if ([(EKDayOccurrenceViewAccessibility *)self _axIsInPreview])
  {
    [(EKDayOccurrenceViewAccessibility *)self accessibilityFrameForScrolling];
    return !CGRectIsNull(v7);
  }

  else
  {
    return 1;
  }
}

- (CGRect)accessibilityFrameForScrolling
{
  _axRealFrameInSuperview = [(EKDayOccurrenceViewAccessibility *)self _axRealFrameInSuperview];
  superview = [(EKDayOccurrenceViewAccessibility *)self superview];
  v5 = superview;
  if (_axRealFrameInSuperview && superview)
  {
    [_axRealFrameInSuperview CGRectValue];
    UIAccessibilityFrameForBounds();
  }

  else
  {
    v24.receiver = self;
    v24.super_class = EKDayOccurrenceViewAccessibility;
    [(EKDayOccurrenceViewAccessibility *)&v24 accessibilityFrameForScrolling];
  }

  x = v6;
  y = v7;
  width = v8;
  height = v9;
  v14 = [(EKDayOccurrenceViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Ekdaygridview.isa)];
  if ([v14 accessibilityIsPreviewGridView])
  {
    v15 = [v14 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    [v15 accessibilityFrame];
    v28.origin.x = v16;
    v28.origin.y = v17;
    v28.size.width = v18;
    v28.size.height = v19;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectIntersection(v25, v28);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(EKDayOccurrenceViewAccessibility *)self safeValueForKey:@"occurrence"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 safeStringForKey:@"title"];
  v6 = v5;
  if ([(EKDayOccurrenceViewAccessibility *)self safeBoolForKey:@"isCancelled"])
  {
    v37 = accessibilityLocalizedString(@"AX_IS_CANCELED");
    v48 = @"__AXStringForVariablesSentinel";
    v6 = __UIAXStringForVariables();
  }

  if ([(EKDayOccurrenceViewAccessibility *)self safeBoolForKey:@"isTentative", v37, v48])
  {
    v38 = accessibilityLocalizedString(@"event.tentative");
    v49 = @"__AXStringForVariablesSentinel";
    v7 = __UIAXStringForVariables();

    v6 = v7;
  }

  if ([(EKDayOccurrenceViewAccessibility *)self safeBoolForKey:@"isDeclined", v38, v49])
  {
    v39 = accessibilityLocalizedString(@"event.declined");
    v50 = @"__AXStringForVariablesSentinel";
    v8 = __UIAXStringForVariables();

    v6 = v8;
  }

  if ([(EKDayOccurrenceViewAccessibility *)self safeBoolForKey:@"needsReply", v39, v50])
  {
    v40 = accessibilityLocalizedString(@"event.needsreply");
    v51 = @"__AXStringForVariablesSentinel";
    v9 = __UIAXStringForVariables();

    v6 = v9;
  }

  virtualConference = [v4 virtualConference];
  v11 = [virtualConference safeArrayForKey:@"joinMethods"];
  firstObject = [v11 firstObject];

  v13 = [firstObject URL];
  absoluteString = [v13 absoluteString];
  lowercaseString = [absoluteString lowercaseString];

  if ([lowercaseString containsString:@"facetime.apple.com"])
  {
    v41 = accessibilityLocalizedString(@"application.name.facetime");
    v52 = @"__AXStringForVariablesSentinel";
    v16 = __UIAXStringForVariables();

    v6 = v16;
  }

  v17 = [v4 safeStringForKey:{@"location", v41, v52}];
  if (v4)
  {
    v62 = firstObject;
    _accessibilityDurationString = [v4 _accessibilityDurationString];
    v18 = __UIAXStringForVariables();

    [v4 travelTime];
    if (v19 > 0.0)
    {
      v43 = MEMORY[0x29C2D50F0]([v4 travelTime]);
      v54 = @"__AXStringForVariablesSentinel";
      v20 = __UIAXStringForVariables();

      v18 = v20;
    }

    if ([v4 isOrWasPartOfRecurringSeries])
    {
      v44 = accessibilityLocalizedString(@"event.repeats");
      v55 = @"__AXStringForVariablesSentinel";
      v21 = __UIAXStringForVariables();

      v18 = v21;
    }

    v61 = v17;
    if ([v4 hasAttachment])
    {
      v45 = accessibilityLocalizedString(@"event.has.attachments");
      v56 = @"__AXStringForVariablesSentinel";
      v22 = __UIAXStringForVariables();

      v18 = v22;
    }

    currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
    startDate = [v4 startDate];
    if (startDate)
    {
      v25 = [currentCalendar components:62 fromDate:startDate];
      endDate = [v4 endDate];
      if (endDate)
      {
        v58 = v5;
        v59 = [currentCalendar components:62 fromDate:endDate];
        date = [MEMORY[0x29EDB8DB0] date];
        v28 = [currentCalendar components:62 fromDate:date];

        year = [v25 year];
        if (year == [v28 year])
        {
          month = [v25 month];
          if (month == [v28 month])
          {
            v31 = [v25 day];
            if (v31 == [v28 day])
            {
              hour = [v25 hour];
              if (hour >= [v28 hour])
              {
                hour2 = [v59 hour];
                if (hour2 <= [v28 hour])
                {
                  v42 = accessibilityLocalizedString(@"in.progress");
                  v53 = @"__AXStringForVariablesSentinel";
                  v57 = __UIAXStringForVariables();

                  v18 = v57;
                }
              }
            }
          }
        }

        v5 = v58;
      }

      else
      {
        v42 = v4;
        _AXAssert();
      }
    }

    else
    {
      v42 = v4;
      _AXAssert();
    }

    v6 = v18;
    v17 = v61;
    firstObject = v62;
  }

  if ([(EKDayOccurrenceViewAccessibility *)self safeBoolForKey:@"isBirthday", v42, v53])
  {
    v46 = accessibilityLocalizedString(@"event.birthday");
    v34 = __UIAXStringForVariables();

    v6 = v34;
  }

  if (v4)
  {
    v47 = accessibilityCalendarTitleForEventIfNecessary(v4);
    v35 = __UIAXStringForVariables();

    v6 = v35;
  }

  return v6;
}

- (id)accessibilityUserInputLabels
{
  objc_opt_class();
  v3 = [(EKDayOccurrenceViewAccessibility *)self safeValueForKey:@"occurrence"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 safeStringForKey:@"title"];
  v6 = MEMORY[0x29C2D5180]();

  return v6;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v7[1] = *MEMORY[0x29EDCA608];
  _axDraggingView = [(EKDayOccurrenceViewAccessibility *)self _axDraggingView];
  v3 = [_axDraggingView safeValueForKey:@"_endResizeHandle"];

  if ([v3 _accessibilityViewIsVisible])
  {
    v7[0] = v3;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v7[1] = *MEMORY[0x29EDCA608];
  _axDraggingView = [(EKDayOccurrenceViewAccessibility *)self _axDraggingView];
  v3 = [_axDraggingView safeValueForKey:@"_startResizeHandle"];

  if ([v3 _accessibilityViewIsVisible])
  {
    v7[0] = v3;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

- (id)_axDraggingView
{
  v3 = [(EKDayOccurrenceViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Eklayoutcontai.isa)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safeValueForKey:@"delegate"];
    NSClassFromString(&cfstr_Ekdayviewcontr_0.isa);
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 safeValueForKey:@"_eventGestureController"];
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v7 = [(EKDayOccurrenceViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Weekgroupview.isa)];
  v5 = v7;
  if (!v7)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_12;
  }

  superview = [v7 superview];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = v5;
    v16 = superview;
    _AXAssert();
  }

  v9 = [superview safeValueForKey:{@"delegate", v15, v16}];
  NSClassFromString(&cfstr_Weekviewcontro.isa);
  if (objc_opt_isKindOfClass())
  {
    v6 = [v9 safeValueForKey:@"_eventGestureController"];
  }

  else
  {
    v6 = 0;
  }

LABEL_12:
  v10 = [v6 safeValueForKey:@"_draggingView"];
  v11 = [(EKDayOccurrenceViewAccessibility *)self safeValueForKey:@"occurrence"];
  v12 = [v10 safeValueForKey:@"occurrence"];
  v13 = [v11 isEqual:v12];

  if ((v13 & 1) == 0)
  {

    v10 = 0;
  }

  return v10;
}

- (id)accessibilityCustomRotors
{
  v16[1] = *MEMORY[0x29EDCA608];
  _axDraggingView = [(EKDayOccurrenceViewAccessibility *)self _axDraggingView];

  if (_axDraggingView)
  {
    v4 = [(EKDayOccurrenceViewAccessibility *)self _accessibilityValueForKey:@"AXCustomRotor"];
    if (!v4)
    {
      objc_initWeak(&location, self);
      v5 = objc_alloc(MEMORY[0x29EDC78E8]);
      v6 = accessibilityLocalizedString(@"handles");
      v10 = MEMORY[0x29EDCA5F8];
      v11 = 3221225472;
      v12 = __61__EKDayOccurrenceViewAccessibility_accessibilityCustomRotors__block_invoke;
      v13 = &unk_29F2BCA78;
      objc_copyWeak(&v14, &location);
      v4 = [v5 initWithName:v6 itemSearchBlock:&v10];

      [(EKDayOccurrenceViewAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:@"AXCustomRotor", v10, v11, v12, v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    v16[0] = v4;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v16 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

id __61__EKDayOccurrenceViewAccessibility_accessibilityCustomRotors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _axDraggingView];
  v6 = [v5 safeValueForKey:@"arrayOfResizeHandles"];
  v7 = __UIAccessibilitySafeClass();

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 _accessibilityCustomRotorResultHelper:v3 array:v7];

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v22.receiver = self;
  v22.super_class = EKDayOccurrenceViewAccessibility;
  accessibilityTraits = [(EKDayOccurrenceViewAccessibility *)&v22 accessibilityTraits];
  _axIsInPreview = [(EKDayOccurrenceViewAccessibility *)self _axIsInPreview];
  v5 = *MEMORY[0x29EDC7F70];
  if (_axIsInPreview)
  {
    v5 = 0;
  }

  v6 = v5 | accessibilityTraits;
  _axWidgetContainerView = [(EKDayOccurrenceViewAccessibility *)self _axWidgetContainerView];
  v8 = _axWidgetContainerView;
  if (_axWidgetContainerView)
  {
    [_axWidgetContainerView accessibilityFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(EKDayOccurrenceViewAccessibility *)self accessibilityFrame];
    v24.origin.x = v17;
    v24.origin.y = v18;
    v24.size.width = v19;
    v24.size.height = v20;
    v23.origin.x = v10;
    v23.origin.y = v12;
    v23.size.width = v14;
    v23.size.height = v16;
    if (!CGRectIntersectsRect(v23, v24))
    {
      v6 |= *MEMORY[0x29EDC7578];
    }
  }

  return v6;
}

- (id)_axWidgetContainerView
{
  v3 = NSClassFromString(&cfstr_Ncwidgetviewco.isa);

  return [(EKDayOccurrenceViewAccessibility *)self _accessibilityViewAncestorIsKindOf:v3];
}

- (BOOL)_accessibilityIsInWidget
{
  _axWidgetContainerView = [(EKDayOccurrenceViewAccessibility *)self _axWidgetContainerView];
  v3 = _axWidgetContainerView != 0;

  return v3;
}

- (id)accessibilityHint
{
  if ([(EKDayOccurrenceViewAccessibility *)self _accessibilityIsInWidget]|| [(EKDayOccurrenceViewAccessibility *)self _axIsInPreview]|| ([(EKDayOccurrenceViewAccessibility *)self _axDraggingView], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = 0;
  }

  else
  {
    if ([(EKDayOccurrenceViewAccessibility *)self safeBoolForKey:@"isAllDay"])
    {
      v6 = @"occurrence.gestures.hint.all.day";
    }

    else
    {
      v6 = @"occurrence.gestures.hint";
    }

    v4 = accessibilityLocalizedString(v6);
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = EKDayOccurrenceViewAccessibility;
  [(EKDayOccurrenceViewAccessibility *)&v3 prepareForReuse];
  [(EKDayOccurrenceViewAccessibility *)self _axSetRealFrameInSuperview:0];
}

- (id)accessibilityDragSourceDescriptors
{
  v21[1] = *MEMORY[0x29EDCA608];
  v20 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 _accessibilityDragAndDropTargetViewForDrop:0];
  if (v4)
  {
    [v3 bounds];
    [v4 convertRect:v3 fromView:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = objc_alloc(MEMORY[0x29EDC7900]);
    v14 = accessibilityLocalizedString(@"drag.whole.event");
    v23.origin.x = v6;
    v23.origin.y = v8;
    v23.size.width = v10;
    v23.size.height = v12;
    CGRectGetMidX(v23);
    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    CGRectGetMidY(v24);
    CalRoundPointToScreenScale();
    v15 = [v13 initWithName:v14 point:v4 inView:?];

    v21[0] = v15;
    accessibilityDragSourceDescriptors = [MEMORY[0x29EDB8D80] arrayWithObjects:v21 count:1];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = EKDayOccurrenceViewAccessibility;
    accessibilityDragSourceDescriptors = [(EKDayOccurrenceViewAccessibility *)&v19 accessibilityDragSourceDescriptors];
  }

  v17 = *MEMORY[0x29EDCA608];

  return accessibilityDragSourceDescriptors;
}

- (id)accessibilityDropPointDescriptors
{
  _axDropPointDescriptorsProvider = [(EKDayOccurrenceViewAccessibility *)self _axDropPointDescriptorsProvider];
  accessibilityDropPointDescriptors = [_axDropPointDescriptorsProvider accessibilityDropPointDescriptors];

  if ([accessibilityDropPointDescriptors count])
  {
    accessibilityDropPointDescriptors2 = accessibilityDropPointDescriptors;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EKDayOccurrenceViewAccessibility;
    accessibilityDropPointDescriptors2 = [(EKDayOccurrenceViewAccessibility *)&v8 accessibilityDropPointDescriptors];
  }

  v6 = accessibilityDropPointDescriptors2;

  return v6;
}

- (BOOL)canBecomeFocused
{
  if ([(EKDayOccurrenceViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v3 = [(EKDayOccurrenceViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_2 startWithSelf:0];
    _accessibilityViewController = [v3 _accessibilityViewController];

    if (_accessibilityViewController)
    {
      v5 = [_accessibilityViewController safeValueForKey:@"currentDayView"];
      v6 = [(EKDayOccurrenceViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Ekdayview.isa)];

      if (v5 != v6)
      {
        return 0;
      }
    }
  }

  v8.receiver = self;
  v8.super_class = EKDayOccurrenceViewAccessibility;
  return [(EKDayOccurrenceViewAccessibility *)&v8 canBecomeFocused];
}

uint64_t __52__EKDayOccurrenceViewAccessibility_canBecomeFocused__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Ekdayviewcontr_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end