@interface MTRDeviceController
+ (BOOL)checkForError:(ChipError)error logMsg:(id)msg error:(id *)a5;
+ (MTRDeviceController)sharedControllerWithID:(id)controllerID xpcConnectBlock:(MTRXPCConnectBlock)xpcConnectBlock;
+ (MTRDeviceController)sharedControllerWithId:(id)controllerID xpcConnectBlock:(MTRXPCConnectBlock)xpcConnectBlock;
+ (MTRReadParams)decodeXPCReadParams:(NSDictionary *)params;
+ (MTRSubscribeParams)decodeXPCSubscribeParams:(NSDictionary *)params;
+ (NSArray)decodeXPCResponseValues:(NSArray *)values;
+ (NSArray)encodeXPCResponseValues:(NSArray *)values;
+ (NSData)computePASEVerifierForSetupPasscode:(NSNumber *)setupPasscode iterations:(NSNumber *)iterations salt:(NSData *)salt error:(NSError *)error;
+ (NSDictionary)encodeXPCReadParams:(MTRReadParams *)params;
+ (NSDictionary)encodeXPCSubscribeParams:(MTRSubscribeParams *)params;
+ (NSXPCInterface)xpcInterfaceForClientProtocol;
+ (NSXPCInterface)xpcInterfaceForServerProtocol;
- (BOOL)addServerEndpoint:(id)endpoint;
- (BOOL)cancelCommissioningForNodeID:(NSNumber *)nodeID error:(NSError *)error;
- (BOOL)commissionDevice:(uint64_t)deviceId commissioningParams:(MTRCommissioningParameters *)commissioningParams error:(NSError *)error;
- (BOOL)commissionNodeWithID:(NSNumber *)nodeID commissioningParams:(MTRCommissioningParameters *)commissioningParams error:(NSError *)error;
- (BOOL)continueCommissioningDevice:(void *)opaqueDeviceHandle ignoreAttestationFailure:(BOOL)ignoreAttestationFailure error:(NSError *)error;
- (BOOL)getBaseDevice:(uint64_t)deviceID queue:(dispatch_queue_t)queue completionHandler:(MTRDeviceConnectionCallback)completionHandler;
- (BOOL)isRunning;
- (BOOL)openPairingWindow:(uint64_t)deviceID duration:(NSUInteger)duration error:(NSError *)error;
- (BOOL)pairDevice:(uint64_t)deviceID address:(NSString *)address port:(uint16_t)port setupPINCode:(uint32_t)setupPINCode error:(NSError *)error;
- (BOOL)pairDevice:(uint64_t)deviceID discriminator:(uint16_t)discriminator setupPINCode:(uint32_t)setupPINCode error:(NSError *)error;
- (BOOL)pairDevice:(uint64_t)deviceID onboardingPayload:(NSString *)onboardingPayload error:(NSError *)error;
- (BOOL)setOperationalCertificateIssuer:(id)issuer queue:(id)queue;
- (BOOL)setupCommissioningSessionWithDiscoveredDevice:(MTRCommissionableBrowserResult *)discoveredDevice payload:(MTRSetupPayload *)payload newNodeID:(NSNumber *)newNodeID error:(NSError *)error;
- (BOOL)setupCommissioningSessionWithPayload:(MTRSetupPayload *)payload newNodeID:(NSNumber *)newNodeID error:(NSError *)error;
- (BOOL)startBrowseForCommissionables:(id)delegate queue:(dispatch_queue_t)queue;
- (BOOL)stopBrowseForCommissionables;
- (BOOL)stopDevicePairing:(uint64_t)deviceID error:(NSError *)error;
- (MTRBaseDevice)deviceBeingCommissionedWithNodeID:(NSNumber *)nodeID error:(NSError *)error;
- (MTRBaseDevice)getDeviceBeingCommissioned:(uint64_t)deviceId error:(NSError *)error;
- (MTRDeviceController)initWithParameters:(id)parameters error:(id *)error;
- (NSArray)devices;
- (NSArray)nodesWithStoredData;
- (NSData)attestationChallengeForDeviceID:(NSNumber *)deviceID;
- (NSData)fetchAttestationChallengeForDeviceId:(uint64_t)deviceId;
- (NSNumber)compressedFabricID;
- (NSNumber)controllerNodeID;
- (NSString)description;
- (NSString)openPairingWindowWithPIN:(uint64_t)deviceID duration:(NSUInteger)duration discriminator:(NSUInteger)discriminator setupPIN:(NSUInteger)setupPIN error:(NSError *)error;
- (id)_deviceForNodeID:(id)d createIfNeeded:(BOOL)needed;
- (id)_setupDeviceForNodeID:(id)d prefetchedClusterData:(id)data;
- (id)baseDeviceForNodeID:(id)d;
- (id)deviceForNodeID:(id)d;
- (id)initForSubclasses:(BOOL)subclasses uniqueIdentifier:(id)identifier;
- (unint64_t)_iterateDelegateInfoWithBlock:(id)block;
- (void)_callDelegatesWithBlock:(id)block logString:(const char *)string;
- (void)_clearDeviceControllerDelegates;
- (void)_notifyDelegatesOfSuspendState;
- (void)addDeviceControllerDelegate:(id)delegate queue:(id)queue;
- (void)asyncDispatchToMatterQueue:(id)queue errorHandler:(id)handler;
- (void)controller:(id)controller commissioneeHasReceivedNetworkCredentials:(id)credentials;
- (void)controller:(id)controller commissioningComplete:(id)complete nodeID:(id)d metrics:(id)metrics;
- (void)controller:(id)controller commissioningSessionEstablishmentDone:(id)done;
- (void)controller:(id)controller readCommissioneeInfo:(id)info;
- (void)controller:(id)controller statusUpdate:(int64_t)update;
- (void)dealloc;
- (void)deviceDeallocated;
- (void)forgetDeviceWithNodeID:(id)d;
- (void)preWarmCommissioningSession;
- (void)removeDevice:(id)device;
- (void)removeDeviceControllerDelegate:(id)delegate;
- (void)removeServerEndpointInternal:(id)internal queue:(id)queue completion:(id)completion;
- (void)resume;
- (void)setDeviceControllerDelegate:(id)delegate queue:(dispatch_queue_t)queue;
- (void)setNocChainIssuer:(id)nocChainIssuer queue:(dispatch_queue_t)queue;
- (void)setPairingDelegate:(id)delegate queue:(dispatch_queue_t)queue;
- (void)suspend;
@end

