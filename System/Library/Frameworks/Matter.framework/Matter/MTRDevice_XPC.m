@interface MTRDevice_XPC
- (BOOL)_ensureValidValuesForKeys:(id)a3 inInternalState:(id)a4 valueRequired:(BOOL)a5;
- (BOOL)deviceCachePrimed;
- (BOOL)diagnosticLogTransferInProgress;
- (MTRDevice_XPC)initWithNodeID:(id)a3 controller:(id)a4;
- (NSString)description;
- (id)estimatedStartTime;
- (id)estimatedSubscriptionLatency;
- (id)productID;
- (id)readAttributePaths:(id)a3;
- (id)readAttributeWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 params:(id)a6;
- (id)vendorID;
- (unint64_t)state;
- (unsigned)networkCommissioningFeatures;
- (void)_delegateAdded:(id)a3;
- (void)_delegateRemoved:(id)a3;
- (void)_invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 expectedValues:(id)a7 expectedValueInterval:(id)a8 timedInvokeTimeout:(id)a9 serverSideProcessingTimeout:(id)a10 queue:(id)a11 completion:(id)a12;
- (void)_updateInternalState:(id)a3;
- (void)dealloc;
- (void)device:(id)a3 internalStateUpdated:(id)a4;
- (void)device:(id)a3 receivedAttributeReport:(id)a4;
- (void)device:(id)a3 receivedEventReport:(id)a4;
- (void)deviceBecameActive:(id)a3;
- (void)deviceConfigurationChanged:(id)a3;
- (void)downloadLogOfType:(int64_t)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6;
- (void)invokeCommands:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)writeAttributeWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 value:(id)a6 expectedValueInterval:(id)a7 timedWriteTimeout:(id)a8;
@end

@implementation MTRDevice_XPC

- (MTRDevice_XPC)initWithNodeID:(id)a3 controller:(id)a4
{
  v9.receiver = self;
  v9.super_class = MTRDevice_XPC;
  v4 = [(MTRDevice *)&v9 initForSubclassesWithNodeID:a3 controller:a4];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("org.csa-iot.matter.framework.devicexpc.workqueue", v5);
    queue = v4->_queue;
    v4->_queue = v6;
  }

  return v4;
}

