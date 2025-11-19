@interface PUILocationServicesAuthLevelCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PUILocationServicesAuthLevelCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUILocationServicesAuthLevelCell" hasInstanceMethod:@"location" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUILocationUsageMixin" hasInstanceMethod:@"usage" withFullSignature:{"i", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PUILocationServicesAuthLevelCellAccessibility *)self safeValueForKey:@"_location"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"usage"];
  v6 = [v5 integerValue];

  v7 = 0;
  if (v6 > 2)
  {
    if (v6 == 4)
    {
      v10 = @"tracking.geofence.enabled";
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_11;
      }

      v10 = @"tracking.used.currently";
    }

    goto LABEL_10;
  }

  if (v6 == 1)
  {
    v10 = @"tracking.used.none.recently";
LABEL_10:
    v7 = accessibilityLocalizedString(v10);
    goto LABEL_11;
  }

  if (v6 == 2)
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