@implementation MTRDeviceController

- (id)initForSubclasses:(BOOL)subclasses uniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = MTRDeviceController;
  v7 = [(MTRDeviceController *)&v13 init];
  [(MTRDeviceController *)v7 setUniqueIdentifier:identifierCopy];
  v7->_underlyingDeviceMapLock._os_unfair_lock_opaque = 0;
  atomic_store(subclasses, &v7->_suspended);
  strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  nodeIDToDeviceMap = v7->_nodeIDToDeviceMap;
  v7->_nodeIDToDeviceMap = strongToWeakObjectsMapTable;

  v10 = [[MTRDelegateManager alloc] initWithOwner:v7];
  delegateManager = v7->_delegateManager;
  v7->_delegateManager = v10;

  return v7;
}

- (MTRDeviceController)initWithParameters:(id)parameters error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = parametersCopy;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Starting up with XPC Device Controller Parameters: %@", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    v8 = off_278A6FDA8;
LABEL_7:
    v9 = [objc_alloc(*v8) initWithParameters:parametersCopy error:error];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = parametersCopy;
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Starting up with Mach Service XPC Device Controller Parameters: %@", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    v12 = [MTRDeviceController_XPC alloc];
    machServiceName = [v10 machServiceName];
    v9 = -[MTRDeviceController_XPC initWithMachServiceName:options:](v12, "initWithMachServiceName:options:", machServiceName, [v10 connectionOptions]);
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v15 = sub_2393D9044(0);
    v16 = v15;
    if (isKindOfClass)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = parametersCopy;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "Starting up with Device Controller Parameters: %@", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2);
      }

      v8 = off_278A6FDA0;
      goto LABEL_7;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = parametersCopy;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Unsupported type of MTRDeviceControllerAbstractParameters: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0xAF0000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_27:

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ dealloc", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
    sub_2393D5320(0, 2);
  }

  v6.receiver = self;
  v6.super_class = MTRDeviceController;
  [(MTRDeviceController *)&v6 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uniqueIdentifier = [(MTRDeviceController *)self uniqueIdentifier];
  isSuspended = [(MTRDeviceController *)self isSuspended];
  v8 = @"NO";
  if (isSuspended)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p, uuid: %@, suspended: %@>", v5, self, uniqueIdentifier, v8];

  return v9;
}

- (BOOL)isRunning
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

- (void)_notifyDelegatesOfSuspendState
{
  isSuspended = [(MTRDeviceController *)self isSuspended];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_238F3A768;
  v4[3] = &unk_278A73028;
  v4[4] = self;
  v5 = isSuspended;
  [(MTRDeviceController *)self _callDelegatesWithBlock:v4 logString:"[MTRDeviceController _notifyDelegatesOfSuspendState]"];
}

