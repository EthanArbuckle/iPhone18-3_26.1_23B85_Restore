@interface STUIStatusBarSensorActivityViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation STUIStatusBarSensorActivityViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"SpringBoard" hasInstanceMethod:@"sensorActivityDataProvider" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"SBSensorActivityDataProvider" hasInstanceMethod:@"activeSensorActivityAttributions" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"SBSensorActivityAttribution" hasInstanceMethod:@"sensor" withFullSignature:{"q", 0}];
  }
}

- (id)accessibilityLabel
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = [*MEMORY[0x29EDC8008] safeValueForKey:@"sensorActivityDataProvider"];
  v4 = [v3 safeSetForKey:@"activeSensorActivityAttributions"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v6)
  {

LABEL_16:
    v18.receiver = self;
    v18.super_class = STUIStatusBarSensorActivityViewAccessibility;
    accessibilityLabel = [(STUIStatusBarSensorActivityViewAccessibility *)&v18 accessibilityLabel];
    goto LABEL_22;
  }

  v7 = v6;
  LOBYTE(v8) = 0;
  LOBYTE(v9) = 0;
  v10 = *v20;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      if (v8)
      {
        v8 = 1;
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = [*(*(&v19 + 1) + 8 * i) safeIntegerForKey:@"sensor"] == 0;
        if (!v9)
        {
LABEL_8:
          v9 = [v12 safeIntegerForKey:@"sensor"] == 1;
          continue;
        }
      }

      v9 = 1;
    }

    v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v7);

  if (v8 && v9)
  {
    v13 = @"camera.mic.in.use";
    goto LABEL_21;
  }

  if (v8)
  {
    v13 = @"camera.in.use";
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v13 = @"mic.in.use";
LABEL_21:
  accessibilityLabel = accessibilityLocalizedString(v13);
LABEL_22:
  v15 = accessibilityLabel;

  v16 = *MEMORY[0x29EDCA608];

  return v15;
}

@end