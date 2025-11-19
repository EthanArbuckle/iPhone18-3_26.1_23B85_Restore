@interface PREditingCloseBoxButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PREditingCloseBoxButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PREditingCheckMarkButton"];
  [v3 validateClass:@"PREditingHideButton"];
}

- (id)accessibilityLabel
{
  v2 = [(PREditingCloseBoxButtonAccessibility *)self accessibilityUserDefinedLabel];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    NSClassFromString(&cfstr_Preditingcheck.isa);
    if (objc_opt_isKindOfClass())
    {
      v5 = @"editing.done.button.label";
    }

    else
    {
      NSClassFromString(&cfstr_Preditinghideb.isa);
      if (objc_opt_isKindOfClass())
      {
        v5 = @"editing.hide.button.label";
      }

      else
      {
        v5 = @"editing.cancel.button.label";
      }
    }

    v4 = accessibilityLocalizedString(v5);
  }

  v6 = v4;

  return v6;
}

@end