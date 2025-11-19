@interface ARTechniqueService
- (ARTechniqueService)initWithConnection:(id)a3;
- (ARTechniqueService)initWithConnection:(id)a3 exportedInterface:(id)a4 remoteObjectInterface:(id)a5;
- (id)processData:(id)a3;
- (void)_initCommon:(id)a3;
- (void)captureBehaviorWithReply:(id)a3;
- (void)interruptionHandler;
- (void)invalidationHandler;
- (void)isActiveWithReply:(id)a3;
- (void)numberOfActiveConnectionsWithReply:(id)a3;
- (void)processData:(id)a3 reply:(id)a4;
- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4;
- (void)requiredSensorDataTypesWithReply:(id)a3;
- (void)requiredTimeIntervalWithReply:(id)a3;
- (void)resultDataClassesWithReply:(id)a3;
@end

@implementation ARTechniqueService

- (ARTechniqueService)initWithConnection:(id)a3
{
  v4 = a3;
  v5 = ARRemoteTechniqueServiceInterfaceWithProtocol();
  v6 = ARRemoteTechniqueClientInterfaceWithProtocol();
  v9.receiver = self;
  v9.super_class = ARTechniqueService;
  v7 = [(ARDaemonService *)&v9 initWithConnection:v4 exportedInterface:v5 remoteObjectInterface:v6];

  if (v7)
  {
    [(ARTechniqueService *)v7 _initCommon:v4];
  }

  return v7;
}

- (ARTechniqueService)initWithConnection:(id)a3 exportedInterface:(id)a4 remoteObjectInterface:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = ARTechniqueService;
  v9 = [(ARDaemonService *)&v12 initWithConnection:v8 exportedInterface:a4 remoteObjectInterface:a5];
  v10 = v9;
  if (v9)
  {
    [(ARTechniqueService *)v9 _initCommon:v8];
  }

  return v10;
}

- (void)_initCommon:(id)a3
{
  v4 = [a3 remoteObjectProxy];
  clientProxy = self->_clientProxy;
  self->_clientProxy = v4;

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

- (void)isActiveWithReply:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(ARDaemonService *)self isActive], 0);
}

- (void)captureBehaviorWithReply:(id)a3
{
  technique = self->_technique;
  v4 = a3;
  v4[2](v4, [(ARTechnique *)technique captureBehavior], 0);
}

- (void)numberOfActiveConnectionsWithReply:(id)a3
{
  v6 = a3;
  v4 = [(ARDaemonService *)self dataSource];
  v5 = [v4 numberOfActiveConnectionsForService:self];

  v6[2](v6, v5, 0);
}

- (id)processData:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ARDaemonService *)self isActive])
  {
    v5 = [(ARTechnique *)self->_technique processData:v4];
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
      v15 = self;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Service not active; skipping processing of data: %@", &v12, 0x20u);
    }

    v5 = v4;
  }

  v9 = v5;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)processData:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(ARTechniqueService *)self processData:a3];
  v6[2](v6, v7, 0);
}

- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(ARDaemonService *)self isActive])
  {
    [(ARTechnique *)self->_technique requestResultDataAtTimestamp:v6 context:a3];
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
      v14 = self;
      v15 = 2048;
      v16 = a3;
      _os_log_impl(&dword_23D391000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Service not active; skipping request for result data at timestamp: %f", &v11, 0x20u);
    }

    [(ARRemoteTechniqueClient *)self->_clientProxy techniqueDidOutputResultData:MEMORY[0x277CBEBF8] timestamp:v6 context:a3];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requiredSensorDataTypesWithReply:(id)a3
{
  technique = self->_technique;
  v4 = a3;
  v4[2](v4, [(ARTechnique *)technique requiredSensorDataTypes], 0);
}

- (void)requiredTimeIntervalWithReply:(id)a3
{
  technique = self->_technique;
  v4 = a3;
  [(ARTechnique *)technique requiredTimeInterval];
  v4[2](v4, 0);
}

- (void)resultDataClassesWithReply:(id)a3
{
  technique = self->_technique;
  v4 = a3;
  v6 = [(ARTechnique *)technique resultDataClasses];
  v5 = [v6 ar_map:&__block_literal_global_1];
  v4[2](v4, v5, 0);
}

@end