@interface AccessibilityStateObserverAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axHasRectangleWithState:(int64_t)state;
- (id)axDescriptionForNumberOfPointsAndLines;
- (void)_axUpdateForState;
- (void)didUpdate;
@end

@implementation AccessibilityStateObserverAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Measure.AccessibilityStateObserver" hasInstanceMethod:@"didUpdate" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"Measure.AccessibilityStateObserver" hasInstanceMethod:@"snapWorldPointType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"Measure.AccessibilityStateObserver" hasInstanceMethod:@"worldLines" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Measure.AccessibilityStateObserver" hasInstanceMethod:@"worldRectangles" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Measure.AccessibilityStateObserver" hasInstanceMethod:@"worldPoints" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Measure.AccessibilityStateObserver" hasInstanceMethod:@"orderedWorldLineIDs" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Measure.AccessibilityStateObserver" hasInstanceMethod:@"snapDivisionsDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Measure.AccessibilityStateObserver" hasInstanceMethod:@"snapDivisionsLineID" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Measure.AccessibilityStateObserver" hasInstanceMethod:@"isModeForMeasuring" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MeasureFoundation.MeasureObject" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"MeasureFoundation.WorldPoint" isKindOfClass:@"MeasureFoundation.MeasureObject"];
  [validationsCopy validateClass:@"MeasureFoundation.WorldRectangle" isKindOfClass:@"MeasureFoundation.MeasureObject"];
  [validationsCopy validateClass:@"MeasureFoundation.WorldPoint" hasInstanceMethod:@"lines" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MeasureFoundation.WorldLine" isKindOfClass:@"MeasureFoundation.MeasureObject"];
}

- (id)axDescriptionForNumberOfPointsAndLines
{
  v53 = *MEMORY[0x29EDCA608];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v3 = [(AccessibilityStateObserverAccessibility *)self safeDictionaryForKey:@"worldLines"];
  allValues = [v3 allValues];

  v5 = [allValues countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v48;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = [*(*(&v47 + 1) + 8 * i) safeIntegerForKey:@"state"];
        if (v11 == 9)
        {
          ++v7;
        }

        if ((v11 & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          ++v8;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = [(AccessibilityStateObserverAccessibility *)self safeDictionaryForKey:@"worldPoints"];
  allValues2 = [v12 allValues];

  obj = allValues2;
  v14 = [allValues2 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v40 = 0;
    v41 = 0;
    v16 = *v44;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v43 + 1) + 8 * j);
        v19 = [v18 safeIntegerForKey:@"state"];
        if (v19 <= 9 && ((1 << v19) & 0x245) != 0)
        {
          v21 = v19;
          v22 = [v18 safeArrayForKey:@"lines"];
          v23 = [v22 count];

          if (v23)
          {
            if (v21 == 9)
            {
              ++v41;
            }

            else
            {
              ++v40;
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v15);
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v24 = AXMeasureSpeakableDescriptionForLastSavedMeasurement();
  if (v24)
  {
    v25 = MEMORY[0x29EDBA0F8];
    v26 = accessibilityLocalizedString(@"DID_UPDATE_POINTS");
    v27 = [v25 localizedStringWithFormat:v26, v40 + v41, v8 + v7, v24];

    if (v41 > 0 || v7)
    {
      v28 = MEMORY[0x29EDBA0F8];
      v29 = accessibilityLocalizedString(@"NUMBER_OF_POINTS");
      v30 = [v28 localizedStringWithFormat:v29, v41];

      v31 = MEMORY[0x29EDBA0F8];
      v32 = accessibilityLocalizedString(@"NUMBER_OF_LINES");
      v33 = [v31 localizedStringWithFormat:v32, v7];

      v34 = MEMORY[0x29EDBA0F8];
      v35 = accessibilityLocalizedString(@"WILL_CLEAR_POINTS");
      v39 = [v34 localizedStringWithFormat:v35, v30, v33];
      v36 = __UIAXStringForVariables();

      v27 = v36;
    }
  }

  else
  {
    v27 = 0;
  }

  v37 = *MEMORY[0x29EDCA608];

  return v27;
}

- (BOOL)_axHasRectangleWithState:(int64_t)state
{
  v18 = *MEMORY[0x29EDCA608];
  axWorldRectangles = [(AccessibilityStateObserverAccessibility *)self axWorldRectangles];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [axWorldRectangles allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v13 + 1) + 8 * i) safeIntegerForKey:@"state"] == state)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

- (void)didUpdate
{
  v3.receiver = self;
  v3.super_class = AccessibilityStateObserverAccessibility;
  [(AccessibilityStateObserverAccessibility *)&v3 didUpdate];
  [(AccessibilityStateObserverAccessibility *)self _axUpdateForState];
}

- (void)_axUpdateForState
{
  v3 = [(AccessibilityStateObserverAccessibility *)self safeIntegerForKey:@"snapWorldPointType"];
  v4 = [(AccessibilityStateObserverAccessibility *)self safeValueForKey:@"snapDivisionsLineID"];
  v5 = [(AccessibilityStateObserverAccessibility *)self safeStringForKey:@"snapDivisionsDescription"];
  _axLastSnapDivisionsLineID = [(AccessibilityStateObserverAccessibility *)self _axLastSnapDivisionsLineID];
  v7 = _axLastSnapDivisionsLineID;
  if (_axLastSnapDivisionsLineID == v4)
  {

    goto LABEL_9;
  }

  _axLastSnapDivisionsLineID2 = [(AccessibilityStateObserverAccessibility *)self _axLastSnapDivisionsLineID];
  v9 = [_axLastSnapDivisionsLineID2 isEqual:v4];

  if (v9)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_18;
  }

  if (!v4)
  {
    v13 = accessibilityLocalizedString(@"DIVISIONS_HIDDEN");
    goto LABEL_18;
  }

  axOrderedWorldLineIDs = [(AccessibilityStateObserverAccessibility *)self axOrderedWorldLineIDs];
  v11 = [axOrderedWorldLineIDs count];
  if (v11 < 2)
  {
    if (v11 != 1)
    {
      v12 = AXLogAppAccessibility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(AccessibilityStateObserverAccessibility *)v12 _axUpdateForState];
      }

      goto LABEL_16;
    }

    v13 = accessibilityLocalizedString(@"DIVISIONS_SHOWN_SINGLE");
  }

  else
  {
    if ([axOrderedWorldLineIDs indexOfObject:v4] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = AXLogAppAccessibility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(AccessibilityStateObserverAccessibility *)v12 _axUpdateForState];
      }

