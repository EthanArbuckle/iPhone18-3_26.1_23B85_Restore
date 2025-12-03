@interface MTRDevice_XPC
- (BOOL)_ensureValidValuesForKeys:(id)keys inInternalState:(id)state valueRequired:(BOOL)required;
- (BOOL)deviceCachePrimed;
- (BOOL)diagnosticLogTransferInProgress;
- (MTRDevice_XPC)initWithNodeID:(id)d controller:(id)controller;
- (NSString)description;
- (id)estimatedStartTime;
- (id)estimatedSubscriptionLatency;
- (id)productID;
- (id)readAttributePaths:(id)paths;
- (id)readAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params;
- (id)vendorID;
- (unint64_t)state;
- (unsigned)networkCommissioningFeatures;
- (void)_delegateAdded:(id)added;
- (void)_delegateRemoved:(id)removed;
- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 queue:(id)self1 completion:(id)self2;
- (void)_updateInternalState:(id)state;
- (void)dealloc;
- (void)device:(id)device internalStateUpdated:(id)updated;
- (void)device:(id)device receivedAttributeReport:(id)report;
- (void)device:(id)device receivedEventReport:(id)report;
- (void)deviceBecameActive:(id)active;
- (void)deviceConfigurationChanged:(id)changed;
- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)invokeCommands:(id)commands queue:(id)queue completion:(id)completion;
- (void)writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)timeout;
@end

@implementation MTRDevice_XPC

- (MTRDevice_XPC)initWithNodeID:(id)d controller:(id)controller
{
  v9.receiver = self;
  v9.super_class = MTRDevice_XPC;
  v4 = [(MTRDevice *)&v9 initForSubclassesWithNodeID:d controller:controller];
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
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKey:@"MTRDeviceInternalPropertyNetworkFeatures"];

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
  compressedFabricID = [(MTRDeviceController *)self->super._deviceController compressedFabricID];
  unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
  unsignedLongLongValue2 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  unsignedLongLongValue3 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  vendorID = [(MTRDevice_XPC *)self vendorID];
  productID = [(MTRDevice_XPC *)self productID];
  uniqueIdentifier = [(MTRDeviceController *)self->super._deviceController uniqueIdentifier];
  _internalState2 = [(MTRDevice_XPC *)self _internalState];
  v15 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    _internalState3 = [(MTRDevice_XPC *)self _internalState];
    v17 = [_internalState3 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 stringWithFormat:@"<%@: %p, node: %016llX-%016llX (%llu), VID: %@, PID: %@, WiFi: %@, Thread: %@, controller: %@ state: %lu>", v26, self, unsignedLongLongValue, unsignedLongLongValue2, unsignedLongLongValue3, vendorID, productID, v6, v27, uniqueIdentifier, objc_msgSend(v17, "unsignedLongValue")];
  if (isKindOfClass)
  {
  }

  return v18;
}

- (id)vendorID
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v3 = [_internalState objectForKey:@"MTRDeviceInternalStateKeyVendorID"];
  v4 = [v3 copy];

  return v4;
}

- (id)productID
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v3 = [_internalState objectForKey:@"MTRDeviceInternalStateKeyProductID"];
  v4 = [v3 copy];

  return v4;
}