- (void)dealloc
{
  [(MTRDevice_XPC *)self _setInternalState:0];
  v3.receiver = self;
  v3.super_class = MTRDevice_XPC;
  [(MTRDevice *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [(MTRDevice_XPC *)self _internalState];
  v4 = [v3 objectForKey:@"MTRDeviceInternalPropertyNetworkFeatures"];

  v22 = v4;
  if (v4)
  {
    if ([v4 unsignedLongLongValue])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = v5;
    if (([v4 unsignedLongLongValue] & 2) != 0)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = v7;
  }

  else
  {
    v8 = @"NO";
    v6 = @"NO";
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v26 = NSStringFromClass(v10);
  v27 = v8;
  v21 = [(MTRDeviceController *)self->super._deviceController compressedFabricID];
  v11 = [v21 unsignedLongLongValue];
  v12 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  v13 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  v25 = [(MTRDevice_XPC *)self vendorID];
  v24 = [(MTRDevice_XPC *)self productID];
  v23 = [(MTRDeviceController *)self->super._deviceController uniqueIdentifier];
  v14 = [(MTRDevice_XPC *)self _internalState];
  v15 = [v14 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v20 = [(MTRDevice_XPC *)self _internalState];
    v17 = [v20 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 stringWithFormat:@"<%@: %p, node: %016llX-%016llX (%llu), VID: %@, PID: %@, WiFi: %@, Thread: %@, controller: %@ state: %lu>", v26, self, v11, v12, v13, v25, v24, v6, v27, v23, objc_msgSend(v17, "unsignedLongValue")];
  if (isKindOfClass)
  {
  }

  return v18;
}

- (id)vendorID
{
  v2 = [(MTRDevice_XPC *)self _internalState];
  v3 = [v2 objectForKey:@"MTRDeviceInternalStateKeyVendorID"];
  v4 = [v3 copy];

  return v4;
}

- (id)productID
{
  v2 = [(MTRDevice_XPC *)self _internalState];
  v3 = [v2 objectForKey:@"MTRDeviceInternalStateKeyProductID"];
  v4 = [v3 copy];

  return v4;
}

- (unsigned)networkCommissioningFeatures
{
  v2 = [(MTRDevice_XPC *)self _internalState];
  v3 = [v2 objectForKey:@"MTRDeviceInternalPropertyNetworkFeatures"];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)_delegateAdded:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  v11.receiver = self;
  v11.super_class = MTRDevice_XPC;
  [(MTRDevice *)&v11 _delegateAdded:v4];
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ delegate added: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v8 = self;
    v9 = v4;
    sub_2393D5320(0, 2);
  }

  v6 = [(MTRDevice_XPC *)self queue:v8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392992DC;
  block[3] = &unk_278A72320;
  block[4] = self;
  dispatch_async(v6, block);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_delegateRemoved:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->super._lock);
  v11.receiver = self;
  v11.super_class = MTRDevice_XPC;
  [(MTRDevice *)&v11 _delegateRemoved:v4];
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ delegate removed: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v8 = self;
    v9 = v4;
    sub_2393D5320(0, 2);
  }

  v6 = [(MTRDevice_XPC *)self queue:v8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392994D0;
  block[3] = &unk_278A72320;
  block[4] = self;
  dispatch_async(v6, block);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 receivedAttributeReport:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v16 = a4;
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = self;
    v28 = 2080;
    v29 = "[MTRDevice_XPC device:receivedAttributeReport:]";
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  objc_opt_class();
  if (((v17 != 0) & objc_opt_isKindOfClass()) != 0)
  {
    if (sub_23938A994(v16))
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_239299B84;
      v23[3] = &unk_278A744A0;
      v23[4] = self;
      v7 = v16;
      v24 = v7;
      [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v23];
      os_unfair_lock_lock(&self->super._lock);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      obj = v7;
      v8 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (!v8)
      {
        goto LABEL_34;
      }

      v9 = *v20;
      while (1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & (v11 != 0)) != 0)
          {
            v12 = [v11 objectForKeyedSubscript:@"attributePath"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v11 objectForKeyedSubscript:@"attributePath"];

              if (v13)
              {
                v14 = [v11 objectForKeyedSubscript:@"data"];
                if (v14)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(MTRDevice *)self _attributeValue:v14 reportedForPath:v13];
                  }

                  else
                  {
                    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v27 = self;
                      v28 = 2112;
                      v29 = v11;
                      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ invalid data-value reported: %@", buf, 0x16u);
                    }

                    if (sub_2393D5398(1u))
                    {
                      sub_2393D5320(0, 1);
                    }
                  }
                }

                continue;
              }
            }

            else
            {
            }

            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v27 = self;
              v28 = 2112;
              v29 = v11;
              _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ no valid path for attribute report %@", buf, 0x16u);
            }

            if (sub_2393D5398(1u))
            {
              goto LABEL_21;
            }
          }

          else
          {
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v27 = self;
              v28 = 2112;
              v29 = v11;
              _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ handed a response-value that is not a dictionary: %@", buf, 0x16u);
            }

            if (sub_2393D5398(1u))
            {
LABEL_21:
              sub_2393D5320(0, 1);
              continue;
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (!v8)
        {
LABEL_34:

          os_unfair_lock_unlock(&self->super._lock);
          goto LABEL_43;
        }
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = self;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ invalid device:receivedAttributeReport: attributeReport: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
LABEL_42:
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = self;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ invalid device:receivedAttributeReport: nodeID: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_42;
    }
  }

LABEL_43:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 receivedEventReport:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2080;
    v15 = "[MTRDevice_XPC device:receivedEventReport:]";
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  objc_opt_class();
  if (((v6 != 0) & objc_opt_isKindOfClass()) != 0)
  {
    if (sub_23938B148(v7))
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_239299E40;
      v10[3] = &unk_278A744A0;
      v10[4] = self;
      v11 = v7;
      [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v10];

      goto LABEL_16;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ invalid device:receivedEventReport: eventReport: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
LABEL_15:
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ invalid device:receivedEventReport: nodeID: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_15;
    }
  }

