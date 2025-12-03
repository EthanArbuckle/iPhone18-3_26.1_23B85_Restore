@interface ARTechniqueService
- (ARTechniqueService)initWithConnection:(id)connection;
- (ARTechniqueService)initWithConnection:(id)connection exportedInterface:(id)interface remoteObjectInterface:(id)objectInterface;
- (id)processData:(id)data;
- (void)_initCommon:(id)common;
- (void)captureBehaviorWithReply:(id)reply;
- (void)interruptionHandler;
- (void)invalidationHandler;
- (void)isActiveWithReply:(id)reply;
- (void)numberOfActiveConnectionsWithReply:(id)reply;
- (void)processData:(id)data reply:(id)reply;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
- (void)requiredSensorDataTypesWithReply:(id)reply;
- (void)requiredTimeIntervalWithReply:(id)reply;
- (void)resultDataClassesWithReply:(id)reply;
@end

@implementation ARTechniqueService

- (ARTechniqueService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = ARRemoteTechniqueServiceInterfaceWithProtocol();
  v6 = ARRemoteTechniqueClientInterfaceWithProtocol();
  v9.receiver = self;
  v9.super_class = ARTechniqueService;
  v7 = [(ARDaemonService *)&v9 initWithConnection:connectionCopy exportedInterface:v5 remoteObjectInterface:v6];

  if (v7)
  {
    [(ARTechniqueService *)v7 _initCommon:connectionCopy];
  }

  return v7;
}

- (ARTechniqueService)initWithConnection:(id)connection exportedInterface:(id)interface remoteObjectInterface:(id)objectInterface
{
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = ARTechniqueService;
  v9 = [(ARDaemonService *)&v12 initWithConnection:connectionCopy exportedInterface:interface remoteObjectInterface:objectInterface];
  v10 = v9;
  if (v9)
  {
    [(ARTechniqueService *)v9 _initCommon:connectionCopy];
  }

  return v10;
}

- (void)_initCommon:(id)common
{
  remoteObjectProxy = [common remoteObjectProxy];
  clientProxy = self->_clientProxy;
  self->_clientProxy = remoteObjectProxy;

  [(ARDaemonService *)self setActive:0];
}

- (void)invalidationHandler
{
  v2.receiver = self;
  v2.super_class = ARTechniqueService;
  [(ARDaemonService *)&v2 invalidationHandler];
}

- (void)interruptionHandler
{
  v2.receiver = self;
  v2.super_class = ARTechniqueService;
  [(ARDaemonService *)&v2 interruptionHandler];
}

- (void)isActiveWithReply:(id)reply
{
  replyCopy = reply;
  (*(reply + 2))(replyCopy, [(ARDaemonService *)self isActive], 0);
}

- (void)captureBehaviorWithReply:(id)reply
{
  technique = self->_technique;
  replyCopy = reply;
  replyCopy[2](replyCopy, [(ARTechnique *)technique captureBehavior], 0);
}

- (void)numberOfActiveConnectionsWithReply:(id)reply
{
  replyCopy = reply;
  dataSource = [(ARDaemonService *)self dataSource];
  v5 = [dataSource numberOfActiveConnectionsForService:self];

  replyCopy[2](replyCopy, v5, 0);
}

- (id)processData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([(ARDaemonService *)self isActive])
  {
    v5 = [(ARTechnique *)self->_technique processData:dataCopy];
  }

  else
  {
    v6 = _ARLogDaemon_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v12 = 138543874;
      v13 = v8;
      v14 = 2048;
      selfCopy = self;
      v16 = 2112;
      v17 = dataCopy;
      _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Service not active; skipping processing of data: %@", &v12, 0x20u);
    }

    v5 = dataCopy;
  }

  v9 = v5;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)processData:(id)data reply:(id)reply
{
  replyCopy = reply;
  v7 = [(ARTechniqueService *)self processData:data];
  replyCopy[2](replyCopy, v7, 0);
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([(ARDaemonService *)self isActive])
  {
    [(ARTechnique *)self->_technique requestResultDataAtTimestamp:contextCopy context:timestamp];
  }

  else
  {
    v7 = _ARLogDaemon_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138543874;
      v12 = v9;
      v13 = 2048;
      selfCopy = self;
      v15 = 2048;
      timestampCopy = timestamp;
      _os_log_impl(&dword_23D391000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Service not active; skipping request for result data at timestamp: %f", &v11, 0x20u);
    }

    [(ARRemoteTechniqueClient *)self->_clientProxy techniqueDidOutputResultData:MEMORY[0x277CBEBF8] timestamp:contextCopy context:timestamp];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requiredSensorDataTypesWithReply:(id)reply
{
  technique = self->_technique;
  replyCopy = reply;
  replyCopy[2](replyCopy, [(ARTechnique *)technique requiredSensorDataTypes], 0);
}

- (void)requiredTimeIntervalWithReply:(id)reply
{
  technique = self->_technique;
  replyCopy = reply;
  [(ARTechnique *)technique requiredTimeInterval];
  replyCopy[2](replyCopy, 0);
}

- (void)resultDataClassesWithReply:(id)reply
{
  technique = self->_technique;
  replyCopy = reply;
  resultDataClasses = [(ARTechnique *)technique resultDataClasses];
  v5 = [resultDataClasses ar_map:&__block_literal_global_1];
  replyCopy[2](replyCopy, v5, 0);
}

@end