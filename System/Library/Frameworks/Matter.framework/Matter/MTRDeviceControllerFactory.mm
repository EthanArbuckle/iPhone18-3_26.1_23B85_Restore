@interface MTRDeviceControllerFactory
+ (MTRDeviceControllerFactory)sharedInstance;
+ (void)initialize;
- (MTRDeviceController)createControllerOnExistingFabric:(MTRDeviceControllerStartupParams *)startupParams error:(NSError *)error;
- (MTRDeviceController)createControllerOnNewFabric:(MTRDeviceControllerStartupParams *)startupParams error:(NSError *)error;
- (MTRDeviceControllerFactory)init;
- (NSArray)knownFabrics;
- (id).cxx_construct;
- (id)accessGrantsForFabricIndex:(unsigned __int8)index clusterPath:(id)path;
- (id)neededReadPrivilegeForClusterID:(id)d attributeID:(id)iD;
- (void)dealloc;
- (void)preWarmCommissioningSession;
- (void)stopControllerFactory;
@end

@implementation MTRDeviceControllerFactory

+ (void)initialize
{
  if (qword_27DF77530 != -1)
  {
    sub_23952ADC0();
  }
}

+ (MTRDeviceControllerFactory)sharedInstance
{
  if (qword_27DF77580 != -1)
  {
    sub_23952B9F8();
  }

  v3 = qword_27DF77578;

  return v3;
}

- (MTRDeviceControllerFactory)init
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = MTRDeviceControllerFactory;
  v2 = [(MTRDeviceControllerFactory *)&v14 init];
  v3 = v2;
  v4 = v2;
  if (v2)
  {
    if (qword_27DF7BD08 != -1)
    {
      sub_23952BA0C(v2);
    }

    v5 = sub_239479C70(&byte_27DF7BCA8);
    if (qword_27DF7BD08 != -1)
    {
      sub_23952BA0C(v5);
    }

    objc_storeStrong(&v3->_chipWorkQueue, qword_27DF7BCD0);
    v4->_controllerFactory = sub_238DC7780();
    sub_2394AEAF0(&v3->_groupDataProvider, &v3->_groupStorageDelegate);
    v4->_groupDataProvider.mSessionKeystore = &v3->_sessionKeystore;
    if (!(*(v4->_groupDataProvider._vptr$GroupDataProvider + 2))(&v3->_groupDataProvider))
    {
      v4->_controllersLock._os_unfair_lock_opaque = 0;
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      controllers = v4->_controllers;
      v4->_controllers = v6;

      v4->_serverEndpointsLock._os_unfair_lock_opaque = 0;
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      serverEndpoints = v4->_serverEndpoints;
      v4->_serverEndpoints = v8;

      operator new();
    }

    v12 = sub_2393D9044(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_2393C9138();
      *buf = 136315138;
      v16 = v13;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "GroupDataProviderImpl::Init() failed: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    abort();
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)dealloc
{
  [(MTRDeviceControllerFactory *)self stopControllerFactory];
  (*(self->_groupDataProvider._vptr$GroupDataProvider + 3))();
  v3.receiver = self;
  v3.super_class = MTRDeviceControllerFactory;
  [(MTRDeviceControllerFactory *)&v3 dealloc];
}

- (NSArray)knownFabrics
{
  sub_238DC7868(self);
  if (self->_running)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_238DC79F4;
    v15 = sub_238DC7A04;
    v16 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    chipWorkQueue = self->_chipWorkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238DC7A0C;
    block[3] = &unk_278A722C0;
    block[4] = self;
    block[5] = &v11;
    block[6] = &v7;
    dispatch_sync(chipWorkQueue, block);
    if (*(v8 + 24))
    {
      v4 = v12[5];
    }

    else
    {
      v4 = 0;
    }

    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)stopControllerFactory
{
  v15 = *MEMORY[0x277D85DE8];
  sub_238DC7868(self);
  sub_238DC7F40(self, @"Controller Factory Stop");
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableArray *)self->_controllers copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v6++) shutdown];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  chipWorkQueue = self->_chipWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238DC86EC;
  block[3] = &unk_278A72320;
  block[4] = self;
  dispatch_sync(chipWorkQueue, block);
  v8 = *MEMORY[0x277D85DE8];
}

- (MTRDeviceController)createControllerOnExistingFabric:(MTRDeviceControllerStartupParams *)startupParams error:(NSError *)error
{
  v6 = startupParams;
  sub_238DC7868(self);
  if (self->_usingPerControllerStorage)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Can't createControllerOnExistingFabric when using per-controller data store", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x29500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm");
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    operationalCertificate = [(MTRDeviceControllerStartupParams *)v6 operationalCertificate];
    rootCertificate = [(MTRDeviceControllerStartupParams *)v6 rootCertificate];
    v11 = sub_238DC9B0C(self, operationalCertificate, rootCertificate);

    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v12 = [MTRDeviceController_Concrete alloc];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_238DC9D2C;
      v14[3] = &unk_278A72380;
      v14[4] = self;
      v15 = v6;
      v8 = sub_238DC871C(&self->super.isa, v12, v15, v14, error);
    }
  }

  return v8;
}

