@interface BuddyMigrationSourceLockscreenErrorController
- (void)loadView;
@end

@implementation BuddyMigrationSourceLockscreenErrorController

- (void)loadView
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyMigrationSourceLockscreenErrorController;
  [(BuddyMigrationSourceErrorController *)&v3 setAllowInteraction:0];
  v2.receiver = v5;
  v2.super_class = BuddyMigrationSourceLockscreenErrorController;
  [(BuddyMigrationSourceErrorController *)&v2 loadView];
}

@end