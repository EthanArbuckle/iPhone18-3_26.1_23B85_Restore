@interface SBRestartManagerAccessibility
- (void)rebootWithContext:(id)a3;
@end

@implementation SBRestartManagerAccessibility

- (void)rebootWithContext:(id)a3
{
  v4 = a3;
  v5 = accessibilityLocalizedString(@"shutting.down.format");
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v7 = [MEMORY[0x29EDC7A58] currentDevice];
    v8 = [v7 localizedModel];
    v9 = [v6 initWithFormat:v5, v8];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v9);
  }

  v10.receiver = self;
  v10.super_class = SBRestartManagerAccessibility;
  [(SBRestartManagerAccessibility *)&v10 rebootWithContext:v4];
}

@end