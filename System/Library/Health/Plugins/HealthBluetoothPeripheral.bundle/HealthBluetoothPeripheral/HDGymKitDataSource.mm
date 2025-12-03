@interface HDGymKitDataSource
+ (id)requiredEntitlements;
- (HDGymKitDataSource)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (HDWorkoutDataAccumulator)workoutDataAccumulator;
- (id)quantityTypesToIncludeWhilePaused;
- (void)addMetadata:(id)metadata dataSource:(id)source;
- (void)addOtherSamples:(id)samples dataSource:(id)source;
- (void)addQuantities:(id)quantities dataSource:(id)source;
- (void)addWorkoutEvents:(id)events dataSource:(id)source;
- (void)remote_setDataSourceConfiguration:(id)configuration;
@end

@implementation HDGymKitDataSource

- (HDGymKitDataSource)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  clientCopy = client;
  v26.receiver = self;
  v26.super_class = HDGymKitDataSource;
  v13 = [(HDGymKitDataSource *)&v26 initWithUUID:d configuration:configurationCopy client:clientCopy delegate:delegate];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_dataSourceConfiguration, configuration);
    v16 = [HDWorkoutBasicDataSource alloc];
    workoutConfiguration = [configurationCopy workoutConfiguration];
    v18 = [v16 initWithConfiguration:workoutConfiguration client:clientCopy];
    basicDataSource = v14->_basicDataSource;
    v14->_basicDataSource = v18;

    _HKInitializeLogging();
    v20 = [HKDataFlowLink alloc];
    v21 = [v20 initWithProcessor:v14 sourceProtocol:&OBJC_PROTOCOL___HDWorkoutDataSource destinationProtocol:&OBJC_PROTOCOL___HDWorkoutDataDestination loggingCategory:HKLogWorkouts];
    workoutDataFlowLink = v14->_workoutDataFlowLink;
    v14->_workoutDataFlowLink = v21;

    v23 = v14->_workoutDataFlowLink;
    workoutDataFlowLink = [(HDWorkoutBasicDataSource *)v14->_basicDataSource workoutDataFlowLink];
    [(HKDataFlowLink *)v23 addSource:workoutDataFlowLink];

    sampleTypesToCollect = [configurationCopy sampleTypesToCollect];
    [(HDWorkoutBasicDataSource *)v14->_basicDataSource setSampleTypesToCollect:sampleTypesToCollect];

    sub_2EA6C(v14);
  }

  return v14;
}

+ (id)requiredEntitlements
{
  v4 = HKPrivateHealthKitEntitlement;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)remote_setDataSourceConfiguration:(id)configuration
{
  sampleTypesToCollect = [configuration sampleTypesToCollect];
  [(HDWorkoutBasicDataSource *)self->_basicDataSource setSampleTypesToCollect:sampleTypesToCollect];
}

- (id)quantityTypesToIncludeWhilePaused
{
  sampleTypesToCollect = [(HDWorkoutBasicDataSource *)self->_basicDataSource sampleTypesToCollect];
  v4 = [sampleTypesToCollect hk_minus:self->_localDevicePreferredTypes];

  return v4;
}

- (void)addQuantities:(id)quantities dataSource:(id)source
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_FC88;
  v10[3] = &unk_5D140;
  v10[4] = self;
  v5 = [quantities hk_filter:{v10, source}];
  if ([v5 count])
  {
    workoutDataFlowLink = self->_workoutDataFlowLink;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_FCD0;
    v7[3] = &unk_5D168;
    v8 = v5;
    selfCopy = self;
    [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v7];
  }
}

- (void)addOtherSamples:(id)samples dataSource:(id)source
{
  samplesCopy = samples;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2F058;
  v11[3] = &unk_5D190;
  v11[4] = self;
  v6 = [samplesCopy hk_filter:v11];
  if ([v6 count])
  {
    workoutDataFlowLink = self->_workoutDataFlowLink;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_FDE8;
    v8[3] = &unk_5D168;
    v9 = samplesCopy;
    selfCopy = self;
    [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
  }
}

- (void)addWorkoutEvents:(id)events dataSource:(id)source
{
  eventsCopy = events;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_FE94;
  v8[3] = &unk_5D168;
  v9 = eventsCopy;
  selfCopy = self;
  v7 = eventsCopy;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (void)addMetadata:(id)metadata dataSource:(id)source
{
  metadataCopy = metadata;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_FF40;
  v8[3] = &unk_5D168;
  v9 = metadataCopy;
  selfCopy = self;
  v7 = metadataCopy;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (HDWorkoutDataAccumulator)workoutDataAccumulator
{
  v2 = [(HKDataFlowLink *)self->_workoutDataFlowLink destinationProcessorsConformingToProtocol:&OBJC_PROTOCOL___HDWorkoutDataAccumulator];
  firstObject = [v2 firstObject];

  return firstObject;
}

@end