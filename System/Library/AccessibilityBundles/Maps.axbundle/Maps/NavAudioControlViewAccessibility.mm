@interface NavAudioControlViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilitySetNavTypeToAlerts;
- (BOOL)_accessibilitySetNavTypeToAll;
- (BOOL)_accessibilitySetNavTypeToNone;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
@end

@implementation NavAudioControlViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NavAudioControlView" hasInstanceMethod:@"currentAudioType" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"NavAudioControlView" hasInstanceMethod:@"availableAudioTypes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NavAudioControlView" hasInstanceMethod:@"_selectAudioType:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"NavAudioControlView" hasInstanceMethod:@"_accessibilityTextForAudioType:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"NavAudioControlView" hasInstanceMethod:@"_animateContentUpdate" withFullSignature:{"v", 0}];
}

- (id)accessibilityCustomActions
{
  v21 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(NavAudioControlViewAccessibility *)self safeArrayForKey:@"availableAudioTypes"];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      v14 = sel__accessibilitySetNavTypeToNone;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        intValue = [*(*(&v16 + 1) + 8 * v7) intValue];
        v9 = [(NavAudioControlViewAccessibility *)self _accessibilityTextForAudioType:intValue];
        if (v9)
        {
          v10 = sel__accessibilitySetNavTypeToAll;
          if (!intValue)
          {
            goto LABEL_12;
          }

          if (intValue == 2)
          {
            v10 = v14;
LABEL_12:
            v11 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v9 target:self selector:v10];
            [array addObject:v11];

            goto LABEL_13;
          }

          v10 = sel__accessibilitySetNavTypeToAlerts;
          if (intValue == 1)
          {
            goto LABEL_12;
          }
        }

LABEL_13:

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x29EDCA608];

  return array;
}

- (id)accessibilityValue
{
  v3 = [(NavAudioControlViewAccessibility *)self safeIntForKey:@"currentAudioType"];

  return [(NavAudioControlViewAccessibility *)self _accessibilityTextForAudioType:v3];
}

- (BOOL)_accessibilitySetNavTypeToAll
{
  [(NavAudioControlViewAccessibility *)self _selectAudioType:0];
  [(NavAudioControlViewAccessibility *)self _animateContentUpdate];
  return 1;
}

- (BOOL)_accessibilitySetNavTypeToAlerts
{
  [(NavAudioControlViewAccessibility *)self _selectAudioType:1];
  [(NavAudioControlViewAccessibility *)self _animateContentUpdate];
  return 1;
}

- (BOOL)_accessibilitySetNavTypeToNone
{
  [(NavAudioControlViewAccessibility *)self _selectAudioType:2];
  [(NavAudioControlViewAccessibility *)self _animateContentUpdate];
  return 1;
}

@end