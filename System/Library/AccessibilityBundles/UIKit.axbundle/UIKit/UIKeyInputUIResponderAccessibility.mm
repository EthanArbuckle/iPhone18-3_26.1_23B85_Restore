@interface UIKeyInputUIResponderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation UIKeyInputUIResponderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v9 = a2;
  v7.receiver = self;
  v7.super_class = UIKeyInputUIResponderAccessibility;
  accessibilityTraits = [(UIKeyInputUIResponderAccessibility *)&v7 accessibilityTraits];
  if (([selfCopy __accessibilityRespondsToKeyInput]& 1) == 0)
  {
    return accessibilityTraits;
  }

  accessibilityTraits |= *MEMORY[0x29EDC7598] | *MEMORY[0x29EDBDC00];
  v6 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  isFirstResponder = [v4 isFirstResponder];
  MEMORY[0x29EDC9740](v4);
  if (isFirstResponder)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7528];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIKeyInputUIResponderAccessibility *)selfCopy isSecureTextEntry]& 1) != 0)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7568];
  }

  return accessibilityTraits;
}

@end