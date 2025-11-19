@interface MTRDevice
+ (MTRDevice)deviceWithNodeID:(NSNumber *)nodeID controller:(MTRDeviceController *)controller;
+ (MTRDevice)deviceWithNodeID:(uint64_t)nodeID deviceController:(MTRDeviceController *)deviceController;
- (BOOL)_attributeDataValue:(id)a3 isEqualToDataValue:(id)a4;
- (BOOL)_attributeDataValue:(id)a3 satisfiesValueExpectation:(id)a4;
- (BOOL)_callDelegatesWithBlock:(id)a3;
- (BOOL)_delegateExists;
- (BOOL)_iterateDelegatesWithBlock:(id)a3;
- (BOOL)_lockAndCallDelegatesWithBlock:(id)a3;
- (BOOL)delegateExists;
- (BOOL)deviceCachePrimed;
- (BOOL)diagnosticLogTransferInProgress;
- (NSDictionary)readAttributeWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID params:(MTRReadParams *)params;
- (NSNumber)estimatedSubscriptionLatency;
- (id)descriptorClusters;
- (id)getAllAttributesReport;
- (id)initForSubclassesWithNodeID:(id)a3 controller:(id)a4;
- (id)readAttributePaths:(id)a3;
- (id)waitForAttributeValues:(id)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6;
- (void)_addDelegate:(id)a3 queue:(id)a4 interestedPathsForAttributes:(id)a5 interestedPathsForEvents:(id)a6;
- (void)_attributeValue:(id)a3 reportedForPath:(id)a4;
- (void)_cancelAllAttributeValueWaiters;
- (void)_forgetAttributeWaiter:(id)a3;
- (void)_invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 expectedValues:(id)a7 expectedValueInterval:(id)a8 timedInvokeTimeout:(id)a9 serverSideProcessingTimeout:(id)a10 queue:(id)a11 completion:(id)a12;
- (void)_invokeKnownCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandPayload:(id)a6 expectedValues:(id)a7 expectedValueInterval:(id)a8 timedInvokeTimeout:(id)a9 serverSideProcessingTimeout:(id)a10 responseClass:(Class)a11 queue:(id)a12 completion:(id)a13;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)addDelegate:(id)a3 queue:(id)a4 interestedPathsForAttributes:(id)a5 interestedPathsForEvents:(id)a6;
- (void)dealloc;
- (void)downloadLogOfType:(int64_t)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6;
- (void)invalidate;
- (void)invokeCommandWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID commandID:(NSNumber *)commandID commandFields:(id)commandFields expectedValues:(NSArray *)expectedValues expectedValueInterval:(NSNumber *)expectedValueInterval timedInvokeTimeout:(NSNumber *)timeout queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion;
- (void)invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 expectedValues:(id)a7 expectedValueInterval:(id)a8 queue:(id)a9 completion:(id)a10;
- (void)invokeCommands:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)openCommissioningWindowWithDiscriminator:(NSNumber *)discriminator duration:(NSNumber *)duration queue:(dispatch_queue_t)queue completion:(MTRDeviceOpenCommissioningWindowHandler)completion;
- (void)openCommissioningWindowWithSetupPasscode:(NSNumber *)setupPasscode discriminator:(NSNumber *)discriminator duration:(NSNumber *)duration queue:(dispatch_queue_t)queue completion:(MTRDeviceOpenCommissioningWindowHandler)completion;
- (void)removeDelegate:(id)a3;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)queue;
- (void)writeAttributeWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID value:(id)value expectedValueInterval:(NSNumber *)expectedValueInterval timedWriteTimeout:(NSNumber *)timeout;
@end

@implementation MTRDevice

