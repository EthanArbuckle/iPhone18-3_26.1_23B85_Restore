@interface SBDeleteNonAppIconAlertItemAccessibility
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBDeleteNonAppIconAlertItemAccessibility

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5.receiver = self;
  v5.super_class = SBDeleteNonAppIconAlertItemAccessibility;
  [(SBDeleteNonAppIconAlertItemAccessibility *)&v5 configure:configure requirePasscodeForActions:actions];
  [(SBDeleteNonAppIconAlertItemAccessibility *)self _accessibilitySetRetainedValue:&unk_2A230C910 forKey:*MEMORY[0x29EDC7608]];
}

@end