@interface AMSDLeaveMultiUserHomeTask
- (AMSDLeaveMultiUserHomeTask)initWithHomeIdentifier:(id)a3;
- (id)_generateAppProvidedData;
- (id)performTask;
@end

@implementation AMSDLeaveMultiUserHomeTask

- (AMSDLeaveMultiUserHomeTask)initWithHomeIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSDLeaveMultiUserHomeTask;
  v6 = [(AMSDLeaveMultiUserHomeTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeIdentifier, a3);
  }

  return v7;
}

- (id)performTask
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100066D60;
  v5[3] = &unk_1002B1060;
  objc_copyWeak(&v6, &location);
  v3 = [(AMSDLeaveMultiUserHomeTask *)self performBinaryTaskWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (id)_generateAppProvidedData
{
  v2 = [(AMSDLeaveMultiUserHomeTask *)self homeIdentifier];
  v3 = [AMSAuthenticateOptions amsd_createAppProvidedDataWithMultiUserAction:@"leave" homeIdentifier:v2];

  return v3;
}

@end