- (id)initForSubclassesWithNodeID:(id)a3 controller:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MTRDevice;
  v9 = [(MTRDevice *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [[MTRDelegateManager alloc] initWithOwner:v9];
    delegateManager = v10->_delegateManager;
    v10->_delegateManager = v11;

    objc_storeStrong(&v10->_deviceController, a4);
    objc_storeStrong(&v10->_nodeID, a3);
    v10->_state = 0;
  }

  return v10;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "MTRDevice dealloc: %p", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v5 = self;
    sub_2393D5320(0, 2);
  }

  [(MTRDeviceController *)self->_deviceController deviceDeallocated];
  os_unfair_lock_lock(&self->_lock);
  [(MTRDevice *)self _cancelAllAttributeValueWaiters];
  os_unfair_lock_unlock(&self->_lock);
  v6.receiver = self;
  v6.super_class = MTRDevice;
  [(MTRDevice *)&v6 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

+ (MTRDevice)deviceWithNodeID:(NSNumber *)nodeID controller:(MTRDeviceController *)controller
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = nodeID;
  v6 = controller;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [(MTRDeviceController *)v6 deviceForNodeID:v5];
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Can't create device with nodeID: %@, controller: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = delegate;
  v7 = queue;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ setDelegate %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v10 = self;
    v11 = v6;
    sub_2393D5320(0, 2);
  }

  [(MTRDevice *)self _addDelegate:v6 queue:v7 interestedPathsForAttributes:0 interestedPathsForEvents:0, v10, v11];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ addDelegate %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v10 = self;
    v11 = v6;
    sub_2393D5320(0, 2);
  }

  [(MTRDevice *)self _addDelegate:v6 queue:v7 interestedPathsForAttributes:0 interestedPathsForEvents:0, v10, v11];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(id)a3 queue:(id)a4 interestedPathsForAttributes:(id)a5 interestedPathsForEvents:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_2393D9044(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v21 = self;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "%@ addDelegate %@ with interested attribute paths %@ event paths %@", buf, 0x2Au);
  }

  if (sub_2393D5398(2u))
  {
    v18 = v12;
    v19 = v13;
    v16 = self;
    v17 = v10;
    sub_2393D5320(0, 2);
  }

  [(MTRDevice *)self _addDelegate:v10 queue:v11 interestedPathsForAttributes:v12 interestedPathsForEvents:v13, v16, v17, v18, v19];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_addDelegate:(id)a3 queue:(id)a4 interestedPathsForAttributes:(id)a5 interestedPathsForEvents:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  os_unfair_lock_lock(&self->_lock);
  v13 = sub_2393B0330([MTRDeviceDelegateInfo alloc], v14, v10, v11, v12);
  [(MTRDelegateManager *)self->_delegateManager addDelegateInfo:v13];
  [(MTRDevice *)self _delegateAdded:v14];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(MTRDelegateManager *)self->_delegateManager removeDelegate:v4];
  [(MTRDevice *)self _delegateRemoved:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(MTRDelegateManager *)self->_delegateManager removeAllDelegates];
  [(MTRDevice *)self _cancelAllAttributeValueWaiters];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)delegateExists
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(MTRDevice *)self _delegateExists];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)_delegateExists
{
  os_unfair_lock_assert_owner(&self->_lock);

  return [(MTRDevice *)self _iterateDelegatesWithBlock:0];
}

- (BOOL)_iterateDelegatesWithBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(MTRDelegateManager *)self->_delegateManager iterateDelegatesWithBlock:v4];

  return v5 != 0;
}

- (BOOL)_callDelegatesWithBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  LOBYTE(self) = [(MTRDelegateManager *)self->_delegateManager callDelegatesWithBlock:v4];

  return self;
}

