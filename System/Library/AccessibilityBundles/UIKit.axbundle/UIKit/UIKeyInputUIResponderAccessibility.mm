@interface UIKeyInputUIResponderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation UIKeyInputUIResponderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (unint64_t)accessibilityTraits
{
  v10 = self;
  v9 = a2;
  v7.receiver = self;
  v7.super_class = UIKeyInputUIResponderAccessibility;
  v8 = [(UIKeyInputUIResponderAccessibility *)&v7 accessibilityTraits];
  if (([v10 __accessibilityRespondsToKeyInput]& 1) == 0)
  {
    return v8;
  }

  v8 |= *MEMORY[0x29EDC7598] | *MEMORY[0x29EDBDC00];
  v6 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  v3 = [v4 isFirstResponder];
  MEMORY[0x29EDC9740](v4);
  if (v3)
  {
    v8 |= *MEMORY[0x29EDC7528];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIKeyInputUIResponderAccessibility *)v10 isSecureTextEntry]& 1) != 0)
  {
    v8 |= *MEMORY[0x29EDC7568];
  }

  return v8;
}

@end