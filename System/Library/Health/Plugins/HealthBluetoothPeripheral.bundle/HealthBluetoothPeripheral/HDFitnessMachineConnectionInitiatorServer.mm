@interface HDFitnessMachineConnectionInitiatorServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
- (void)remote_forbidConnectionForFitnessMachineSessionUUID:(id)d;
- (void)remote_permitConnectionForFitnessMachineSessionUUID:(id)d activityType:(unint64_t)type;
- (void)remote_registerConnectionInitiatorClient:(id)client;
- (void)remote_simulateAccept;
- (void)remote_simulateTapWithFitnessMachineType:(unint64_t)type;
@end

@implementation HDFitnessMachineConnectionInitiatorServer

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  fitnessMachineManager = [profile fitnessMachineManager];
  connectionInitiatorServer = [fitnessMachineManager connectionInitiatorServer];

  if (connectionInitiatorServer)
  {
    v18 = [[HDFitnessMachineConnectionInitiatorServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
    v19 = connectionInitiatorServer;
    connectionInitiatorServer = v18->_connectionInitiatorServer;
    v18->_connectionInitiatorServer = v19;
  }

  else
  {
    connectionInitiatorServer = +[NSError hk_featureUnavailableForProfileError];
    if (connectionInitiatorServer)
    {
      if (error)
      {
        v21 = connectionInitiatorServer;
        *error = connectionInitiatorServer;
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

- (void)remote_forbidConnectionForFitnessMachineSessionUUID:(id)d
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
  dCopy = d;
  [(HDFitnessMachineConnectionInitiatorServer *)self taskUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_51E0() forbidConnectionForFitnessMachineSessionUUID:? withConnectionUUID:?];
}

- (void)remote_permitConnectionForFitnessMachineSessionUUID:(id)d activityType:(unint64_t)type
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
  dCopy = d;
  taskUUID = [(HDFitnessMachineConnectionInitiatorServer *)self taskUUID];
  [(HDFitnessMachineConnectionInitiatorProtocol *)v8 permitConnectionForFitnessMachineSessionUUID:dCopy activityType:type withConnectionUUID:taskUUID];
}

- (void)remote_registerConnectionInitiatorClient:(id)client
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
  clientCopy = client;
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

- (void)remote_simulateTapWithFitnessMachineType:(unint64_t)type
{
  if (self)
  {
    self = self->_connectionInitiatorServer;
  }

  [(HDFitnessMachineConnectionInitiatorServer *)self simulateTapWithFitnessMachineType:type];
}

@end