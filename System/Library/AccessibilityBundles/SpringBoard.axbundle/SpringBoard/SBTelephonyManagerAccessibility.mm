@interface SBTelephonyManagerAccessibility
- (void)updateSpringBoard;
@end

@implementation SBTelephonyManagerAccessibility

- (void)updateSpringBoard
{
  mEMORY[0x29EDC6F78] = [MEMORY[0x29EDC6F78] sharedInstance];
  v4 = [mEMORY[0x29EDC6F78] displayedCallFromCalls:0];

  v5 = [(SBTelephonyManagerAccessibility *)self safeValueForKey:@"inCall"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAB0]);
  }

  v7.receiver = self;
  v7.super_class = SBTelephonyManagerAccessibility;
  [(SBTelephonyManagerAccessibility *)&v7 updateSpringBoard];
}

@end