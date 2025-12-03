@interface BKUIPearlPillContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)fillPillsAroundAngle:(double)angle;
- (id)_accessibilityScrollStatus;
- (id)_accessibilityUnfilledDirections;
- (id)_axDirectionForSection:(int64_t)section;
- (id)_axLabelKeysForDirection;
- (id)_axLookKeysForDirection;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)_axSectionForAngle:(double)angle;
- (void)_accessibilitySetPearlEnrollViewController:(id)controller;
- (void)_axProvideNudge;
- (void)_axResetTimer;
- (void)_axStartTimer;
- (void)_axStopTimer;
- (void)didMoveToWindow;
@end

@implementation BKUIPearlPillContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BKUIPearlPillView"];
  [validationsCopy validateClass:@"BKUIPearlEnrollController"];
  [validationsCopy validateClass:@"HPSSpatialProfileEnrollmentController"];
  [validationsCopy validateClass:@"BKUIPearlPillContainerView" hasInstanceVariable:@"_pillViews" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"BKUIPearlPillContainerView" hasInstanceVariable:@"_numberOfVisiblePillViews" withType:"NSInteger"];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceVariable:@"_state" withType:"int"];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceVariable:@"_substate" withType:"int"];
  [validationsCopy validateClass:@"BKUIPearlPillContainerView" hasInstanceMethod:@"state" withFullSignature:{"i", 0}];
  [validationsCopy validateClass:@"BKUIPearlPillView" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"BKUIPearlPillContainerView" hasInstanceMethod:@"_indexForPillAtAngle:" withFullSignature:{"q", "d", 0}];
  [validationsCopy validateClass:@"BKUIPearlPillContainerView" hasInstanceMethod:@"fillPillsAroundAngle:" withFullSignature:{"B", "d", 0}];
  [validationsCopy validateClass:@"BKUIPearlPillContainerView" hasInstanceMethod:@"animateToState:completion:" withFullSignature:{"v", "i", "@?", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"didMoveToWindow" withFullSignature:{"v", 0}];
}

- (void)_accessibilitySetPearlEnrollViewController:(id)controller
{
  controllerCopy = controller;
  MEMORY[0x29C2CD0C0](@"BKUIPearlEnrollViewController");
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(AXPearlWeakObjectShell);
    [(AXPearlWeakObjectShell *)v4 setWeakObjectReference:controllerCopy];
  }

  else
  {
    MEMORY[0x29C2CD0C0](@"HPSSpatialProfileEnrollmentController");
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = objc_alloc_init(AXPearlWeakObjectShell);
    [(AXPearlWeakObjectShell *)v4 setWeakSpatialProfileReference:controllerCopy];
  }

  [(BKUIPearlPillContainerViewAccessibility *)self _setAXPearlEnrollControllerShell:v4];

LABEL_6:
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = BKUIPearlPillContainerViewAccessibility;
  [(BKUIPearlPillContainerViewAccessibility *)&v5 didMoveToWindow];
  selfCopy = self;
  window = [(BKUIPearlPillContainerViewAccessibility *)selfCopy window];

  if (!window)
  {
    [(BKUIPearlPillContainerViewAccessibility *)selfCopy _axStopTimer];
    [(BKUIPearlPillContainerViewAccessibility *)selfCopy _setAXNudgeTimer:0];
  }
}

- (id)accessibilityLabel
{
  v8.receiver = self;
  v8.super_class = BKUIPearlPillContainerViewAccessibility;
  accessibilityLabel = [(BKUIPearlPillContainerViewAccessibility *)&v8 accessibilityLabel];
  v4 = [(BKUIPearlPillContainerViewAccessibility *)self safeIntForKey:@"state"];
  if ((v4 - 5) >= 2)
  {
    if ((v4 - 7) > 1)
    {
      goto LABEL_6;
    }

    v5 = @"pearl.scan.second";
  }

  else
  {
    v5 = @"pearl.scan.first";
  }

  v6 = accessibilityLocalizedString(v5);

  accessibilityLabel = v6;
LABEL_6:

  return accessibilityLabel;
}

- (id)_axDirectionForSection:(int64_t)section
{
  _axAnglesToCheck = [(BKUIPearlPillContainerViewAccessibility *)self _axAnglesToCheck];
  v5 = _axAnglesToCheck;
  if (section < 0 || [_axAnglesToCheck count] <= section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:section];
  }

  return v6;
}

