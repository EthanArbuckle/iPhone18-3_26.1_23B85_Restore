@interface AKDeviceListRequester
- (AKDeviceListRequester)init;
- (AKDeviceListRequester)initWithStoreManager:(id)a3 cdpFactory:(id)a4 accountManager:(id)a5 client:(id)a6;
- (void)clearDeviceListCacheWithContext:(AKDeviceListRequestContext *)a3 completionHandler:(id)a4;
- (void)fetchDeviceListWithContext:(AKDeviceListRequestContext *)a3 completionHandler:(id)a4;
@end

@implementation AKDeviceListRequester

- (AKDeviceListRequester)initWithStoreManager:(id)a3 cdpFactory:(id)a4 accountManager:(id)a5 client:(id)a6
{
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_storeManager) = a3;
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_cdpFactory) = a4;
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_accountManager) = a5;
  *(&self->super.isa + OBJC_IVAR___AKDeviceListRequester_client) = a6;
  v15.receiver = self;
  v15.super_class = type metadata accessor for DeviceListRequester();
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  return [(AKDeviceListRequester *)&v15 init];
}

- (void)fetchDeviceListWithContext:(AKDeviceListRequestContext *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_10029E190;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029E198;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029E1A0, v15);
}

- (void)clearDeviceListCacheWithContext:(AKDeviceListRequestContext *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_10029E180;
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

- (AKDeviceListRequester)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end