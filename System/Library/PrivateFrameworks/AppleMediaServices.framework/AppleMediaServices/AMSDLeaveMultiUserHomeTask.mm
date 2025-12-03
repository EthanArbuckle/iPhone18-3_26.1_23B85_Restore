@interface AMSDLeaveMultiUserHomeTask
- (AMSDLeaveMultiUserHomeTask)initWithHomeIdentifier:(id)identifier;
- (id)_generateAppProvidedData;
- (id)performTask;
@end

@implementation AMSDLeaveMultiUserHomeTask

- (AMSDLeaveMultiUserHomeTask)initWithHomeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = AMSDLeaveMultiUserHomeTask;
  v6 = [(AMSDLeaveMultiUserHomeTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeIdentifier, identifier);
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
  homeIdentifier = [(AMSDLeaveMultiUserHomeTask *)self homeIdentifier];
  v3 = [AMSAuthenticateOptions amsd_createAppProvidedDataWithMultiUserAction:@"leave" homeIdentifier:homeIdentifier];

  return v3;
}

@end