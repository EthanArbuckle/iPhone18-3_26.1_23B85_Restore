@interface HDFitnessMachineConnectionInitiatorServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
- (void)remote_forbidConnectionForFitnessMachineSessionUUID:(id)a3;
- (void)remote_permitConnectionForFitnessMachineSessionUUID:(id)a3 activityType:(unint64_t)a4;
- (void)remote_registerConnectionInitiatorClient:(id)a3;
- (void)remote_simulateAccept;
- (void)remote_simulateTapWithFitnessMachineType:(unint64_t)a3;
@end

@implementation HDFitnessMachineConnectionInitiatorServer

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 fitnessMachineManager];
  v17 = [v16 connectionInitiatorServer];

  if (v17)
  {
    v18 = [[HDFitnessMachineConnectionInitiatorServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
    v19 = v17;
    connectionInitiatorServer = v18->_connectionInitiatorServer;
    v18->_connectionInitiatorServer = v19;
  }

  else
  {
    connectionInitiatorServer = +[NSError hk_featureUnavailableForProfileError];
    if (connectionInitiatorServer)
    {
      if (a7)
      {
        v21 = connectionInitiatorServer;
        *a7 = connectionInitiatorServer;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v18 = 0;
  }

  return v18;
}

+ (id)requiredEntitlements
{
  v4 = HKPrivateHealthKitEntitlement;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)remote_forbidConnectionForFitnessMachineSessionUUID:(id)a3
{
  if (self)
  {
    connectionInitiatorServer = self->_connectionInitiatorServer;
  }

  else
  {
    connectionInitiatorServer = 0;
  }

  v6 = connectionInitiatorServer;
  v7 = a3;
  [(HDFitnessMachineConnectionInitiatorServer *)self taskUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_51E0() forbidConnectionForFitnessMachineSessionUUID:? withConnectionUUID:?];
}

- (void)remote_permitConnectionForFitnessMachineSessionUUID:(id)a3 activityType:(unint64_t)a4
{
  if (self)
  {
    connectionInitiatorServer = self->_connectionInitiatorServer;
  }

  else
  {
    connectionInitiatorServer = 0;
  }

  v8 = connectionInitiatorServer;
  v9 = a3;
  v10 = [(HDFitnessMachineConnectionInitiatorServer *)self taskUUID];
  [(HDFitnessMachineConnectionInitiatorProtocol *)v8 permitConnectionForFitnessMachineSessionUUID:v9 activityType:a4 withConnectionUUID:v10];
}

- (void)remote_registerConnectionInitiatorClient:(id)a3
{
  if (self)
  {
    connectionInitiatorServer = self->_connectionInitiatorServer;
  }

  else
  {
    connectionInitiatorServer = 0;
  }

  v6 = connectionInitiatorServer;
  v7 = a3;
  [(HDFitnessMachineConnectionInitiatorServer *)self taskUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_51E0() registerConnectionInitiatorClient:? withConnectionUUID:?];
}

- (void)remote_simulateAccept
{
  if (self)
  {
    self = self->_connectionInitiatorServer;
  }

  [(HDFitnessMachineConnectionInitiatorServer *)self simulateAccept];
}

- (void)remote_simulateTapWithFitnessMachineType:(unint64_t)a3
{
  if (self)
  {
    self = self->_connectionInitiatorServer;
  }

  [(HDFitnessMachineConnectionInitiatorServer *)self simulateTapWithFitnessMachineType:a3];
}

@end