@interface AppleIDPasskeyVerificationProvider
- (_TtC3akd34AppleIDPasskeyVerificationProvider)initWithServiceController:(id)controller accountManager:(id)manager midKeychain:(id)keychain securePakeManager:(id)pakeManager featureManager:(id)featureManager;
- (void)performVerificationRequestWith:(AKAppleIDPasskeySetupContext *)with completionHandler:(id)handler;
@end

@implementation AppleIDPasskeyVerificationProvider

- (_TtC3akd34AppleIDPasskeyVerificationProvider)initWithServiceController:(id)controller accountManager:(id)manager midKeychain:(id)keychain securePakeManager:(id)pakeManager featureManager:(id)featureManager
{
  self->prfExtensionType[0] = 3;
  *self->serviceController = controller;
  *self->accountManager = manager;
  *self->midKeychain = keychain;
  *self->securePakeManager = pakeManager;
  *&self->featureManager[7] = featureManager;
  controllerCopy = controller;
  managerCopy = manager;
  keychainCopy = keychain;
  pakeManagerCopy = pakeManager;
  featureManagerCopy = featureManager;
  return self;
}

- (void)performVerificationRequestWith:(AKAppleIDPasskeySetupContext *)with completionHandler:(id)handler
{
  v7 = (*(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029C698;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029C6A0;
  v14[5] = v13;
  withCopy = with;

  sub_100244978(0, 0, v9, &unk_10029CEE0, v14);
}

@end