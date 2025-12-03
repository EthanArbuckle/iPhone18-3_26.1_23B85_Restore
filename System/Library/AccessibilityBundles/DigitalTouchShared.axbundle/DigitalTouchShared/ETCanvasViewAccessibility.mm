@interface ETCanvasViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (ETCanvasViewAccessibility)initWithFrame:(CGRect)frame;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityFocusChanged:(id)changed;
- (void)_accessibilityInvalidateDirectTouchTimerAndReschedule:(BOOL)reschedule;
- (void)_checkForIdle;
- (void)dealloc;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation ETCanvasViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETCanvasView"];
  [validationsCopy validateClass:@"ETCanvasView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"ETCanvasView" hasInstanceMethod:@"isComposing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ETCanvasView" hasInstanceVariable:@"_currentSketchView" withType:"ETGLSketchView"];
  [validationsCopy validateClass:@"ETCanvasView" hasInstanceVariable:@"_lastActivityTimestamp" withType:"d"];
  [validationsCopy validateClass:@"ETCanvasView" hasInstanceMethod:@"_sketchInProgress" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ETCanvasView" hasInstanceMethod:@"sendCurrentMessage" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ETCanvasView" hasInstanceMethod:@"_setIsComposingMessageOfType:" withFullSignature:{"v", "S", 0}];
  [validationsCopy validateClass:@"ETCanvasView" hasInstanceMethod:@"_endMessage: withSend:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"MediaInstructionView"];
  [validationsCopy validateClass:@"MediaInstructionView" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
}

- (ETCanvasViewAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ETCanvasViewAccessibility;
  v3 = [(ETCanvasViewAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__accessibilityFocusChanged_ name:*MEMORY[0x29EDC7EB8] object:0];
  }

  return v3;
}

- (void)dealloc
{
  [(ETCanvasViewAccessibility *)self _accessibilityInvalidateDirectTouchTimerAndReschedule:0];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC7EB8] object:0];

  v4.receiver = self;
  v4.super_class = ETCanvasViewAccessibility;
  [(ETCanvasViewAccessibility *)&v4 dealloc];
}

