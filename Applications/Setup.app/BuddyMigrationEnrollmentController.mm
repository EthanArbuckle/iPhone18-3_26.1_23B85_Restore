@interface BuddyMigrationEnrollmentController
- (BOOL)controllerNeedsToRun;
@end

@implementation BuddyMigrationEnrollmentController

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyEnrollmentFlowItem *)self enrollmentCoordinator:a2];
  v3 = [(BuddyEnrollmentCoordinator *)v2 isMDMMigrationMode];

  return v3 & 1;
}

@end