@interface HDFitnessMachineConnectionServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
- (void)connectionInterrupted;
- (void)remote_endFitnessMachineConnection;
- (void)remote_endFitnessMachineConnectionForFitnessMachineSessionUUID:(id)a3;
- (void)remote_markClientReady;
- (void)remote_registerClient:(id)a3;
@end

@implementation HDFitnessMachineConnectionServer

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 fitnessMachineManager];

  if (v16)
  {
    v17 = [[HDFitnessMachineConnectionServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
    v18 = v16;
    fitnessMachineManager = v17->_fitnessMachineManager;
    v17->_fitnessMachineManager = v18;
  }

  else
  {
    fitnessMachineManager = +[NSError hk_featureUnavailableForProfileError];
    if (fitnessMachineManager)
    {
      if (a7)
      {
        v20 = fitnessMachineManager;
        *a7 = fitnessMachineManager;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

+ (id)requiredEntitlements
{
  v4 = HKPrivateHealthKitEntitlement;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)connectionInterrupted
{
  fitnessMachineManager = self->_fitnessMachineManager;
  v3 = [(HDFitnessMachineConnectionServer *)self taskUUID];
  [(HDFitnessMachineManager *)fitnessMachineManager clientInvalidatedWithConnectionUUID:v3];
}

- (void)remote_registerClient:(id)a3
{
  fitnessMachineManager = self->_fitnessMachineManager;
  v5 = a3;
  v6 = [(HDFitnessMachineConnectionServer *)self taskUUID];
  [(HDFitnessMachineManager *)fitnessMachineManager registerClient:v5 withConnectionUUID:v6];
}

- (void)remote_endFitnessMachineConnection
{
  fitnessMachineManager = self->_fitnessMachineManager;
  v3 = [(HDFitnessMachineConnectionServer *)self taskUUID];
  [(HDFitnessMachineManager *)fitnessMachineManager endFitnessMachineConnectionWithUUID:v3];
}

- (void)remote_endFitnessMachineConnectionForFitnessMachineSessionUUID:(id)a3
{
  fitnessMachineManager = self->_fitnessMachineManager;
  v5 = a3;
  v6 = [(HDFitnessMachineConnectionServer *)self taskUUID];
  [(HDFitnessMachineManager *)fitnessMachineManager endFitnessMachineConnectionForFitnessMachineSessionUUID:v5 withConnectionUUID:v6];
}

- (void)remote_markClientReady
{
  fitnessMachineManager = self->_fitnessMachineManager;
  v3 = [(HDFitnessMachineConnectionServer *)self taskUUID];
  [(HDFitnessMachineManager *)fitnessMachineManager markClientReadyWithConnectionUUID:v3];
}

@end