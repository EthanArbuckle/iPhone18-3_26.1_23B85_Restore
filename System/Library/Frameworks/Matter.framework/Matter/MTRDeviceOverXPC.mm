@interface MTRDeviceOverXPC
- (MTRDeviceOverXPC)initWithControllerOverXPC:(id)c deviceID:(id)d xpcConnection:(id)connection;
- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)processingTimeout logCall:(BOOL)call queue:(id)self0 completion:(id)self1;
- (void)_writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value timedWriteTimeout:(id)timeout queue:(id)queue completion:(id)completion;
- (void)deregisterReportHandlersWithQueue:(id)queue completion:(id)completion;
- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)fetchProxyHandleWithQueue:(id)queue completion:(id)completion;
- (void)invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields timedInvokeTimeout:(id)timeout queue:(id)queue completion:(id)completion;
- (void)openCommissioningWindowWithDiscriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion;
- (void)openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion;
- (void)readAttributePaths:(id)paths eventPaths:(id)eventPaths params:(id)params includeDataVersion:(BOOL)version queue:(id)queue completion:(id)completion;
- (void)readAttributesWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params queue:(id)queue completion:(id)completion;
- (void)subscribeToAttributesWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params queue:(id)queue reportHandler:(id)handler subscriptionEstablished:(id)established;
- (void)subscribeWithQueue:(id)queue params:(id)params clusterStateCacheContainer:(id)container attributeReportHandler:(id)handler eventReportHandler:(id)reportHandler errorHandler:(id)errorHandler subscriptionEstablished:(id)established resubscriptionScheduled:(id)self0;
@end

@implementation MTRDeviceOverXPC

- (MTRDeviceOverXPC)initWithControllerOverXPC:(id)c deviceID:(id)d xpcConnection:(id)connection
{
  cCopy = c;
  dCopy = d;
  connectionCopy = connection;
  controllerXPCID = [(MTRDeviceControllerOverXPC *)cCopy controllerXPCID];
  controllerID = self->_controllerID;
  self->_controllerID = controllerXPCID;

  controller = self->_controller;
  self->_controller = cCopy;
  v14 = cCopy;

  nodeID = self->_nodeID;
  self->_nodeID = dCopy;
  v16 = dCopy;

  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = connectionCopy;

  return self;
}

- (void)subscribeWithQueue:(id)queue params:(id)params clusterStateCacheContainer:(id)container attributeReportHandler:(id)handler eventReportHandler:(id)reportHandler errorHandler:(id)errorHandler subscriptionEstablished:(id)established resubscriptionScheduled:(id)self0
{
  queueCopy = queue;
  paramsCopy = params;
  containerCopy = container;
  handlerCopy = handler;
  reportHandlerCopy = reportHandler;
  errorHandlerCopy = errorHandler;
  establishedCopy = established;
  scheduledCopy = scheduled;
  v21 = sub_2393D9044(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_INFO, "Subscribing all attributes... Note that attributeReportHandler, eventReportHandler, and resubscriptionScheduled are not supported.", buf, 2u);
  }

  v31 = queueCopy;
  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_23938699C;
  v32[3] = &unk_278A75390;
  v22 = errorHandlerCopy;
  v37 = v22;
  v23 = containerCopy;
  v33 = v23;
  selfCopy = self;
  v24 = paramsCopy;
  v35 = v24;
  v25 = v31;
  v36 = v25;
  v26 = establishedCopy;
  v38 = v26;
  v27 = MEMORY[0x23EE78590](v32);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v25 completion:v27];
}

- (void)readAttributesWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params queue:(id)queue completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  queueCopy = queue;
  completionCopy = completion;
  v20 = sub_2393D9044(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_INFO, "Reading attribute ...", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_239386FC8;
  v28[3] = &unk_278A75408;
  v21 = completionCopy;
  v34 = v21;
  v28[4] = self;
  v22 = dCopy;
  v29 = v22;
  v23 = iDCopy;
  v30 = v23;
  v24 = attributeIDCopy;
  v31 = v24;
  v25 = paramsCopy;
  v32 = v25;
  v26 = queueCopy;
  v33 = v26;
  v27 = MEMORY[0x23EE78590](v28);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v26 completion:v27];
}