- (BOOL)_lockAndCallDelegatesWithBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MTRDevice *)self _callDelegatesWithBlock:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (NSDictionary)readAttributeWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID params:(MTRReadParams *)params
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = endpointID;
  v11 = clusterID;
  v12 = attributeID;
  v13 = params;
  v14 = sub_2393D9044(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(a2);
    *buf = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v19 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)writeAttributeWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID value:(id)value expectedValueInterval:(NSNumber *)expectedValueInterval timedWriteTimeout:(NSNumber *)timeout
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = endpointID;
  v25 = clusterID;
  v15 = attributeID;
  v16 = value;
  v17 = expectedValueInterval;
  v18 = timeout;
  v19 = sub_2393D9044(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = v14;
    v21 = objc_opt_class();
    v22 = NSStringFromSelector(a2);
    *buf = 138412546;
    v27 = v21;
    v28 = 2112;
    v29 = v22;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);

    v14 = v20;
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v24 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePaths:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v8 = objc_opt_class();
    NSStringFromSelector(a2);
    v13 = v12 = v8;
    sub_2393D5320(0, 1);
  }

  v9 = [MEMORY[0x277CBEA60] array];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)descriptorClusters
{
  v25[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v16 = [MTRAttributeRequestPath requestPathWithEndpointID:0 clusterID:&unk_284C43C10 attributeID:0];
  v25[0] = v16;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v17 = [(MTRDevice *)self readAttributePaths:v3];

  v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v17, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v17;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"attributePath"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v7 objectForKeyedSubscript:@"attributePath"];
          if (v9)
          {
            v10 = [v7 objectForKeyedSubscript:@"data"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [v7 objectForKeyedSubscript:@"data"];
              v12 = v11 == 0;

              if (v12)
              {
                continue;
              }

              v8 = [v7 objectForKeyedSubscript:@"data"];
              v9 = [v7 objectForKeyedSubscript:@"attributePath"];
              [v18 setObject:v8 forKeyedSubscript:v9];
            }

            else
            {
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);
  v13 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 expectedValues:(id)a7 expectedValueInterval:(id)a8 queue:(id)a9 completion:(id)a10
{
  v26[2] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  if (!v19)
  {
    v25[0] = @"type";
    v25[1] = @"value";
    v26[0] = @"Structure";
    v26[1] = MEMORY[0x277CBEBF8];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  }

  [(MTRDevice *)self invokeCommandWithEndpointID:v16 clusterID:v17 commandID:v18 commandFields:v19 expectedValues:v20 expectedValueInterval:v21 timedInvokeTimeout:0 queue:v22 completion:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)invokeCommandWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID commandID:(NSNumber *)commandID commandFields:(id)commandFields expectedValues:(NSArray *)expectedValues expectedValueInterval:(NSNumber *)expectedValueInterval timedInvokeTimeout:(NSNumber *)timeout queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = endpointID;
  v31 = clusterID;
  v32 = commandID;
  v17 = commandFields;
  v18 = expectedValues;
  v19 = expectedValueInterval;
  v20 = timeout;
  v21 = queue;
  v22 = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v17;
    v24 = [v23 objectForKeyedSubscript:@"type"];
    v25 = [@"Structure" isEqual:v24];

    if (v25)
    {
      [(MTRDevice *)self _invokeCommandWithEndpointID:v30 clusterID:v31 commandID:v32 commandFields:v23 expectedValues:v18 expectedValueInterval:v19 timedInvokeTimeout:v20 serverSideProcessingTimeout:0 queue:v21 completion:v22];
    }

    else
    {
      v27 = sub_2393D9044(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v34 = self;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "%@ invokeCommandWithEndpointID passed a commandFields (%@) that is not a structure-typed data-value object", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v28 = sub_23921C1E4(MTRError, 0x1650000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice.mm");
      v22[2](v22, 0, v28);
    }
  }

  else
  {
    v26 = sub_2393D9044(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v34 = self;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "%@ invokeCommandWithEndpointID passed a commandFields (%@) that is not a data-value NSDictionary object", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v23 = sub_23921C1E4(MTRError, 0x15D0000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice.mm");
    v22[2](v22, 0, v23);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_invokeCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandFields:(id)a6 expectedValues:(id)a7 expectedValueInterval:(id)a8 timedInvokeTimeout:(id)a9 serverSideProcessingTimeout:(id)a10 queue:(id)a11 completion:(id)a12
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = sub_2393D9044(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = v17;
    v25 = objc_opt_class();
    v26 = NSStringFromSelector(a2);
    *buf = 138412546;
    v35 = v25;
    v36 = 2112;
    v37 = v26;
    _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);

    v17 = v24;
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v28 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_invokeKnownCommandWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 commandPayload:(id)a6 expectedValues:(id)a7 expectedValueInterval:(id)a8 timedInvokeTimeout:(id)a9 serverSideProcessingTimeout:(id)a10 responseClass:(Class)a11 queue:(id)a12 completion:(id)a13
{
  v34 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v33 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a12;
  v26 = a13;
  if (objc_opt_respondsToSelector())
  {
    v31 = v22;
    v32 = v20;
    v40 = 0;
    v27 = [v21 _encodeAsDataValue:&v40];
    v28 = v40;
    if (v27)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_2393B2384;
      v35[3] = &unk_278A72EB0;
      v36[1] = a11;
      v36[0] = v26;
      v29 = MEMORY[0x23EE78590](v35);
      [(MTRDevice *)self _invokeCommandWithEndpointID:v34 clusterID:v19 commandID:v32 commandFields:v27 expectedValues:v31 expectedValueInterval:v33 timedInvokeTimeout:v23 serverSideProcessingTimeout:v24 queue:v25 completion:v29];
      v30 = v36;
    }

    else
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_2393B236C;
      v37[3] = &unk_278A71698;
      v30 = &v39;
      v39 = v26;
      v38 = v28;
      dispatch_async(v25, v37);
      v29 = v38;
    }

    v22 = v31;
    v20 = v32;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2393B22E0;
    block[3] = &unk_278A72B88;
    v42 = v26;
    dispatch_async(v25, block);
    v28 = v42;
  }
}

- (void)invokeCommands:(id)a3 queue:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_2393D9044(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v16 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2393B26BC;
  block[3] = &unk_278A72B88;
  v18 = v10;
  v14 = v10;
  dispatch_async(v9, block);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)openCommissioningWindowWithSetupPasscode:(NSNumber *)setupPasscode discriminator:(NSNumber *)discriminator duration:(NSNumber *)duration queue:(dispatch_queue_t)queue completion:(MTRDeviceOpenCommissioningWindowHandler)completion
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = setupPasscode;
  v13 = discriminator;
  v14 = duration;
  v15 = queue;
  v16 = completion;
  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromSelector(a2);
    *buf = 138412546;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v22 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2393B2964;
  block[3] = &unk_278A72B88;
  v24 = v16;
  v20 = v16;
  dispatch_async(v15, block);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)openCommissioningWindowWithDiscriminator:(NSNumber *)discriminator duration:(NSNumber *)duration queue:(dispatch_queue_t)queue completion:(MTRDeviceOpenCommissioningWindowHandler)completion
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = discriminator;
  v11 = duration;
  v12 = queue;
  v13 = completion;
  v14 = sub_2393D9044(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(a2);
    *buf = 138412546;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v19 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2393B2BF8;
  block[3] = &unk_278A72B88;
  v21 = v13;
  v17 = v13;
  dispatch_async(v12, block);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)downloadLogOfType:(int64_t)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a6;
  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v15 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2393B2E5C;
  block[3] = &unk_278A72B88;
  v17 = v9;
  v13 = v9;
  dispatch_async(v8, block);

  v14 = *MEMORY[0x277D85DE8];
}

- (NSNumber)estimatedSubscriptionLatency
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v8 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getAllAttributesReport
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v8 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)deviceCachePrimed
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v8 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)diagnosticLogTransferInProgress
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v8 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_attributeDataValue:(id)a3 isEqualToDataValue:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 | v7)
  {
    v9 = 0;
    if (v6 && v7)
    {
      v10 = [v6 objectForKeyedSubscript:@"type"];
      v11 = [v8 objectForKeyedSubscript:@"type"];
      if ([v10 isEqual:v11])
      {
        v12 = [v6 objectForKeyedSubscript:@"value"];
        v13 = [v8 objectForKeyedSubscript:@"value"];
        if (v12 == v13)
        {
          v9 = 1;
        }

        else
        {
          v14 = [v6 objectForKeyedSubscript:@"value"];
          v15 = [v8 objectForKeyedSubscript:@"value"];
          v9 = [v14 isEqual:v15];
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = self;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "%@ attribute data-value comparison does not expect comparing two nil dictionaries", buf, 0xCu);
    }

    v9 = 1;
    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_attributeDataValue:(id)a3 satisfiesValueExpectation:(id)a4
{
  v95 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 | v7)
  {
    if (!v6 || !v7)
    {
      v31 = sub_2393D9044(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = "observed";
        if (v6)
        {
          v32 = "expected";
        }

        *buf = 136315138;
        v90 = v32;
        _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "@ observed to expected attribute data-value comparison does not expect a nil %s", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    v9 = [v6 objectForKeyedSubscript:@"type"];
    v10 = [v8 objectForKeyedSubscript:@"type"];
    v11 = [v9 isEqual:v10];

    if ((v11 & 1) == 0)
    {
LABEL_70:
      v21 = 0;
      goto LABEL_71;
    }

    v12 = [v8 objectForKeyedSubscript:@"type"];
    v13 = [@"Array" isEqual:v12];

    if (v13)
    {
      v14 = [v6 objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v8 objectForKeyedSubscript:@"value"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v76 = [v6 objectForKeyedSubscript:@"value"];
          v75 = [v8 objectForKeyedSubscript:@"value"];
          v17 = [v76 count];
          if (v17 == [v75 count])
          {
            v18 = 0;
            v19 = 0x277CBE000uLL;
            while (1)
            {
              v20 = [v76 count];
              v21 = v18 >= v20;
              if (v18 >= v20)
              {
                goto LABEL_107;
              }

              obj = [v76 objectAtIndexedSubscript:v18];
              v78 = [v75 objectAtIndexedSubscript:v18];
              v22 = *(v19 + 2752);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || (v23 = *(v19 + 2752), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                v61 = sub_2393D9044(0);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  v90 = self;
                  v91 = 2112;
                  v92 = obj;
                  v93 = 2112;
                  v94 = v78;
                  _os_log_impl(&dword_238DAE000, v61, OS_LOG_TYPE_ERROR, "%@ expected or observed array-value contains entries that are not NSDictionary: %@, %@", buf, 0x20u);
                }

                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(0, 1);
                }

                goto LABEL_96;
              }

              v24 = [obj objectForKeyedSubscript:@"data"];
              v25 = v19;
              v26 = *(v19 + 2752);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & (v24 != 0)) == 0)
              {
                v62 = sub_2393D9044(0);
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v90 = self;
                  v91 = 2112;
                  v92 = v24;
                  _os_log_impl(&dword_238DAE000, v62, OS_LOG_TYPE_ERROR, "%@ observed data-value is not an NSDictionary: %@", buf, 0x16u);
                }

                v63 = v24;
                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(0, 1);
                }

                goto LABEL_95;
              }

              v27 = [v78 objectForKeyedSubscript:@"data"];
              v28 = *(v25 + 2752);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & (v27 != 0)) == 0)
              {
                v64 = sub_2393D9044(0);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v90 = self;
                  v91 = 2112;
                  v92 = v27;
                  _os_log_impl(&dword_238DAE000, v64, OS_LOG_TYPE_ERROR, "%@ expected data-value is not an NSDictionary: %@", buf, 0x16u);
                }

                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(0, 1);
                }

                v63 = v24;
                goto LABEL_95;
              }

              v29 = [(MTRDevice *)self _attributeDataValue:v24 satisfiesValueExpectation:v27];

              ++v18;
              v19 = v25;
              if (!v29)
              {
                goto LABEL_107;
              }
            }
          }

