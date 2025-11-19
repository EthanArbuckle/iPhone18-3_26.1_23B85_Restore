@interface MTRDeviceOverXPC
- (MTRDeviceOverXPC)initWithControllerOverXPC:(id)a3 deviceID:(id)a4 xpcConnection:(id)a5;
- (void)_invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 timedInvokeTimeout:(id)a7 serverSideProcessingTimeout:(id)a8 logCall:(BOOL)a9 queue:(id)a10 completion:(id)a11;
- (void)_writeAttributeWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 value:(id)a6 timedWriteTimeout:(id)a7 queue:(id)a8 completion:(id)a9;
- (void)deregisterReportHandlersWithQueue:(id)a3 completion:(id)a4;
- (void)downloadLogOfType:(int64_t)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6;
- (void)fetchProxyHandleWithQueue:(id)a3 completion:(id)a4;
- (void)invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 timedInvokeTimeout:(id)a7 queue:(id)a8 completion:(id)a9;
- (void)openCommissioningWindowWithDiscriminator:(id)a3 duration:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)openCommissioningWindowWithSetupPasscode:(id)a3 discriminator:(id)a4 duration:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)readAttributePaths:(id)a3 eventPaths:(id)a4 params:(id)a5 includeDataVersion:(BOOL)a6 queue:(id)a7 completion:(id)a8;
- (void)readAttributesWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 params:(id)a6 queue:(id)a7 completion:(id)a8;
- (void)subscribeToAttributesWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 params:(id)a6 queue:(id)a7 reportHandler:(id)a8 subscriptionEstablished:(id)a9;
- (void)subscribeWithQueue:(id)a3 params:(id)a4 clusterStateCacheContainer:(id)a5 attributeReportHandler:(id)a6 eventReportHandler:(id)a7 errorHandler:(id)a8 subscriptionEstablished:(id)a9 resubscriptionScheduled:(id)a10;
@end

@implementation MTRDeviceOverXPC

- (MTRDeviceOverXPC)initWithControllerOverXPC:(id)a3 deviceID:(id)a4 xpcConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MTRDeviceControllerOverXPC *)v8 controllerXPCID];
  controllerID = self->_controllerID;
  self->_controllerID = v11;

  controller = self->_controller;
  self->_controller = v8;
  v14 = v8;

  nodeID = self->_nodeID;
  self->_nodeID = v9;
  v16 = v9;

  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v10;

  return self;
}

- (void)subscribeWithQueue:(id)a3 params:(id)a4 clusterStateCacheContainer:(id)a5 attributeReportHandler:(id)a6 eventReportHandler:(id)a7 errorHandler:(id)a8 subscriptionEstablished:(id)a9 resubscriptionScheduled:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v30 = a6;
  v29 = a7;
  v19 = a8;
  v20 = a9;
  v28 = a10;
  v21 = sub_2393D9044(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_INFO, "Subscribing all attributes... Note that attributeReportHandler, eventReportHandler, and resubscriptionScheduled are not supported.", buf, 2u);
  }

  v31 = v16;
  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_23938699C;
  v32[3] = &unk_278A75390;
  v22 = v19;
  v37 = v22;
  v23 = v18;
  v33 = v23;
  v34 = self;
  v24 = v17;
  v35 = v24;
  v25 = v31;
  v36 = v25;
  v26 = v20;
  v38 = v26;
  v27 = MEMORY[0x23EE78590](v32);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v25 completion:v27];
}

- (void)readAttributesWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 params:(id)a6 queue:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
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
  v21 = v19;
  v34 = v21;
  v28[4] = self;
  v22 = v14;
  v29 = v22;
  v23 = v15;
  v30 = v23;
  v24 = v16;
  v31 = v24;
  v25 = v17;
  v32 = v25;
  v26 = v18;
  v33 = v26;
  v27 = MEMORY[0x23EE78590](v28);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v26 completion:v27];
}

