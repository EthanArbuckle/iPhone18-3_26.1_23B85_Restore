@interface MTRDeviceController_XPC
+ (id)_allowedClasses;
- (BOOL)_setupXPCConnection;
- (MTRDeviceController_XPC)initWithParameters:(id)parameters error:(id *)error;
- (id)_interfaceForClientProtocol;
- (id)_interfaceForServerProtocol;
- (id)_setupDeviceForNodeID:(id)d prefetchedClusterData:(id)data;
- (id)compressedFabricID;
- (id)controllerNodeID;
- (id)controllerXPCID;
- (id)nodesWithStoredData;
- (void)_startXPCConnectionRetry;
- (void)_updateRegistrationInfo;
- (void)_xpcConnectionRetry;
- (void)controller:(id)controller controllerConfigurationUpdated:(id)updated;
- (void)deleteNodeID:(id)d;
- (void)device:(id)device internalStateUpdated:(id)updated;
- (void)device:(id)device receivedAttributeReport:(id)report;
- (void)device:(id)device receivedEventReport:(id)report;
- (void)device:(id)device stateChanged:(unint64_t)changed;
- (void)deviceBecameActive:(id)active;
- (void)deviceCachePrimed:(id)primed;
- (void)deviceConfigurationChanged:(id)changed;
- (void)forgetDeviceWithNodeID:(id)d;
- (void)removeDevice:(id)device;
- (void)updateControllerConfiguration:(id)configuration;
@end

@implementation MTRDeviceController_XPC

