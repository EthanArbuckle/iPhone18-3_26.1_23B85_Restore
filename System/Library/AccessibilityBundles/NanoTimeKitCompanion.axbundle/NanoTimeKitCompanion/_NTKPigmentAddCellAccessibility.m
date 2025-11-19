@interface _NTKPigmentAddCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _NTKPigmentAddCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_NTKPigmentAddCell" hasInstanceMethod:@"pigmentEditOption" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKEditOption" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(_NTKPigmentAddCellAccessibility *)self safeValueForKey:@"pigmentEditOption"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _accessibilityEditOptionDescription];
    v6 = [v5 length];

    if (v6)
    {
      [v4 _accessibilityEditOptionDescription];
    }

    else
    {
      [v4 safeValueForKey:@"localizedName"];
    }
    v7 = ;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _NTKPigmentAddCellAccessibility;
    v7 = [(_NTKPigmentAddCellAccessibility *)&v10 accessibilityLabel];
  }

  v8 = v7;

  return v8;
}

@end