- (BOOL)accessibilityActivate
{
  [(ETCanvasViewAccessibility *)self _accessibilitySetIsDirectTouching:1];
  v3 = accessibilityLocalizedString(@"people.drawing.canvas.start.drawing");
  UIAccessibilitySpeakAndDoNotBeInterrupted();

  [(ETCanvasViewAccessibility *)self _accessibilityInvalidateDirectTouchTimerAndReschedule:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return 1;
}

- (BOOL)isAccessibilityElement
{
  storedIsAccessibilityElement = [(ETCanvasViewAccessibility *)self storedIsAccessibilityElement];
  v3 = storedIsAccessibilityElement;
  if (storedIsAccessibilityElement)
  {
    bOOLValue = [storedIsAccessibilityElement BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (CGRect)accessibilityFrame
{
  v6.receiver = self;
  v6.super_class = ETCanvasViewAccessibility;
  [(ETCanvasViewAccessibility *)&v6 accessibilityFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (unint64_t)accessibilityTraits
{
  _accessibilityIsDirectTouching = [(ETCanvasViewAccessibility *)self _accessibilityIsDirectTouching];
  v3 = MEMORY[0x29EDC7F68];
  if (!_accessibilityIsDirectTouching)
  {
    v3 = MEMORY[0x29EDC7FC8];
  }

  return *v3;
}

- (id)accessibilityLabel
{
  if ([(ETCanvasViewAccessibility *)self _accessibilityIsDirectTouching])
  {
    v2 = 0;
  }

  else
  {
    v3 = accessibilityLocalizedString(@"people.drawing.canvas");
    v5 = accessibilityLocalizedString(@"people.drawing.canvas.hint");
    v2 = __UIAXStringForVariables();
  }

  return v2;
}

- (id)accessibilityHint
{
  v21 = *MEMORY[0x29EDCA608];
  v19 = 0;
  objc_opt_class();
  v3 = [(ETCanvasViewAccessibility *)self safeValueForKey:@"subviews"];
  v4 = __UIAccessibilityCastAsClass();

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        MEMORY[0x29C2D41C0](@"MediaInstructionView");
        if (objc_opt_isKindOfClass())
        {
          v12 = [v10 safeValueForKey:{@"_textLabel", v15}];
          accessibilityLabel = [v12 accessibilityLabel];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  accessibilityLabel = 0;
LABEL_11:

  v13 = *MEMORY[0x29EDCA608];

  return accessibilityLabel;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  _axSetIsWaitingOnETMessageStart(0);
  v8.receiver = self;
  v8.super_class = ETCanvasViewAccessibility;
  [(ETCanvasViewAccessibility *)&v8 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = ETCanvasViewAccessibility;
  [(ETCanvasViewAccessibility *)&v5 touchesEnded:ended withEvent:event];
  [(ETCanvasViewAccessibility *)self _accessibilityInvalidateDirectTouchTimerAndReschedule:1];
}

- (void)_checkForIdle
{
  if (!UIAccessibilityIsVoiceOverRunning() || (_axIsWaitingOnETMessageStart() & 1) == 0)
  {
    v3.receiver = self;
    v3.super_class = ETCanvasViewAccessibility;
    [(ETCanvasViewAccessibility *)&v3 _checkForIdle];
  }
}

- (void)_accessibilityInvalidateDirectTouchTimerAndReschedule:(BOOL)reschedule
{
  rescheduleCopy = reschedule;
  _accessibilityDisableDirectTouchTimer = [(ETCanvasViewAccessibility *)self _accessibilityDisableDirectTouchTimer];
  [_accessibilityDisableDirectTouchTimer invalidate];

  if (rescheduleCopy)
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __83__ETCanvasViewAccessibility__accessibilityInvalidateDirectTouchTimerAndReschedule___block_invoke;
    v7[3] = &unk_29F2BAAA0;
    v7[4] = self;
    v6 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:0 repeats:v7 block:3.0];
  }

  else
  {
    v6 = 0;
  }

  [(ETCanvasViewAccessibility *)self _accessibilitySetDisableDirectTouchTimer:v6];
}

void __83__ETCanvasViewAccessibility__accessibilityInvalidateDirectTouchTimerAndReschedule___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _accessibilitySetIsDirectTouching:0];
  v1 = accessibilityLocalizedString(@"people.drawing.canvas.stopped.drawing");
  UIAccessibilitySpeakAndDoNotBeInterrupted();

  v2 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v2, 0);
}

- (void)_accessibilityFocusChanged:(id)changed
{
  v30 = *MEMORY[0x29EDCA608];
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x29EDC7EC0]];

  userInfo2 = [changedCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x29EDC7FF8]];

  v9 = MEMORY[0x29C2D41C0](@"ETPaletteCircleView");
  v10 = MEMORY[0x29C2D41C0](@"ETCanvasView");
  v11 = MEMORY[0x29C2D41C0](@"ETTranscriptColorWheelAccessibility");
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{4, v9, v10, v11, MEMORY[0x29C2D41C0](@"GestureInstructionButton"), 0}];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    isKindOfClass = 0;
    v16 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v12);
        }

        if (isKindOfClass & 1) != 0 || (v18 = *(*(&v25 + 1) + 8 * i), (objc_opt_isKindOfClass()))
        {
          isKindOfClass = 1;
        }

        else
        {
          isKindOfClass = objc_opt_isKindOfClass();
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  else
  {
    isKindOfClass = 0;
  }

  accessibilityIdentifier = [v6 accessibilityIdentifier];
  v20 = [accessibilityIdentifier isEqualToString:@"digital.touch.picker.circle.identifier"];

  accessibilityIdentifier2 = [v8 accessibilityIdentifier];
  v22 = [accessibilityIdentifier2 isEqualToString:@"digital.touch.picker.circle.identifier"];

  if ((isKindOfClass & 1) != 0 || (v20 & 1) != 0 || v22)
  {
    v23 = [MEMORY[0x29EDBA070] numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [(ETCanvasViewAccessibility *)self setValue:v23 forKey:@"_lastActivityTimestamp"];
  }

  v24 = *MEMORY[0x29EDCA608];
}

@end