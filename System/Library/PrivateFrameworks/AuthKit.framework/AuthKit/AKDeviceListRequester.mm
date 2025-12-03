@interface AKDeviceListRequester
- (AKDeviceListRequester)init;
- (AKDeviceListRequester)initWithStoreManager:(id)manager cdpFactory:(id)factory accountManager:(id)accountManager client:(id)client;
- (void)clearDeviceListCacheWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler;
- (void)fetchDeviceListWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler;
@end

@implementation AKDeviceListRequester

- (AKDeviceListRequester)initWithStoreManager:(id)manager cdpFactory:(id)factory accountManager:(id)accountManager client:(id)client
{
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_storeManager) = manager;
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_cdpFactory) = factory;
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_accountManager) = accountManager;
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_client) = client;
  v15.receiver = self;
  v15.super_class = type metadata accessor for DeviceListRequester();
  managerCopy = manager;
  factoryCopy = factory;
  accountManagerCopy = accountManager;
  clientCopy = client;
  return [(AKDeviceListRequester *)&v15 init];
}

- (void)fetchDeviceListWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler
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
  v14[4] = &unk_10029E190;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029E198;
  v15[5] = v14;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029E1A0, v15);
}

- (void)clearDeviceListCacheWithContext:(AKDeviceListRequestContext *)context completionHandler:(id)handler
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
  v14[4] = &unk_10029E180;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029C6A0;
  v15[5] = v14;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029CEE0, v15);
}

- (AKDeviceListRequester)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end