@interface BKBookControllerAccessibility
- (void)scrubValueChanged:(id)changed;
@end

@implementation BKBookControllerAccessibility

- (void)scrubValueChanged:(id)changed
{
  v5.receiver = self;
  v5.super_class = BKBookControllerAccessibility;
  changedCopy = changed;
  [(BKBookControllerAccessibility *)&v5 scrubValueChanged:changedCopy];
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