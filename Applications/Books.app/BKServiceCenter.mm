@interface BKServiceCenter
- (BKPriceTrackingService)priceTrackingService;
- (BKServiceCenter)init;
- (BKServiceCenter)initWithAppConfiguration:(id)configuration;
- (void)deleteCloudDataWithCompletion:(id)completion;
- (void)setupServicesWithLibraryManager:(id)manager appDelegate:(id)delegate;
@end

@implementation BKServiceCenter

- (BKServiceCenter)initWithAppConfiguration:(id)configuration
{
  v4 = objc_allocWithZone(swift_getObjectType());
  v5 = sub_100013574(configuration, v4);
  swift_deallocPartialClassInstance();
  return v5;
}

- (BKPriceTrackingService)priceTrackingService
{
  type metadata accessor for PriceTrackingService();
  selfCopy = self;
  sub_1001F1160(&qword_100AEB0B0);
  v4 = sub_1007A22E4();
  v6 = sub_10057FB10(v4, v5, type metadata accessor for PriceTrackingService);

  return v6;
}

- (BKServiceCenter)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___BKServiceCenter____lazy_storage___serviceQueue) = 0;
  *(&self->super.isa + OBJC_IVAR___BKServiceCenter____lazy_storage___group) = 0;
  *(&self->super.isa + OBJC_IVAR___BKServiceCenter_services) = _swiftEmptyDictionarySingleton;
  v4 = OBJC_IVAR___BKServiceCenter__setupState;
  v7 = 0;
  sub_1001F1160(&qword_100AD1F38);
  swift_allocObject();
  *(&self->super.isa + v4) = sub_100798B54();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(BKServiceCenter *)&v6 init];
}

- (void)setupServicesWithLibraryManager:(id)manager appDelegate:(id)delegate
{
  managerCopy = manager;
  delegateCopy = delegate;
  selfCopy = self;
  ServiceCenter.setupServices(withLibraryManager:appDelegate:)(managerCopy, delegateCopy);
}

- (void)deleteCloudDataWithCompletion:(id)completion
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1005F8FF8;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1007A2744();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = v8;
  v11[6] = v9;
  selfCopy = self;
  sub_1003457A0(0, 0, v7, &unk_1008354C0, v11);
}

@end