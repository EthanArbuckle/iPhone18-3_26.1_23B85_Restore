@interface EKEventGestureControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_commit;
- (void)_longPress:(id)a3;
- (void)_speakNotificationIfNecessary:(id)a3 shouldSpeakWithoutInterruption:(BOOL)a4 shouldSpeakOnlyIfNotSpeaking:(BOOL)a5;
- (void)_update;
@end

@implementation EKEventGestureControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKEventGestureController" hasInstanceMethod:@"_createTemporaryView:animated:" withFullSignature:{"@", "@", "B", 0}];
  [v3 validateClass:@"EKEventGestureController" hasInstanceVariable:@"_isNewEvent" withType:"B"];
  [v3 validateClass:@"EKEventGestureController" hasInstanceVariable:@"_delegate" withType:"<EKEventGestureControllerDelegate>"];
  objc_opt_class();
  [v3 validateClass:@"EKEventGestureController" hasInstanceVariable:@"_latestTouchPoint" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  objc_opt_class();
  [v3 validateClass:@"EKEventGestureController" hasInstanceVariable:@"_touchOffset" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  [v3 validateClass:@"EKEventGestureController" hasInstanceVariable:@"_currentDragType" withType:"i"];
  [v3 validateClass:@"EKEventGestureController" hasInstanceVariable:@"_draggingView" withType:"EKDayOccurrenceView"];
  [v3 validateClass:@"EKEventGestureController" hasInstanceMethod:@"_longPress:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"EKEventGestureController" hasInstanceMethod:@"_update" withFullSignature:{"v", 0}];
  [v3 validateClass:@"EKEventGestureController" hasInstanceMethod:@"_commit" withFullSignature:{"v", 0}];
  [v3 validateClass:@"EKDayOccurrenceView" hasInstanceMethod:@"occurrence" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"EKEventGestureControllerDelegate" hasRequiredInstanceMethod:@"eventGestureController:dateAtPoint:"];
}

- (void)_longPress:(id)a3
{
  v8.receiver = self;
  v8.super_class = EKEventGestureControllerAccessibility;
  v4 = a3;
  [(EKEventGestureControllerAccessibility *)&v8 _longPress:v4];
  v5 = [v4 state];

  if (v5 == 1)
  {
    v6 = [(EKEventGestureControllerAccessibility *)self safeIntForKey:@"_currentDragType"];
    if (v6 > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = accessibilityLocalizedString(off_29F2BCD08[v6]);
    }

    UIAccessibilitySpeak();
  }
}

- (void)_update
{
  v50.receiver = self;
  v50.super_class = EKEventGestureControllerAccessibility;
  [(EKEventGestureControllerAccessibility *)&v50 _update];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [(EKEventGestureControllerAccessibility *)self safeValueForKey:@"_delegate"];
    if (!v3)
    {
LABEL_12:

      return;
    }

    v4 = [(EKEventGestureControllerAccessibility *)self safeIntForKey:@"_currentDragType"];
    v5 = [(EKEventGestureControllerAccessibility *)self safeValueForKey:@"_latestTouchPoint"];
    [v5 pointValue];
    v7 = v6;
    v9 = v8;

    v10 = [(EKEventGestureControllerAccessibility *)self safeValueForKey:@"_touchOffset"];
    [v10 pointValue];
    v12 = v11;
    v14 = v13;

    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x3010000000;
    v49[3] = "";
    *&v49[4] = v7 - v12;
    *&v49[5] = v9 - v14;
    objc_opt_class();
    v15 = [(EKEventGestureControllerAccessibility *)self safeValueForKeyPath:@"_draggingView.occurrence"];
    v16 = __UIAccessibilityCastAsClass();

    if (v4 == 2)
    {
      [v16 duration];
      v18 = v17;
      v41 = MEMORY[0x29EDCA5F8];
      v42 = 3221225472;
      v43 = __48__EKEventGestureControllerAccessibility__update__block_invoke;
      v44 = &unk_29F2BCCC0;
      v47 = v49;
      v45 = v3;
      v46 = self;
      v48 = v18;
      AXPerformSafeBlock();
    }

    v19 = MEMORY[0x29EDB8DB0];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v35 = MEMORY[0x29EDCA5F8];
    v36 = v3;
    AXPerformSafeBlock();
    v20 = v38[3];

    _Block_object_dispose(&v37, 8);
    v21 = [v19 dateWithTimeIntervalSinceReferenceDate:{v20, v35, 3221225472, __48__EKEventGestureControllerAccessibility__update__block_invoke_2, &unk_29F2BCCE8}];
    v22 = [MEMORY[0x29EDB8D98] currentCalendar];
    v23 = [v22 components:254 fromDate:v21];
    [v23 setMinute:{(floor((objc_msgSend(v23, "minute") + 7.5) / 15.0) * 15.0)}];
    v24 = [v22 dateFromComponents:v23];
    v25 = v24;
    if (v4 == 2)
    {
      v31 = [v16 startDate];
      [v31 timeIntervalSince1970];
      v27 = v32;

      [v25 timeIntervalSince1970];
      v30 = v33;
    }

    else
    {
      if (v4)
      {
        goto LABEL_10;
      }

      [v24 timeIntervalSince1970];
      v27 = v26;
      v28 = [v16 endDate];
      [v28 timeIntervalSince1970];
      v30 = v29;
    }

    if (v30 - v27 < 1800.0)
    {
LABEL_11:

      _Block_object_dispose(v49, 8);
      goto LABEL_12;
    }

LABEL_10:
    v34 = [v25 _accessibilityTimeString];
    [(EKEventGestureControllerAccessibility *)self _speakNotificationIfNecessary:v34 shouldSpeakWithoutInterruption:0 shouldSpeakOnlyIfNotSpeaking:1];

    goto LABEL_11;
  }
}

double __48__EKEventGestureControllerAccessibility__update__block_invoke(uint64_t a1)
{
  [*(a1 + 32) eventGestureController:*(a1 + 40) heightForOccurrenceViewOfDuration:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  result = round(v2) + *(v3 + 40);
  *(v3 + 40) = result;
  return result;
}

uint64_t __48__EKEventGestureControllerAccessibility__update__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) eventGestureController:*(a1 + 40) dateAtPoint:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];
  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (void)_commit
{
  v3 = [(EKEventGestureControllerAccessibility *)self safeIntForKey:@"_currentDragType"];
  v12.receiver = self;
  v12.super_class = EKEventGestureControllerAccessibility;
  [(EKEventGestureControllerAccessibility *)&v12 _commit];
  objc_opt_class();
  v4 = [(EKEventGestureControllerAccessibility *)self safeValueForKeyPath:@"_draggingView.occurrence"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 startDate];
  if (v3 == 2)
  {
    v7 = [v5 endDate];

    v8 = AXDateStringForFormat();
    v9 = @"ended.end.time.adjust";
    v6 = v7;
  }

  else
  {
    v8 = AXDateStringForFormat();
    if (v3 == 1)
    {
      v9 = @"ended.time.adjust";
    }

    else
    {
      if (v3)
      {
        v10 = 0;
        goto LABEL_8;
      }

      v9 = @"ended.start.time.adjust";
    }
  }

  v10 = accessibilityLocalizedString(v9);
LABEL_8:
  v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:v10, v8];
  [(EKEventGestureControllerAccessibility *)self _speakNotificationIfNecessary:v11 shouldSpeakWithoutInterruption:1 shouldSpeakOnlyIfNotSpeaking:0];
}

- (void)_speakNotificationIfNecessary:(id)a3 shouldSpeakWithoutInterruption:(BOOL)a4 shouldSpeakOnlyIfNotSpeaking:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v8 = [(EKEventGestureControllerAccessibility *)self _accessibilityValueForKey:@"lastNotificationString"];
  if (([v9 isEqualToString:v8] & 1) == 0)
  {
    if (v6)
    {
      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }

    else if (v5)
    {
      UIAccessibilitySpeakIfNotSpeaking();
    }

    else
    {
      UIAccessibilitySpeak();
    }
  }

  [(EKEventGestureControllerAccessibility *)self _accessibilitySetRetainedValue:v9 forKey:@"lastNotificationString"];
}

@end