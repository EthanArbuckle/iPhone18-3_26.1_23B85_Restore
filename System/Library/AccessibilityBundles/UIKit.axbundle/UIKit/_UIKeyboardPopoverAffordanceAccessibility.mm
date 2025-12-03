@interface _UIKeyboardPopoverAffordanceAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
@end

@implementation _UIKeyboardPopoverAffordanceAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (id)accessibilityHint
{
  v6 = 0;
  v4 = 0;
  if ([MEMORY[0x29EDC7B08] isFloatingForced])
  {
    v7 = accessibilityLocalizedString(@"keyboard.floating.grabber.hint.floating.forced");
    v6 = 1;
    v2 = MEMORY[0x29EDC9748](v7);
  }

  else
  {
    v5 = accessibilityLocalizedString(@"keyboard.floating.grabber.hint.default");
    v4 = 1;
    v2 = MEMORY[0x29EDC9748](v5);
  }

  v8 = v2;
  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  return v8;
}

@end