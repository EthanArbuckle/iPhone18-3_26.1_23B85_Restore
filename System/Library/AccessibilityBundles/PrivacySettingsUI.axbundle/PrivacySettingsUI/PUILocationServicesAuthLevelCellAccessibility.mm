@interface PUILocationServicesAuthLevelCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PUILocationServicesAuthLevelCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUILocationServicesAuthLevelCell" hasInstanceMethod:@"location" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUILocationUsageMixin" hasInstanceMethod:@"usage" withFullSignature:{"i", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PUILocationServicesAuthLevelCellAccessibility *)self safeValueForKey:@"_location"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"usage"];
  integerValue = [v5 integerValue];

  v7 = 0;
  if (integerValue > 2)
  {
    if (integerValue == 4)
    {
      v10 = @"tracking.geofence.enabled";
    }

    else
    {
      if (integerValue != 3)
      {
        goto LABEL_11;
      }

      v10 = @"tracking.used.currently";
    }

    goto LABEL_10;
  }

  if (integerValue == 1)
  {
    v10 = @"tracking.used.none.recently";
LABEL_10:
    v7 = accessibilityLocalizedString(v10);
    goto LABEL_11;
  }

  if (integerValue == 2)
  {
    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"tracking.used.recently");
    v7 = [v8 localizedStringWithFormat:v9, 24];
  }

LABEL_11:
  v11 = [(PUILocationServicesAuthLevelCellAccessibility *)self safeValueForKey:@"textLabel"];
  v12 = __UIAXStringForVariables();

  return v12;
}

@end