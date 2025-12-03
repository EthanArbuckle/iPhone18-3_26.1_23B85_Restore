@interface RMAccountsCreation
- (RMAccountsCreation)init;
- (void)beginAccountCreationWithSpecifier:(id)specifier fromViewController:(id)controller completion:(id)completion;
@end

@implementation RMAccountsCreation

- (RMAccountsCreation)init
{
  v3.receiver = self;
  v3.super_class = RMAccountsCreation;
  return [(RMAccountsCreation *)&v3 init];
}

- (void)beginAccountCreationWithSpecifier:(id)specifier fromViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  v9 = objc_retainBlock(completionCopy);
  accountCreationCompletionHandler = self->_accountCreationCompletionHandler;
  self->_accountCreationCompletionHandler = v9;

  v11 = [DMCEnrollmentInterface alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_E04;
  v15[3] = &unk_40D0;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = [v11 initFromViewController:controllerCopy enrollmentResultBlock:v15];

  [(RMAccountsCreation *)self setEnrollmentInterface:v13];
  enrollmentInterface = [(RMAccountsCreation *)self enrollmentInterface];
  [enrollmentInterface startBYODEnrollment];
}

@end