LABEL_72:
          v21 = 0;
LABEL_107:

          goto LABEL_71;
        }
      }

      else
      {
      }

      v57 = sub_2393D9044(0);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v90 = self;
        v91 = 2112;
        v92 = v6;
        v93 = 2112;
        v94 = v8;
        _os_log_impl(&dword_238DAE000, v57, OS_LOG_TYPE_ERROR, "%@ at least one of observed and expected value is not an NSArrray: %@, %@", buf, 0x20u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    v33 = [v8 objectForKeyedSubscript:@"type"];
    v34 = [@"Structure" isEqual:v33];

    if (v34)
    {
      v35 = [v6 objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = [v8 objectForKeyedSubscript:@"value"];
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();

        if (v37)
        {
          v76 = [v6 objectForKeyedSubscript:@"value"];
          v75 = [v8 objectForKeyedSubscript:@"value"];
          v38 = [v76 count];
          if (v38 == [v75 count])
          {
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            obj = v75;
            v68 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
            if (v68)
            {
              v69 = *v84;
              while (1)
              {
                v70 = 0;
LABEL_34:
                if (*v84 != v69)
                {
                  objc_enumerationMutation(obj);
                }

                v39 = *(*(&v83 + 1) + 8 * v70);
                objc_opt_class();
                v73 = v39;
                if ((objc_opt_isKindOfClass() & (v39 != 0)) != 1)
                {
                  goto LABEL_100;
                }

                v40 = [v39 objectForKeyedSubscript:@"contextTag"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_99;
                }

                v41 = [v39 objectForKeyedSubscript:@"contextTag"];
                if (!v41)
                {
                  goto LABEL_99;
                }

                v42 = [v73 objectForKeyedSubscript:@"data"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

LABEL_99:
LABEL_100:
                  v67 = sub_2393D9044(0);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v90 = self;
                    v91 = 2112;
                    v92 = v73;
                    _os_log_impl(&dword_238DAE000, v67, OS_LOG_TYPE_ERROR, "%@ expected structure-value contains invalid field %@", buf, 0x16u);
                  }

                  if (sub_2393D5398(1u))
                  {
                    sub_2393D5320(0, 1);
                  }

                  v21 = 0;
                  goto LABEL_105;
                }

                v43 = [v73 objectForKeyedSubscript:@"data"];
                v44 = v43 == 0;

                if (v44)
                {
                  goto LABEL_100;
                }

                v78 = [v73 objectForKeyedSubscript:@"contextTag"];
                v81 = 0u;
                v82 = 0u;
                v79 = 0u;
                v80 = 0u;
                v71 = v76;
                v45 = [v71 countByEnumeratingWithState:&v79 objects:v87 count:16];
                if (!v45)
                {
                  break;
                }

                v72 = v45;
                v74 = *v80;
LABEL_43:
                v46 = 0;
                while (1)
                {
                  if (*v80 != v74)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v47 = *(*(&v79 + 1) + 8 * v46);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & (v47 != 0)) != 1)
                  {
                    goto LABEL_89;
                  }

                  v48 = [v47 objectForKeyedSubscript:@"contextTag"];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_88;
                  }

                  v49 = [v47 objectForKeyedSubscript:@"contextTag"];
                  if (!v49)
                  {
                    goto LABEL_88;
                  }

                  v50 = [v47 objectForKeyedSubscript:@"data"];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

LABEL_88:
LABEL_89:
                    v65 = sub_2393D9044(0);
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v90 = self;
                      v91 = 2112;
                      v92 = v47;
                      _os_log_impl(&dword_238DAE000, v65, OS_LOG_TYPE_ERROR, "%@ observed structure-value contains invalid field %@", buf, 0x16u);
                    }

                    v63 = v71;
                    if (sub_2393D5398(1u))
                    {
                      sub_2393D5320(0, 1);
                    }

                    v66 = obj;
                    goto LABEL_94;
                  }

                  v51 = [v47 objectForKeyedSubscript:@"data"];
                  v52 = v51 == 0;

                  if (v52)
                  {
                    goto LABEL_89;
                  }

                  v53 = [v47 objectForKeyedSubscript:@"contextTag"];
                  if ([v78 isEqual:v53])
                  {
                    break;
                  }

                  if (v72 == ++v46)
                  {
                    v72 = [v71 countByEnumeratingWithState:&v79 objects:v87 count:16];
                    if (v72)
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_97;
                  }
                }

                v54 = [v47 objectForKeyedSubscript:@"data"];
                v55 = [v73 objectForKeyedSubscript:@"data"];
                v56 = [(MTRDevice *)self _attributeDataValue:v54 satisfiesValueExpectation:v55];

                if (!v56)
                {
                  v75 = obj;
                  v76 = v71;
                  goto LABEL_96;
                }

                if (++v70 != v68)
                {
                  goto LABEL_34;
                }

                v68 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
                v21 = 1;
                if (!v68)
                {
                  v75 = obj;
                  v76 = v71;
                  goto LABEL_106;
                }
              }

