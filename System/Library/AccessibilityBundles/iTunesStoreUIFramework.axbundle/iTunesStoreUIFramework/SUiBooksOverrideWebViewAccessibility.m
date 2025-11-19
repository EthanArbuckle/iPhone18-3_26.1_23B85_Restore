@interface SUiBooksOverrideWebViewAccessibility
- (BOOL)_accessibilityIsScrollAncestor;
@end

@implementation SUiBooksOverrideWebViewAccessibility

- (BOOL)_accessibilityIsScrollAncestor
{
  if (_accessibilityIsScrollAncestor_onceToken != -1)
  {
    [SUiBooksOverrideWebViewAccessibility _accessibilityIsScrollAncestor];
  }

  if (_accessibilityIsScrollAncestor_isBadVersionOfiBooks == 1)
  {
    v3 = [(SUiBooksOverrideWebViewAccessibility *)self safeValueForKey:@"delegate"];
    NSClassFromString(&cfstr_Bkwebviewcontr.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      return 1;
    }

    else
    {

      return [(SUiBooksOverrideWebViewAccessibility *)self _accessibilitySUWebViewIsScrollAncestor];
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SUiBooksOverrideWebViewAccessibility;
    return [(SUiBooksOverrideWebViewAccessibility *)&v6 _accessibilityIsScrollAncestor];
  }
}

void __70__SUiBooksOverrideWebViewAccessibility__accessibilityIsScrollAncestor__block_invoke()
{
  v0 = [MEMORY[0x29EDB9F48] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.iBooks"];

  if (v2)
  {
    v3 = [MEMORY[0x29EDB9F48] mainBundle];
    v4 = [v3 infoDictionary];
    v5 = [v4 objectForKey:*MEMORY[0x29EDB8EC0]];

    if ([v5 compare:@"2.2" options:64] == -1)
    {
      _accessibilityIsScrollAncestor_isBadVersionOfiBooks = 1;
    }
  }
}

@end