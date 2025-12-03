@interface APEducationViewControllerSystemActionDelegate
- (APEducationViewControllerSystemActionDelegate)init;
- (APEducationViewControllerSystemActionDelegateDismissalDelegate)delegate;
- (void)educationViewController:(id)controller requestAuthenticationWithCompletion:(id)completion;
- (void)educationViewController:(id)controller requestHideOfApplication:(id)application completion:(id)completion;
- (void)educationViewController:(id)controller requestLockOfApplication:(id)application completion:(id)completion;
- (void)educationViewControllerRequestsDismissal:(id)dismissal withResult:(int64_t)result;
@end

@implementation APEducationViewControllerSystemActionDelegate

- (APEducationViewControllerSystemActionDelegateDismissalDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)educationViewController:(id)controller requestAuthenticationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sharedGuard = [objc_opt_self() sharedGuard];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1AEA239A4;
  *(v7 + 24) = v5;
  v9[4] = sub_1AEA238E4;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1AEA282D0;
  v9[3] = &block_descriptor_43;
  v8 = _Block_copy(v9);

  [sharedGuard authenticateUnconditionallyWithCompletion_];

  _Block_release(v8);
}

- (void)educationViewController:(id)controller requestLockOfApplication:(id)application completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_opt_self();
  applicationCopy = application;
  sharedManager = [v8 sharedManager];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1AEA239A4;
  *(v11 + 24) = v7;
  v13[4] = sub_1AEA238A4;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1AEA282D0;
  v13[3] = &block_descriptor_27;
  v12 = _Block_copy(v13);

  [sharedManager setSubject:applicationCopy isLocked:1 completion:v12];

  _Block_release(v12);
}

- (void)educationViewController:(id)controller requestHideOfApplication:(id)application completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_opt_self();
  applicationCopy = application;
  sharedManager = [v8 sharedManager];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1AEA23694;
  *(v11 + 24) = v7;
  v13[4] = sub_1AEA2369C;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1AEA282D0;
  v13[3] = &block_descriptor_11;
  v12 = _Block_copy(v13);

  [sharedManager setSubject:applicationCopy isHidden:1 completion:v12];

  _Block_release(v12);
}

- (void)educationViewControllerRequestsDismissal:(id)dismissal withResult:(int64_t)result
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = dismissal;
  v11[4] = sub_1AEA23674;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1AEA24554;
  v11[3] = &block_descriptor;
  v7 = _Block_copy(v11);
  dismissalCopy = dismissal;
  selfCopy = self;
  v10 = dismissalCopy;

  [v10 dismissViewControllerAnimated:1 completion:v7];

  _Block_release(v7);
}

- (APEducationViewControllerSystemActionDelegate)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = APEducationViewControllerSystemActionDelegate;
  return [(APEducationViewControllerSystemActionDelegate *)&v4 init];
}

@end