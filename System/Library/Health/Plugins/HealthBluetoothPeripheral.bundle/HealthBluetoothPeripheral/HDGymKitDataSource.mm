@interface HDGymKitDataSource
+ (id)requiredEntitlements;
- (HDGymKitDataSource)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (HDWorkoutDataAccumulator)workoutDataAccumulator;
- (id)quantityTypesToIncludeWhilePaused;
- (void)addMetadata:(id)a3 dataSource:(id)a4;
- (void)addOtherSamples:(id)a3 dataSource:(id)a4;
- (void)addQuantities:(id)a3 dataSource:(id)a4;
- (void)addWorkoutEvents:(id)a3 dataSource:(id)a4;
- (void)remote_setDataSourceConfiguration:(id)a3;
@end

@implementation HDGymKitDataSource

- (HDGymKitDataSource)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v12 = a5;
  v26.receiver = self;
  v26.super_class = HDGymKitDataSource;
  v13 = [(HDGymKitDataSource *)&v26 initWithUUID:a3 configuration:v11 client:v12 delegate:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_dataSourceConfiguration, a4);
    v16 = [HDWorkoutBasicDataSource alloc];
    v17 = [v11 workoutConfiguration];
    v18 = [v16 initWithConfiguration:v17 client:v12];
    basicDataSource = v14->_basicDataSource;
    v14->_basicDataSource = v18;

    _HKInitializeLogging();
    v20 = [HKDataFlowLink alloc];
    v21 = [v20 initWithProcessor:v14 sourceProtocol:&OBJC_PROTOCOL___HDWorkoutDataSource destinationProtocol:&OBJC_PROTOCOL___HDWorkoutDataDestination loggingCategory:HKLogWorkouts];
    workoutDataFlowLink = v14->_workoutDataFlowLink;
    v14->_workoutDataFlowLink = v21;

    v23 = v14->_workoutDataFlowLink;
    v24 = [(HDWorkoutBasicDataSource *)v14->_basicDataSource workoutDataFlowLink];
    [(HKDataFlowLink *)v23 addSource:v24];

    v25 = [v11 sampleTypesToCollect];
    [(HDWorkoutBasicDataSource *)v14->_basicDataSource setSampleTypesToCollect:v25];

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

- (void)remote_setDataSourceConfiguration:(id)a3
{
  v4 = [a3 sampleTypesToCollect];
  [(HDWorkoutBasicDataSource *)self->_basicDataSource setSampleTypesToCollect:v4];
}

- (id)quantityTypesToIncludeWhilePaused
{
  v3 = [(HDWorkoutBasicDataSource *)self->_basicDataSource sampleTypesToCollect];
  v4 = [v3 hk_minus:self->_localDevicePreferredTypes];

  return v4;
}

- (void)addQuantities:(id)a3 dataSource:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_FC88;
  v10[3] = &unk_5D140;
  v10[4] = self;
  v5 = [a3 hk_filter:{v10, a4}];
  if ([v5 count])
  {
    workoutDataFlowLink = self->_workoutDataFlowLink;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_FCD0;
    v7[3] = &unk_5D168;
    v8 = v5;
    v9 = self;
    [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v7];
  }
}

- (void)addOtherSamples:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2F058;
  v11[3] = &unk_5D190;
  v11[4] = self;
  v6 = [v5 hk_filter:v11];
  if ([v6 count])
  {
    workoutDataFlowLink = self->_workoutDataFlowLink;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_FDE8;
    v8[3] = &unk_5D168;
    v9 = v5;
    v10 = self;
    [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
  }
}

- (void)addWorkoutEvents:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_FE94;
  v8[3] = &unk_5D168;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (void)addMetadata:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_FF40;
  v8[3] = &unk_5D168;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (HDWorkoutDataAccumulator)workoutDataAccumulator
{
  v2 = [(HKDataFlowLink *)self->_workoutDataFlowLink destinationProcessorsConformingToProtocol:&OBJC_PROTOCOL___HDWorkoutDataAccumulator];
  v3 = [v2 firstObject];

  return v3;
}

@end