@interface RMAccountsCreation
- (RMAccountsCreation)init;
- (void)beginAccountCreationWithSpecifier:(id)a3 fromViewController:(id)a4 completion:(id)a5;
@end

@implementation RMAccountsCreation

- (RMAccountsCreation)init
{
  v3.receiver = self;
  v3.super_class = RMAccountsCreation;
  return [(RMAccountsCreation *)&v3 init];
}

- (void)beginAccountCreationWithSpecifier:(id)a3 fromViewController:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_retainBlock(v7);
  accountCreationCompletionHandler = self->_accountCreationCompletionHandler;
  self->_accountCreationCompletionHandler = v9;

  v11 = [DMCEnrollmentInterface alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_E04;
  v15[3] = &unk_40D0;
  v16 = v7;
  v12 = v7;
  v13 = [v11 initFromViewController:v8 enrollmentResultBlock:v15];

  [(RMAccountsCreation *)self setEnrollmentInterface:v13];
  v14 = [(RMAccountsCreation *)self enrollmentInterface];
  [v14 startBYODEnrollment];
}

@end