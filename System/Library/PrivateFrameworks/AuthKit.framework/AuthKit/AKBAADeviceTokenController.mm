@interface AKBAADeviceTokenController
+ (AKBAADeviceTokenController)sharedTokenController;
+ (NSString)deviceTokenKeychainKey;
+ (NSString)deviceTokenServerResponseKey;
- (AKBAADeviceTokenController)init;
- (int64_t)shouldSendBAACertWithToken;
- (void)fetchBAADeviceTokenWithCompletionHandler:(id)a3;
- (void)markBAAOperationSuccessful;
- (void)refreshBAADeviceTokenWithCompletionHandler:(id)a3;
- (void)refreshCertWithTokenFeatureWithCompletionHandler:(id)a3;
@end

@implementation AKBAADeviceTokenController

+ (AKBAADeviceTokenController)sharedTokenController
{
  if (qword_100371BC0 != -1)
  {
    swift_once();
  }

  v3 = qword_100377660;

  return v3;
}

+ (NSString)deviceTokenServerResponseKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)deviceTokenKeychainKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (int64_t)shouldSendBAACertWithToken
{
  v2 = self;
  v3 = sub_1001FAFA8();

  return v3;
}

- (AKBAADeviceTokenController)init
{
  swift_getObjectType();
  v2 = AKURLBagKeyBAAFetchDeviceToken;
  v3 = type metadata accessor for URLBagFeatureFlag();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = v2;
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  *&v6[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus] = 0;
  *&v6[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask] = 0;
  *&v6[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagKey] = v7;
  v10 = &v6[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider];
  *v10 = sub_100228E10;
  v10[1] = 0;
  v14.receiver = v6;
  v14.super_class = v3;
  v11 = [(AKBAADeviceTokenController *)&v14 init];
  v12 = sub_1001FFD54(sub_1001FB270, 0, sub_1001FB2FC, 0, sub_1001FB36C, 0, v11);
  swift_deallocPartialClassInstance();
  return v12;
}

- (void)markBAAOperationSuccessful
{
  v2 = *(&self->super.isa + OBJC_IVAR___AKBAADeviceTokenController_haveBAAOperationsSucceeded);
  v3 = self;
  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));
}

- (void)refreshBAADeviceTokenWithCompletionHandler:(id)a3
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
  v12[4] = &unk_10029E3A0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029E060;
  v13[5] = v12;
  v14 = self;
  sub_100244978(0, 0, v8, &unk_10029E3B0, v13);
}

- (void)fetchBAADeviceTokenWithCompletionHandler:(id)a3
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
  v12[4] = &unk_10029E380;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029E040;
  v13[5] = v12;
  v14 = self;
  sub_100244978(0, 0, v8, &unk_10029E390, v13);
}

- (void)refreshCertWithTokenFeatureWithCompletionHandler:(id)a3
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
  v12[4] = &unk_10029E370;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029C6A0;
  v13[5] = v12;
  v14 = self;
  sub_100244978(0, 0, v8, &unk_10029CEE0, v13);
}

@end