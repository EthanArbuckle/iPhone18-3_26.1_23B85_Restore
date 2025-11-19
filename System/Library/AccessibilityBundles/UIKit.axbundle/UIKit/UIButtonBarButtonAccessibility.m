@interface UIButtonBarButtonAccessibility
@end

@implementation UIButtonBarButtonAccessibility

BOOL __52___UIButtonBarButtonAccessibility_accessibilityPath__block_invoke(id *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] frame];
  v11 = v3;
  [location[0] frame];
  if (v4 <= v11 * 2.0)
  {
    v7 = [location[0] layer];
    [v7 cornerRadius];
    v8 = v5;
    MEMORY[0x29EDC9740](v7);
    v13 = v8 != 0.0;
  }

  else
  {
    *a3 = 1;
    v13 = 0;
  }

  objc_storeStrong(location, 0);
  return v13;
}

@end