- (void)suspend
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy6 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ suspending", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
    sub_2393D5320(0, 2);
  }

  if ([(MTRDeviceController *)self isRunning])
  {
    deviceMapLock = [(MTRDeviceController *)self deviceMapLock];
    os_unfair_lock_lock(deviceMapLock);
    v5 = atomic_load(&self->_suspended);
    if (v5)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy6 = self;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ already suspended", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2);
      }

      os_unfair_lock_unlock(deviceMapLock);
      v6 = 0;
    }

    else
    {
      atomic_store(1u, &self->_suspended);
      nodeIDToDeviceMap = [(MTRDeviceController *)self nodeIDToDeviceMap];
      objectEnumerator = [nodeIDToDeviceMap objectEnumerator];
      allObjects = [objectEnumerator allObjects];

      os_unfair_lock_unlock(deviceMapLock);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [allObjects count];
        *buf = 138412546;
        selfCopy6 = self;
        v25 = 2048;
        v26 = v10;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ found %lu devices to suspend", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        selfCopy5 = self;
        v17 = [allObjects count];
        sub_2393D5320(0, 2);
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = allObjects;
      v11 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v18 + 1) + 8 * i) controllerSuspended];
          }

          v11 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }

      [(MTRDeviceController *)self _notifyDelegatesOfSuspendState];
      [(MTRDeviceController *)self _controllerSuspended];
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy6 = self;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%@ not running; can't suspend", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy6 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ resuming", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
    sub_2393D5320(0, 2);
  }

  if ([(MTRDeviceController *)self isRunning])
  {
    deviceMapLock = [(MTRDeviceController *)self deviceMapLock];
    os_unfair_lock_lock(deviceMapLock);
    v5 = atomic_load(&self->_suspended);
    if (v5)
    {
      atomic_store(0, &self->_suspended);
      nodeIDToDeviceMap = [(MTRDeviceController *)self nodeIDToDeviceMap];
      objectEnumerator = [nodeIDToDeviceMap objectEnumerator];
      allObjects = [objectEnumerator allObjects];

      os_unfair_lock_unlock(deviceMapLock);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [allObjects count];
        *buf = 138412546;
        selfCopy6 = self;
        v25 = 2048;
        v26 = v9;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ found %lu devices to resume", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        selfCopy4 = self;
        v17 = [allObjects count];
        sub_2393D5320(0, 2);
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = allObjects;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v18 + 1) + 8 * i) controllerResumed];
          }

          v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }

      [(MTRDeviceController *)self _notifyDelegatesOfSuspendState];
      [(MTRDeviceController *)self _controllerResumed];
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy6 = self;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ already not suspended", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2);
      }

      os_unfair_lock_unlock(deviceMapLock);
      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy6 = self;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%@ not running; can't resume", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (NSNumber)controllerNodeID
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

- (BOOL)setupCommissioningSessionWithPayload:(MTRSetupPayload *)payload newNodeID:(NSNumber *)newNodeID error:(NSError *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = payload;
  v9 = newNodeID;
  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v15 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x13B00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)setupCommissioningSessionWithDiscoveredDevice:(MTRCommissionableBrowserResult *)discoveredDevice payload:(MTRSetupPayload *)payload newNodeID:(NSNumber *)newNodeID error:(NSError *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = discoveredDevice;
  v11 = payload;
  v12 = newNodeID;
  v13 = sub_2393D9044(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromSelector(a2);
    *buf = 138412546;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v18 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x14700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  }

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)commissionNodeWithID:(NSNumber *)nodeID commissioningParams:(MTRCommissioningParameters *)commissioningParams error:(NSError *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = nodeID;
  v9 = commissioningParams;
  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v15 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x15200000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)continueCommissioningDevice:(void *)opaqueDeviceHandle ignoreAttestationFailure:(BOOL)ignoreAttestationFailure error:(NSError *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v12 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x15D00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)cancelCommissioningForNodeID:(NSNumber *)nodeID error:(NSError *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = nodeID;
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v12 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x16600000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)startBrowseForCommissionables:(id)delegate queue:(dispatch_queue_t)queue
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = delegate;
  v7 = queue;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v13 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)stopBrowseForCommissionables
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

- (void)preWarmCommissioningSession
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v7 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (MTRBaseDevice)deviceBeingCommissionedWithNodeID:(NSNumber *)nodeID error:(NSError *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = nodeID;
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v12 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x18000000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)baseDeviceForNodeID:(id)d
{
  dCopy = d;
  v5 = [[MTRBaseDevice alloc] initWithNodeID:dCopy controller:self];

  return v5;
}

- (id)_setupDeviceForNodeID:(id)d prefetchedClusterData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(a2);
    *buf = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v15 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v12 = [[MTRDevice alloc] initForSubclassesWithNodeID:dCopy controller:self];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_deviceForNodeID:(id)d createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  dCopy = d;
  deviceMapLock = [(MTRDeviceController *)self deviceMapLock];
  os_unfair_lock_lock(deviceMapLock);
  v8 = [(NSMapTable *)self->_nodeIDToDeviceMap objectForKey:dCopy];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !neededCopy;
  }

  if (!v9)
  {
    v8 = [(MTRDeviceController *)self _setupDeviceForNodeID:dCopy prefetchedClusterData:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_238F3C170;
    v11[3] = &unk_278A73050;
    v11[4] = self;
    [(MTRDeviceController *)self _callDelegatesWithBlock:v11 logString:"[MTRDeviceController _deviceForNodeID:createIfNeeded:]"];
  }

  os_unfair_lock_unlock(deviceMapLock);

  return v8;
}

