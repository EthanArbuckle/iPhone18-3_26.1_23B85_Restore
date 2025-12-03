@interface AKDeviceListStoreManager
+ (AKDeviceListStoreManager)sharedManager;
- (AKDeviceListStoreManager)init;
- (void)clearDatabaseWithCompletionHandler:(id)handler;
- (void)clearStaleDevicesWithAccountManager:(AKAccountManager *)manager completionHandler:(id)handler;
- (void)deleteDeviceListWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler;
- (void)fetchDeviceListWithContext:(AKDeviceListRequestContext *)context cdpFactory:(AKCDPFactory *)factory serviceController:(AKServiceControllerImpl *)controller accountManager:(AKAccountManager *)manager completionHandler:(id)handler;
- (void)updateCacheWithContext:(AKDeviceListRequestContext *)context deviceListResponse:(AKDeviceListResponse *)response completionHandler:(id)handler;
- (void)verifyCacheSyncStatusFromResponse:(AKDeviceListResponse *)response context:(AKDeviceListRequestContext *)context accountManager:(AKAccountManager *)manager reporter:(AAFAnalyticsReporter *)reporter completionHandler:(id)handler;
@end

@implementation AKDeviceListStoreManager

+ (AKDeviceListStoreManager)sharedManager
{
  if (qword_100371BF8 != -1)
  {
    swift_once();
  }

  v3 = qword_1003776D0;

  return v3;
}

- (void)clearDatabaseWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029F798;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029E060;
  v13[5] = v12;
  selfCopy = self;
  sub_100244978(0, 0, v8, &unk_10029E3B0, v13);
}

- (void)fetchDeviceListWithContext:(AKDeviceListRequestContext *)context cdpFactory:(AKCDPFactory *)factory serviceController:(AKServiceControllerImpl *)controller accountManager:(AKAccountManager *)manager completionHandler:(id)handler
{
  v13 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = context;
  v18[3] = factory;
  v18[4] = controller;
  v18[5] = manager;
  v18[6] = v17;
  v18[7] = self;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10029F788;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_10029E040;
  v21[5] = v20;
  contextCopy = context;
  factoryCopy = factory;
  controllerCopy = controller;
  managerCopy = manager;
  selfCopy = self;
  sub_100244978(0, 0, v16, &unk_10029E390, v21);
}

- (void)deleteDeviceListWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = context;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F768;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F770;
  v15[5] = v14;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029F778, v15);
}

- (void)clearStaleDevicesWithAccountManager:(AKAccountManager *)manager completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = manager;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F748;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F750;
  v15[5] = v14;
  managerCopy = manager;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029F758, v15);
}

- (void)verifyCacheSyncStatusFromResponse:(AKDeviceListResponse *)response context:(AKDeviceListRequestContext *)context accountManager:(AKAccountManager *)manager reporter:(AAFAnalyticsReporter *)reporter completionHandler:(id)handler
{
  v13 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = response;
  v18[3] = context;
  v18[4] = manager;
  v18[5] = reporter;
  v18[6] = v17;
  v18[7] = self;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10029F728;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_10029F730;
  v21[5] = v20;
  responseCopy = response;
  contextCopy = context;
  managerCopy = manager;
  reporterCopy = reporter;
  selfCopy = self;
  sub_100244978(0, 0, v16, &unk_10029F738, v21);
}

- (void)updateCacheWithContext:(AKDeviceListRequestContext *)context deviceListResponse:(AKDeviceListResponse *)response completionHandler:(id)handler
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = context;
  v14[3] = response;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029F718;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029C6A0;
  v17[5] = v16;
  contextCopy = context;
  responseCopy = response;
  selfCopy = self;
  sub_100244978(0, 0, v12, &unk_10029CEE0, v17);
}

- (AKDeviceListStoreManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end