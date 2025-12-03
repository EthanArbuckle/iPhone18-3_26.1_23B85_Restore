@interface SBWorkspaceAccessibility
- (void)transactionDidComplete:(id)complete;
@end

@implementation SBWorkspaceAccessibility

- (void)transactionDidComplete:(id)complete
{
  v3.receiver = self;
  v3.super_class = SBWorkspaceAccessibility;
  [(SBWorkspaceAccessibility *)&v3 transactionDidComplete:complete];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], *MEMORY[0x29EDBDB28]);
}

@end