- (void)readAttributePaths:(id)paths eventPaths:(id)eventPaths params:(id)params includeDataVersion:(BOOL)version queue:(id)queue completion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  eventPathsCopy = eventPaths;
  paramsCopy = params;
  queue = queue;
  completionCopy = completion;
  v26 = eventPathsCopy;
  if (!pathsCopy || eventPathsCopy)
  {
    v24 = sub_2393D9044(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "MTRBaseDevice doesn't support reading event paths over XPC", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2393877DC;
    block[3] = &unk_278A72B88;
    v49 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v15 = [pathsCopy count];
    *buf = 0;
    v45 = buf;
    v46 = 0x2020000000;
    v47 = 0;
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v43 = 0;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = pathsCopy;
    v16 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v16)
    {
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = sub_23938786C;
          v32[3] = &unk_278A75430;
          v35 = v42;
          v34 = completionCopy;
          v33 = v28;
          v36 = buf;
          v37 = v15;
          v20 = MEMORY[0x23EE78590](v32);
          endpoint = [v19 endpoint];
          cluster = [v19 cluster];
          attribute = [v19 attribute];
          [(MTRDeviceOverXPC *)self readAttributesWithEndpointID:endpoint clusterID:cluster attributeID:attribute params:paramsCopy queue:queue completion:v20];
        }

        v16 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v16);
    }

    _Block_object_dispose(v42, 8);
    _Block_object_dispose(buf, 8);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value timedWriteTimeout:(id)timeout queue:(id)queue completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  valueCopy = value;
  timeoutCopy = timeout;
  queueCopy = queue;
  completionCopy = completion;
  v20 = sub_2393D9044(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_INFO, "Writing attribute ...", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_239387C44;
  v31[3] = &unk_278A75458;
  v21 = completionCopy;
  v38 = v21;
  v31[4] = self;
  v28 = dCopy;
  v32 = v28;
  v27 = iDCopy;
  v33 = v27;
  v22 = attributeIDCopy;
  v34 = v22;
  v23 = valueCopy;
  v35 = v23;
  v24 = timeoutCopy;
  v36 = v24;
  v25 = queueCopy;
  v37 = v25;
  v26 = MEMORY[0x23EE78590](v31);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v25 completion:v26];
}

- (void)invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields timedInvokeTimeout:(id)timeout queue:(id)queue completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  timeoutCopy = timeout;
  queueCopy = queue;
  completionCopy = completion;
  v20 = sub_2393D9044(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_INFO, "Invoking command ...", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2393882A0;
  v31[3] = &unk_278A75458;
  v21 = completionCopy;
  v38 = v21;
  v31[4] = self;
  v28 = dCopy;
  v32 = v28;
  v27 = iDCopy;
  v33 = v27;
  v22 = commandIDCopy;
  v34 = v22;
  v23 = fieldsCopy;
  v35 = v23;
  v24 = timeoutCopy;
  v36 = v24;
  v25 = queueCopy;
  v37 = v25;
  v26 = MEMORY[0x23EE78590](v31);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v25 completion:v26];
}

- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)processingTimeout logCall:(BOOL)call queue:(id)self0 completion:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  queueCopy = queue;
  completionCopy = completion;
  v25 = completionCopy;
  if (processingTimeoutCopy)
  {
    v26 = sub_2393D9044(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "MTRBaseDevice doesn't support invokes with a server-side processing timeout over XPC", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239388820;
    block[3] = &unk_278A72B88;
    v28 = v25;
    dispatch_async(queueCopy, block);
  }

  else
  {
    [(MTRDeviceOverXPC *)self invokeCommandWithEndpointID:dCopy clusterID:iDCopy commandID:commandIDCopy commandFields:fieldsCopy timedInvokeTimeout:timeoutCopy queue:queueCopy completion:completionCopy];
  }
}

