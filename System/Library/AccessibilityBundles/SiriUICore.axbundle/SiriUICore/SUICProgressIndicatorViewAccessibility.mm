@interface SUICProgressIndicatorViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation SUICProgressIndicatorViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUICProgressIndicatorView" hasInstanceMethod:@"isSpinning" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SUICProgressIndicatorView" hasInstanceMethod:@"isCheckmarkVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SUICProgressIndicatorView" hasInstanceMethod:@"isArrowVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SUICProgressIndicatorView" hasInstanceMethod:@"progressValue" withFullSignature:{"d", 0}];
}

- (id)accessibilityValue
{
  if ([(SUICProgressIndicatorViewAccessibility *)self safeBoolForKey:@"isSpinning"])
  {
    v3 = @"progress.indicator.value.indeterminate";
  }

  else if ([(SUICProgressIndicatorViewAccessibility *)self safeBoolForKey:@"isCheckmarkVisible"])
  {
    v3 = @"progress.indicator.value.finished";
  }

  else
  {
    if (![(SUICProgressIndicatorViewAccessibility *)self safeBoolForKey:@"isArrowVisible"])
    {
      [(SUICProgressIndicatorViewAccessibility *)self safeCGFloatForKey:@"progressValue"];
      if (v6 <= 0.0 || v6 > 1.0)
      {
        v8.receiver = self;
        v8.super_class = SUICProgressIndicatorViewAccessibility;
        accessibilityValue = [(SUICProgressIndicatorViewAccessibility *)&v8 accessibilityValue];
      }

      else
      {
        accessibilityValue = AXFormatFloatWithPercentage();
      }

      goto LABEL_8;
    }

    v3 = @"progress.indicator.value.idle";
  }

  accessibilityValue = accessibilityLocalizedString(v3);
LABEL_8:

  return accessibilityValue;
}

@end