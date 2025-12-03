@interface AMSDUpdateMultiUserTokenTask
- (AMSDUpdateMultiUserTokenTask)initWithController:(id)controller account:(id)account home:(id)home;
- (id)performTask;
@end

@implementation AMSDUpdateMultiUserTokenTask

- (AMSDUpdateMultiUserTokenTask)initWithController:(id)controller account:(id)account home:(id)home
{
  controllerCopy = controller;
  accountCopy = account;
  homeCopy = home;
  v15.receiver = self;
  v15.super_class = AMSDUpdateMultiUserTokenTask;
  v12 = [(AMSDUpdateMultiUserTokenTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_controller, controller);
    objc_storeStrong(&v13->_account, account);
    objc_storeStrong(&v13->_home, home);
  }

  return v13;
}

- (id)performTask
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091BD0;
  v4[3] = &unk_1002AFDB0;
  v4[4] = self;
  v2 = [(AMSDUpdateMultiUserTokenTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

@end