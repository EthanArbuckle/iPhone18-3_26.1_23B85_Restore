@interface UISearchFieldAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation UISearchFieldAccessibility

- (unint64_t)accessibilityTraits
{
  v15 = self;
  v14 = a2;
  v13 = *MEMORY[0x29EDC7598] | *MEMORY[0x29EDC7FB8];
  v8 = [(UISearchFieldAccessibility *)self safeValueForKey:@"isEditing"];
  v9 = [v8 BOOLValue];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if ((v9 & 1) != 0 && (([*MEMORY[0x29EDC8008] _accessibilityHardwareKeyboardActive] & 1) != 0 || (objc_msgSend(*MEMORY[0x29EDC8008], "_accessibilitySoftwareKeyboardActive") & 1) != 0 || _AXSMossdeepEnabled()))
  {
    v13 |= *MEMORY[0x29EDC7528];
  }

  v7 = [(UISearchFieldAccessibility *)v15 accessibilityUserDefinedTraits];
  *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if (v7)
  {
    v6 = [(UISearchFieldAccessibility *)v15 accessibilityUserDefinedTraits];
    v13 |= [v6 unsignedLongLongValue];
    MEMORY[0x29EDC9740](v6);
  }

  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v4 = [(UIView *)v10 _accessibilityTextAreaTraits];
  v13 |= v4;
  MEMORY[0x29EDC9740](v10);
  return v13;
}

@end