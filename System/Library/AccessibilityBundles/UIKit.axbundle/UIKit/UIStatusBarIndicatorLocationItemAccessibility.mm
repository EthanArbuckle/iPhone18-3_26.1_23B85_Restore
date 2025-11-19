@interface UIStatusBarIndicatorLocationItemAccessibility
@end

@implementation UIStatusBarIndicatorLocationItemAccessibility

void __68___UIStatusBarIndicatorLocationItemAccessibility_accessibilityLabel__block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v7 = location[0];
  v8 = [NSClassFromString(&cfstr_Uistatusbarind_5.isa) safeValueForKey:@"prominentDisplayIdentifier"];
  v9 = 0;
  if ([v7 isEqual:?])
  {
    v9 = [v10 safeBoolForKey:@"isEnabled"];
  }

  MEMORY[0x29EDC9740](v8);
  if (v9)
  {
    *(*(a1[4] + 8) + 24) = 1;
    *a4 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end