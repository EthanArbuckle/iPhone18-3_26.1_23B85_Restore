@interface BuddyMigrationSourceLockscreenErrorController
- (void)loadView;
@end

@implementation BuddyMigrationSourceLockscreenErrorController

- (void)loadView
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyMigrationSourceLockscreenErrorController;
  [(BuddyMigrationSourceErrorController *)&v3 setAllowInteraction:0];
  v2.receiver = selfCopy;
  v2.super_class = BuddyMigrationSourceLockscreenErrorController;
  [(BuddyMigrationSourceErrorController *)&v2 loadView];
}

@end