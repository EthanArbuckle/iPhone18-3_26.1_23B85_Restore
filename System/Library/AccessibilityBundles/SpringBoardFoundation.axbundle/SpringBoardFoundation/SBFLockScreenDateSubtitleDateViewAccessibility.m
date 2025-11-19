@interface SBFLockScreenDateSubtitleDateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityViewIsVisible;
- (CGRect)accessibilityFrame;
- (id)_accessibilityParentView;
- (id)accessibilityLabel;
@end

@implementation SBFLockScreenDateSubtitleDateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFLockScreenDateSubtitleDateView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SBFLockScreenDateSubtitleDateView" hasProperty:@"string" withType:"@"];
  [v3 validateClass:@"SBFLockScreenDateView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SBFLockScreenDateSubtitleDateView" hasInstanceMethod:@"alternateDateLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFLockScreenAlternateDateLabel" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilityViewIsVisible
{
  v8 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  [v3 alpha];
  v5 = v4;

  if (v5 > 0.0)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = SBFLockScreenDateSubtitleDateViewAccessibility;
  return [(SBFLockScreenDateSubtitleDateViewAccessibility *)&v7 _accessibilityViewIsVisible];
}

- (id)accessibilityLabel
{
  v3 = [(SBFLockScreenDateSubtitleDateViewAccessibility *)self safeStringForKey:@"string"];
  v4 = [(SBFLockScreenDateSubtitleDateViewAccessibility *)self safeValueForKey:@"alternateDateLabel"];

  if (v4)
  {
    v5 = [(SBFLockScreenDateSubtitleDateViewAccessibility *)self safeValueForKeyPath:@"alternateDateLabel.label"];
    v6 = [v5 accessibilityLabel];

    v7 = __UIAXStringForVariables();
  }

  else
  {
    if (v3)
    {
      v8 = v3;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = SBFLockScreenDateSubtitleDateViewAccessibility;
      v8 = [(SBFLockScreenDateSubtitleDateViewAccessibility *)&v10 accessibilityLabel];
    }

    v7 = v8;
  }

  return v7;
}

- (CGRect)accessibilityFrame
{
  v2 = [(SBFLockScreenDateSubtitleDateViewAccessibility *)self safeValueForKey:@"alternateDateLabel"];

  if (v2)
  {
    [MEMORY[0x29EDC0E40] frameForElements:2];
  }

  else
  {
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [MEMORY[0x29EDC0E40] frameForElements:2];
    v14.origin.x = v9;
    v14.size.width = v11;
    v14.size.height = v13;
    *&v3 = CGRectInset(v14, -50.0, -5.0);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)_accessibilityParentView
{
  v3 = [(SBFLockScreenDateSubtitleDateViewAccessibility *)self accessibilityContainer];
  if (v3 && (NSClassFromString(&cfstr_Sbflockscreend_3.isa), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBFLockScreenDateSubtitleDateViewAccessibility;
    v4 = [(SBFLockScreenDateSubtitleDateViewAccessibility *)&v7 _accessibilityParentView];
  }

  v5 = v4;

  return v5;
}

@end