- (unsigned)networkCommissioningFeatures
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v3 = [_internalState objectForKey:@"MTRDeviceInternalPropertyNetworkFeatures"];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)_delegateAdded:(id)added
{
  v16 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  os_unfair_lock_assert_owner(&self->super._lock);
  v11.receiver = self;
  v11.super_class = MTRDevice_XPC;
  [(MTRDevice *)&v11 _delegateAdded:addedCopy];
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = addedCopy;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ delegate added: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
    v9 = addedCopy;
    sub_2393D5320(0, 2);
  }

  v6 = [(MTRDevice_XPC *)self queue:selfCopy2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392992DC;
  block[3] = &unk_278A72320;
  block[4] = self;
  dispatch_async(v6, block);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_delegateRemoved:(id)removed
{
  v16 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  os_unfair_lock_assert_owner(&self->super._lock);
  v11.receiver = self;
  v11.super_class = MTRDevice_XPC;
  [(MTRDevice *)&v11 _delegateRemoved:removedCopy];
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = removedCopy;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ delegate removed: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
    v9 = removedCopy;
    sub_2393D5320(0, 2);
  }

  v6 = [(MTRDevice_XPC *)self queue:selfCopy2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392994D0;
  block[3] = &unk_278A72320;
  block[4] = self;
  dispatch_async(v6, block);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)device receivedAttributeReport:(id)report
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy6 = self;
    v28 = 2080;
    v29 = "[MTRDevice_XPC device:receivedAttributeReport:]";
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  objc_opt_class();
  if (((deviceCopy != 0) & objc_opt_isKindOfClass()) != 0)
  {
    if (sub_23938A994(reportCopy))
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_239299B84;
      v23[3] = &unk_278A744A0;
      v23[4] = self;
      v7 = reportCopy;
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
                      selfCopy6 = self;
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
              selfCopy6 = self;
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
              selfCopy6 = self;
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
      selfCopy6 = self;
      v28 = 2112;
      v29 = reportCopy;
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
      selfCopy6 = self;
      v28 = 2112;
      v29 = deviceCopy;
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

- (void)device:(id)device receivedEventReport:(id)report
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v14 = 2080;
    v15 = "[MTRDevice_XPC device:receivedEventReport:]";
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  objc_opt_class();
  if (((deviceCopy != 0) & objc_opt_isKindOfClass()) != 0)
  {
    if (sub_23938B148(reportCopy))
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_239299E40;
      v10[3] = &unk_278A744A0;
      v10[4] = self;
      v11 = reportCopy;
      [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v10];

      goto LABEL_16;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v14 = 2112;
      v15 = reportCopy;
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
      selfCopy3 = self;
      v14 = 2112;
      v15 = deviceCopy;
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

- (void)deviceBecameActive:(id)active
{
  v12 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v10 = 2080;
    v11 = "[MTRDevice_XPC deviceBecameActive:]";
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  objc_opt_class();
  if (((activeCopy != 0) & objc_opt_isKindOfClass()) != 0)
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
      selfCopy2 = self;
      v10 = 2112;
      v11 = activeCopy;
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
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyDiagnosticLogTransferInProgress"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _internalState2 = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDiagnosticLogTransferInProgress"];
  }

  else
  {
    v6 = 0;
  }

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (void)deviceConfigurationChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v10 = 2080;
    v11 = "[MTRDevice_XPC deviceConfigurationChanged:]";
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  objc_opt_class();
  if (((changedCopy != 0) & objc_opt_isKindOfClass()) != 0)
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
      selfCopy2 = self;
      v10 = 2112;
      v11 = changedCopy;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ invalid deviceConfigurationChanged: nodeID: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_ensureValidValuesForKeys:(id)keys inInternalState:(id)state valueRequired:(BOOL)required
{
  requiredCopy = required;
  v41 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  stateCopy = state;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = keysCopy;
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
        v14 = [stateCopy objectForKeyedSubscript:{v13, v23, v24, v25, v26}];
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
              selfCopy2 = self;
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

            if (requiredCopy)
            {
              goto LABEL_22;
            }

            [stateCopy removeObjectForKey:v13];
          }
        }

        else if (requiredCopy)
        {
          v20 = sub_2393D9044(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            selfCopy2 = self;
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

- (void)device:(id)device internalStateUpdated:(id)updated
{
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  updatedCopy = updated;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v13 = 2080;
    v14 = "[MTRDevice_XPC device:internalStateUpdated:]";
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  objc_opt_class();
  if (((deviceCopy != 0) & objc_opt_isKindOfClass()) != 0)
  {
    objc_opt_class();
    if (((updatedCopy != 0) & objc_opt_isKindOfClass()) != 0)
    {
      v9 = [updatedCopy mutableCopy];
      [(MTRDevice_XPC *)self _updateInternalState:v9];

      goto LABEL_16;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v13 = 2112;
      v14 = updatedCopy;
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
      selfCopy3 = self;
      v13 = 2112;
      v14 = deviceCopy;
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

- (void)_updateInternalState:(id)state
{
  v24[2] = *MEMORY[0x277D85DE8];
  stateCopy = state;
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

  if ([(MTRDevice_XPC *)self _ensureValidValuesForKeys:qword_27DF77608 inInternalState:stateCopy valueRequired:1]&& [(MTRDevice_XPC *)self _ensureValidValuesForKeys:qword_27DF77618 inInternalState:stateCopy valueRequired:0])
  {
    _internalState = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _internalState2 = [(MTRDevice_XPC *)self _internalState];
      v8 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    }

    else
    {
      v8 = 0;
    }

    v9 = [stateCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [stateCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    }

    else
    {
      v10 = 0;
    }

    _internalState3 = [(MTRDevice_XPC *)self _internalState];
    v12 = [_internalState3 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _internalState4 = [(MTRDevice_XPC *)self _internalState];
      v14 = [_internalState4 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    }

    else
    {
      v14 = 0;
    }

    v15 = [stateCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [stateCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    }

    else
    {
      v16 = 0;
    }

    [(MTRDevice_XPC *)self _setInternalState:stateCopy];
    if ((sub_238DB32F8(v8, v10) & 1) == 0)
    {
      state = [(MTRDevice_XPC *)self state];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_23929AF50;
      v20[3] = &unk_278A744F0;
      v20[4] = self;
      v20[5] = state;
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

  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _internalState2 = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  }

  else
  {
    v6 = 0;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  if (unsignedIntegerValue == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (unsignedIntegerValue == 2);
  }

  return v7;
}

- (BOOL)deviceCachePrimed
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _internalState2 = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
  }

  else
  {
    v6 = 0;
  }

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (id)estimatedStartTime
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedStartTime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _internalState2 = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedStartTime"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)estimatedSubscriptionLatency
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedSubscriptionLatency"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _internalState2 = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedSubscriptionLatency"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)readAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_23929B75C;
  v30 = sub_23929B76C;
  v31 = 0;
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_23929B774;
  v25[3] = &unk_278A73D30;
  v25[4] = self;
  v25[5] = a2;
  v16 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v25];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_23929B8BC;
  v24[3] = &unk_278A74518;
  v24[4] = &v26;
  [v16 deviceController:uniqueIdentifier nodeID:nodeID readAttributeWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy params:paramsCopy withReply:v24];

  v20 = v27[5];
  _Block_object_dispose(&v26, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)timeout
{
  v28[10] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  valueCopy = value;
  intervalCopy = interval;
  timeoutCopy = timeout;
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_23929BC00;
  v28[3] = &unk_278A73D30;
  v28[4] = self;
  v28[5] = a2;
  v20 = [xpcConnection remoteObjectProxyWithErrorHandler:v28];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  [v20 deviceController:uniqueIdentifier nodeID:nodeID writeAttributeWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timeoutCopy];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePaths:(id)paths
{
  v23 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_23929B75C;
  v21 = sub_23929B76C;
  array = [MEMORY[0x277CBEA60] array];
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23929C11C;
  v16[3] = &unk_278A73D30;
  v16[4] = self;
  v16[5] = a2;
  v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23929C264;
  v15[3] = &unk_278A73D58;
  v15[4] = &v17;
  [v8 deviceController:uniqueIdentifier nodeID:nodeID readAttributePaths:pathsCopy withReply:v15];

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 queue:(id)self1 completion:(id)self2
{
  v48 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  valuesCopy = values;
  intervalCopy = interval;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  queueCopy = queue;
  completionCopy = completion;
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_23929C760;
  v45[3] = &unk_278A72D20;
  v20 = queueCopy;
  v46 = v20;
  v21 = completionCopy;
  v47 = v21;
  v29 = xpcConnection;
  v22 = [xpcConnection remoteObjectProxyWithErrorHandler:v45];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_23929C944;
  v38[3] = &unk_278A74568;
  v39 = v20;
  selfCopy = self;
  v41 = dCopy;
  v42 = iDCopy;
  v43 = commandIDCopy;
  v44 = v21;
  [v22 deviceController:uniqueIdentifier nodeID:nodeID invokeCommandWithEndpointID:v41 clusterID:v42 commandID:v43 commandFields:fieldsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timeoutCopy serverSideProcessingTimeout:processingTimeoutCopy completion:v38];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)invokeCommands:(id)commands queue:(id)queue completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  queueCopy = queue;
  completionCopy = completion;
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_23929D3EC;
  v26[3] = &unk_278A74590;
  v26[4] = self;
  v29 = a2;
  v12 = queueCopy;
  v27 = v12;
  v13 = completionCopy;
  v28 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v26];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23929D630;
  v21[3] = &unk_278A745E0;
  v22 = v12;
  selfCopy = self;
  v24 = commandsCopy;
  v25 = v13;
  [v14 deviceController:uniqueIdentifier nodeID:nodeID invokeCommands:v24 completion:v21];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_23929E070;
  v25[3] = &unk_278A74590;
  v25[4] = self;
  v28 = a2;
  v13 = queueCopy;
  v26 = v13;
  v14 = completionCopy;
  v27 = v14;
  v15 = [xpcConnection remoteObjectProxyWithErrorHandler:v25];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23929E2B4;
  v22[3] = &unk_278A74608;
  v23 = v13;
  v24 = v14;
  [v15 deviceController:uniqueIdentifier nodeID:nodeID downloadLogOfType:type timeout:v22 completion:timeout];

  v19 = *MEMORY[0x277D85DE8];
}

@end