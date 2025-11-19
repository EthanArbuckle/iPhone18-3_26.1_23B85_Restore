@interface UIPasteControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation UIPasteControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIPasteControl" hasInstanceMethod:@"_secureName" withFullSignature:{"I", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  v11 = self;
  location[1] = a2;
  v9 = [MEMORY[0x29EDB9F48] mainBundle];
  v8 = [v9 preferredLocalizations];
  location[0] = [v8 firstObject];
  MEMORY[0x29EDC9740](v8);
  *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  if (location[0])
  {
    [(UIPasteControlAccessibility *)v11 safeUnsignedIntForKey:@"_secureName", v2];
    v7 = [MEMORY[0x29EDB9F48] mainBundle];
    v6 = [v7 preferredLocalizations];
    v5 = [v6 firstObject];
    v12 = UISLocalizedStringForSecureName();
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v7);
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v12;

  return v3;
}

@end