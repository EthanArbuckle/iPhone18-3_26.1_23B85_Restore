@interface SUTableViewAccessibility
- (id)_accessibilityScrollStatus;
@end

@implementation SUTableViewAccessibility

- (id)_accessibilityScrollStatus
{
  v3 = [(SUTableViewAccessibility *)self safeValueForKey:@"_accessibilityHeaderElement"];
  NSClassFromString(&cfstr_Suwebview.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Asapplicationp.isa), (objc_opt_isKindOfClass()))
  {
    v4 = [(SUTableViewAccessibility *)self safeValueForKey:@"_accessibilityUIScrollViewScrollStatus"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUTableViewAccessibility;
    v4 = [(SUTableViewAccessibility *)&v7 _accessibilityScrollStatus];
  }

  v5 = v4;

  return v5;
}

@end