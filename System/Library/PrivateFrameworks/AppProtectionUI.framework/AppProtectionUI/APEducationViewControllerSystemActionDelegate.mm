@interface APEducationViewControllerSystemActionDelegate
- (APEducationViewControllerSystemActionDelegate)init;
- (APEducationViewControllerSystemActionDelegateDismissalDelegate)delegate;
- (void)educationViewController:(id)a3 requestAuthenticationWithCompletion:(id)a4;
- (void)educationViewController:(id)a3 requestHideOfApplication:(id)a4 completion:(id)a5;
- (void)educationViewController:(id)a3 requestLockOfApplication:(id)a4 completion:(id)a5;
- (void)educationViewControllerRequestsDismissal:(id)a3 withResult:(int64_t)a4;
@end

@implementation APEducationViewControllerSystemActionDelegate

- (APEducationViewControllerSystemActionDelegateDismissalDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)educationViewController:(id)a3 requestAuthenticationWithCompletion:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = [objc_opt_self() sharedGuard];
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

  [v6 authenticateUnconditionallyWithCompletion_];

  _Block_release(v8);
}

- (void)educationViewController:(id)a3 requestLockOfApplication:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_opt_self();
  v9 = a4;
  v10 = [v8 sharedManager];
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

  [v10 setSubject:v9 isLocked:1 completion:v12];

  _Block_release(v12);
}

- (void)educationViewController:(id)a3 requestHideOfApplication:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_opt_self();
  v9 = a4;
  v10 = [v8 sharedManager];
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

  [v10 setSubject:v9 isHidden:1 completion:v12];

  _Block_release(v12);
}

- (void)educationViewControllerRequestsDismissal:(id)a3 withResult:(int64_t)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = a3;
  v11[4] = sub_1AEA23674;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1AEA24554;
  v11[3] = &block_descriptor;
  v7 = _Block_copy(v11);
  v8 = a3;
  v9 = self;
  v10 = v8;

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