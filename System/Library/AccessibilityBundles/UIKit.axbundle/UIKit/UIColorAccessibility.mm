@interface UIColorAccessibility
- (id)_accessibilityCachedColorDescriptions;
- (id)_accessibilityColorDescriptionWithOptions:(unint64_t)a3;
- (void)_accessibilitySetCachedColorDescriptions:(uint64_t)a1;
@end

@implementation UIColorAccessibility

- (id)_accessibilityCachedColorDescriptions
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &__UIColor___accessibilityCachedColorDescriptions);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetCachedColorDescriptions:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityColorDescriptionWithOptions:(unint64_t)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v6 = [(UIColorAccessibility *)self _accessibilityCachedColorDescriptions];
  MEMORY[0x29EDC9740](v6);
  if (!v6)
  {
    v5 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    [(UIColorAccessibility *)v12 _accessibilitySetCachedColorDescriptions:v5];
    MEMORY[0x29EDC9740](v5);
  }

  v9 = [(UIColorAccessibility *)v12 _accessibilityCachedColorDescriptions];
  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v10];
  v7 = [v9 objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = AXColorStringForColor();
    [v9 setObject:v7 forKeyedSubscript:{v8, MEMORY[0x29EDC9740](0).n128_f64[0]}];
  }

  v4 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);

  return v4;
}

@end