- (id)deviceForNodeID:(id)d
{
  v3 = [(MTRDeviceController *)self _deviceForNodeID:d createIfNeeded:1];

  return v3;
}

- (void)forgetDeviceWithNodeID:(id)d
{
  dCopy = d;
  deviceMapLock = [(MTRDeviceController *)self deviceMapLock];
  os_unfair_lock_lock(deviceMapLock);
  v5 = [(NSMapTable *)self->_nodeIDToDeviceMap objectForKey:dCopy];
  os_unfair_lock_unlock(deviceMapLock);
  if (v5)
  {
    [(MTRDeviceController *)self removeDevice:v5];
  }
}

- (void)removeDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceMapLock = [(MTRDeviceController *)self deviceMapLock];
  os_unfair_lock_lock(deviceMapLock);
  nodeID = [deviceCopy nodeID];
  v7 = [(NSMapTable *)self->_nodeIDToDeviceMap objectForKey:nodeID];
  v8 = v7;
  if (v7 == deviceCopy)
  {
    [v7 invalidate];
    [(NSMapTable *)self->_nodeIDToDeviceMap removeObjectForKey:nodeID];
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v13 = 2048;
      v14 = deviceCopy;
      v15 = 2048;
      unsignedLongLongValue = [nodeID unsignedLongLongValue];
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ Error: Cannot remove device %p with nodeID %llu", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      [nodeID unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }
  }

  os_unfair_lock_unlock(deviceMapLock);
  v10 = *MEMORY[0x277D85DE8];
}

- (NSArray)devices
{
  v16 = *MEMORY[0x277D85DE8];
  deviceMapLock = [(MTRDeviceController *)self deviceMapLock];
  os_unfair_lock_lock(deviceMapLock);
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_nodeIDToDeviceMap objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [array addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(deviceMapLock);
  v9 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)deviceDeallocated
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_238F3C670;
  v2[3] = &unk_278A73050;
  v2[4] = self;
  [(MTRDeviceController *)self _callDelegatesWithBlock:v2 logString:"[MTRDeviceController deviceDeallocated]"];
}