LABEL_16:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deviceBecameActive:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = self;
    v10 = 2080;
    v11 = "[MTRDevice_XPC deviceBecameActive:]";
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  objc_opt_class();
  if (((v4 != 0) & objc_opt_isKindOfClass()) != 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_23929A050;
    v7[3] = &unk_278A744C8;
    v7[4] = self;
    [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v7];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = self;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ invalid deviceBecameActive: nodeID: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)diagnosticLogTransferInProgress
{
  v3 = [(MTRDevice_XPC *)self _internalState];
  v4 = [v3 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDiagnosticLogTransferInProgress"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MTRDevice_XPC *)self _internalState];
    v6 = [v5 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDiagnosticLogTransferInProgress"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 BOOLValue];
  return v7;
}

- (void)deviceConfigurationChanged:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = self;
    v10 = 2080;
    v11 = "[MTRDevice_XPC deviceConfigurationChanged:]";
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  objc_opt_class();
  if (((v4 != 0) & objc_opt_isKindOfClass()) != 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_23929A3B4;
    v7[3] = &unk_278A744C8;
    v7[4] = self;
    [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v7];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = self;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ invalid deviceConfigurationChanged: nodeID: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_ensureValidValuesForKeys:(id)a3 inInternalState:(id)a4 valueRequired:(BOOL)a5
{
  v5 = a5;
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v10)
  {
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v23, v24, v25, v26}];
        if (v14)
        {
          [v9 objectForKeyedSubscript:v13];
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = sub_2393D9044(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              *buf = 138413058;
              v33 = self;
              v34 = 2112;
              v35 = v17;
              v36 = 2112;
              v37 = v13;
              v38 = 2112;
              v39 = v14;
              _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%@ device:internalStateUpdated: handed state with invalid value of type %@ for %@: %@", buf, 0x2Au);
            }

            if (sub_2393D5398(1u))
            {
              v18 = objc_opt_class();
              NSStringFromClass(v18);
              v25 = v13;
              v26 = v14;
              v24 = v23 = self;
              sub_2393D5320(0, 1);
            }

            if (v5)
            {
              goto LABEL_22;
            }

            [v8 removeObjectForKey:v13];
          }
        }

        else if (v5)
        {
          v20 = sub_2393D9044(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v33 = self;
            v34 = 2112;
            v35 = v13;
            v36 = 2112;
            v37 = 0;
            _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "%@ device:internalStateUpdated: handed state with no value for %@: %@", buf, 0x20u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1);
          }

LABEL_22:

          v19 = 0;
          goto LABEL_23;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_23:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)device:(id)a3 internalStateUpdated:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = self;
    v13 = 2080;
    v14 = "[MTRDevice_XPC device:internalStateUpdated:]";
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  objc_opt_class();
  if (((v6 != 0) & objc_opt_isKindOfClass()) != 0)
  {
    objc_opt_class();
    if (((v7 != 0) & objc_opt_isKindOfClass()) != 0)
    {
      v9 = [v7 mutableCopy];
      [(MTRDevice_XPC *)self _updateInternalState:v9];

      goto LABEL_16;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ invalid device:internalStateUpdated dictionary: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
LABEL_15:
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ invalid device:internalStateUpdated: nodeID: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_15;
    }
  }