- (id)_axLabelKeysForDirection
{
  v6[8] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A21279A8;
  v5[1] = &unk_2A21279B8;
  v6[0] = @"pearl.direction.right";
  v6[1] = @"pearl.direction.up.right";
  v5[2] = &unk_2A21279C8;
  v5[3] = &unk_2A21279D8;
  v6[2] = @"pearl.direction.up";
  v6[3] = @"pearl.direction.up.left";
  v5[4] = &unk_2A21279E8;
  v5[5] = &unk_2A21279F8;
  v6[4] = @"pearl.direction.left";
  v6[5] = @"pearl.direction.down.left";
  v5[6] = &unk_2A2127A08;
  v5[7] = &unk_2A2127A18;
  v6[6] = @"pearl.direction.down";
  v6[7] = @"pearl.direction.down.right";
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v6 forKeys:v5 count:8];
  v3 = *MEMORY[0x29EDCA608];

  return v2;
}

- (id)_axLookKeysForDirection
{
  v6[8] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A21279A8;
  v5[1] = &unk_2A21279B8;
  v6[0] = @"pearl.direction.look.right";
  v6[1] = @"pearl.direction.look.up.right";
  v5[2] = &unk_2A21279C8;
  v5[3] = &unk_2A21279D8;
  v6[2] = @"pearl.direction.look.up";
  v6[3] = @"pearl.direction.look.up.left";
  v5[4] = &unk_2A21279E8;
  v5[5] = &unk_2A21279F8;
  v6[4] = @"pearl.direction.look.left";
  v6[5] = @"pearl.direction.look.down.left";
  v5[6] = &unk_2A2127A08;
  v5[7] = &unk_2A2127A18;
  v6[6] = @"pearl.direction.look.down";
  v6[7] = @"pearl.direction.look.down.right";
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v6 forKeys:v5 count:8];
  v3 = *MEMORY[0x29EDCA608];

  return v2;
}

- (int64_t)_axSectionForAngle:(double)angle
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  AXPerformSafeBlock();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

float __62__BKUIPearlPillContainerViewAccessibility__axSectionForAngle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _indexForPillAtAngle:*(a1 + 48)];
  result = vcvtd_n_f64_u64([*(a1 + 32) safeUnsignedIntegerForKey:@"_numberOfVisiblePillViews"], 3uLL);
  *(*(*(a1 + 40) + 8) + 24) = v2 / vcvtps_u32_f32(result);
  return result;
}

- (id)_accessibilityUnfilledDirections
{
  v22 = *MEMORY[0x29EDCA608];
  _axUnfilledDirections = [(BKUIPearlPillContainerViewAccessibility *)self _axUnfilledDirections];
  if (!_axUnfilledDirections)
  {
    _axUnfilledDirections = [MEMORY[0x29EDB8DE8] array];
    _axAnglesToCheck = [(BKUIPearlPillContainerViewAccessibility *)self _axAnglesToCheck];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [_axAnglesToCheck countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(_axAnglesToCheck);
          }

          [*(*(&v17 + 1) + 8 * i) floatValue];
          v11 = MEMORY[0x29EDCA5F8];
          v12 = 3221225472;
          v13 = __75__BKUIPearlPillContainerViewAccessibility__accessibilityUnfilledDirections__block_invoke;
          v14 = &unk_29F2A82A0;
          selfCopy = self;
          v16 = _axUnfilledDirections;
          AXPerformSafeBlock();
        }

        v6 = [_axAnglesToCheck countByEnumeratingWithState:&v17 objects:v21 count:{16, v11, 3221225472, __75__BKUIPearlPillContainerViewAccessibility__accessibilityUnfilledDirections__block_invoke, &unk_29F2A82A0, self}];
      }

      while (v6);
    }

    [(BKUIPearlPillContainerViewAccessibility *)self _setAXUnfilledDirections:_axUnfilledDirections];
  }

  v9 = *MEMORY[0x29EDCA608];

  return _axUnfilledDirections;
}

void __75__BKUIPearlPillContainerViewAccessibility__accessibilityUnfilledDirections__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _indexForPillAtAngle:*(a1 + 56)];
  objc_opt_class();
  v3 = [*(a1 + 32) safeValueForKey:@"_pillViews"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 objectAtIndex:v2];
  MEMORY[0x29C2CD0C0](@"BKUIPearlPillView");
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 safeUnsignedIntegerForKey:@"state"] == 2)
  {
    [*(a1 + 40) addObject:*(a1 + 48)];
  }
}

