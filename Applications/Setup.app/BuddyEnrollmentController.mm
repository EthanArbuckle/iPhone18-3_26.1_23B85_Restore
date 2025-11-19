@interface BuddyEnrollmentController
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyEnrollmentController

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyEnrollmentFlowItem *)v6 enrollmentCoordinator];
  [(BuddyEnrollmentCoordinator *)v3 restoreChoiceWasNotRestore];

  v4.receiver = v6;
  v4.super_class = BuddyEnrollmentController;
  [(BuddyEnrollmentFlowItem *)&v4 performExtendedInitializationWithCompletion:location[0]];
  objc_storeStrong(location, 0);
}

@end