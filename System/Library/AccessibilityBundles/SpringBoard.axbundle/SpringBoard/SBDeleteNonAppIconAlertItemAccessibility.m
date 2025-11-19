@interface SBDeleteNonAppIconAlertItemAccessibility
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBDeleteNonAppIconAlertItemAccessibility

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = SBDeleteNonAppIconAlertItemAccessibility;
  [(SBDeleteNonAppIconAlertItemAccessibility *)&v5 configure:a3 requirePasscodeForActions:a4];
  [(SBDeleteNonAppIconAlertItemAccessibility *)self _accessibilitySetRetainedValue:&unk_2A230C910 forKey:*MEMORY[0x29EDC7608]];
}

@end