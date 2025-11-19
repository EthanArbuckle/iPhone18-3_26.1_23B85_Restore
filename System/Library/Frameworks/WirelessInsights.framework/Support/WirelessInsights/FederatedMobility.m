@interface FederatedMobility
+ (id)getSharedInstance;
- (FederatedMobility)init;
- (void)dealloc;
- (void)initializeWithConfig:(id)a3;
- (void)significantLocationsDidClear;
- (void)updateServicePredictionConfiguration:(id)a3;
@end

@implementation FederatedMobility

+ (id)getSharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBC34;
  block[3] = &unk_1002AB480;
  block[4] = a1;
  if (qword_1002D85B8 != -1)
  {
    dispatch_once(&qword_1002D85B8, block);
  }

  v2 = qword_1002D85B0;

  return v2;
}

- (FederatedMobility)init
{
  v7.receiver = self;
  v7.super_class = FederatedMobility;
  v2 = [(FederatedMobility *)&v7 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2->_queue = dispatch_queue_create("com.apple.wirelessinsightsd.FederatedMobility", v3);
  v4 = objc_alloc_init(FMCoreLocationController);
  locationController = v2->_locationController;
  v2->_locationController = v4;

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100208924();
  }

  return v2;
}

- (void)initializeWithConfig:(id)a3
{
  v4 = a3;
  if (capabilities::abs::supportsBasebandInsights(v4))
  {
    v5 = [(FederatedMobility *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EBE54;
    block[3] = &unk_1002AD7E0;
    block[4] = self;
    v8 = v4;
    dispatch_async(v5, block);
  }

  [(FederatedMobility *)self updateServicePredictionConfiguration:v4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000EC560;
  v6[3] = &unk_1002AB4D0;
  v6[4] = self;
  dispatch_async([(FederatedMobility *)self queue], v6);
}

- (void)significantLocationsDidClear
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "FederatedMobility:#I Received notification from CoreRoutine that significant locations have been deleted, resetting database", v5, 2u);
  }

  v4 = [(FederatedMobility *)self fmCoreData];
  [v4 clearDatabase];
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100208AF8();
  }

  if ([(FederatedMobility *)self queue])
  {
    dispatch_release([(FederatedMobility *)self queue]);
  }

  v3.receiver = self;
  v3.super_class = FederatedMobility;
  [(FederatedMobility *)&v3 dealloc];
}

- (void)updateServicePredictionConfiguration:(id)a3
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11[-v5 - 8];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001654A8(v7, v11);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  memcpy(v9 + 4, v11, 0x178uLL);
  sub_1001C47C0(0, 0, v6, &unk_10024D4E0, v9);
}

@end