LABEL_16:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateInternalState:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((atomic_load_explicit(&qword_27DF77610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF77610))
  {
    v23[0] = @"MTRDeviceInternalPropertyDeviceState";
    v23[1] = @"kMTRDeviceInternalPropertyLastSubscriptionAttemptWait";
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    qword_27DF77608 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    __cxa_guard_release(&qword_27DF77610);
  }

  if ((atomic_load_explicit(&qword_27DF77620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF77620))
  {
    v21[0] = @"MTRDeviceInternalStateKeyVendorID";
    v22[0] = objc_opt_class();
    v21[1] = @"MTRDeviceInternalStateKeyProductID";
    v22[1] = objc_opt_class();
    v21[2] = @"MTRDeviceInternalPropertyNetworkFeatures";
    v22[2] = objc_opt_class();
    v21[3] = @"MTRDeviceInternalPropertyMostRecentReportTime";
    v22[3] = objc_opt_class();
    v21[4] = @"MTRDeviceInternalPropertyLastSubscriptionFailureTime";
    v22[4] = objc_opt_class();
    v21[5] = @"MTRDeviceInternalPropertyDiagnosticLogTransferInProgress";
    v22[5] = objc_opt_class();
    qword_27DF77618 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];
    __cxa_guard_release(&qword_27DF77620);
  }

  if ([(MTRDevice_XPC *)self _ensureValidValuesForKeys:qword_27DF77608 inInternalState:v4 valueRequired:1]&& [(MTRDevice_XPC *)self _ensureValidValuesForKeys:qword_27DF77618 inInternalState:v4 valueRequired:0])
  {
    v5 = [(MTRDevice_XPC *)self _internalState];
    v6 = [v5 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(MTRDevice_XPC *)self _internalState];
      v8 = [v7 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v4 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(MTRDevice_XPC *)self _internalState];
    v12 = [v11 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(MTRDevice_XPC *)self _internalState];
      v14 = [v13 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v4 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v4 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    }

    else
    {
      v16 = 0;
    }

    [(MTRDevice_XPC *)self _setInternalState:v4];
    if ((sub_238DB32F8(v8, v10) & 1) == 0)
    {
      v17 = [(MTRDevice_XPC *)self state];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_23929AF50;
      v20[3] = &unk_278A744F0;
      v20[4] = self;
      v20[5] = v17;
      [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v20];
    }

    if ((sub_238DB32F8(v14, v16) & 1) == 0)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_23929AF5C;
      v19[3] = &unk_278A744C8;
      v19[4] = self;
      [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v19];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (unint64_t)state
{
  if (![(MTRDevice *)self delegateExists])
  {
    return 1;
  }

  v3 = [(MTRDevice_XPC *)self _internalState];
  v4 = [v3 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MTRDevice_XPC *)self _internalState];
    v6 = [v5 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  }

  else
  {
    v6 = 0;
  }

  v8 = [v6 unsignedIntegerValue];
  if (v8 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (v8 == 2);
  }

  return v7;
}

- (BOOL)deviceCachePrimed
{
  v3 = [(MTRDevice_XPC *)self _internalState];
  v4 = [v3 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MTRDevice_XPC *)self _internalState];
    v6 = [v5 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 BOOLValue];
  return v7;
}