- (id)accessibilityValue
{
  v3 = [(BKUIPearlPillContainerViewAccessibility *)self safeIntForKey:@"state"];
  if (v3 == 8 || v3 == 6)
  {
    v9 = accessibilityLocalizedString(@"pearl.scan.completed");
  }

  else
  {
    _accessibilityUnfilledDirections = [(BKUIPearlPillContainerViewAccessibility *)self _accessibilityUnfilledDirections];
    firstObject = [_accessibilityUnfilledDirections firstObject];
    _axLookKeysForDirection = [(BKUIPearlPillContainerViewAccessibility *)self _axLookKeysForDirection];
    v8 = [_axLookKeysForDirection objectForKey:firstObject];
    v9 = accessibilityLocalizedString(v8);
  }

  return v9;
}

- (id)_accessibilityScrollStatus
{
  v28 = *MEMORY[0x29EDCA608];
  v26.receiver = self;
  v26.super_class = BKUIPearlPillContainerViewAccessibility;
  _accessibilityScrollStatus = [(BKUIPearlPillContainerViewAccessibility *)&v26 _accessibilityScrollStatus];
  _accessibilityUnfilledDirections = [(BKUIPearlPillContainerViewAccessibility *)self _accessibilityUnfilledDirections];
  if ([_accessibilityUnfilledDirections count])
  {
    v21 = _accessibilityScrollStatus;
    v5 = accessibilityLocalizedString(@"pearl.direction.incomplete");
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = _accessibilityUnfilledDirections;
    v6 = _accessibilityUnfilledDirections;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        v11 = v5;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v22 + 1) + 8 * v10);
          v13 = [(BKUIPearlPillContainerViewAccessibility *)self _axLabelKeysForDirection:v18];
          v14 = [v13 objectForKey:v12];

          v18 = accessibilityLocalizedString(v14);
          v19 = @"__AXStringForVariablesSentinel";
          v5 = __UIAXStringForVariables();

          ++v10;
          v11 = v5;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:{16, v18, @"__AXStringForVariablesSentinel"}];
      }

      while (v8);
    }

    v15 = __UIAXStringForVariables();

    _accessibilityScrollStatus = v15;
    _accessibilityUnfilledDirections = v20;
  }

  v16 = *MEMORY[0x29EDCA608];

  return _accessibilityScrollStatus;
}

- (BOOL)fillPillsAroundAngle:(double)angle
{
  v16.receiver = self;
  v16.super_class = BKUIPearlPillContainerViewAccessibility;
  v5 = [(BKUIPearlPillContainerViewAccessibility *)&v16 fillPillsAroundAngle:?];
  if (v5 && UIAccessibilityIsVoiceOverRunning())
  {
    v6 = 6.28318531;
    if (angle + 0.392699082 >= 0.0)
    {
      v6 = 0.0;
    }

    v7 = [(BKUIPearlPillContainerViewAccessibility *)self _axDirectionForSection:[(BKUIPearlPillContainerViewAccessibility *)self _axSectionForAngle:angle + 0.392699082 + v6]];
    _axSpokenDirections = [(BKUIPearlPillContainerViewAccessibility *)self _axSpokenDirections];
    if (!_axSpokenDirections)
    {
      _axSpokenDirections = objc_alloc_init(MEMORY[0x29EDB8E20]);
      [(BKUIPearlPillContainerViewAccessibility *)self _setAXSpokenDirections:_axSpokenDirections];
    }

    if (([_axSpokenDirections containsObject:v7] & 1) == 0)
    {
      _accessibilityUnfilledDirections = [(BKUIPearlPillContainerViewAccessibility *)self _accessibilityUnfilledDirections];
      [_accessibilityUnfilledDirections removeObject:v7];
      [(BKUIPearlPillContainerViewAccessibility *)self _setAXUnfilledDirections:_accessibilityUnfilledDirections];
      [_axSpokenDirections addObject:v7];
      [_axSpokenDirections count];
      v10 = MEMORY[0x29EDBA0F8];
      v11 = accessibilityLocalizedString(@"pearl.progress.percent");
      v12 = AXFormatFloatWithPercentage();
      v13 = [v10 stringWithFormat:v11, v12];

      UIAccessibilitySpeak();
      _axImpactFeedbackGenerator = [(BKUIPearlPillContainerViewAccessibility *)self _axImpactFeedbackGenerator];
      if (!_axImpactFeedbackGenerator)
      {
        _axImpactFeedbackGenerator = [objc_alloc(MEMORY[0x29EDC7AE0]) initWithStyle:0];
        [(BKUIPearlPillContainerViewAccessibility *)self _setAXImpactFeedbackGenerator:_axImpactFeedbackGenerator];
      }

      [_axImpactFeedbackGenerator impactOccurred];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAA0]);
      [(BKUIPearlPillContainerViewAccessibility *)self _axResetTimer];
    }
  }

  return v5;
}

