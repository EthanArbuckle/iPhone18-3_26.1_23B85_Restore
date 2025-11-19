@interface ARSensorService
- (ARSensorService)initWithConnection:(id)a3;
- (void)providedDataTypesWithReply:(id)a3;
@end

@implementation ARSensorService

- (ARSensorService)initWithConnection:(id)a3
{
  v4 = a3;
  v5 = ARRemoteSensorServiceInterfaceWithProtocol();
  v6 = ARRemoteSensorClientInterfaceWithProtocol();
  v11.receiver = self;
  v11.super_class = ARSensorService;
  v7 = [(ARDaemonService *)&v11 initWithConnection:v4 exportedInterface:v5 remoteObjectInterface:v6];

  if (v7)
  {
    v8 = [v4 remoteObjectProxy];
    clientProxy = v7->_clientProxy;
    v7->_clientProxy = v8;
  }

  return v7;
}

- (void)providedDataTypesWithReply:(id)a3
{
  sensor = self->_sensor;
  v4 = a3;
  v4[2](v4, [(ARSensor *)sensor providedDataTypes], 0);
}

@end