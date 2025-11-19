@interface MTRClusterStateCacheContainer
- (MTRClusterStateCacheContainer)init;
- (MTRDeviceControllerXPCConnection)xpcConnection;
- (void)_readKnownCachedAttributeWithEndpointID:(unsigned __int16)a3 clusterID:(unsigned int)a4 attributeID:(unsigned int)a5 queue:(id)a6 completion:(id)a7;
- (void)readAttributesWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion;
- (void)setXPCConnection:(id)a3 controllerID:(id)a4 deviceID:(id)a5;
@end

@implementation MTRClusterStateCacheContainer

- (MTRClusterStateCacheContainer)init
{
  v6.receiver = self;
  v6.super_class = MTRClusterStateCacheContainer;
  v2 = [(MTRClusterStateCacheContainer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    baseDevice = v2->_baseDevice;
    v2->_cppClusterStateCache = 0;
    v2->_baseDevice = 0;

    v3->_shouldUseXPC = 0;
  }

  return v3;
}

- (void)setXPCConnection:(id)a3 controllerID:(id)a4 deviceID:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  [(MTRClusterStateCacheContainer *)self setXpcConnection:v10];
  [(MTRClusterStateCacheContainer *)self setXpcControllerID:v8];
  [(MTRClusterStateCacheContainer *)self setDeviceID:v9];
  [(MTRClusterStateCacheContainer *)self setShouldUseXPC:1];
}

- (void)readAttributesWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion
{
  v12 = endpointID;
  v13 = clusterID;
  v14 = attributeID;
  v15 = queue;
  v16 = completion;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_239293ECC;
  v46[3] = &unk_278A74350;
  v17 = v15;
  v47 = v17;
  v18 = v16;
  v48 = v18;
  v19 = MEMORY[0x23EE78590](v46);
  if ([(MTRClusterStateCacheContainer *)self shouldUseXPC])
  {
    v20 = [(MTRClusterStateCacheContainer *)self xpcConnection];
    if (v20)
    {
      v21 = [(MTRClusterStateCacheContainer *)self xpcControllerID];
      v22 = [(MTRClusterStateCacheContainer *)self deviceID];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_239293FB8;
      v38[3] = &unk_278A743A0;
      v23 = v21;
      v39 = v23;
      v40 = v22;
      v41 = v12;
      v42 = v13;
      v43 = v14;
      v44 = v19;
      v24 = v22;
      [v20 getProxyHandleWithCompletion:v38];
    }

    else
    {
      v28 = sub_2393D9044(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v28, OS_LOG_TYPE_ERROR, "Attribute cache read failed: MTRDeviceController was already disposed", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
      (v19)[2](v19, 0, v23);
    }
  }

  else
  {
    v25 = [(MTRClusterStateCacheContainer *)self baseDevice];

    if (v25)
    {
      v26 = [(MTRClusterStateCacheContainer *)self baseDevice];
      v27 = [v26 deviceController];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = sub_23929424C;
      v32[3] = &unk_278A743C8;
      v33 = v12;
      v34 = v13;
      v37 = v19;
      v35 = self;
      v36 = v14;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_239294C90;
      v30[3] = &unk_278A74170;
      v31 = v37;
      [v27 asyncDispatchToMatterQueue:v32 errorHandler:v30];

      v20 = v33;
    }

    else
    {
      v29 = sub_2393D9044(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "Error: No attribute cache available to read from", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
      (v19)[2](v19, 0, v20);
    }
  }
}

- (void)_readKnownCachedAttributeWithEndpointID:(unsigned __int16)a3 clusterID:(unsigned int)a4 attributeID:(unsigned int)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a6;
  v13 = a7;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_239294F2C;
  v28[3] = &unk_278A743F0;
  v14 = v12;
  v29 = v14;
  v15 = v13;
  v30 = v15;
  v16 = MEMORY[0x23EE78590](v28);
  v17 = [(MTRClusterStateCacheContainer *)self baseDevice];

  if (v17)
  {
    v18 = [(MTRClusterStateCacheContainer *)self baseDevice];
    v19 = [v18 deviceController];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_239295018;
    v23[3] = &unk_278A74418;
    v23[4] = self;
    v24 = v16;
    v27 = a3;
    v25 = a4;
    v26 = a5;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_239295260;
    v21[3] = &unk_278A74170;
    v22 = v24;
    [v19 asyncDispatchToMatterQueue:v23 errorHandler:v21];
  }

  else
  {
    v20 = sub_23921C1E4(MTRError, 0xD800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRClusterStateCacheContainer.mm");
    (v16)[2](v16, 0, v20);
  }
}

- (MTRDeviceControllerXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

@end