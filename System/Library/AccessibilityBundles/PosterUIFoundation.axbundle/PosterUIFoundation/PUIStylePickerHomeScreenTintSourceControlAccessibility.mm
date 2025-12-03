@interface PUIStylePickerHomeScreenTintSourceControlAccessibility
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
@end

@implementation PUIStylePickerHomeScreenTintSourceControlAccessibility

- (id)accessibilityLabel
{
  v2 = [(PUIStylePickerHomeScreenTintSourceControlAccessibility *)self safeIntForKey:@"_iconTintSource"];
  if (v2 == 4)
  {
    v4 = @"icon.tint.source.enclosure.color";
  }

  else
  {
    if (v2 != 3)
    {
      if (v2 == 2)
      {
        v3 = @"icon.tint.source.wallpaper";
      }

      else
      {
        v3 = @"icon.tint.source.eyedropper";
      }

      v5 = accessibilityLocalizedString(v3);
      goto LABEL_10;
    }

    v4 = @"icon.tint.source.case.color";
  }

  v5 = accessibilityLocalizedStringInTable(v4, @"Accessibility-V53");
LABEL_10:

  return v5;
}

- (CGRect)accessibilityFrame
{
  v24 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  subviews = [v3 subviews];

  if (subviews && [subviews count])
  {
    v5 = [subviews objectAtIndexedSubscript:0];
    [v5 frame];
    v7 = v6;
    v9 = v8;

    v22.receiver = self;
    v22.super_class = PUIStylePickerHomeScreenTintSourceControlAccessibility;
    [(PUIStylePickerHomeScreenTintSourceControlAccessibility *)&v22 accessibilityFrame];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = PUIStylePickerHomeScreenTintSourceControlAccessibility;
    [(PUIStylePickerHomeScreenTintSourceControlAccessibility *)&v23 accessibilityFrame];
    v11 = v14;
    v13 = v15;
    v7 = v16;
    v9 = v17;
  }

  v18 = v11;
  v19 = v13;
  v20 = v7;
  v21 = v9;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

@end