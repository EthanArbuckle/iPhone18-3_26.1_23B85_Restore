@interface HDFitnessMachineConnectionServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
- (void)connectionInterrupted;
- (void)remote_endFitnessMachineConnection;
- (void)remote_endFitnessMachineConnectionForFitnessMachineSessionUUID:(id)d;
- (void)remote_markClientReady;
- (void)remote_registerClient:(id)client;
@end

@implementation HDFitnessMachineConnectionServer

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  fitnessMachineManager = [profile fitnessMachineManager];

  if (fitnessMachineManager)
  {
    v17 = [[HDFitnessMachineConnectionServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
    v18 = fitnessMachineManager;
    fitnessMachineManager = v17->_fitnessMachineManager;
    v17->_fitnessMachineManager = v18;
  }

  else
  {
    fitnessMachineManager = +[NSError hk_featureUnavailableForProfileError];
    if (fitnessMachineManager)
    {
      if (error)
      {
        v20 = fitnessMachineManager;
        *error = fitnessMachineManager;
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
  taskUUID = [(HDFitnessMachineConnectionServer *)self taskUUID];
  [(HDFitnessMachineManager *)fitnessMachineManager clientInvalidatedWithConnectionUUID:taskUUID];
}

- (void)remote_registerClient:(id)client
{
  fitnessMachineManager = self->_fitnessMachineManager;
  clientCopy = client;
  taskUUID = [(HDFitnessMachineConnectionServer *)self taskUUID];
  [(HDFitnessMachineManager *)fitnessMachineManager registerClient:clientCopy withConnectionUUID:taskUUID];
}

- (void)remote_endFitnessMachineConnection
{
  fitnessMachineManager = self->_fitnessMachineManager;
  taskUUID = [(HDFitnessMachineConnectionServer *)self taskUUID];
  [(HDFitnessMachineManager *)fitnessMachineManager endFitnessMachineConnectionWithUUID:taskUUID];
}

- (void)remote_endFitnessMachineConnectionForFitnessMachineSessionUUID:(id)d
{
  fitnessMachineManager = self->_fitnessMachineManager;
  dCopy = d;
  taskUUID = [(HDFitnessMachineConnectionServer *)self taskUUID];
  [(HDFitnessMachineManager *)fitnessMachineManager endFitnessMachineConnectionForFitnessMachineSessionUUID:dCopy withConnectionUUID:taskUUID];
}

- (void)remote_markClientReady
{
  fitnessMachineManager = self->_fitnessMachineManager;
  taskUUID = [(HDFitnessMachineConnectionServer *)self taskUUID];
  [(HDFitnessMachineManager *)fitnessMachineManager markClientReadyWithConnectionUUID:taskUUID];
}

@end