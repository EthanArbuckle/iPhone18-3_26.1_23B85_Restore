@interface AKAppleIDPasskeyEnrollController
+ (id)challengeProviderWithContext:(id)a3 client:(id)a4;
+ (id)registrationProviderWithContext:(id)a3 client:(id)a4;
- (AKAppleIDPasskeyEnrollController)init;
- (AKAppleIDPasskeyEnrollController)initWithPasskeyValidator:(id)a3 challengeProvider:(id)a4 credentialProvider:(id)a5 registrationProvider:(id)a6;
- (void)setupPasskeyWithContext:(AKAppleIDPasskeySetupContext *)a3 forced:(BOOL)a4 completion:(id)a5;
@end

@implementation AKAppleIDPasskeyEnrollController

- (AKAppleIDPasskeyEnrollController)initWithPasskeyValidator:(id)a3 challengeProvider:(id)a4 credentialProvider:(id)a5 registrationProvider:(id)a6
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyEnrollController_passkeyValidator) = a3;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyEnrollController_challengeProvider) = a4;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyEnrollController_credentialProvider) = a5;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyEnrollController_registrationProvider) = a6;
  v13.receiver = self;
  v13.super_class = ObjectType;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(AKAppleIDPasskeyEnrollController *)&v13 init];
}

- (void)setupPasskeyWithContext:(AKAppleIDPasskeySetupContext *)a3 forced:(BOOL)a4 completion:(id)a5
{
  v9 = (*(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029CED0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029C6A0;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_100244978(0, 0, v11, &unk_10029CEE0, v16);
}

+ (id)challengeProviderWithContext:(id)a3 client:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1001B0778(v5, a4);

  return v7;
}

+ (id)registrationProviderWithContext:(id)a3 client:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1001B0BCC(v5, a4);

  return v7;
}

- (AKAppleIDPasskeyEnrollController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end