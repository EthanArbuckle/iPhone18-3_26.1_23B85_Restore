@interface AKAppleIDPasskeyValidator
- (AKAppleIDPasskeyValidator)init;
- (AKAppleIDPasskeyValidator)initWithAccount:(id)account accountManager:(id)manager featureManager:(id)featureManager configuration:(id)configuration device:(id)device cdpFactory:(id)factory authenticationController:(id)controller;
- (BOOL)canVerifyPasskey;
- (void)canCreatePasskeyWithForced:(BOOL)forced completionHandler:(id)handler;
- (void)canDeleteAllPasskeysWithCompletionHandler:(id)handler;
- (void)canUnenrollPasskeyWithForced:(BOOL)forced completionHandler:(id)handler;
@end

@implementation AKAppleIDPasskeyValidator

- (AKAppleIDPasskeyValidator)initWithAccount:(id)account accountManager:(id)manager featureManager:(id)featureManager configuration:(id)configuration device:(id)device cdpFactory:(id)factory authenticationController:(id)controller
{
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_account) = account;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_accountManager) = manager;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_featureManager) = featureManager;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_configuration) = configuration;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_device) = device;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_cdpFactory) = factory;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyValidator_authenticationController) = controller;
  v22.receiver = self;
  v22.super_class = type metadata accessor for AppleIDPasskeyValidator();
  accountCopy = account;
  managerCopy = manager;
  featureManagerCopy = featureManager;
  configurationCopy = configuration;
  deviceCopy = device;
  factoryCopy = factory;
  swift_unknownObjectRetain();
  return [(AKAppleIDPasskeyValidator *)&v22 init];
}

- (void)canCreatePasskeyWithForced:(BOOL)forced completionHandler:(id)handler
{
  v7 = (*(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = forced;
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
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029CFF8, v14);
}

- (void)canUnenrollPasskeyWithForced:(BOOL)forced completionHandler:(id)handler
{
  v7 = (*(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = forced;
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
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029CFD8, v14);
}

- (BOOL)canVerifyPasskey
{
  selfCopy = self;
  v3 = sub_1001B2B54();

  return v3 & 1;
}

- (void)canDeleteAllPasskeysWithCompletionHandler:(id)handler
{
  v5 = (*(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029CEE0, v12);
}

- (AKAppleIDPasskeyValidator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end