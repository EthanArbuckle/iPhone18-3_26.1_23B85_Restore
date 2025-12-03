@interface BuddyEnrollmentController
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyEnrollmentController

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  enrollmentCoordinator = [(BuddyEnrollmentFlowItem *)selfCopy enrollmentCoordinator];
  [(BuddyEnrollmentCoordinator *)enrollmentCoordinator restoreChoiceWasNotRestore];

  v4.receiver = selfCopy;
  v4.super_class = BuddyEnrollmentController;
  [(BuddyEnrollmentFlowItem *)&v4 performExtendedInitializationWithCompletion:location[0]];
  objc_storeStrong(location, 0);
}

@end