- (id)estimatedStartTime
{
  v3 = [(MTRDevice_XPC *)self _internalState];
  v4 = [v3 objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedStartTime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MTRDevice_XPC *)self _internalState];
    v6 = [v5 objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedStartTime"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)estimatedSubscriptionLatency
{
  v3 = [(MTRDevice_XPC *)self _internalState];
  v4 = [v3 objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedSubscriptionLatency"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MTRDevice_XPC *)self _internalState];
    v6 = [v5 objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedSubscriptionLatency"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)readAttributeWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 params:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_23929B75C;
  v30 = sub_23929B76C;
  v31 = 0;
  v14 = [(MTRDevice *)self deviceController];
  v15 = [v14 xpcConnection];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_23929B774;
  v25[3] = &unk_278A73D30;
  v25[4] = self;
  v25[5] = a2;
  v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v25];
  v17 = [(MTRDevice *)self deviceController];
  v18 = [v17 uniqueIdentifier];
  v19 = [(MTRDevice *)self nodeID];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_23929B8BC;
  v24[3] = &unk_278A74518;
  v24[4] = &v26;
  [v16 deviceController:v18 nodeID:v19 readAttributeWithEndpointID:v23 clusterID:v11 attributeID:v12 params:v13 withReply:v24];

  v20 = v27[5];
  _Block_object_dispose(&v26, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)writeAttributeWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 value:(id)a6 expectedValueInterval:(id)a7 timedWriteTimeout:(id)a8
{
  v28[10] = *MEMORY[0x277D85DE8];
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [(MTRDevice *)self deviceController];
  v19 = [v18 xpcConnection];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_23929BC00;
  v28[3] = &unk_278A73D30;
  v28[4] = self;
  v28[5] = a2;
  v20 = [v19 remoteObjectProxyWithErrorHandler:v28];
  v21 = [(MTRDevice *)self deviceController];
  v22 = [v21 uniqueIdentifier];
  v23 = [(MTRDevice *)self nodeID];
  [v20 deviceController:v22 nodeID:v23 writeAttributeWithEndpointID:v25 clusterID:v26 attributeID:v27 value:v15 expectedValueInterval:v16 timedWriteTimeout:v17];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePaths:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_23929B75C;
  v21 = sub_23929B76C;
  v22 = [MEMORY[0x277CBEA60] array];
  v6 = [(MTRDevice *)self deviceController];
  v7 = [v6 xpcConnection];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23929C11C;
  v16[3] = &unk_278A73D30;
  v16[4] = self;
  v16[5] = a2;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v9 = [(MTRDevice *)self deviceController];
  v10 = [v9 uniqueIdentifier];
  v11 = [(MTRDevice *)self nodeID];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23929C264;
  v15[3] = &unk_278A73D58;
  v15[4] = &v17;
  [v8 deviceController:v10 nodeID:v11 readAttributePaths:v5 withReply:v15];

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 expectedValues:(id)a7 expectedValueInterval:(id)a8 timedInvokeTimeout:(id)a9 serverSideProcessingTimeout:(id)a10 queue:(id)a11 completion:(id)a12
{
  v48 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v31 = a6;
  v30 = a7;
  v35 = a8;
  v36 = a9;
  v37 = a10;
  v27 = a11;
  v28 = a12;
  v18 = [(MTRDevice *)self deviceController];
  v19 = [v18 xpcConnection];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_23929C760;
  v45[3] = &unk_278A72D20;
  v20 = v27;
  v46 = v20;
  v21 = v28;
  v47 = v21;
  v29 = v19;
  v22 = [v19 remoteObjectProxyWithErrorHandler:v45];
  v23 = [(MTRDevice *)self deviceController];
  v24 = [v23 uniqueIdentifier];
  v25 = [(MTRDevice *)self nodeID];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_23929C944;
  v38[3] = &unk_278A74568;
  v39 = v20;
  v40 = self;
  v41 = v32;
  v42 = v33;
  v43 = v34;
  v44 = v21;
  [v22 deviceController:v24 nodeID:v25 invokeCommandWithEndpointID:v41 clusterID:v42 commandID:v43 commandFields:v31 expectedValues:v30 expectedValueInterval:v35 timedInvokeTimeout:v36 serverSideProcessingTimeout:v37 completion:v38];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)invokeCommands:(id)a3 queue:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v19 = a4;
  v20 = a5;
  v10 = [(MTRDevice *)self deviceController];
  v11 = [v10 xpcConnection];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_23929D3EC;
  v26[3] = &unk_278A74590;
  v26[4] = self;
  v29 = a2;
  v12 = v19;
  v27 = v12;
  v13 = v20;
  v28 = v13;
  v14 = [v11 remoteObjectProxyWithErrorHandler:v26];
  v15 = [(MTRDevice *)self deviceController];
  v16 = [v15 uniqueIdentifier];
  v17 = [(MTRDevice *)self nodeID];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23929D630;
  v21[3] = &unk_278A745E0;
  v22 = v12;
  v23 = self;
  v24 = v9;
  v25 = v13;
  [v14 deviceController:v16 nodeID:v17 invokeCommands:v24 completion:v21];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)downloadLogOfType:(int64_t)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = a5;
  v21 = a6;
  v11 = [(MTRDevice *)self deviceController];
  v12 = [v11 xpcConnection];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_23929E070;
  v25[3] = &unk_278A74590;
  v25[4] = self;
  v28 = a2;
  v13 = v20;
  v26 = v13;
  v14 = v21;
  v27 = v14;
  v15 = [v12 remoteObjectProxyWithErrorHandler:v25];
  v16 = [(MTRDevice *)self deviceController];
  v17 = [v16 uniqueIdentifier];
  v18 = [(MTRDevice *)self nodeID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23929E2B4;
  v22[3] = &unk_278A74608;
  v23 = v13;
  v24 = v14;
  [v15 deviceController:v17 nodeID:v18 downloadLogOfType:a3 timeout:v22 completion:a4];

  v19 = *MEMORY[0x277D85DE8];
}

@end