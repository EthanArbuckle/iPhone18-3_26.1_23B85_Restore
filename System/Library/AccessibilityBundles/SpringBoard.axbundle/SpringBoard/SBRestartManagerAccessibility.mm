@interface SBRestartManagerAccessibility
- (void)rebootWithContext:(id)context;
@end

@implementation SBRestartManagerAccessibility

- (void)rebootWithContext:(id)context
{
  contextCopy = context;
  v5 = accessibilityLocalizedString(@"shutting.down.format");
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x29EDBA0F8]);
    currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
    localizedModel = [currentDevice localizedModel];
    v9 = [v6 initWithFormat:v5, localizedModel];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v9);
  }

  v10.receiver = self;
  v10.super_class = SBRestartManagerAccessibility;
  [(SBRestartManagerAccessibility *)&v10 rebootWithContext:contextCopy];
}

@end