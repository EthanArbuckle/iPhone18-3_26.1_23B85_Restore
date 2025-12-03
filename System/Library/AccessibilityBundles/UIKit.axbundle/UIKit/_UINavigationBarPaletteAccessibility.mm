@interface _UINavigationBarPaletteAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityNavigationBarShouldOverrideMinimumHeight;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setMinimumHeight:(double)height;
@end

@implementation _UINavigationBarPaletteAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UINavigationBarPalette" hasInstanceMethod:@"setMinimumHeight:" withFullSignature:{"v", "d", 0}];
  objc_storeStrong(v4, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UINavigationBarPaletteAccessibility;
  [(_UINavigationBarPaletteAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  if ([(_UINavigationBarPaletteAccessibility *)selfCopy _accessibilityNavigationBarShouldOverrideMinimumHeight])
  {
    v2 = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    objc_storeStrong(&v2, 0);
  }
}

- (void)setMinimumHeight:(double)height
{
  selfCopy = self;
  v10 = a2;
  heightCopy = height;
  if ((UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning()) && [(_UINavigationBarPaletteAccessibility *)selfCopy _accessibilityNavigationBarShouldOverrideMinimumHeight])
  {
    [(_UINavigationBarPaletteAccessibility *)selfCopy preferredHeight];
    v8 = v3;
    v7 = heightCopy;
    if (v3 >= heightCopy)
    {
      v4 = v8;
    }

    else
    {
      v4 = v7;
    }

    v6 = v4;
    heightCopy = v4;
  }

  v5.receiver = selfCopy;
  v5.super_class = _UINavigationBarPaletteAccessibility;
  [(_UINavigationBarPaletteAccessibility *)&v5 setMinimumHeight:heightCopy, *&v4];
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