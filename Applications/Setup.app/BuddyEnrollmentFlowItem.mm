@interface BuddyEnrollmentFlowItem
- (BFFFlowItemDelegate)delegate;
- (BOOL)shouldAllowStartOver;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)startOver;
@end

@implementation BuddyEnrollmentFlowItem

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  featureFlags = [(BuddyEnrollmentFlowItem *)selfCopy featureFlags];
  v4 = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if (v4)
  {
    (*(location[0] + 2))(location[0], 0);
    v14 = 1;
  }

  else
  {
    enrollmentCoordinator = [(BuddyEnrollmentFlowItem *)selfCopy enrollmentCoordinator];
    v6 = selfCopy;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000FE830;
    v11 = &unk_10032CD78;
    v12 = selfCopy;
    v13 = location[0];
    [(BuddyEnrollmentCoordinator *)enrollmentCoordinator shouldShowFlowItem:v6 resultBlock:&v8];

    v7 = [(BuddyEnrollmentFlowItem *)selfCopy enrollmentCoordinator:v8];
    [(BuddyEnrollmentCoordinator *)v7 startEnrollmentFlow];

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    v14 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)startOver
{
  v2 = [(BuddyEnrollmentFlowItem *)self enrollmentCoordinator:a2];
  [(BuddyEnrollmentCoordinator *)v2 interruptEnrollment];
}

- (BOOL)shouldAllowStartOver
{
  v2 = [(BuddyEnrollmentFlowItem *)self enrollmentCoordinator:a2];
  shouldAllowStartOver = [(BuddyEnrollmentCoordinator *)v2 shouldAllowStartOver];

  return shouldAllowStartOver & 1;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end