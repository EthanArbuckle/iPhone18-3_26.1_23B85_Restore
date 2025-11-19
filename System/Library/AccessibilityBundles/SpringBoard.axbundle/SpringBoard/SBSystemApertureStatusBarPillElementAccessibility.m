@interface SBSystemApertureStatusBarPillElementAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SBSystemApertureStatusBarPillElementAccessibility)initWithStatusBarStyleOverrides:(unint64_t)a3;
@end

@implementation SBSystemApertureStatusBarPillElementAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBSystemApertureStatusBarPillElement" hasInstanceMethod:@"leadingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSystemApertureStatusBarPillElement" hasInstanceMethod:@"minimalView" withFullSignature:{"@", 0}];
}

- (SBSystemApertureStatusBarPillElementAccessibility)initWithStatusBarStyleOverrides:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = SBSystemApertureStatusBarPillElementAccessibility;
  v4 = [(SBSystemApertureStatusBarPillElementAccessibility *)&v10 initWithStatusBarStyleOverrides:?];
  v5 = [(SBSystemApertureStatusBarPillElementAccessibility *)v4 safeValueForKey:@"leadingView"];
  v6 = [(SBSystemApertureStatusBarPillElementAccessibility *)v4 safeValueForKey:@"minimalView"];
  v7 = 0;
  if (a3 > 63)
  {
    if (a3 == 64 || a3 == 128)
    {
      v8 = @"navigation.in.background";
      goto LABEL_13;
    }

    if (a3 == 2048)
    {
      v8 = @"application.using.location";
      goto LABEL_13;
    }
  }

  else
  {
    switch(a3)
    {
      case 4uLL:
        v8 = @"audio.recording";
        goto LABEL_13;
      case 8uLL:
        v8 = @"personal.hotspot";
        goto LABEL_13;
      case 0x20uLL:
        v8 = @"airplay.mirroring";
LABEL_13:
        v7 = accessibilityLocalizedString(v8);
        break;
    }
  }

  [v5 setAccessibilityLabel:v7];
  [v6 setAccessibilityLabel:v7];

  return v4;
}

@end