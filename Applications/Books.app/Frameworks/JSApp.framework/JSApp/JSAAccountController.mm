@interface JSAAccountController
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)presentGiftViewControllerForAdamID:(NSString *)d options:(NSDictionary *)options completion:(id)completion;
- (void)presentGiftViewControllerForAdamID:(id)d :(id)a4 :(id)a5;
- (void)presentRedeemViewControllerForRedemptionCode:(NSString *)code options:(NSDictionary *)options completion:(id)completion;
- (void)presentRedeemViewControllerForRedemptionCode:(id)code :(id)a4 :(id)a5;
- (void)reauthenticateSignIn:(id)in :(id)a4;
- (void)showAccountViewControllerWithUrl:(id)url :(id)a4 :(id)a5;
- (void)signIn:(id)in;
- (void)signInEnablingAccountCreation:(BOOL)creation completion:(id)completion;
- (void)signOut:(id)out;
- (void)viewAppleID:(id)d :(id)a4;
@end

@implementation JSAAccountController

- (void)signInEnablingAccountCreation:(BOOL)creation completion:(id)completion
{
  v7 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = creation;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_8468C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_A17E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_A17E8;
  v15[5] = v14;
  selfCopy = self;
  sub_55564(0, 0, v10, &unk_A17F0, v15);
}

- (void)presentGiftViewControllerForAdamID:(NSString *)d options:(NSDictionary *)options completion:(id)completion
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_8468C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_A17C0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_A17C8;
  v17[5] = v16;
  dCopy = d;
  optionsCopy = options;
  selfCopy = self;
  sub_55564(0, 0, v12, &unk_A17D0, v17);
}

- (void)presentRedeemViewControllerForRedemptionCode:(NSString *)code options:(NSDictionary *)options completion:(id)completion
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = code;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_8468C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_A1778;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_A11F8;
  v17[5] = v16;
  codeCopy = code;
  optionsCopy = options;
  selfCopy = self;
  sub_55564(0, 0, v12, &unk_A1200, v17);
}

- (void)presentGiftViewControllerForAdamID:(id)d :(id)a4 :(id)a5
{
  v5 = a5;
  if (d)
  {
    v8 = sub_843AC();
    v10 = v9;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v10 = 0;
  if (a5)
  {
LABEL_3:
    v5 = sub_8434C();
  }

LABEL_4:
  v11 = a4;
  selfCopy = self;
  v13.value._countAndFlagsBits = v8;
  v13.value._object = v10;
  v15.value._rawValue = v5;
  AccountController.presentGiftViewController(for:_:_:)(v13, v11, v15);
}

- (void)presentRedeemViewControllerForRedemptionCode:(id)code :(id)a4 :(id)a5
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  if (a4)
  {
    a4 = sub_8434C();
  }

  v13 = sub_8468C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = code;
  v14[5] = self;
  v14[6] = a4;
  v14[7] = a5;
  codeCopy = code;
  v16 = a5;
  selfCopy = self;
  sub_2D4A4(0, 0, v12, &unk_A1758, v14);
}

- (void)viewAppleID:(id)d :(id)a4
{
  v6 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  if (a4)
  {
    a4 = sub_8434C();
  }

  v10 = sub_8468C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a4;
  v11[5] = d;
  dCopy = d;
  sub_2D4A4(0, 0, v9, &unk_A1750, v11);
}

- (void)signIn:(id)in
{
  v5 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = objc_allocWithZone(AMSAuthenticateOptions);
  inCopy = in;
  selfCopy = self;
  v12 = [v9 init];
  [v12 setEnableAccountCreation:1];
  v13 = sub_8468C();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = selfCopy;
  v14[5] = v12;
  v14[6] = inCopy;
  sub_2D4A4(0, 0, v8, &unk_A1748, v14);
}

- (void)signOut:(id)out
{
  outCopy = out;
  selfCopy = self;
  AccountController.signOut(_:)(outCopy);
}

- (void)reauthenticateSignIn:(id)in :(id)a4
{
  if (in)
  {
    v6 = sub_8434C();
  }

  else
  {
    v6 = 0;
  }

  v7 = a4;
  selfCopy = self;
  v11.value._rawValue = v6;
  v11.is_nil = v7;
  AccountController.reauthenticateSignIn(with:_:)(v11, v9);
}

- (void)showAccountViewControllerWithUrl:(id)url :(id)a4 :(id)a5
{
  v8 = sub_843AC();
  v10 = v9;
  if (a5)
  {
    a5 = sub_8434C();
  }

  v11 = a4;
  selfCopy = self;
  _s5JSApp17AccountControllerC04showb4ViewC04with__ySS_So7JSValueCSDys11AnyHashableVypGSgtF_0(v8, v10, v11, a5);
}

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  taskCopy = task;
  requestCopy = request;
  selfCopy = self;
  sub_568E0(requestCopy, sub_56C20, v9);
}

@end