LABEL_97:
              v66 = obj;
              v63 = v71;
LABEL_94:
              v75 = v66;
              v76 = v63;
LABEL_95:

LABEL_96:
              v21 = 0;
            }

            else
            {
              v21 = 1;
LABEL_105:
              v75 = obj;
            }

LABEL_106:

            goto LABEL_107;
          }

          goto LABEL_72;
        }
      }

      else
      {
      }

      v58 = sub_2393D9044(0);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v90 = self;
        v91 = 2112;
        v92 = v6;
        v93 = 2112;
        v94 = v8;
        _os_log_impl(&dword_238DAE000, v58, OS_LOG_TYPE_ERROR, "%@ at least one of observed and expected value is not an NSArrray: %@, %@", buf, 0x20u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_70;
      }

LABEL_69:
      sub_2393D5320(0, 1);
      goto LABEL_70;
    }

    v21 = [(MTRDevice *)self _attributeDataValue:v6 isEqualToDataValue:v8];
  }

  else
  {
    v30 = sub_2393D9044(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v90 = self;
      _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "%@ observed to expected attribute data-value comparison does not expect comparing two nil dictionaries", buf, 0xCu);
    }

    v21 = 1;
    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

LABEL_71:

  v59 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)waitForAttributeValues:(id)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6
{
  v71 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v45 = a5;
  v46 = a6;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v11)
  {
    v12 = *v59;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v58 + 1) + 8 * i);
        v15 = [obj objectForKeyedSubscript:v14];
        v16 = sub_238EE7184(v15);

        if (!v16)
        {
          v38 = MEMORY[0x277CCACA8];
          [obj objectForKeyedSubscript:v14];
          v39 = [v38 stringWithFormat:@"waitForAttributeValues handed invalid data-value %@ for path %@", v14, objc_claimAutoreleasedReturnValue()];
          sub_23921D8FC(v39);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v11);
  }

  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(obj, "count")}];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v47 = obj;
  v17 = [v47 countByEnumeratingWithState:&v54 objects:v69 count:16];
  if (v17)
  {
    v18 = *v55;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v55 != v18)
        {
          objc_enumerationMutation(v47);
        }

        v20 = *(*(&v54 + 1) + 8 * j);
        v21 = [v20 endpoint];
        v22 = [v20 cluster];
        v23 = [v20 attribute];
        v24 = [MTRAttributeRequestPath requestPathWithEndpointID:v21 clusterID:v22 attributeID:v23];
        [v48 addObject:v24];
      }

      v17 = [v47 countByEnumeratingWithState:&v54 objects:v69 count:16];
    }

    while (v17);
  }

  v44 = [(MTRDevice *)self readAttributePaths:v48];
  v25 = [[MTRAttributeValueWaiter alloc] initWithDevice:self values:v47 queue:v45 completion:v46];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v26 = v44;
  v27 = [v26 countByEnumeratingWithState:&v50 objects:v68 count:16];
  if (v27)
  {
    v28 = *v51;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v51 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v50 + 1) + 8 * k);
        v31 = [v30 objectForKeyedSubscript:@"data"];
        v32 = [v30 objectForKeyedSubscript:@"attributePath"];
        [(MTRAttributeValueWaiter *)v25 _attributeValue:v31 reportedForPath:v32 byDevice:self];
      }

      v27 = [v26 countByEnumeratingWithState:&v50 objects:v68 count:16];
    }

    while (v27);
  }

  if ([(MTRAttributeValueWaiter *)v25 allValuesSatisfied])
  {
    v33 = sub_2393D9044(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v63 = self;
      v64 = 2112;
      v65 = *&v47;
      _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_DEFAULT, "%@ waitForAttributeValues no need to wait, values already match: %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v41 = self;
      v42 = *&v47;
      sub_2393D5320(0, 2);
    }

    [(MTRAttributeValueWaiter *)v25 _notifyWithError:0, v41, *&v42];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self || !self->_attributeValueWaiters)
    {
      v40 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      sub_23952E21C(self, v40);
    }

    if (self)
    {
      attributeValueWaiters = self->_attributeValueWaiters;
    }

    else
    {
      attributeValueWaiters = 0;
    }

    [(NSHashTable *)attributeValueWaiters addObject:v25];
    os_unfair_lock_unlock(&self->_lock);
    v35 = sub_2393D9044(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v63 = self;
      v64 = 2048;
      v65 = a4;
      v66 = 2112;
      v67 = v47;
      _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_DEFAULT, "%@ waitForAttributeValues will wait up to %f seconds for %@", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v43 = v47;
      v42 = a4;
      v41 = self;
      sub_2393D5320(0, 2);
    }

    [(MTRAttributeValueWaiter *)v25 _startTimerWithTimeout:a4, v41, *&v42, v43];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)_cancelAllAttributeValueWaiters
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self)
  {
    attributeValueWaiters = self->_attributeValueWaiters;
  }

  else
  {
    attributeValueWaiters = 0;
  }

  v4 = attributeValueWaiters;
  sub_23952E21C(self, 0);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v8++) _notifyCancellation];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (MTRDevice)deviceWithNodeID:(uint64_t)nodeID deviceController:(MTRDeviceController *)deviceController
{
  v6 = deviceController;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:nodeID];
  v8 = [a1 deviceWithNodeID:v7 controller:v6];

  return v8;
}

