@interface BuddyEnrollmentFlowItem
- (BFFFlowItemDelegate)delegate;
- (BOOL)shouldAllowStartOver;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)startOver;
@end

@implementation BuddyEnrollmentFlowItem

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyEnrollmentFlowItem *)v16 featureFlags];
  v4 = [(BuddyFeatureFlags *)v3 isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if (v4)
  {
    (*(location[0] + 2))(location[0], 0);
    v14 = 1;
  }

  else
  {
    v5 = [(BuddyEnrollmentFlowItem *)v16 enrollmentCoordinator];
    v6 = v16;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000FE830;
    v11 = &unk_10032CD78;
    v12 = v16;
    v13 = location[0];
    [(BuddyEnrollmentCoordinator *)v5 shouldShowFlowItem:v6 resultBlock:&v8];

    v7 = [(BuddyEnrollmentFlowItem *)v16 enrollmentCoordinator:v8];
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
  v3 = [(BuddyEnrollmentCoordinator *)v2 shouldAllowStartOver];

  return v3 & 1;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end