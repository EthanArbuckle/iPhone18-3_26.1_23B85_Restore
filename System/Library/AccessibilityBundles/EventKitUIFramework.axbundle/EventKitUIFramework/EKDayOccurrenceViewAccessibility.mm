@interface EKDayOccurrenceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
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

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKLayoutContainerView"];
  [v3 validateClass:@"EKDayViewController"];
  [v3 validateClass:@"EKDayGridView"];
  [v3 validateClass:@"EKDayView"];
  [v3 validateClass:@"EKEvent"];
  [v3 validateClass:@"EKDayOccurrenceView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"EKLayoutContainerView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"arrayOfResizeHandles" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"occurrence" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isAllDay" withFullSignature:{"B", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"prepareForReuse" withFullSignature:{"v", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isCancelled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isBirthday" withFullSignature:{"B", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isTentative" withFullSignature:{"B", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isDeclined" withFullSignature:{"B", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"needsReply" withFullSignature:{"B", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"isSelectedCopyView" withFullSignature:{"B", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"setDrawsResizeHandles:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"occurrence" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKDayViewController" hasInstanceMethod:@"currentDayView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKDayViewController" hasInstanceVariable:@"_eventGestureController" withType:"EKEventGestureController"];
  [v3 validateClass:@"EKEventGestureController" hasInstanceVariable:@"_draggingView" withType:"EKDayOccurrenceView"];
  [v3 validateClass:@"EKEvent" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKEvent" hasInstanceMethod:@"virtualConference" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKVirtualConference" hasInstanceMethod:@"joinMethods" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKCalendarItem" hasInstanceMethod:@"location" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKEvent" isKindOfClass:@"EKCalendarItem"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)_axIsInPreview
{
  v2 = [(EKDayOccurrenceViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Ekdaygridview.isa)];
  v3 = [v2 accessibilityIsPreviewGridView];

  return v3;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(EKDayOccurrenceViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (v3)
  {
    v4 = [(EKDayOccurrenceViewAccessibility *)self isAccessibilityUserDefinedElement];
    v5 = [v4 BOOLValue];

    return v5;
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
  v3 = [(EKDayOccurrenceViewAccessibility *)self _axRealFrameInSuperview];
  v4 = [(EKDayOccurrenceViewAccessibility *)self superview];
  v5 = v4;
  if (v3 && v4)
  {
    [v3 CGRectValue];
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

  v10 = [v4 virtualConference];
  v11 = [v10 safeArrayForKey:@"joinMethods"];
  v12 = [v11 firstObject];

  v13 = [v12 URL];
  v14 = [v13 absoluteString];
  v15 = [v14 lowercaseString];

  if ([v15 containsString:@"facetime.apple.com"])
  {
    v41 = accessibilityLocalizedString(@"application.name.facetime");
    v52 = @"__AXStringForVariablesSentinel";
    v16 = __UIAXStringForVariables();

    v6 = v16;
  }

  v17 = [v4 safeStringForKey:{@"location", v41, v52}];
  if (v4)
  {
    v62 = v12;
    v60 = [v4 _accessibilityDurationString];
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

    v23 = [MEMORY[0x29EDB8D98] currentCalendar];
    v24 = [v4 startDate];
    if (v24)
    {
      v25 = [v23 components:62 fromDate:v24];
      v26 = [v4 endDate];
      if (v26)
      {
        v58 = v5;
        v59 = [v23 components:62 fromDate:v26];
        v27 = [MEMORY[0x29EDB8DB0] date];
        v28 = [v23 components:62 fromDate:v27];

        v29 = [v25 year];
        if (v29 == [v28 year])
        {
          v30 = [v25 month];
          if (v30 == [v28 month])
          {
            v31 = [v25 day];
            if (v31 == [v28 day])
            {
              v32 = [v25 hour];
              if (v32 >= [v28 hour])
              {
                v33 = [v59 hour];
                if (v33 <= [v28 hour])
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
    v12 = v62;
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
  v2 = [(EKDayOccurrenceViewAccessibility *)self _axDraggingView];
  v3 = [v2 safeValueForKey:@"_endResizeHandle"];

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
  v2 = [(EKDayOccurrenceViewAccessibility *)self _axDraggingView];
  v3 = [v2 safeValueForKey:@"_startResizeHandle"];

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

  v8 = [v7 superview];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = v5;
    v16 = v8;
    _AXAssert();
  }

  v9 = [v8 safeValueForKey:{@"delegate", v15, v16}];
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
  v3 = [(EKDayOccurrenceViewAccessibility *)self _axDraggingView];

  if (v3)
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
  v3 = [(EKDayOccurrenceViewAccessibility *)&v22 accessibilityTraits];
  v4 = [(EKDayOccurrenceViewAccessibility *)self _axIsInPreview];
  v5 = *MEMORY[0x29EDC7F70];
  if (v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  v7 = [(EKDayOccurrenceViewAccessibility *)self _axWidgetContainerView];
  v8 = v7;
  if (v7)
  {
    [v7 accessibilityFrame];
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
  v2 = [(EKDayOccurrenceViewAccessibility *)self _axWidgetContainerView];
  v3 = v2 != 0;

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
    v16 = [MEMORY[0x29EDB8D80] arrayWithObjects:v21 count:1];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = EKDayOccurrenceViewAccessibility;
    v16 = [(EKDayOccurrenceViewAccessibility *)&v19 accessibilityDragSourceDescriptors];
  }

  v17 = *MEMORY[0x29EDCA608];

  return v16;
}

- (id)accessibilityDropPointDescriptors
{
  v3 = [(EKDayOccurrenceViewAccessibility *)self _axDropPointDescriptorsProvider];
  v4 = [v3 accessibilityDropPointDescriptors];

  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EKDayOccurrenceViewAccessibility;
    v5 = [(EKDayOccurrenceViewAccessibility *)&v8 accessibilityDropPointDescriptors];
  }

  v6 = v5;

  return v6;
}

- (BOOL)canBecomeFocused
{
  if ([(EKDayOccurrenceViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v3 = [(EKDayOccurrenceViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_2 startWithSelf:0];
    v4 = [v3 _accessibilityViewController];

    if (v4)
    {
      v5 = [v4 safeValueForKey:@"currentDayView"];
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