- (BOOL)setOperationalCertificateIssuer:(id)issuer queue:(id)queue
{
  v18 = *MEMORY[0x277D85DE8];
  issuerCopy = issuer;
  queueCopy = queue;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v13 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (NSData)computePASEVerifierForSetupPasscode:(NSNumber *)setupPasscode iterations:(NSNumber *)iterations salt:(NSData *)salt error:(NSError *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = setupPasscode;
  v10 = iterations;
  v11 = salt;
  unsignedIntValue = [(NSNumber *)v10 unsignedIntValue];
  v13 = v11;
  sub_238DB6950(&v25, [(NSData *)v13 bytes], [(NSData *)v13 length]);

  v22 = v25;
  v23 = sub_2393F2748(v27, unsignedIntValue, &v22, [(NSNumber *)v9 unsignedIntValue]);
  v24 = v14;
  *&v22 = "dwnfw_pase_verifier_for_code";
  *(&v22 + 1) = &v23;
  LODWORD(v25) = 0;
  *(&v25 + 1) = "dwnfw_pase_verifier_for_code";
  v26 = 0;
  sub_23948BD20(&v25);
  if ([MTRDeviceController checkForError:v23 logMsg:v24 error:@"PASE verifier generation failed", error]|| (v20 = &v25, v21 = 97, v23 = sub_2393F265C(v27, &v20), v24 = v15, [MTRDeviceController checkForError:v23 logMsg:v15 error:@"PASE verifier serialization failed", error]))
  {
    v16 = 0;
  }

  else
  {
    sub_238DB6950(v19, v20, v21);
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:v19[0] length:v19[1]];
  }

  sub_238F3F7E4(&v22);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (NSData)attestationChallengeForDeviceID:(NSNumber *)deviceID
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = deviceID;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v10 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)addServerEndpoint:(id)endpoint
{
  v15 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v10 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)removeServerEndpointInternal:(id)internal queue:(id)queue completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  queueCopy = queue;
  completionCopy = completion;
  v11 = sub_2393D9044(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v15 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (queueCopy && completionCopy)
  {
    dispatch_async(queueCopy, completionCopy);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (BOOL)checkForError:(ChipError)error logMsg:(id)msg error:(id *)a5
{
  mFile = error.mFile;
  v7 = *&error.mError;
  v20 = *MEMORY[0x277D85DE8];
  msgCopy = msg;
  if (v7)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = sub_2393C9138();
      v16 = 2112;
      selfCopy = self;
      v18 = 2080;
      uTF8String = [msgCopy UTF8String];
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Error(%s): %@ %s", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      v11 = msgCopy;
      [msgCopy UTF8String];
      sub_2393D5320(0, 1);
    }

    if (a5)
    {
      *a5 = sub_23921C1E4(MTRError, v7, mFile);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

- (void)asyncDispatchToMatterQueue:(id)queue errorHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v13 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v11 = sub_23921C1E4(MTRError, 0x22600000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  handlerCopy[2](handlerCopy, v11);

  v12 = *MEMORY[0x277D85DE8];
}

- (NSNumber)compressedFabricID
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

- (NSArray)nodesWithStoredData
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
  return MEMORY[0x277CBEBF8];
}

- (void)setDeviceControllerDelegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = delegate;
  v8 = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  strongDelegateForSetDelegateAPI = selfCopy->_strongDelegateForSetDelegateAPI;
  if (!strongDelegateForSetDelegateAPI)
  {
LABEL_8:
    objc_storeStrong(&selfCopy->_strongDelegateForSetDelegateAPI, delegate);
    [(MTRDeviceController *)selfCopy addDeviceControllerDelegate:v7 queue:v8];
    goto LABEL_9;
  }

  v11 = sub_2393D9044(0);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (strongDelegateForSetDelegateAPI != v7)
  {
    if (v12)
    {
      *buf = 138412802;
      v18 = selfCopy;
      v19 = 2048;
      v20 = strongDelegateForSetDelegateAPI;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "%@ setDeviceControllerDelegate: replacing %p with %p", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v15 = selfCopy->_strongDelegateForSetDelegateAPI;
      v16 = v7;
      v14 = selfCopy;
      sub_2393D5320(0, 2);
    }

    [(MTRDeviceController *)selfCopy removeDeviceControllerDelegate:selfCopy->_strongDelegateForSetDelegateAPI, v14, v15, v16];
    goto LABEL_8;
  }

  if (v12)
  {
    *buf = 138412546;
    v18 = selfCopy;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "%@ setDeviceControllerDelegate: delegate %p is already set", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

LABEL_9:
  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addDeviceControllerDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [[MTRDelegateInfo alloc] initWithDelegate:delegateCopy queue:queueCopy];
  [(MTRDelegateManager *)selfCopy->_delegateManager addDelegateInfo:v8];

  objc_sync_exit(selfCopy);
}

- (void)removeDeviceControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = delegateCopy;
  strongDelegateForSetDelegateAPI = selfCopy->_strongDelegateForSetDelegateAPI;
  if (strongDelegateForSetDelegateAPI == delegateCopy)
  {
    selfCopy->_strongDelegateForSetDelegateAPI = 0;

    v5 = delegateCopy;
  }

  [(MTRDelegateManager *)selfCopy->_delegateManager removeDelegate:v5];
  objc_sync_exit(selfCopy);
}

- (void)_clearDeviceControllerDelegates
{
  obj = self;
  objc_sync_enter(obj);
  strongDelegateForSetDelegateAPI = obj->_strongDelegateForSetDelegateAPI;
  obj->_strongDelegateForSetDelegateAPI = 0;

  [(MTRDelegateManager *)obj->_delegateManager removeAllDelegates];
  objc_sync_exit(obj);
}

- (unint64_t)_iterateDelegateInfoWithBlock:(id)block
{
  selfCopy = self;
  blockCopy = block;
  objc_sync_enter(selfCopy);
  v6 = [(MTRDelegateManager *)selfCopy->_delegateManager iterateDelegatesWithBlock:blockCopy];

  objc_sync_exit(selfCopy);
  return v6;
}

- (void)_callDelegatesWithBlock:(id)block logString:(const char *)string
{
  obj = self;
  blockCopy = block;
  objc_sync_enter(obj);
  [(MTRDelegateManager *)obj->_delegateManager callDelegatesWithBlock:blockCopy logString:string];

  objc_sync_exit(obj);
}

- (void)controller:(id)controller statusUpdate:(int64_t)update
{
  controllerCopy = controller;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_238F3DA84;
  v8[3] = &unk_278A73078;
  v9 = controllerCopy;
  updateCopy = update;
  v7 = controllerCopy;
  [(MTRDeviceController *)self _callDelegatesWithBlock:v8 logString:"[MTRDeviceController controller:statusUpdate:]"];
}

- (void)controller:(id)controller commissioningSessionEstablishmentDone:(id)done
{
  controllerCopy = controller;
  doneCopy = done;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_238F3DBE0;
  v10[3] = &unk_278A730A0;
  v11 = controllerCopy;
  v12 = doneCopy;
  v8 = doneCopy;
  v9 = controllerCopy;
  [(MTRDeviceController *)self _callDelegatesWithBlock:v10 logString:"[MTRDeviceController controller:commissioningSessionEstablishmentDone:]"];
}

- (void)controller:(id)controller commissioningComplete:(id)complete nodeID:(id)d metrics:(id)metrics
{
  controllerCopy = controller;
  completeCopy = complete;
  dCopy = d;
  metricsCopy = metrics;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_238F3DDA0;
  v18[3] = &unk_278A730C8;
  v19 = controllerCopy;
  v20 = completeCopy;
  v21 = dCopy;
  v22 = metricsCopy;
  v14 = metricsCopy;
  v15 = dCopy;
  v16 = completeCopy;
  v17 = controllerCopy;
  [(MTRDeviceController *)self _callDelegatesWithBlock:v18 logString:"[MTRDeviceController controller:commissioningComplete:nodeID:metrics:]"];
}

- (void)controller:(id)controller readCommissioneeInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_238F3DF4C;
  v10[3] = &unk_278A730A0;
  v11 = controllerCopy;
  v12 = infoCopy;
  v8 = infoCopy;
  v9 = controllerCopy;
  [(MTRDeviceController *)self _callDelegatesWithBlock:v10 logString:"[MTRDeviceController controller:readCommissioneeInfo:]"];
}

