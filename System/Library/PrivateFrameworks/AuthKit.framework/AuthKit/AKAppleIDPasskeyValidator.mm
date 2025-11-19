@interface AKAppleIDPasskeyValidator
- (AKAppleIDPasskeyValidator)init;
- (AKAppleIDPasskeyValidator)initWithAccount:(id)a3 accountManager:(id)a4 featureManager:(id)a5 configuration:(id)a6 device:(id)a7 cdpFactory:(id)a8 authenticationController:(id)a9;
- (BOOL)canVerifyPasskey;
- (void)canCreatePasskeyWithForced:(BOOL)a3 completionHandler:(id)a4;
- (void)canDeleteAllPasskeysWithCompletionHandler:(id)a3;
- (void)canUnenrollPasskeyWithForced:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation AKAppleIDPasskeyValidator

- (AKAppleIDPasskeyValidator)initWithAccount:(id)a3 accountManager:(id)a4 featureManager:(id)a5 configuration:(id)a6 device:(id)a7 cdpFactory:(id)a8 authenticationController:(id)a9
{
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_account) = a3;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_accountManager) = a4;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_featureManager) = a5;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_configuration) = a6;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_device) = a7;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_cdpFactory) = a8;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_authenticationController) = a9;
  v22.receiver = self;
  v22.super_class = type metadata accessor for AppleIDPasskeyValidator();
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  swift_unknownObjectRetain();
  return [(AKAppleIDPasskeyValidator *)&v22 init];
}

- (void)canCreatePasskeyWithForced:(BOOL)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029CFE8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029CFF0;
  v14[5] = v13;
  v15 = self;
  sub_100244978(0, 0, v9, &unk_10029CFF8, v14);
}

- (void)canUnenrollPasskeyWithForced:(BOOL)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029CFC8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029CFD0;
  v14[5] = v13;
  v15 = self;
  sub_100244978(0, 0, v9, &unk_10029CFD8, v14);
}

- (BOOL)canVerifyPasskey
{
  v2 = self;
  v3 = sub_1001B2B54();

  return v3 & 1;
}

- (void)canDeleteAllPasskeysWithCompletionHandler:(id)a3
{
  v5 = (*(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10029CFB8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029C6A0;
  v12[5] = v11;
  v13 = self;
  sub_100244978(0, 0, v7, &unk_10029CEE0, v12);
}

- (AKAppleIDPasskeyValidator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end