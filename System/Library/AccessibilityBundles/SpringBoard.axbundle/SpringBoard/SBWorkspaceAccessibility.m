@interface SBWorkspaceAccessibility
- (void)transactionDidComplete:(id)a3;
@end

@implementation SBWorkspaceAccessibility

- (void)transactionDidComplete:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBWorkspaceAccessibility;
  [(SBWorkspaceAccessibility *)&v3 transactionDidComplete:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], *MEMORY[0x29EDBDB28]);
}

@end