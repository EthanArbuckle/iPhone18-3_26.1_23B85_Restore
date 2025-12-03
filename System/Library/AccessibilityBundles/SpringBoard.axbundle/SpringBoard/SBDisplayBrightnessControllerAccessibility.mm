@interface SBDisplayBrightnessControllerAccessibility
- (void)_setBrightnessLevel:(float)level animated:(BOOL)animated;
@end

@implementation SBDisplayBrightnessControllerAccessibility

- (void)_setBrightnessLevel:(float)level animated:(BOOL)animated
{
  v9.receiver = self;
  v9.super_class = SBDisplayBrightnessControllerAccessibility;
  [(SBDisplayBrightnessControllerAccessibility *)&v9 _setBrightnessLevel:animated animated:?];
  BKSDisplayBrightnessGetCurrent();
  v4 = *MEMORY[0x29EDC7EA8];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"brightness.format");
  v7 = AXFormatFloatWithPercentage();
  v8 = [v5 stringWithFormat:v6, v7];
  UIAccessibilityPostNotification(v4, v8);
}

@end