- (void)controller:(id)controller commissioneeHasReceivedNetworkCredentials:(id)credentials
{
  controllerCopy = controller;
  credentialsCopy = credentials;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_238F3E0F0;
  v10[3] = &unk_278A730A0;
  v11 = controllerCopy;
  v12 = credentialsCopy;
  v8 = credentialsCopy;
  v9 = controllerCopy;
  [(MTRDeviceController *)self _callDelegatesWithBlock:v10 logString:"[MTRDeviceController controller:commissioneeHasReceivedNetworkCredentials:]"];
}

- (NSData)fetchAttestationChallengeForDeviceId:(uint64_t)deviceId
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:deviceId];
  v5 = [(MTRDeviceController *)self attestationChallengeForDeviceID:v4];

  return v5;
}

- (BOOL)getBaseDevice:(uint64_t)deviceID queue:(dispatch_queue_t)queue completionHandler:(MTRDeviceConnectionCallback)completionHandler
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = queue;
  v8 = completionHandler;
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(a2);
    *buf = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v14 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)pairDevice:(uint64_t)deviceID discriminator:(uint16_t)discriminator setupPINCode:(uint32_t)setupPINCode error:(NSError *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v13 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x34800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)pairDevice:(uint64_t)deviceID address:(NSString *)address port:(uint16_t)port setupPINCode:(uint32_t)setupPINCode error:(NSError *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = address;
  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v15 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x35500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)pairDevice:(uint64_t)deviceID onboardingPayload:(NSString *)onboardingPayload error:(NSError *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = onboardingPayload;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v13 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x35E00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)commissionDevice:(uint64_t)deviceId commissioningParams:(MTRCommissioningParameters *)commissioningParams error:(NSError *)error
{
  v8 = commissioningParams;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:deviceId];
  LOBYTE(error) = [(MTRDeviceController *)self commissionNodeWithID:v9 commissioningParams:v8 error:error];

  return error;
}

- (BOOL)stopDevicePairing:(uint64_t)deviceID error:(NSError *)error
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:deviceID];
  LOBYTE(error) = [(MTRDeviceController *)self cancelCommissioningForNodeID:v6 error:error];

  return error;
}

- (MTRBaseDevice)getDeviceBeingCommissioned:(uint64_t)deviceId error:(NSError *)error
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:deviceId];
  v7 = [(MTRDeviceController *)self deviceBeingCommissionedWithNodeID:v6 error:error];

  return v7;
}

- (BOOL)openPairingWindow:(uint64_t)deviceID duration:(NSUInteger)duration error:(NSError *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v12 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x37800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (NSString)openPairingWindowWithPIN:(uint64_t)deviceID duration:(NSUInteger)duration discriminator:(NSUInteger)discriminator setupPIN:(NSUInteger)setupPIN error:(NSError *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(a2);
    *buf = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    objc_opt_class();
    v14 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x38500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController.mm");
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)setPairingDelegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v8 = delegate;
  v6 = queue;
  v7 = [[MTRDevicePairingDelegateShim alloc] initWithDelegate:v8];
  [(MTRDeviceController *)self setDeviceControllerDelegate:v7 queue:v6];
}

- (void)setNocChainIssuer:(id)nocChainIssuer queue:(dispatch_queue_t)queue
{
  v8 = nocChainIssuer;
  v6 = queue;
  v7 = [[MTROperationalCertificateChainIssuerShim alloc] initWithIssuer:v8];
  [(MTRDeviceController *)self setOperationalCertificateIssuer:v7 queue:v6];
}

