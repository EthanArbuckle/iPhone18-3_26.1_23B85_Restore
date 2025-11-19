@interface _UINavigationBarPaletteAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityNavigationBarShouldOverrideMinimumHeight;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setMinimumHeight:(double)a3;
@end

@implementation _UINavigationBarPaletteAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UINavigationBarPalette" hasInstanceMethod:@"setMinimumHeight:" withFullSignature:{"v", "d", 0}];
  objc_storeStrong(v4, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UINavigationBarPaletteAccessibility;
  [(_UINavigationBarPaletteAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  if ([(_UINavigationBarPaletteAccessibility *)v5 _accessibilityNavigationBarShouldOverrideMinimumHeight])
  {
    v2 = MEMORY[0x29EDC9748](v5);
    AXPerformSafeBlock();
    objc_storeStrong(&v2, 0);
  }
}

- (void)setMinimumHeight:(double)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  if ((UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning()) && [(_UINavigationBarPaletteAccessibility *)v11 _accessibilityNavigationBarShouldOverrideMinimumHeight])
  {
    [(_UINavigationBarPaletteAccessibility *)v11 preferredHeight];
    v8 = v3;
    v7 = v9;
    if (v3 >= v9)
    {
      v4 = v8;
    }

    else
    {
      v4 = v7;
    }

    v6 = v4;
    v9 = v4;
  }

  v5.receiver = v11;
  v5.super_class = _UINavigationBarPaletteAccessibility;
  [(_UINavigationBarPaletteAccessibility *)&v5 setMinimumHeight:v9, *&v4];
}

- (BOOL)_accessibilityNavigationBarShouldOverrideMinimumHeight
{
  if (!NSClassFromString(&cfstr_Pupickernaviga.isa))
  {
    return 1;
  }

  NSClassFromString(&cfstr_Pupickernaviga.isa);
  return (objc_opt_isKindOfClass() ^ 1) & 1;
}

@end