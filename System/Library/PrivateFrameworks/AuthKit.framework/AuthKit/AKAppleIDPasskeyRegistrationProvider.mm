@interface AKAppleIDPasskeyRegistrationProvider
- (AKAppleIDPasskeyRegistrationProvider)init;
- (AKAppleIDPasskeyRegistrationProvider)initWithServiceController:(id)a3 accountManager:(id)a4;
- (void)performRegistrationRequestWith:(AKAppleIDPasskeyCredential *)a3 completionHandler:(id)a4;
@end

@implementation AKAppleIDPasskeyRegistrationProvider

- (AKAppleIDPasskeyRegistrationProvider)initWithServiceController:(id)a3 accountManager:(id)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyRegistrationProvider_serviceController) = a3;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyRegistrationProvider_accountManager) = a4;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = a4;
  return [(AKAppleIDPasskeyRegistrationProvider *)&v11 init];
}

- (void)performRegistrationRequestWith:(AKAppleIDPasskeyCredential *)a3 completionHandler:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029E1F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029C6A0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029CEE0, v15);
}

- (AKAppleIDPasskeyRegistrationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end