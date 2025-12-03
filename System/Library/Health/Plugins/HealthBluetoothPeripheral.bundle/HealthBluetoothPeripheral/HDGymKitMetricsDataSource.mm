@interface HDGymKitMetricsDataSource
+ (id)requiredEntitlements;
- (HDGymKitMetricsDataSource)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_startObservingMetrics;
- (void)dealloc;
- (void)metricsCollector:(id)collector didCollectMetrics:(id)metrics;
- (void)remote_startTaskServerIfNeeded;
- (void)workoutDataDestination:(id)destination requestsDataFrom:(id)from to:(id)to;
- (void)workoutDataDestination:(id)destination requestsFinalDataFrom:(id)from to:(id)to completion:(id)completion;
@end

@implementation HDGymKitMetricsDataSource

- (HDGymKitMetricsDataSource)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v15.receiver = self;
  v15.super_class = HDGymKitMetricsDataSource;
  v6 = [(HDGymKitMetricsDataSource *)&v15 initWithUUID:d configuration:configuration client:client delegate:delegate];
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
  profile = [(HDGymKitMetricsDataSource *)self profile];
  fitnessMachineManager = [profile fitnessMachineManager];
  [v3 removeObserver:self name:@"HDFitnessMachineMetricsCollectorDidChangeNotification" object:fitnessMachineManager];

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

- (void)workoutDataDestination:(id)destination requestsDataFrom:(id)from to:(id)to
{
  lock = self->_lock;
  destinationCopy = destination;
  [(NSLock *)lock lock];
  v8 = [(NSMutableDictionary *)self->_accumulatedMetadata copy];
  [(NSLock *)self->_lock unlock];
  [destinationCopy addMetadata:v8 dataSource:self];
}

- (void)workoutDataDestination:(id)destination requestsFinalDataFrom:(id)from to:(id)to completion:(id)completion
{
  completionCopy = completion;
  [(HDGymKitMetricsDataSource *)self workoutDataDestination:destination requestsDataFrom:from to:to];
  completionCopy[2](completionCopy, 1, 0);
}

- (void)remote_startTaskServerIfNeeded
{
  [(HDGymKitMetricsDataSource *)self _startObservingMetrics];
  v5 = +[NSNotificationCenter defaultCenter];
  profile = [(HDGymKitMetricsDataSource *)self profile];
  fitnessMachineManager = [profile fitnessMachineManager];
  [v5 addObserver:self selector:"_startObservingMetrics" name:@"HDFitnessMachineMetricsCollectorDidChangeNotification" object:fitnessMachineManager];
}

- (void)metricsCollector:(id)collector didCollectMetrics:(id)metrics
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_187D0;
  v17[3] = &unk_5D2D8;
  v17[4] = self;
  metricsCopy = metrics;
  v6 = [(HDGymKitMetricsDataSource *)self remoteObjectProxyWithErrorHandler:v17];
  [v6 clientRemote_didReceiveMetrics:metricsCopy];
  v7 = sub_32EEC(self, metricsCopy);

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
  selfCopy = self;
  v11 = v9;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v12];
}

- (void)_startObservingMetrics
{
  profile = [(HDGymKitMetricsDataSource *)self profile];
  fitnessMachineManager = [profile fitnessMachineManager];
  metricsCollector = [fitnessMachineManager metricsCollector];

  [metricsCollector addObserver:self];
}

@end