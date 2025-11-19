@interface BKBookControllerAccessibility
- (void)scrubValueChanged:(id)a3;
@end

@implementation BKBookControllerAccessibility

- (void)scrubValueChanged:(id)a3
{
  v5.receiver = self;
  v5.super_class = BKBookControllerAccessibility;
  v3 = a3;
  [(BKBookControllerAccessibility *)&v5 scrubValueChanged:v3];
  NSClassFromString(@"BKScrubberControl");
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (IMAccessibilityShouldPerformValidationChecks())
    {
      [NSException raise:@"Accessibility" format:@"sender is not a BKScrubber", v5.receiver, v5.super_class];
    }
  }
}

@end