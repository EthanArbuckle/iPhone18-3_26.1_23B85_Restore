@interface COSCDPRepairController
+ (BOOL)controllerNeedsToRun;
- (COSCDPRepairController)init;
- (COSCDPRepairController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (COSCDPRepairController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)localizedWaitScreenDescription;
- (void)didPushWaitScreen;
@end

@implementation COSCDPRepairController

+ (BOOL)controllerNeedsToRun
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = (*(ObjCClassMetadata + 112))();
  if ((v3 & 1) == 0)
  {
    if (UIApp)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = [v4 setupController];
        if (!v5)
        {
          __break(1u);
          return v5;
        }

        v6 = v5;
        [v5 startSilentAppleIDSignIn];
      }
    }
  }

  LOBYTE(v5) = v3 & 1;
  return v5;
}

- (void)didPushWaitScreen
{
  v3 = sub_1001379C4(&qword_1002BC790);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_1001390A0(0, 0, v5, &unk_1001C83B0, v9);
}

- (id)localizedWaitScreenDescription
{
  sub_100145BB8(0xD000000000000017, 0x8000000100243820);
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (COSCDPRepairController)init
{
  *&self->super.BPSWelcomeOptinViewController_opaque[OBJC_IVAR___COSCDPRepairController_cdpEncryptionHelper] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CDPRepairController();
  return [(COSOptinViewController *)&v3 init];
}

- (COSCDPRepairController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_10015B3E0(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_10015B3E0(v9, v11, a4, v13, v14, v16, a6);
}

- (COSCDPRepairController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v10;
  }

  *&self->super.BPSWelcomeOptinViewController_opaque[OBJC_IVAR___COSCDPRepairController_cdpEncryptionHelper] = 0;
  v11 = a5;
  v12 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for CDPRepairController();
  v14 = [(COSCDPRepairController *)&v16 initWithTitle:v12 detailText:v13 icon:v11 contentLayout:a6];

  return v14;
}

@end