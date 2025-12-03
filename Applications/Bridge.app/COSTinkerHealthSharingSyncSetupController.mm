@interface COSTinkerHealthSharingSyncSetupController
- (COSTinkerHealthSharingSyncSetupController)init;
- (void)setDelegate:(id)delegate;
- (void)setupSharingIfReady;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation COSTinkerHealthSharingSyncSetupController

- (COSTinkerHealthSharingSyncSetupController)init
{
  v3 = objc_alloc_init(COSTinkerHealthSharingSetupDelegate);
  v7.receiver = self;
  v7.super_class = COSTinkerHealthSharingSyncSetupController;
  v4 = [(COSTinkerHealthSharingSyncSetupController *)&v7 initWithStyle:1 delegate:v3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_setupDelegate, v3);
    [(COSTinkerHealthSharingSetupDelegate *)v5->_setupDelegate setPresentingController:v5];
  }

  return v5;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = COSTinkerHealthSharingSyncSetupController;
  [(COSTinkerHealthSharingSyncSetupController *)&v4 viewDidAppear:appear];
  self->_viewDidAppear = 1;
  [(COSTinkerHealthSharingSyncSetupController *)self setupSharingIfReady];
}

- (void)setDelegate:(id)delegate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029F90;
  v4[3] = &unk_100268358;
  v4[4] = self;
  delegateCopy = delegate;
  v3 = delegateCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)setupSharingIfReady
{
  if (self->_viewDidAppear && self->_didSetDelegate)
  {
    [(COSTinkerHealthSharingSyncSetupController *)self setupSharing];
  }
}

@end