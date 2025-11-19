@interface JSAAccountController
- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)presentGiftViewControllerForAdamID:(NSString *)a3 options:(NSDictionary *)a4 completion:(id)a5;
- (void)presentGiftViewControllerForAdamID:(id)a3 :(id)a4 :(id)a5;
- (void)presentRedeemViewControllerForRedemptionCode:(NSString *)a3 options:(NSDictionary *)a4 completion:(id)a5;
- (void)presentRedeemViewControllerForRedemptionCode:(id)a3 :(id)a4 :(id)a5;
- (void)reauthenticateSignIn:(id)a3 :(id)a4;
- (void)showAccountViewControllerWithUrl:(id)a3 :(id)a4 :(id)a5;
- (void)signIn:(id)a3;
- (void)signInEnablingAccountCreation:(BOOL)a3 completion:(id)a4;
- (void)signOut:(id)a3;
- (void)viewAppleID:(id)a3 :(id)a4;
@end

@implementation JSAAccountController

- (void)signInEnablingAccountCreation:(BOOL)a3 completion:(id)a4
{
  v7 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_55564(0, 0, v10, &unk_A17F0, v15);
}

- (void)presentGiftViewControllerForAdamID:(NSString *)a3 options:(NSDictionary *)a4 completion:(id)a5
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_55564(0, 0, v12, &unk_A17D0, v17);
}

- (void)presentRedeemViewControllerForRedemptionCode:(NSString *)a3 options:(NSDictionary *)a4 completion:(id)a5
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_55564(0, 0, v12, &unk_A1200, v17);
}

- (void)presentGiftViewControllerForAdamID:(id)a3 :(id)a4 :(id)a5
{
  v5 = a5;
  if (a3)
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
  v12 = self;
  v13.value._countAndFlagsBits = v8;
  v13.value._object = v10;
  v15.value._rawValue = v5;
  AccountController.presentGiftViewController(for:_:_:)(v13, v11, v15);
}

- (void)presentRedeemViewControllerForRedemptionCode:(id)a3 :(id)a4 :(id)a5
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
  v14[4] = a3;
  v14[5] = self;
  v14[6] = a4;
  v14[7] = a5;
  v15 = a3;
  v16 = a5;
  v17 = self;
  sub_2D4A4(0, 0, v12, &unk_A1758, v14);
}

- (void)viewAppleID:(id)a3 :(id)a4
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
  v11[5] = a3;
  v12 = a3;
  sub_2D4A4(0, 0, v9, &unk_A1750, v11);
}

- (void)signIn:(id)a3
{
  v5 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = objc_allocWithZone(AMSAuthenticateOptions);
  v10 = a3;
  v11 = self;
  v12 = [v9 init];
  [v12 setEnableAccountCreation:1];
  v13 = sub_8468C();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v11;
  v14[5] = v12;
  v14[6] = v10;
  sub_2D4A4(0, 0, v8, &unk_A1748, v14);
}

- (void)signOut:(id)a3
{
  v4 = a3;
  v5 = self;
  AccountController.signOut(_:)(v4);
}

- (void)reauthenticateSignIn:(id)a3 :(id)a4
{
  if (a3)
  {
    v6 = sub_8434C();
  }

  else
  {
    v6 = 0;
  }

  v7 = a4;
  v8 = self;
  v11.value._rawValue = v6;
  v11.is_nil = v7;
  AccountController.reauthenticateSignIn(with:_:)(v11, v9);
}

- (void)showAccountViewControllerWithUrl:(id)a3 :(id)a4 :(id)a5
{
  v8 = sub_843AC();
  v10 = v9;
  if (a5)
  {
    a5 = sub_8434C();
  }

  v11 = a4;
  v12 = self;
  _s5JSApp17AccountControllerC04showb4ViewC04with__ySS_So7JSValueCSDys11AnyHashableVypGSgtF_0(v8, v10, v11, a5);
}

- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_568E0(v11, sub_56C20, v9);
}

@end