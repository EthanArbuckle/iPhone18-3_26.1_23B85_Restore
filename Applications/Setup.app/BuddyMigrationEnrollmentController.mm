@interface BuddyMigrationEnrollmentController
- (BOOL)controllerNeedsToRun;
@end

@implementation BuddyMigrationEnrollmentController

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyEnrollmentFlowItem *)self enrollmentCoordinator:a2];
  isMDMMigrationMode = [(BuddyEnrollmentCoordinator *)v2 isMDMMigrationMode];

  return isMDMMigrationMode & 1;
}

@end