@interface AKAppleIDPasskeyCleanupController
- (AKAppleIDPasskeyCleanupController)init;
- (AKAppleIDPasskeyCleanupController)initWithPasskeyValidator:(id)a3 authenticationController:(id)a4 accountManager:(id)a5;
- (void)cleanupPasskeysFromKeychainWithcompletion:(id)a3;
@end

@implementation AKAppleIDPasskeyCleanupController

- (AKAppleIDPasskeyCleanupController)initWithPasskeyValidator:(id)a3 authenticationController:(id)a4 accountManager:(id)a5
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyCleanupController_passkeyValidator) = a3;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyCleanupController_authenticationController) = a4;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyCleanupController_accountManager) = a5;
  v12.receiver = self;
  v12.super_class = ObjectType;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = a5;
  return [(AKAppleIDPasskeyCleanupController *)&v12 init];
}

- (void)cleanupPasskeysFromKeychainWithcompletion:(id)a3
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029D170;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029C6A0;
  v13[5] = v12;
  v14 = self;
  sub_100244978(0, 0, v8, &unk_10029CEE0, v13);
}

- (AKAppleIDPasskeyCleanupController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end