+ (MTRDeviceController)sharedControllerWithID:(id)controllerID xpcConnectBlock:(MTRXPCConnectBlock)xpcConnectBlock
{
  v4 = [MTRDeviceControllerOverXPC sharedControllerWithID:controllerID xpcConnectBlock:xpcConnectBlock];

  return v4;
}

+ (NSArray)encodeXPCResponseValues:(NSArray *)values
{
  v41 = *MEMORY[0x277D85DE8];
  v28 = values;
  if (v28)
  {
    array = [MEMORY[0x277CBEB18] array];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v28;
    v3 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v3)
    {
      goto LABEL_25;
    }

    v30 = *v34;
    while (1)
    {
      v32 = v3;
      for (i = 0; i != v32; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * i);
        if (!v5)
        {
LABEL_14:
          [array addObject:v5];
          continue;
        }

        v6 = [*(*(&v33 + 1) + 8 * i) objectForKeyedSubscript:@"attributePath"];
        if (v6)
        {
        }

        else
        {
          v7 = [v5 objectForKeyedSubscript:@"commandPath"];
          v8 = v7 == 0;

          if (v8)
          {
            goto LABEL_14;
          }
        }

        v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
        [v9 addEntriesFromDictionary:v5];
        v10 = [v5 objectForKeyedSubscript:@"attributePath"];
        v11 = v10 == 0;

        if (!v11)
        {
          v12 = [v5 objectForKeyedSubscript:@"attributePath"];
          v13 = v12;
          if (v12)
          {
            endpoint = [v12 endpoint];
            v38 = endpoint;
            cluster = [v13 cluster];
            v39 = cluster;
            attribute = [v13 attribute];
            v40 = attribute;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:3];
          }

          else
          {
            v17 = 0;
          }

          [v9 setObject:v17 forKeyedSubscript:@"attributePath"];
        }

        v18 = [v5 objectForKeyedSubscript:@"commandPath"];
        v19 = v18 == 0;

        if (!v19)
        {
          v20 = [v5 objectForKeyedSubscript:@"commandPath"];
          v21 = v20;
          if (v20)
          {
            endpoint2 = [v20 endpoint];
            v38 = endpoint2;
            cluster2 = [v21 cluster];
            v39 = cluster2;
            command = [v21 command];
            v40 = command;
            v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:3];
          }

          else
          {
            v25 = 0;
          }

          [v9 setObject:v25 forKeyedSubscript:@"commandPath"];
        }

        [array addObject:v9];
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v3)
      {
LABEL_25:

        goto LABEL_27;
      }
    }
  }

  array = 0;
LABEL_27:

  v26 = *MEMORY[0x277D85DE8];

  return array;
}

+ (NSArray)decodeXPCResponseValues:(NSArray *)values
{
  v38 = *MEMORY[0x277D85DE8];
  v28 = values;
  if (v28)
  {
    array = [MEMORY[0x277CBEB18] array];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v28;
    v3 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v3)
    {
      goto LABEL_26;
    }

    v30 = *v34;
    while (1)
    {
      v31 = v3;
      for (i = 0; i != v31; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * i);
        if (!v5)
        {
          goto LABEL_11;
        }

        v6 = [*(*(&v33 + 1) + 8 * i) objectForKeyedSubscript:@"attributePath"];
        if (v6)
        {

          goto LABEL_12;
        }

        v7 = [v5 objectForKeyedSubscript:@"commandPath"];
        v8 = v7 == 0;

        if (v8)
        {
LABEL_11:
          [array addObject:v5];
        }

LABEL_12:
        v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
        [v9 addEntriesFromDictionary:v5];
        v10 = [v5 objectForKeyedSubscript:@"attributePath"];
        v11 = v10 == 0;

        if (!v11)
        {
          v12 = [v5 objectForKeyedSubscript:@"attributePath"];
          v13 = v12;
          if (v12 && [v12 count] == 3)
          {
            v14 = [v13 objectAtIndexedSubscript:0];
            v15 = [v13 objectAtIndexedSubscript:1];
            v16 = [v13 objectAtIndexedSubscript:2];
            v17 = [MTRAttributePath attributePathWithEndpointID:v14 clusterID:v15 attributeID:v16];
          }

          else
          {
            v17 = 0;
          }

          [v9 setObject:v17 forKeyedSubscript:@"attributePath"];
        }

        v18 = [v5 objectForKeyedSubscript:@"commandPath"];
        v19 = v18 == 0;

        if (!v19)
        {
          v20 = [v5 objectForKeyedSubscript:@"commandPath"];
          v21 = v20;
          if (v20 && [v20 count] == 3)
          {
            v22 = [v21 objectAtIndexedSubscript:0];
            v23 = [v21 objectAtIndexedSubscript:1];
            v24 = [v21 objectAtIndexedSubscript:2];
            v25 = [MTRCommandPath commandPathWithEndpointID:v22 clusterID:v23 commandID:v24];
          }

          else
          {
            v25 = 0;
          }

          [v9 setObject:v25 forKeyedSubscript:@"commandPath"];
        }

        [array addObject:v9];
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v3)
      {
LABEL_26:

        goto LABEL_28;
      }
    }
  }

  array = 0;
