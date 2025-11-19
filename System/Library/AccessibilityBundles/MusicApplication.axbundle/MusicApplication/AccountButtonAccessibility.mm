@interface AccountButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation AccountButtonAccessibility

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v3 = [(AccountButtonAccessibility *)self safeSwiftValueForKey:@"accountButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = *MEMORY[0x29EDC7F70];
  if ([v4 isEnabled])
  {
    v6 = v5 & ~*MEMORY[0x29EDC7FA8];
  }

  else
  {
    v6 = *MEMORY[0x29EDC7FA8] | v5;
  }

  return v6;
}

@end