- (void)_axStartTimer
{
  [(BKUIPearlPillContainerViewAccessibility *)self _axStopTimer];
  v3 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:self target:sel__axProvideNudge selector:0 userInfo:1 repeats:4.0];
  [(BKUIPearlPillContainerViewAccessibility *)self _setAXNudgeTimer:v3];
}

- (void)_axStopTimer
{
  _axNudgeTimer = [(BKUIPearlPillContainerViewAccessibility *)self _axNudgeTimer];
  [_axNudgeTimer invalidate];
}

- (void)_axResetTimer
{
  [(BKUIPearlPillContainerViewAccessibility *)self _axStopTimer];

  [(BKUIPearlPillContainerViewAccessibility *)self _axStartTimer];
}

- (void)_axProvideNudge
{
  _axPearlEnrollControllerShell = [(BKUIPearlPillContainerViewAccessibility *)self _axPearlEnrollControllerShell];
  weakObjectReference = [_axPearlEnrollControllerShell weakObjectReference];
  if (weakObjectReference)
  {
    weakSpatialProfileReference = weakObjectReference;
    if (([weakObjectReference safeIntForKey:@"_state"] & 0xFFFFFFFD) != 5 || objc_msgSend(weakSpatialProfileReference, "safeIntForKey:", @"_substate"))
    {
      goto LABEL_15;
    }
  }

  else
  {
    weakSpatialProfileReference = [_axPearlEnrollControllerShell weakSpatialProfileReference];
    if (!weakSpatialProfileReference)
    {
      goto LABEL_15;
    }
  }

  _accessibilityUnfilledDirections = [(BKUIPearlPillContainerViewAccessibility *)self _accessibilityUnfilledDirections];
  if ([_accessibilityUnfilledDirections count])
  {
    firstObject = [_accessibilityUnfilledDirections firstObject];
    _axCurrentNudgeDirection = [(BKUIPearlPillContainerViewAccessibility *)self _axCurrentNudgeDirection];
    if (firstObject != _axCurrentNudgeDirection)
    {
      [(BKUIPearlPillContainerViewAccessibility *)self _setAXCurrentNudgeDirection:firstObject];
      [(BKUIPearlPillContainerViewAccessibility *)self _setAXCurrentNudgeCount:0];
    }

    _axCurrentNudgeCount = [(BKUIPearlPillContainerViewAccessibility *)self _axCurrentNudgeCount];
    _axLookKeysForDirection = [(BKUIPearlPillContainerViewAccessibility *)self _axLookKeysForDirection];
    v10 = [_axLookKeysForDirection objectForKey:firstObject];
    v11 = accessibilityLocalizedString(v10);

    if (_axCurrentNudgeCount < 3)
    {
      UIAccessibilitySpeakIfNotSpeaking();
    }

    else
    {
      v12 = MEMORY[0x29EDBA0F8];
      v13 = accessibilityLocalizedString(@"pearl.direction.recenter");
      v14 = [v12 stringWithFormat:v13, v11];
      UIAccessibilitySpeakIfNotSpeaking();
    }

    [(BKUIPearlPillContainerViewAccessibility *)self _setAXCurrentNudgeCount:_axCurrentNudgeCount + 1];
  }

  else
  {
    [(BKUIPearlPillContainerViewAccessibility *)self _axStopTimer];
    [(BKUIPearlPillContainerViewAccessibility *)self _setAXCurrentNudgeDirection:0];
    [(BKUIPearlPillContainerViewAccessibility *)self _setAXCurrentNudgeCount:0];
  }

LABEL_15:
}

@end