- (void)updateControllerConfiguration:(id)configuration
{
  v10[11] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  xpcConnection = [(MTRDeviceController_XPC *)self xpcConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_239217FE4;
  v10[3] = &unk_278A73D30;
  v10[4] = self;
  v10[5] = a2;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v10];
  uniqueIdentifier = [(MTRDeviceController *)self uniqueIdentifier];
  [v7 deviceController:uniqueIdentifier updateControllerConfiguration:configurationCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deleteNodeID:(id)d
{
  v10[11] = *MEMORY[0x277D85DE8];
  dCopy = d;
  xpcConnection = [(MTRDeviceController_XPC *)self xpcConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23921837C;
  v10[3] = &unk_278A73D30;
  v10[4] = self;
  v10[5] = a2;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v10];
  uniqueIdentifier = [(MTRDeviceController *)self uniqueIdentifier];
  [v7 deviceController:uniqueIdentifier deleteNodeID:dCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)nodesWithStoredData
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2392187F0;
  v16 = sub_239218800;
  v17 = MEMORY[0x277CBEBF8];
  xpcConnection = [(MTRDeviceController_XPC *)self xpcConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_239218808;
  v11[3] = &unk_278A73D30;
  v11[4] = self;
  v11[5] = a2;
  v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  uniqueIdentifier = [(MTRDeviceController *)self uniqueIdentifier];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_239218950;
  v10[3] = &unk_278A73D58;
  v10[4] = &v12;
  [v5 deviceController:uniqueIdentifier getNodesWithStoredDataWithReply:v10];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_updateRegistrationInfo
{
  v34 = *MEMORY[0x277D85DE8];
  lock = [(MTRDeviceController *)self deviceMapLock];
  os_unfair_lock_lock(lock);
  theDict = [MEMORY[0x277CBEB38] dictionary];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  nodeIDToDeviceMap = [(MTRDeviceController *)self nodeIDToDeviceMap];
  keyEnumerator = [nodeIDToDeviceMap keyEnumerator];

  v6 = [keyEnumerator countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [(MTRDeviceController *)self nodeIDToDeviceMap:v20];
        v11 = [v10 objectForKey:v9];

        if ([v11 delegateExists])
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          v13 = v9;
          if (v13)
          {
            CFDictionarySetValue(dictionary2, @"MTRDeviceControllerRegistrationNodeID", v13);
          }

          else
          {
            v14 = sub_2393D9044(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v30 = @"MTRDeviceControllerRegistrationNodeID";
              v31 = 2080;
              v32 = "nodeDictionary";
              _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Warning, missing %@ to add to %s", buf, 0x16u);
            }

            if (sub_2393D5398(1u))
            {
              v20 = @"MTRDeviceControllerRegistrationNodeID";
              v21 = "nodeDictionary";
              sub_2393D5320(0, 1);
            }
          }

          [array addObject:dictionary2];
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v6);
  }

  v15 = array;
  if (v15)
  {
    CFDictionarySetValue(theDict, @"MTRDeviceControllerRegistrationNodeIDs", v15);
  }

  else
  {
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = @"MTRDeviceControllerRegistrationNodeIDs";
      v31 = 2080;
      v32 = "registrationInfo";
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Warning, missing %@ to add to %s", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v17 = dictionary;
  if (v17)
  {
    CFDictionarySetValue(theDict, @"MTRDeviceControllerRegistrationControllerContext", v17);
  }

  else
  {
    v18 = sub_2393D9044(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = @"MTRDeviceControllerRegistrationControllerContext";
      v31 = 2080;
      v32 = "registrationInfo";
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Warning, missing %@ to add to %s", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  [(MTRDeviceController_XPC *)self updateControllerConfiguration:theDict];
  os_unfair_lock_unlock(lock);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)removeDevice:(id)device
{
  deviceCopy = device;
  v5.receiver = self;
  v5.super_class = MTRDeviceController_XPC;
  [(MTRDeviceController *)&v5 removeDevice:deviceCopy];
  [(MTRDeviceController_XPC *)self _updateRegistrationInfo];
}

- (void)forgetDeviceWithNodeID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = dCopy;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@: Forgetting device with node ID: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
    v8 = dCopy;
    sub_2393D5320(0, 2);
  }

  [(MTRDeviceController_XPC *)self deleteNodeID:dCopy, selfCopy2, v8];
  v9.receiver = self;
  v9.super_class = MTRDeviceController_XPC;
  [(MTRDeviceController *)&v9 forgetDeviceWithNodeID:dCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)controllerNodeID
{
  os_unfair_lock_lock(&self->_configurationLock);
  v3 = self->_controllerNodeID;
  os_unfair_lock_unlock(&self->_configurationLock);

  return v3;
}

- (id)compressedFabricID
{
  os_unfair_lock_lock(&self->_configurationLock);
  v3 = self->_compressedFabricID;
  os_unfair_lock_unlock(&self->_configurationLock);

  return v3;
}

+ (id)_allowedClasses
{
  v12 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27DF775D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF775D0))
  {
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    qword_27DF775C8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:7];
    __cxa_guard_release(&qword_27DF775D0);
  }

  v2 = [MEMORY[0x277CBEB58] setWithArray:{qword_27DF775C8, v5, v6, v7, v8, v9, v10}];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_interfaceForServerProtocol
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D13D28];
  v3 = +[MTRDeviceController_XPC _allowedClasses];
  v15[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v3 addObjectsFromArray:v4];

  [v2 setClasses:v3 forSelector:sel_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v3 forSelector:sel_deviceController_nodeID_invokeCommands_completion_ argumentIndex:0 ofReply:1];
  v14 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v3 addObjectsFromArray:v5];

  [v2 setClasses:v3 forSelector:sel_deviceController_nodeID_invokeCommands_completion_ argumentIndex:2 ofReply:0];
  v6 = +[MTRDeviceController_XPC _allowedClasses];

  v13 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v6 addObjectsFromArray:v7];

  [v2 setClasses:v6 forSelector:sel_deviceController_nodeID_readAttributePaths_withReply_ argumentIndex:2 ofReply:0];
  v8 = +[MTRDeviceController_XPC _allowedClasses];

  v12 = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [v8 addObjectsFromArray:v9];

  [v2 setClasses:v8 forSelector:sel_deviceController_nodeID_readAttributePaths_withReply_ argumentIndex:0 ofReply:1];
  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_interfaceForClientProtocol
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284CCDFE8];
  v3 = +[MTRDeviceController_XPC _allowedClasses];
  v11[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v3 addObjectsFromArray:v4];

  [v2 setClasses:v3 forSelector:sel_device_receivedAttributeReport_ argumentIndex:1 ofReply:0];
  v5 = +[MTRDeviceController_XPC _allowedClasses];

  v10 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [v5 addObjectsFromArray:v6];

  [v2 setClasses:v5 forSelector:sel_device_receivedEventReport_ argumentIndex:1 ofReply:0];
  v7 = +[MTRDeviceController_XPC _allowedClasses];

  [v2 setClasses:v7 forSelector:sel_controller_controllerConfigurationUpdated_ argumentIndex:1 ofReply:0];
  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)controllerXPCID
{
  uniqueIdentifier = [(MTRDeviceController *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)_startXPCConnectionRetry
{
  v15 = *MEMORY[0x277D85DE8];
  xpcConnectedOrConnecting = [(MTRDeviceController_XPC *)self xpcConnectedOrConnecting];
  v4 = sub_2393D9044(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (xpcConnectedOrConnecting)
  {
    if (v5)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection retry - Not starting retry for XPC Connection, already trying", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection retry - Starting retry for XPC Connection", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      selfCopy3 = self;
      sub_2393D5320(0, 2);
    }

    [(MTRDeviceController_XPC *)self setXpcRetryTimeInterval:0.5, selfCopy3];
    objc_initWeak(buf, self);
    [(MTRDeviceController_XPC *)self xpcRetryTimeInterval];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    workQueue = [(MTRDeviceController_XPC *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239219918;
    block[3] = &unk_278A72CD0;
    objc_copyWeak(&v12, buf);
    dispatch_after(v7, workQueue, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_xpcConnectionRetry
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy5 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection retry - timer hit", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
    sub_2393D5320(0, 2);
  }

  if ([(MTRDeviceController_XPC *)self xpcConnectedOrConnecting])
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy5 = self;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection retry - Mid retry, or connected, stopping retry timer", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
LABEL_18:
      sub_2393D5320(0, 2);
    }
  }

  else
  {
    _setupXPCConnection = [(MTRDeviceController_XPC *)self _setupXPCConnection];
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (_setupXPCConnection)
    {
      if (v5)
      {
        *buf = 138412290;
        selfCopy5 = self;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection retry - connection attempt successful", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v5)
      {
        *buf = 138412290;
        selfCopy5 = self;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection failed retry - bailing", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        goto LABEL_18;
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setupXPCConnection
{
  v32 = *MEMORY[0x277D85DE8];
  xpcParameters = [(MTRDeviceController_XPC *)self xpcParameters];
  xpcConnectionBlock = [xpcParameters xpcConnectionBlock];
  v5 = xpcConnectionBlock[2]();
  [(MTRDeviceController_XPC *)self setXpcConnection:v5];

  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcConnection = [(MTRDeviceController_XPC *)self xpcConnection];
    *buf = 138412546;
    selfCopy4 = self;
    v30 = 2112;
    v31 = xpcConnection;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ Set up XPC Connection: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    [(MTRDeviceController_XPC *)self xpcConnection];
    v22 = v20 = self;
    sub_2393D5320(0, 2);
  }

  v8 = [(MTRDeviceController_XPC *)self xpcConnection:v20];
  v9 = v8 == 0;

  if (v9)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ Failed to set up XPC Connection", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      selfCopy5 = self;
      sub_2393D5320(0, 1);
    }

    [(MTRDeviceController_XPC *)self setXpcConnectedOrConnecting:0, selfCopy5];
  }

  else
  {
    objc_initWeak(&location, self);
    _interfaceForServerProtocol = [(MTRDeviceController_XPC *)self _interfaceForServerProtocol];
    xpcConnection2 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection2 setRemoteObjectInterface:_interfaceForServerProtocol];

    _interfaceForClientProtocol = [(MTRDeviceController_XPC *)self _interfaceForClientProtocol];
    xpcConnection3 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection3 setExportedInterface:_interfaceForClientProtocol];

    xpcConnection4 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection4 setExportedObject:self];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_23921A034;
    v25[3] = &unk_278A72CD0;
    objc_copyWeak(&v26, &location);
    xpcConnection5 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection5 setInterruptionHandler:v25];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_23921A1B4;
    v23[3] = &unk_278A72CD0;
    objc_copyWeak(&v24, &location);
    xpcConnection6 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection6 setInvalidationHandler:v23];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ Activating new XPC connection", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      selfCopy5 = self;
      sub_2393D5320(0, 2);
    }

    xpcConnection7 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection7 activate];

    [(MTRDeviceController_XPC *)self _updateRegistrationInfo];
    [(MTRDeviceController_XPC *)self setXpcConnectedOrConnecting:1];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  result = [(MTRDeviceController_XPC *)self xpcConnectedOrConnecting];
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (MTRDeviceController_XPC)initWithParameters:(id)parameters error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = parametersCopy;
    uniqueIdentifier = [v7 uniqueIdentifier];
    v21.receiver = self;
    v21.super_class = MTRDeviceController_XPC;
    v9 = -[MTRDeviceController initForSubclasses:uniqueIdentifier:](&v21, sel_initForSubclasses_uniqueIdentifier_, [v7 startSuspended], uniqueIdentifier);
    if (!v9)
    {
LABEL_10:
      v16 = v9;
LABEL_28:

      self = v9;
      goto LABEL_29;
    }

    xpcConnectionBlock = [v7 xpcConnectionBlock];
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x23EE78590](xpcConnectionBlock);
      *buf = 138412546;
      v23 = uniqueIdentifier;
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Setting up XPC Controller for UUID: %@ with connection block: %p", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v20 = MEMORY[0x23EE78590](xpcConnectionBlock);
      sub_2393D5320(0, 2);
    }

    if (uniqueIdentifier)
    {
      if (xpcConnectionBlock)
      {
        [(MTRDeviceController_XPC *)v9 setXpcParameters:v7];
        v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v14 = dispatch_queue_create("MTRDeviceController_XPC_queue", v13);
        workQueue = v9->_workQueue;
        v9->_workQueue = v14;

        v9->_configurationLock._os_unfair_lock_opaque = 0;
        LOBYTE(v13) = [(MTRDeviceController_XPC *)v9 _setupXPCConnection];

        if (v13)
        {
          goto LABEL_10;
        }

LABEL_27:
        v16 = 0;
        goto LABEL_28;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRDeviceController_XPC initWithParameters failed, nil connectionBlock", buf, 2u);
      }

      if (!sub_2393D5398(1u))
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRDeviceController_XPC initWithParameters failed, nil UUID", buf, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_26;
      }
    }

    sub_2393D5320(0, 1);
    goto LABEL_26;
  }

  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = parametersCopy;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Expected MTRXPCDeviceControllerParameters but got: %@", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    sub_23921C1E4(MTRError, 0x1530000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_XPC.mm");
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_29:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_setupDeviceForNodeID:(id)d prefetchedClusterData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[MTRDeviceController_XPC _setupDeviceForNodeID:prefetchedClusterData:]";
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v13 = "[MTRDeviceController_XPC _setupDeviceForNodeID:prefetchedClusterData:]";
    sub_2393D5320(0, 2);
  }

  os_unfair_lock_assert_owner([(MTRDeviceController *)self deviceMapLock]);
  v9 = [[MTRDevice_XPC alloc] initWithNodeID:dCopy controller:self];
  nodeIDToDeviceMap = [(MTRDeviceController *)self nodeIDToDeviceMap];
  [nodeIDToDeviceMap setObject:v9 forKey:dCopy];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[MTRDeviceController_XPC _setupDeviceForNodeID:prefetchedClusterData:]";
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%s: returning XPC device for node id %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)device:(id)device stateChanged:(unint64_t)changed
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = [(MTRDeviceController *)self deviceForNodeID:deviceCopy];
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v14 = deviceCopy;
    v15 = 2048;
    changedCopy = changed;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Received device: %@ stateChanged: %lu   found device: %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    changedCopy2 = changed;
    v12 = v7;
    v10 = deviceCopy;
    sub_2393D5320(0, 2);
  }

  [v7 device:deviceCopy stateChanged:{changed, v10, changedCopy2, v12}];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)device receivedAttributeReport:(id)report
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = [(MTRDeviceController *)self deviceForNodeID:deviceCopy];
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v15 = deviceCopy;
    v16 = 2112;
    v17 = reportCopy;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Received device: %@ receivedAttributeReport: %@     found device: %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    v12 = reportCopy;
    v13 = v8;
    v11 = deviceCopy;
    sub_2393D5320(0, 2);
  }

  [v8 device:deviceCopy receivedAttributeReport:{reportCopy, v11, v12, v13}];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)device receivedEventReport:(id)report
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = [(MTRDeviceController *)self deviceForNodeID:deviceCopy];
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v15 = deviceCopy;
    v16 = 2112;
    v17 = reportCopy;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Received device: %@ receivedEventReport: %@     found device: %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    v12 = reportCopy;
    v13 = v8;
    v11 = deviceCopy;
    sub_2393D5320(0, 2);
  }

  [v8 device:deviceCopy receivedEventReport:{reportCopy, v11, v12, v13}];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceBecameActive:(id)active
{
  v14 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v5 = [(MTRDeviceController *)self deviceForNodeID:activeCopy];
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = activeCopy;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Received deviceBecameActive: %@ found device: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v8 = activeCopy;
    v9 = v5;
    sub_2393D5320(0, 2);
  }

  [v5 deviceBecameActive:{activeCopy, v8, v9}];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deviceCachePrimed:(id)primed
{
  v14 = *MEMORY[0x277D85DE8];
  primedCopy = primed;
  v5 = [(MTRDeviceController *)self deviceForNodeID:primedCopy];
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = primedCopy;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Received deviceCachePrimed: %@ found device: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v8 = primedCopy;
    v9 = v5;
    sub_2393D5320(0, 2);
  }

  [v5 deviceCachePrimed:{primedCopy, v8, v9}];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deviceConfigurationChanged:(id)changed
{
  v14 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = [(MTRDeviceController *)self deviceForNodeID:changedCopy];
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = changedCopy;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Received deviceConfigurationChanged: %@ found device: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v8 = changedCopy;
    v9 = v5;
    sub_2393D5320(0, 2);
  }

  [v5 deviceConfigurationChanged:{changedCopy, v8, v9}];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)device internalStateUpdated:(id)updated
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  updatedCopy = updated;
  v8 = [(MTRDeviceController *)self deviceForNodeID:deviceCopy];
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = deviceCopy;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Received internalStateUpdated: %@ found device: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v11 = deviceCopy;
    v12 = v8;
    sub_2393D5320(0, 2);
  }

  [v8 device:deviceCopy internalStateUpdated:{updatedCopy, v11, v12}];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)controller:(id)controller controllerConfigurationUpdated:(id)updated
{
  v44 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerContext"];
  objc_opt_class();
  selfCopy = self;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerContext"];

  if (!v6)
  {
LABEL_7:
    v29 = 0;
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_configurationLock);
  v29 = v6;
  controllerNodeID = [v6 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerNodeID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v29 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerNodeID"];

    if (!v8)
    {
      goto LABEL_10;
    }

    v8 = v8;
    controllerNodeID = self->_controllerNodeID;
    self->_controllerNodeID = v8;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:
  v9 = [v29 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerCompressedFabricID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v10 = [v29 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerCompressedFabricID"];

  if (v10)
  {
    compressedFabricID = selfCopy->_compressedFabricID;
    selfCopy->_compressedFabricID = v10;
    v9 = v10;

    goto LABEL_13;
  }

LABEL_14:

  os_unfair_lock_unlock(&selfCopy->_configurationLock);
LABEL_15:
  v12 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceControllerRegistrationNodeIDs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceControllerRegistrationNodeIDs"];
  }

  else
  {
    v30 = 0;
  }

  v13 = sub_2393D9044(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    controllerNodeID = [(MTRDeviceController_XPC *)selfCopy controllerNodeID];
    compressedFabricID = [(MTRDeviceController_XPC *)selfCopy compressedFabricID];
    *buf = 138412802;
    v39 = controllerNodeID;
    v40 = 2048;
    unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
    v42 = 2112;
    v43 = v30;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Received controllerConfigurationUpdated: controllerNodeID %@ compressedFabricID %016lluX deviceInfoList %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    controllerNodeID2 = [(MTRDeviceController_XPC *)selfCopy controllerNodeID];
    compressedFabricID2 = [(MTRDeviceController_XPC *)selfCopy compressedFabricID];
    [compressedFabricID2 unsignedLongLongValue];
    sub_2393D5320(0, 2);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = v30;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v19)
  {
    v20 = *v34;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & (v22 != 0)) != 0)
        {
          v23 = [v22 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationNodeID"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v22 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationNodeID"];

            if (v24)
            {
              v25 = [v22 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationDeviceInternalState"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = [v22 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationDeviceInternalState"];

                if (v26)
                {
                  v27 = [(MTRDeviceController *)selfCopy _deviceForNodeID:v24 createIfNeeded:0];
                  [v27 device:v24 internalStateUpdated:v26];

LABEL_47:
                  continue;
                }
              }

              else
              {
              }

              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, " - Missing or malformed deviceInternalState", buf, 2u);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(0, 1);
              }

              goto LABEL_47;
            }
          }

          else
          {
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, " - Missing or malformed nodeID", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, " - Missing or malformed device Info", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
LABEL_36:
            sub_2393D5320(0, 1);
            continue;
          }
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end