- (void)_attributeValue:(id)a3 reportedForPath:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  if (self)
  {
    attributeValueWaiters = self->_attributeValueWaiters;
  }

  else
  {
    attributeValueWaiters = 0;
  }

  v9 = attributeValueWaiters;
  v10 = 0;
  v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if ([v14 _attributeValue:v6 reportedForPath:v7 byDevice:self] && objc_msgSend(v14, "allValuesSatisfied"))
        {
          if (!v10)
          {
            v10 = [MEMORY[0x277CBEB18] array];
          }

          [v10 addObject:v14];
        }
      }

      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v15);
        }

        if (self)
        {
          v19 = self->_attributeValueWaiters;
        }

        else
        {
          v19 = 0;
        }

        v20 = *(*(&v24 + 1) + 8 * v18);
        v21 = v19;
        [(NSHashTable *)v21 removeObject:v20, v24];

        [v20 _notifyWithError:0];
        ++v18;
      }

      while (v16 != v18);
      v22 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
      v16 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_forgetAttributeWaiter:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    attributeValueWaiters = self->_attributeValueWaiters;
  }

  else
  {
    attributeValueWaiters = 0;
  }

  [(NSHashTable *)attributeValueWaiters removeObject:v5];
  os_unfair_lock_unlock(&self->_lock);
}

@end