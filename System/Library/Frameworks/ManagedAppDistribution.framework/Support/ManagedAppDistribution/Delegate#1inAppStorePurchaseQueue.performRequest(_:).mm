@interface Delegate#1inAppStorePurchaseQueue.performRequest(_:)
- (_TtCFC28ManagedAppDistributionDaemon21AppStorePurchaseQueueP33_1A4F22EA98D22E652D7B163648FD69AB14performRequestFzZVS_23AppStorePurchaseRequestGSaVS_12AppStoreItem_L_8Delegate)init;
- (void)purchase:()_: handleAuthenticateRequest:completion:;
- (void)purchase:()_: handleDialogRequest:completion:;
- (void)purchase:()_: handleEngagementRequest:completion:;
@end

@implementation Delegate#1inAppStorePurchaseQueue.performRequest(_:)

- (void)purchase:()_: handleEngagementRequest:completion:
{
  v9 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006B06F0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006B06F8;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  selfCopy = self;
  sub_100521E40(0, 0, v11, &unk_1006B0700, v16);
}

- (void)purchase:()_: handleAuthenticateRequest:completion:
{
  v9 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006B06C0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006B06C8;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  selfCopy = self;
  sub_100521E40(0, 0, v11, &unk_1006B06D0, v16);
}

- (void)purchase:()_: handleDialogRequest:completion:
{
  v9 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006B06A0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006A16A8;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  selfCopy = self;
  sub_100521E40(0, 0, v11, &unk_1006A16B0, v16);
}

- (_TtCFC28ManagedAppDistributionDaemon21AppStorePurchaseQueueP33_1A4F22EA98D22E652D7B163648FD69AB14performRequestFzZVS_23AppStorePurchaseRequestGSaVS_12AppStoreItem_L_8Delegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppStorePurchaseQueue.Delegate();
  return [(Delegate *)&v3 #1];
}

@end