- (MTRDeviceController)createControllerOnNewFabric:(MTRDeviceControllerStartupParams *)startupParams error:(NSError *)error
{
  v6 = startupParams;
  sub_238DC7868(self);
  vendorID = [(MTRDeviceControllerStartupParams *)v6 vendorID];

  if (vendorID)
  {
    intermediateCertificate = [(MTRDeviceControllerStartupParams *)v6 intermediateCertificate];
    if (!intermediateCertificate || ([(MTRDeviceControllerStartupParams *)v6 rootCertificate], v9 = objc_claimAutoreleasedReturnValue(), v9, intermediateCertificate, v9))
    {
      v10 = [MTRDeviceController_Concrete alloc];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_238DCA6A0;
      v16[3] = &unk_278A72380;
      v16[4] = self;
      v17 = v6;
      v11 = sub_238DC871C(&self->super.isa, v10, v17, v16, error);

      goto LABEL_19;
    }

    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Must provide a root certificate when using an intermediate certificate", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (error)
    {
      v13 = sub_23921C1E4(MTRError, 0x2E30000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm");
      goto LABEL_17;
    }
  }

  else
  {
    v12 = sub_2393D9044(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Must provide vendor id when starting controller on new fabric", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (error)
    {
      v13 = sub_23921C1E4(MTRError, 0x2DB0000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm");
LABEL_17:
      v11 = 0;
      *error = v13;
      goto LABEL_19;
    }
  }

  v11 = 0;
LABEL_19:

  return v11;
}

- (void)preWarmCommissioningSession
{
  chipWorkQueue = self->_chipWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238DCA8B8;
  block[3] = &unk_278A72320;
  block[4] = self;
  dispatch_async(chipWorkQueue, block);
}

- (id)accessGrantsForFabricIndex:(unsigned __int8)index clusterPath:(id)path
{
  indexCopy = index;
  pathCopy = path;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm", 1056);
  endpoint = [pathCopy endpoint];
  endpointID = [(MTRServerEndpoint *)self->_otaProviderEndpoint endpointID];
  v9 = [endpoint isEqual:endpointID];

  if (v9)
  {
    otaProviderEndpoint = self->_otaProviderEndpoint;
    cluster = [pathCopy cluster];
    v12 = [(MTRServerEndpoint *)otaProviderEndpoint matterAccessGrantsForCluster:cluster];
LABEL_5:
    v14 = v12;
    goto LABEL_6;
  }

  v13 = sub_238DCB13C(self, indexCopy, 0, 1);
  cluster = v13;
  if (v13)
  {
    v12 = [v13 accessGrantsForClusterPath:pathCopy];
    goto LABEL_5;
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_6:

  return v14;
}

- (id)neededReadPrivilegeForClusterID:(id)d attributeID:(id)iD
{
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm", 1078);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  selfCopy = self;
  obj = [(MTRServerEndpoint *)self->_otaProviderEndpoint serverClusters];
  v8 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v8)
  {
    v28 = *v39;
    do
    {
      v27 = v8;
      for (i = 0; i != v27; ++i)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        clusterID = [v10 clusterID];
        v12 = [clusterID isEqual:dCopy];

        if (v12)
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          attributes = [v10 attributes];
          v14 = [attributes countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v14)
          {
            v15 = *v35;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v35 != v15)
                {
                  objc_enumerationMutation(attributes);
                }

                v17 = *(*(&v34 + 1) + 8 * j);
                attributeID = [v17 attributeID];
                v19 = [attributeID isEqual:iDCopy];

                if (v19)
                {
                  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v17, "requiredReadPrivilege")}];

                  goto LABEL_28;
                }
              }

              v14 = [attributes countByEnumeratingWithState:&v34 objects:v43 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v8);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = sub_238DC9394(selfCopy);
  v20 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v20)
  {
    v21 = *v31;
LABEL_20:
    v22 = 0;
    while (1)
    {
      if (*v31 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = [*(*(&v30 + 1) + 8 * v22) neededReadPrivilegeForClusterID:dCopy attributeID:iDCopy];
      if (v23)
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v20)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:
    v23 = 0;
  }

LABEL_28:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id).cxx_construct
{
  self->_certificateValidityPolicy._vptr$CertificateValidityPolicy = &unk_284BA8E98;
  self->_sessionKeystore._vptr$SessionKeystore = &unk_284BB8E98;
  self->_applicationCallback._vptr$ApplicationCallback = &unk_284BA8EE8;
  self->_groupStorageDelegate.mStorage.__tree_.__end_node_.__left_ = 0;
  self->_groupStorageDelegate._vptr$PersistentStorageDelegate = &unk_284BA8DE0;
  self->_groupStorageDelegate.mStorage.__tree_.__begin_node_ = &self->_groupStorageDelegate.mStorage.__tree_.__end_node_;
  self->_groupStorageDelegate.mPoisonKeys.__tree_.__size_ = 0;
  self->_groupStorageDelegate.mPoisonKeys.__tree_.__end_node_.__left_ = 0;
  self->_groupStorageDelegate.mStorage.__tree_.__size_ = 0;
  self->_groupStorageDelegate.mPoisonKeys.__tree_.__begin_node_ = &self->_groupStorageDelegate.mPoisonKeys.__tree_.__end_node_;
  self->_groupStorageDelegate.mRejectWrites = 0;
  self->_groupStorageDelegate.mLoggingLevel = 0;
  sub_238DD15F8(&self->_groupDataProvider);
  self->_operationalBrowser.__ptr_ = 0;
  self->_otaProviderDelegateBridge.__ptr_ = 0;
  self->_preWarmingDelegate._vptr$BleScannerDelegate = &unk_284BA8F48;
  return self;
}

@end