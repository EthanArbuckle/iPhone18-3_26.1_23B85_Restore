@interface BuddyMigrationTargetLockscreenErrorController
- (void)loadView;
@end

@implementation BuddyMigrationTargetLockscreenErrorController

- (void)loadView
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyMigrationTargetLockscreenErrorController;
  [(BuddyMigrationTargetErrorController *)&v3 setAllowInteraction:0];
  v2.receiver = selfCopy;
  v2.super_class = BuddyMigrationTargetLockscreenErrorController;
  [(BuddyMigrationTargetErrorController *)&v2 loadView];
}

@end