LABEL_16:

      v13 = 0;
      goto LABEL_17;
    }

    v14 = MEMORY[0x29EDBA0F8];
    v15 = accessibilityLocalizedString(@"DIVISIONS_SHOWN_MULTIPLE");
    v16 = AXFormatInteger();
    v17 = AXFormatInteger();
    v13 = [v14 localizedStringWithFormat:v15, v16, v17];
  }

LABEL_17:

LABEL_18:
  if ([(AccessibilityStateObserverAccessibility *)self _axLastWorldPointType]== v3)
  {
    if (v3 != 7 || (-[AccessibilityStateObserverAccessibility _axLastSnapDivisionsDescription](self, "_axLastSnapDivisionsDescription"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isEqualToString:v5], v18, (v19 & 1) != 0))
    {
LABEL_32:
      v20 = 0;
      goto LABEL_38;
    }

LABEL_30:
    if ([v5 length])
    {
      v22 = MEMORY[0x29EDBA0F8];
      v23 = accessibilityLocalizedString(@"SNAPPED_TO_DIVISIONS");
      v20 = [v22 localizedStringWithFormat:v23, v5];

      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v20 = 0;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v21 = @"SNAPPED_TO_CORNER";
        break;
      case 4:
        v21 = @"SNAPPED_TO_EDGE";
        break;
      case 7:
        goto LABEL_30;
      default:
        goto LABEL_38;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v21 = @"SNAPPED_TO_POINT";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_38;
      }

      v21 = @"SNAPPED_TO_LINE";
    }
  }

  else
  {
    v21 = @"NOT_SNAPPED";
  }

  v20 = accessibilityLocalizedString(v21);
LABEL_38:
  v24 = __UIAXStringForVariables();
  if ([v24 length])
  {
    AXMeasureSpeakMeasurementAnnouncement(v24);
  }

  [(AccessibilityStateObserverAccessibility *)self _axSetLastWorldPointType:v3];
  [(AccessibilityStateObserverAccessibility *)self _axSetLastSnapDivisionsLineID:v4];
  [(AccessibilityStateObserverAccessibility *)self _axSetLastSnapDivisionsDescription:v5];
}

@end