- (void)subscribeToAttributesWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params queue:(id)queue reportHandler:(id)handler subscriptionEstablished:(id)established
{
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  queueCopy = queue;
  handlerCopy = handler;
  establishedCopy = established;
  v19 = sub_2393D9044(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_INFO, "Subscribing attribute ...", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_239388B64;
  v31[3] = &unk_278A754A8;
  v20 = establishedCopy;
  v37 = v20;
  v21 = handlerCopy;
  v38 = v21;
  v31[4] = self;
  v22 = queueCopy;
  v32 = v22;
  v27 = dCopy;
  v33 = v27;
  v23 = iDCopy;
  v34 = v23;
  v24 = attributeIDCopy;
  v35 = v24;
  v25 = paramsCopy;
  v36 = v25;
  v26 = MEMORY[0x23EE78590](v31);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v22 completion:v26];
}

- (void)deregisterReportHandlersWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Deregistering report handlers", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_239389A00;
  v17[3] = &unk_278A73E08;
  v17[4] = self;
  v9 = queueCopy;
  v18 = v9;
  v10 = completionCopy;
  v19 = v10;
  v11 = MEMORY[0x23EE78590](v17);
  controllerID = [(MTRDeviceOverXPC *)self controllerID];

  if (controllerID)
  {
    v11[2](v11);
  }

  else
  {
    controller = [(MTRDeviceOverXPC *)self controller];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_239389B1C;
    v14[3] = &unk_278A754D0;
    v14[4] = self;
    v15 = v10;
    v16 = v11;
    [controller fetchControllerIdWithQueue:v9 completion:v14];
  }
}

- (void)openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion
{
  passcodeCopy = passcode;
  discriminatorCopy = discriminator;
  durationCopy = duration;
  queueCopy = queue;
  completionCopy = completion;
  v16 = sub_2393D9044(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "MTRBaseDevice doesn't support openCommissioningWindowWithSetupPasscode over XPC", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239389D20;
  block[3] = &unk_278A72B88;
  v19 = completionCopy;
  v17 = completionCopy;
  dispatch_async(queueCopy, block);
}

- (void)openCommissioningWindowWithDiscriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion
{
  discriminatorCopy = discriminator;
  durationCopy = duration;
  queueCopy = queue;
  completionCopy = completion;
  v13 = sub_2393D9044(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "MTRBaseDevice doesn't support openCommissioningWindowWithDiscriminator over XPC", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239389F00;
  block[3] = &unk_278A72B88;
  v16 = completionCopy;
  v14 = completionCopy;
  dispatch_async(queueCopy, block);
}

- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v12 = sub_2393D9044(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "Downloading log ...", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23938A118;
  v16[3] = &unk_278A75520;
  v13 = completionCopy;
  v18 = v13;
  typeCopy = type;
  v16[4] = self;
  timeoutCopy = timeout;
  v14 = queueCopy;
  v17 = v14;
  v15 = MEMORY[0x23EE78590](v16);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v14 completion:v15];
}

- (void)fetchProxyHandleWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  controllerID = [(MTRDeviceOverXPC *)self controllerID];

  if (controllerID)
  {
    xpcConnection = self->_xpcConnection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23938A630;
    v14[3] = &unk_278A75548;
    v15 = queueCopy;
    v16 = completionCopy;
    [(MTRDeviceControllerXPCConnection *)xpcConnection getProxyHandleWithCompletion:v14];
    v10 = &v15;
  }

  else
  {
    controller = [(MTRDeviceOverXPC *)self controller];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23938A7FC;
    v12[3] = &unk_278A75570;
    v12[4] = self;
    v13 = completionCopy;
    [controller fetchControllerIdWithQueue:queueCopy completion:v12];
    v10 = &v13;
  }
}

@end