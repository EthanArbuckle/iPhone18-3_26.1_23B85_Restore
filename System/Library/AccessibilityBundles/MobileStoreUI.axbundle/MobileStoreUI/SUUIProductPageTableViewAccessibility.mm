@interface SUUIProductPageTableViewAccessibility
- (id)_accessibilitySupplementaryHeaderViews;
@end

@implementation SUUIProductPageTableViewAccessibility

- (id)_accessibilitySupplementaryHeaderViews
{
  v2 = [(SUUIProductPageTableViewAccessibility *)self safeValueForKey:@"subviews"];
  v3 = [MEMORY[0x29EDBA0A8] predicateWithBlock:&__block_literal_global_3];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

BOOL __79__SUUIProductPageTableViewAccessibility__accessibilitySupplementaryHeaderViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSClassFromString(&cfstr_Suuiscreenshot.isa);
    if (objc_opt_isKindOfClass() & 1) == 0 && ([v2 _accessibilityViewIsVisible])
    {
      v3 = 1;
    }
  }

  return v3;
}

@end