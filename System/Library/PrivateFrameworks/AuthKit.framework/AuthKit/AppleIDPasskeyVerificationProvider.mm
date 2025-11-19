@interface AppleIDPasskeyVerificationProvider
- (_TtC3akd34AppleIDPasskeyVerificationProvider)initWithServiceController:(id)a3 accountManager:(id)a4 midKeychain:(id)a5 securePakeManager:(id)a6 featureManager:(id)a7;
- (void)performVerificationRequestWith:(AKAppleIDPasskeySetupContext *)a3 completionHandler:(id)a4;
@end

@implementation AppleIDPasskeyVerificationProvider

- (_TtC3akd34AppleIDPasskeyVerificationProvider)initWithServiceController:(id)a3 accountManager:(id)a4 midKeychain:(id)a5 securePakeManager:(id)a6 featureManager:(id)a7
{
  self->prfExtensionType[0] = 3;
  *self->serviceController = a3;
  *self->accountManager = a4;
  *self->midKeychain = a5;
  *self->securePakeManager = a6;
  *&self->featureManager[7] = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  return self;
}

- (void)performVerificationRequestWith:(AKAppleIDPasskeySetupContext *)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;

  sub_100244978(0, 0, v9, &unk_10029CEE0, v14);
}

@end