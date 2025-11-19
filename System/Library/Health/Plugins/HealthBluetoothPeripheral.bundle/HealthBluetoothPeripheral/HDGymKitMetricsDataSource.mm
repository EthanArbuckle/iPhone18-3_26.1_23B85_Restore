@interface HDGymKitMetricsDataSource
+ (id)requiredEntitlements;
- (HDGymKitMetricsDataSource)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_startObservingMetrics;
- (void)dealloc;
- (void)metricsCollector:(id)a3 didCollectMetrics:(id)a4;
- (void)remote_startTaskServerIfNeeded;
- (void)workoutDataDestination:(id)a3 requestsDataFrom:(id)a4 to:(id)a5;
- (void)workoutDataDestination:(id)a3 requestsFinalDataFrom:(id)a4 to:(id)a5 completion:(id)a6;
@end

@implementation HDGymKitMetricsDataSource

- (HDGymKitMetricsDataSource)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v15.receiver = self;
  v15.super_class = HDGymKitMetricsDataSource;
  v6 = [(HDGymKitMetricsDataSource *)&v15 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  if (v6)
  {
    _HKInitializeLogging();
    v7 = [HKDataFlowLink alloc];
    v8 = [v7 initWithProcessor:v6 sourceProtocol:&OBJC_PROTOCOL___HDWorkoutDataSource destinationProtocol:&OBJC_PROTOCOL___HDWorkoutDataDestination loggingCategory:HKLogWorkouts];
    workoutDataFlowLink = v6->_workoutDataFlowLink;
    v6->_workoutDataFlowLink = v8;

    v10 = objc_alloc_init(NSLock);
    lock = v6->_lock;
    v6->_lock = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    accumulatedMetadata = v6->_accumulatedMetadata;
    v6->_accumulatedMetadata = v12;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = [(HDGymKitMetricsDataSource *)self profile];
  v5 = [v4 fitnessMachineManager];
  [v3 removeObserver:self name:@"HDFitnessMachineMetricsCollectorDidChangeNotification" object:v5];

  sub_32E68(self);
  v6.receiver = self;
  v6.super_class = HDGymKitMetricsDataSource;
  [(HDGymKitMetricsDataSource *)&v6 dealloc];
}

+ (id)requiredEntitlements
{
  v4 = HKPrivateHealthKitEntitlement;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)workoutDataDestination:(id)a3 requestsDataFrom:(id)a4 to:(id)a5
{
  lock = self->_lock;
  v7 = a3;
  [(NSLock *)lock lock];
  v8 = [(NSMutableDictionary *)self->_accumulatedMetadata copy];
  [(NSLock *)self->_lock unlock];
  [v7 addMetadata:v8 dataSource:self];
}

- (void)workoutDataDestination:(id)a3 requestsFinalDataFrom:(id)a4 to:(id)a5 completion:(id)a6
{
  v10 = a6;
  [(HDGymKitMetricsDataSource *)self workoutDataDestination:a3 requestsDataFrom:a4 to:a5];
  v10[2](v10, 1, 0);
}

- (void)remote_startTaskServerIfNeeded
{
  [(HDGymKitMetricsDataSource *)self _startObservingMetrics];
  v5 = +[NSNotificationCenter defaultCenter];
  v3 = [(HDGymKitMetricsDataSource *)self profile];
  v4 = [v3 fitnessMachineManager];
  [v5 addObserver:self selector:"_startObservingMetrics" name:@"HDFitnessMachineMetricsCollectorDidChangeNotification" object:v4];
}

- (void)metricsCollector:(id)a3 didCollectMetrics:(id)a4
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_187D0;
  v17[3] = &unk_5D2D8;
  v17[4] = self;
  v5 = a4;
  v6 = [(HDGymKitMetricsDataSource *)self remoteObjectProxyWithErrorHandler:v17];
  [v6 clientRemote_didReceiveMetrics:v5];
  v7 = sub_32EEC(self, v5);

  lock = self->_lock;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_18838;
  v15[3] = &unk_5C8C8;
  v15[4] = self;
  v9 = v7;
  v16 = v9;
  [(NSLock *)lock hk_withLock:v15];
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1884C;
  v12[3] = &unk_5D168;
  v13 = v9;
  v14 = self;
  v11 = v9;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v12];
}

- (void)_startObservingMetrics
{
  v3 = [(HDGymKitMetricsDataSource *)self profile];
  v4 = [v3 fitnessMachineManager];
  v5 = [v4 metricsCollector];

  [v5 addObserver:self];
}

@end