- (void)readAttributePaths:(id)a3 eventPaths:(id)a4 params:(id)a5 includeDataVersion:(BOOL)a6 queue:(id)a7 completion:(id)a8
{
  v51 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v29 = a5;
  queue = a7;
  v31 = a8;
  v26 = v14;
  if (!v13 || v14)
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
    v49 = v31;
    dispatch_async(queue, block);
  }

  else
  {
    v15 = [v13 count];
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
    obj = v13;
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
          v34 = v31;
          v33 = v28;
          v36 = buf;
          v37 = v15;
          v20 = MEMORY[0x23EE78590](v32);
          v21 = [v19 endpoint];
          v22 = [v19 cluster];
          v23 = [v19 attribute];
          [(MTRDeviceOverXPC *)self readAttributesWithEndpointID:v21 clusterID:v22 attributeID:v23 params:v29 queue:queue completion:v20];
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

- (void)_writeAttributeWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 value:(id)a6 timedWriteTimeout:(id)a7 queue:(id)a8 completion:(id)a9
{
  v14 = a3;
  v30 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
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
  v21 = v19;
  v38 = v21;
  v31[4] = self;
  v28 = v14;
  v32 = v28;
  v27 = v30;
  v33 = v27;
  v22 = v15;
  v34 = v22;
  v23 = v16;
  v35 = v23;
  v24 = v17;
  v36 = v24;
  v25 = v18;
  v37 = v25;
  v26 = MEMORY[0x23EE78590](v31);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v25 completion:v26];
}

- (void)invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 timedInvokeTimeout:(id)a7 queue:(id)a8 completion:(id)a9
{
  v14 = a3;
  v30 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
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
  v21 = v19;
  v38 = v21;
  v31[4] = self;
  v28 = v14;
  v32 = v28;
  v27 = v30;
  v33 = v27;
  v22 = v15;
  v34 = v22;
  v23 = v16;
  v35 = v23;
  v24 = v17;
  v36 = v24;
  v25 = v18;
  v37 = v25;
  v26 = MEMORY[0x23EE78590](v31);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v25 completion:v26];
}

- (void)_invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 timedInvokeTimeout:(id)a7 serverSideProcessingTimeout:(id)a8 logCall:(BOOL)a9 queue:(id)a10 completion:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v25 = v24;
  if (v22)
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
    dispatch_async(v23, block);
  }

  else
  {
    [(MTRDeviceOverXPC *)self invokeCommandWithEndpointID:v17 clusterID:v18 commandID:v19 commandFields:v20 timedInvokeTimeout:v21 queue:v23 completion:v24];
  }
}

- (void)subscribeToAttributesWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 params:(id)a6 queue:(id)a7 reportHandler:(id)a8 subscriptionEstablished:(id)a9
{
  v29 = a3;
  v30 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
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
  v20 = v18;
  v37 = v20;
  v21 = v17;
  v38 = v21;
  v31[4] = self;
  v22 = v16;
  v32 = v22;
  v27 = v29;
  v33 = v27;
  v23 = v30;
  v34 = v23;
  v24 = v14;
  v35 = v24;
  v25 = v15;
  v36 = v25;
  v26 = MEMORY[0x23EE78590](v31);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v22 completion:v26];
}

- (void)deregisterReportHandlersWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v9 = v6;
  v18 = v9;
  v10 = v7;
  v19 = v10;
  v11 = MEMORY[0x23EE78590](v17);
  v12 = [(MTRDeviceOverXPC *)self controllerID];

  if (v12)
  {
    v11[2](v11);
  }

  else
  {
    v13 = [(MTRDeviceOverXPC *)self controller];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_239389B1C;
    v14[3] = &unk_278A754D0;
    v14[4] = self;
    v15 = v10;
    v16 = v11;
    [v13 fetchControllerIdWithQueue:v9 completion:v14];
  }
}

- (void)openCommissioningWindowWithSetupPasscode:(id)a3 discriminator:(id)a4 duration:(id)a5 queue:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
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
  v19 = v15;
  v17 = v15;
  dispatch_async(v14, block);
}

- (void)openCommissioningWindowWithDiscriminator:(id)a3 duration:(id)a4 queue:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
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
  v16 = v12;
  v14 = v12;
  dispatch_async(v11, block);
}

- (void)downloadLogOfType:(int64_t)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
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
  v13 = v11;
  v18 = v13;
  v19 = a3;
  v16[4] = self;
  v20 = a4;
  v14 = v10;
  v17 = v14;
  v15 = MEMORY[0x23EE78590](v16);
  [(MTRDeviceOverXPC *)self fetchProxyHandleWithQueue:v14 completion:v15];
}

- (void)fetchProxyHandleWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTRDeviceOverXPC *)self controllerID];

  if (v8)
  {
    xpcConnection = self->_xpcConnection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23938A630;
    v14[3] = &unk_278A75548;
    v15 = v6;
    v16 = v7;
    [(MTRDeviceControllerXPCConnection *)xpcConnection getProxyHandleWithCompletion:v14];
    v10 = &v15;
  }

  else
  {
    v11 = [(MTRDeviceOverXPC *)self controller];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23938A7FC;
    v12[3] = &unk_278A75570;
    v12[4] = self;
    v13 = v7;
    [v11 fetchControllerIdWithQueue:v6 completion:v12];
    v10 = &v13;
  }
}

@end