LABEL_28:

  v26 = *MEMORY[0x277D85DE8];

  return array;
}

+ (NSDictionary)encodeXPCReadParams:(MTRReadParams *)params
{
  v3 = params;
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTRReadParams shouldFilterByFabric](v3, "shouldFilterByFabric")}];
    [dictionary setObject:v5 forKeyedSubscript:@"fabricFiltered"];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

+ (MTRReadParams)decodeXPCReadParams:(NSDictionary *)params
{
  v3 = params;
  if (v3)
  {
    v4 = objc_alloc_init(MTRReadParams);
    sub_2392CE3D4(v3, v4);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (NSDictionary)encodeXPCSubscribeParams:(MTRSubscribeParams *)params
{
  v3 = params;
  if (v3)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = [MTRDeviceController encodeXPCReadParams:v3];
    v6 = [v4 dictionaryWithDictionary:v5];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTRSubscribeParams shouldReplaceExistingSubscriptions](v3, "shouldReplaceExistingSubscriptions") ^ 1}];
    [v6 setObject:v7 forKeyedSubscript:@"keepPreviousSubscriptions"];

    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTRSubscribeParams shouldResubscribeAutomatically](v3, "shouldResubscribeAutomatically")}];
    [v6 setObject:v8 forKeyedSubscript:@"autoResubscribe"];

    minInterval = [(MTRSubscribeParams *)v3 minInterval];
    [v6 setObject:minInterval forKeyedSubscript:@"minInterval"];

    maxInterval = [(MTRSubscribeParams *)v3 maxInterval];
    [v6 setObject:maxInterval forKeyedSubscript:@"maxInterval"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (MTRSubscribeParams)decodeXPCSubscribeParams:(NSDictionary *)params
{
  v3 = params;
  if (v3)
  {
    v4 = [MTRSubscribeParams alloc];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"minInterval"];
    v6 = [(NSDictionary *)v3 objectForKeyedSubscript:@"maxInterval"];
    v7 = [(MTRSubscribeParams *)v4 initWithMinInterval:v5 maxInterval:v6];

    sub_2392CE3D4(v3, v7);
    v8 = [(NSDictionary *)v3 objectForKeyedSubscript:@"keepPreviousSubscriptions"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 BOOLValue] ^ 1;
    }

    else
    {
      v10 = 1;
    }

    [(MTRSubscribeParams *)v7 setReplaceExistingSubscriptions:v10];
    v11 = [(NSDictionary *)v3 objectForKeyedSubscript:@"autoResubscribe"];
    v12 = v11;
    if (v11)
    {
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    [(MTRSubscribeParams *)v7 setResubscribeAutomatically:bOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (NSXPCInterface)xpcInterfaceForServerProtocol
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D13F48];
  v3 = sub_2392CE8EC();
  [v2 setClasses:v3 forSelector:sel_readAttributeWithController_nodeId_endpointId_clusterId_attributeId_params_completion_ argumentIndex:0 ofReply:1];

  v4 = sub_2392CE8EC();
  [v2 setClasses:v4 forSelector:sel_writeAttributeWithController_nodeId_endpointId_clusterId_attributeId_value_timedWriteTimeout_completion_ argumentIndex:0 ofReply:1];

  v5 = sub_2392CE8EC();
  [v2 setClasses:v5 forSelector:sel_invokeCommandWithController_nodeId_endpointId_clusterId_commandId_fields_timedInvokeTimeout_completion_ argumentIndex:0 ofReply:1];

  v6 = sub_2392CE8EC();
  [v2 setClasses:v6 forSelector:sel_readAttributeCacheWithController_nodeId_endpointId_clusterId_attributeId_completion_ argumentIndex:0 ofReply:1];

  v7 = sub_2392CE8EC();
  [v2 setClasses:v7 forSelector:sel_downloadLogWithController_nodeId_type_timeout_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (NSXPCInterface)xpcInterfaceForClientProtocol
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D14010];
  v3 = sub_2392CE8EC();
  [v2 setClasses:v3 forSelector:sel_handleReportWithController_nodeId_values_error_ argumentIndex:2 ofReply:0];

  return v2;
}

+ (MTRDeviceController)sharedControllerWithId:(id)controllerID xpcConnectBlock:(MTRXPCConnectBlock)xpcConnectBlock
{
  v4 = [MTRDeviceController sharedControllerWithID:controllerID xpcConnectBlock:xpcConnectBlock];

  return v4;
}

@end