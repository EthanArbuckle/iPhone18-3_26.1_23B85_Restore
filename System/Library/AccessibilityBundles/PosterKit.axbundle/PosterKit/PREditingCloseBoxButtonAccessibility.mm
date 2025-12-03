@interface PREditingCloseBoxButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PREditingCloseBoxButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PREditingCheckMarkButton"];
  [validationsCopy validateClass:@"PREditingHideButton"];
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(PREditingCloseBoxButtonAccessibility *)self accessibilityUserDefinedLabel];
  v3 = accessibilityUserDefinedLabel;
  if (accessibilityUserDefinedLabel)
  {
    v4 = accessibilityUserDefinedLabel;
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