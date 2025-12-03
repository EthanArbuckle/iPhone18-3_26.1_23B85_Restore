@interface ARSensorService
- (ARSensorService)initWithConnection:(id)connection;
- (void)providedDataTypesWithReply:(id)reply;
@end

@implementation ARSensorService

- (ARSensorService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = ARRemoteSensorServiceInterfaceWithProtocol();
  v6 = ARRemoteSensorClientInterfaceWithProtocol();
  v11.receiver = self;
  v11.super_class = ARSensorService;
  v7 = [(ARDaemonService *)&v11 initWithConnection:connectionCopy exportedInterface:v5 remoteObjectInterface:v6];

  if (v7)
  {
    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    clientProxy = v7->_clientProxy;
    v7->_clientProxy = remoteObjectProxy;
  }

  return v7;
}

- (void)providedDataTypesWithReply:(id)reply
{
  sensor = self->_sensor;
  replyCopy = reply;
  replyCopy[2](replyCopy, [(ARSensor *)sensor providedDataTypes], 0);
}

@end