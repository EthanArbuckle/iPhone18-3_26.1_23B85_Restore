@interface _NTKPigmentAddCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation _NTKPigmentAddCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_NTKPigmentAddCell" hasInstanceMethod:@"pigmentEditOption" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKEditOption" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(_NTKPigmentAddCellAccessibility *)self safeValueForKey:@"pigmentEditOption"];
  v4 = v3;
  if (v3)
  {
    _accessibilityEditOptionDescription = [v3 _accessibilityEditOptionDescription];
    v6 = [_accessibilityEditOptionDescription length];

    if (v6)
    {
      [v4 _accessibilityEditOptionDescription];
    }

    else
    {
      [v4 safeValueForKey:@"localizedName"];
    }
    accessibilityLabel = ;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _NTKPigmentAddCellAccessibility;
    accessibilityLabel = [(_NTKPigmentAddCellAccessibility *)&v10 accessibilityLabel];
  }

  v8 = accessibilityLabel;

  return v8;
}

@end