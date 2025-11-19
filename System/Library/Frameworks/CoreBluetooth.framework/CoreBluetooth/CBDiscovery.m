@interface CBDiscovery
+ (id)devicesWithDiscoveryFlags:(unint64_t)a3 endpoint:(id)a4 error:(id *)a5;
- (BOOL)needsAdvertisingAddress;
- (BOOL)needsBLEScan;
- (BOOL)needsIdentify;
- (BOOL)updateWithCBDiscovery:(id)a3;
- (CBDiscovery)init;
- (CBDiscovery)initWithXPCObject:(id)a3 error:(id *)a4;
- (NSArray)discoveredDevices;
- (OS_xpc_object)xpcSubscriberRepresentation;
- (id)_ensureXPCStarted;
- (id)descriptionWithLevel:(int)a3;
- (id)xpcAuthFlagsCreateWithDeviceFlags:(unint64_t)a3;
- (unint64_t)updateWithXPCSubscriberInfo:(id)a3;
- (void)_activate;
- (void)_activateDirectStart;
- (void)_activateXPCCompleted:(id)a3;
- (void)_activateXPCStart:(BOOL)a3;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_lostAllDevices;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)a3;
- (void)_xpcReceivedDeviceFound:(id)a3;
- (void)_xpcReceivedDeviceLost:(id)a3;
- (void)_xpcReceivedDevicesBuffered:(id)a3;
- (void)_xpcReceivedMessage:(id)a3;
- (void)_xpcReceivedPowerStateChanged:(id)a3;
- (void)_xpcReceivedSystemOverrideChanged:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)addDiscoveryType:(int)a3;
- (void)clearDuplicateFilterCache;
- (void)dealloc;
- (void)devicesMatchingPropertiesOn:(id)a3 exactMatch:(BOOL)a4 completionHandler:(id)a5;
- (void)encodeWithXPCObject:(id)a3;
- (void)finish;
- (void)injectAOPBufAdv:(id)a3;
- (void)invalidate;
- (void)removeAllDiscoveryTypes;
- (void)removeDiscoveryType:(int)a3;
- (void)reportMockDeviceFound:(id)a3;
- (void)reportMockDeviceLost:(id)a3;
- (void)setAuthFlags:(unint64_t)a3;
- (void)setAuthFlagsExcluded:(unint64_t)a3;
- (void)setBleScanRate:(int)a3;
- (void)setBleScanRateScreenOff:(int)a3;
- (void)setBufferedConfigsForAOP:(id)a3;
- (void)setDeviceFilter:(id)a3;
- (void)setDiscoveryFlags:(unint64_t)a3;
- (void)setLabel:(id)a3;
- (void)setOobKeys:(id)a3;
- (void)setServiceUUIDs:(id)a3;
- (void)setSoftwareUpdatePayloads:(id)a3;
- (void)setSpatialInteractionFilter:(id)a3;
- (void)setUseCase:(unsigned int)a3;
- (void)setUseCaseClientIDs:(id)a3;
- (void)xpcReceivedMessage:(id)a3;
@end

@implementation CBDiscovery

- (BOOL)needsIdentify
{
  if (self->_authFlags || self->_authFlagsExcluded || (self->_discoveryFlags & 0x2000201400020108) != 0)
  {
    return 1;
  }

  v5 = CBDiscoveryTypesNeedsIdentify();

  return CBDiscoveryTypesContainTypes(self->_discoveryTypesInternal.bitArray, v5);
}

void *__32__CBDiscovery__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[8] == *(a1 + 40))
  {
    return [result xpcReceivedMessage:a2];
  }

  return result;
}

- (CBDiscovery)init
{
  v5.receiver = self;
  v5.super_class = CBDiscovery;
  v2 = [(CBDiscovery *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v2->_ucat = &gLogCategory_CBDiscovery;
    v3 = v2;
  }

  return v2;
}

- (void)_activate
{
  v26 = self->_mockID;
  if (v26)
  {
    var0 = self->_ucat->var0;
    if (var0 > 30)
    {
      goto LABEL_20;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_20:
        CBMockAddOrUpdateDiscovery(v26, self);
        v12 = MEMORY[0x1C68DF720](self->_activateCompletion);
        activateCompletion = self->_activateCompletion;
        self->_activateCompletion = 0;

        if (v12)
        {
          v12[2](v12, 0);
        }

LABEL_30:

        goto LABEL_31;
      }

      ucat = self->_ucat;
    }

    clientID = self->_clientID;
    LogPrintF_safe();
    goto LABEL_20;
  }

  if (self->_bluetoothStateChangedHandler)
  {
    self->_internalFlags |= 1u;
  }

  if (self->_testListenerEndpoint)
  {
    v10 = 1;
  }

  else
  {
    v10 = gCBDaemonServer == 0;
  }

  v11 = !v10;
  self->_direct = v11;
  if (self->_invalidateCalled)
  {
    v12 = CBErrorF(-71148, "Activate after invalidate", v3, v4, v5, v6, v7, v8, v23);
    v13 = self->_ucat->var0;
    if (v13 <= 90)
    {
      if (v13 == -1)
      {
        v16 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        v22 = self->_ucat;
      }

      self->_direct;
      v14 = self->_clientID;
      v25 = CUPrintNSError();
      LogPrintF_safe();
    }

LABEL_24:
    v17 = MEMORY[0x1C68DF720](self->_activateCompletion);
    v18 = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v17)
    {
      v17[2](v17, v12);
    }

    else
    {
      v19 = MEMORY[0x1C68DF720](self->_errorHandler);
      v20 = v19;
      if (v19)
      {
        (*(v19 + 16))(v19, v12);
      }
    }

    goto LABEL_30;
  }

  if (v11)
  {
    [(CBDiscovery *)self _activateDirectStart];
  }

  else
  {
    [(CBDiscovery *)self _activateXPCStart:0];
  }

LABEL_31:
}

- (id)_ensureXPCStarted
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_xpcCnx;
  if (!v3)
  {
    v4 = v2->_testListenerEndpoint;
    v5 = v4;
    if (v4)
    {
      mach_service = xpc_connection_create_from_endpoint(v4);
      xpc_connection_set_target_queue(mach_service, v2->_dispatchQueue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", v2->_dispatchQueue, 0);
    }

    objc_storeStrong(&v2->_xpcCnx, mach_service);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__CBDiscovery__ensureXPCStarted__block_invoke;
    v8[3] = &unk_1E811D620;
    v8[4] = v2;
    v3 = mach_service;
    v9 = v3;
    xpc_connection_set_event_handler(v3, v8);
    xpc_connection_activate(v3);
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)needsAdvertisingAddress
{
  if ((self->_discoveryFlags & 0x2000000400020108) != 0)
  {
    return 1;
  }

  v5 = CBDiscoveryTypesNeedsAdvertisingAddress();

  return CBDiscoveryTypesContainTypes(self->_discoveryTypesInternal.bitArray, v5);
}

- (BOOL)needsBLEScan
{
  if ((self->_discoveryFlags & 0x7CFAA6C5B14FFFFFLL) != 0)
  {
    return 1;
  }

  v4 = CBDiscoveryTypesBLEScan();
  if (CBDiscoveryTypesContainTypes(self->_discoveryTypesInternal.bitArray, v4))
  {
    return 1;
  }

  serviceUUIDs = self->_serviceUUIDs;
  return serviceUUIDs && [(NSArray *)serviceUUIDs count];
}

- (void)removeAllDiscoveryTypes
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __38__CBDiscovery_removeAllDiscoveryTypes__block_invoke;
  v2[3] = &unk_1E8120828;
  v2[4] = self;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v2];
}

BOOL __38__CBDiscovery_removeAllDiscoveryTypes__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 41);
  v2 = v1 + 41;
  v4 = v3 | *(v2 + 4);
  if (v4)
  {
    *(v2 + 4) = 0;
    *v2 = 0;
  }

  return v4 != 0;
}

- (NSArray)discoveredDevices
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_deviceMap;
  v4 = v3;
  if (v3)
  {
    v5 = [(NSMutableDictionary *)v3 allValues];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)dealloc
{
  v3 = self->_mockID;
  v4 = v3;
  if (v3)
  {
    CBMockRemoveDiscovery(v3, self);
  }

  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v6.receiver = self;
  v6.super_class = CBDiscovery;
  [(CBDiscovery *)&v6 dealloc];
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  authFlags = self->_authFlags;
  xdict = v4;
  if (authFlags)
  {
    xpc_dictionary_set_uint64(v4, "auFl", authFlags);
  }

  authFlagsExcluded = self->_authFlagsExcluded;
  if (authFlagsExcluded)
  {
    xpc_dictionary_set_uint64(xdict, "auFE", authFlagsExcluded);
  }

  if (self->_bleRSSIThresholdOrder)
  {
    xpc_dictionary_set_uint64(xdict, "blRO", self->_bleRSSIThresholdOrder);
  }

  if (self->_bleRSSIThresholdHint)
  {
    xpc_dictionary_set_int64(xdict, "blRT", self->_bleRSSIThresholdHint);
  }

  bleScanRate = self->_bleScanRate;
  if (bleScanRate)
  {
    xpc_dictionary_set_int64(xdict, "blSR", bleScanRate);
  }

  bleScanRateScreenOff = self->_bleScanRateScreenOff;
  if (bleScanRateScreenOff)
  {
    xpc_dictionary_set_int64(xdict, "blSO", bleScanRateScreenOff);
  }

  clientID = self->_clientID;
  if (clientID)
  {
    xpc_dictionary_set_uint64(xdict, "cid", clientID);
  }

  deviceFilter = self->_deviceFilter;
  CUXPCEncodeNSArrayOfNSString();
  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    xpc_dictionary_set_uint64(xdict, "dsFl", discoveryFlags);
  }

  if (*self->_discoveryTypesInternal.bitArray | *&self->_discoveryTypesInternal.bitArray[4])
  {
    v12 = 6;
  }

  else
  {
    v12 = 1;
  }

  xpc_dictionary_set_data(xdict, "dsTy", &self->_discoveryTypesInternal, v12);
  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    xpc_dictionary_set_uint64(xdict, "intF", internalFlags);
  }

  oobKeys = self->_oobKeys;
  CUXPCEncodeNSArrayOfObjects();
  serviceUUIDs = self->_serviceUUIDs;
  CUXPCEncodeNSArrayOfObjects();
  softwareUpdatePayloads = self->_softwareUpdatePayloads;
  CUXPCEncodeNSArrayOfObjects();
  remoteDevice = self->_remoteDevice;
  CUXPCEncodeObject();
  useCase = self->_useCase;
  if (useCase)
  {
    xpc_dictionary_set_uint64(xdict, "ucas", useCase);
  }

  useCaseClientIDs = self->_useCaseClientIDs;
  CUXPCEncodeNSArrayOfNSString();
  if (self->_bleSensorRssiIncreaseScanThreshold)
  {
    xpc_dictionary_set_int64(xdict, "bsIT", self->_bleSensorRssiIncreaseScanThreshold);
  }

  if (self->_bleSensorEnableRssiIncreaseScan)
  {
    xpc_dictionary_set_BOOL(xdict, "bsEI", 1);
  }

  bleSensorIncreaseScanRate = self->_bleSensorIncreaseScanRate;
  if (bleSensorIncreaseScanRate)
  {
    xpc_dictionary_set_uint64(xdict, "bsIS", bleSensorIncreaseScanRate);
  }

  bleSensorIncreaseScanTimeout = self->_bleSensorIncreaseScanTimeout;
  if (bleSensorIncreaseScanTimeout)
  {
    xpc_dictionary_set_uint64(xdict, "bsTO", bleSensorIncreaseScanTimeout);
  }

  bleSensorTimeoutBetweenIncreaseScan = self->_bleSensorTimeoutBetweenIncreaseScan;
  if (bleSensorTimeoutBetweenIncreaseScan)
  {
    xpc_dictionary_set_uint64(xdict, "bsBT", bleSensorTimeoutBetweenIncreaseScan);
  }

  spatialInteractionfilter = self->_spatialInteractionfilter;
  CUXPCEncodeObject();
  bufferedAdvConfigsForAOP = self->_bufferedAdvConfigsForAOP;
  CUXPCEncodeNSArrayOfObjects();
}

- (id)descriptionWithLevel:(int)a3
{
  v62 = 0;
  NSAppendPrintF_safe();
  v4 = 0;
  v5 = v4;
  label = self->_label;
  if (label)
  {
    v61 = v4;
    v46 = label;
    NSAppendPrintF_safe();
    v7 = v61;

    v5 = v7;
  }

  v60[4] = v5;
  clientID = self->_clientID;
  NSAppendPrintF_safe();
  v8 = v5;

  if (self->_authFlags)
  {
    v60[3] = v8;
    v58 = CUPrintFlags64();
    NSAppendPrintF_safe();
    v9 = v8;

    v8 = v9;
  }

  if (self->_authFlagsExcluded)
  {
    v60[2] = v8;
    v59 = CUPrintFlags64();
    NSAppendPrintF_safe();
    v10 = v8;

    v8 = v10;
  }

  if (self->_discoveryFlags)
  {
    v60[1] = v8;
    v48 = CUPrintFlags64();
    NSAppendPrintF_safe();
    v11 = v8;

    v8 = v11;
  }

  v60[0] = v8;
  CBDiscoveryTypesAppendString(v60, ", DsTy", &self->_discoveryTypesInternal);
  v12 = v60[0];

  if (self->_bleScanRate)
  {
    NSAppendPrintF_safe();
    v14 = v12;

    v12 = v14;
  }

  if (self->_bleScanRateScreenOff)
  {
    NSAppendPrintF_safe();
    v16 = v12;

    v12 = v16;
  }

  if (self->_bleScanRateOverride)
  {
    NSAppendPrintF_safe();
    v18 = v12;

    v12 = v18;
  }

  if (self->_bleRSSIThresholdHint)
  {
    bleRSSIThresholdHint = self->_bleRSSIThresholdHint;
    NSAppendPrintF_safe();
    v19 = v12;

    v12 = v19;
  }

  if (self->_bleRSSIThresholdOrder)
  {
    bleRSSIThresholdOrder = self->_bleRSSIThresholdOrder;
    NSAppendPrintF_safe();
    v20 = v12;

    v12 = v20;
  }

  deviceFilter = self->_deviceFilter;
  if (deviceFilter)
  {
    v22 = deviceFilter;
    v51 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v23 = v12;

    v12 = v23;
  }

  if (self->_deviceSetupState)
  {
    self->_deviceSetupState;
    NSAppendPrintF_safe();
    v24 = v12;

    v12 = v24;
  }

  oobKeys = self->_oobKeys;
  if (oobKeys)
  {
    v26 = oobKeys;
    v52 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v27 = v12;

    v12 = v27;
  }

  serviceUUIDs = self->_serviceUUIDs;
  if (serviceUUIDs)
  {
    v29 = serviceUUIDs;
    v53 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v30 = v12;

    v12 = v30;
  }

  softwareUpdatePayloads = self->_softwareUpdatePayloads;
  if (softwareUpdatePayloads)
  {
    v32 = softwareUpdatePayloads;
    v54 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v33 = v12;

    v12 = v33;
  }

  remoteDevice = self->_remoteDevice;
  if (remoteDevice)
  {
    v55 = remoteDevice;
    NSAppendPrintF_safe();
    v35 = v12;

    v12 = v35;
  }

  useCase = self->_useCase;
  if (useCase)
  {
    CBUseCaseToString_0(useCase);
    NSAppendPrintF_safe();
    v37 = v12;

    v12 = v37;
  }

  useCaseClientIDs = self->_useCaseClientIDs;
  if (useCaseClientIDs)
  {
    v39 = useCaseClientIDs;
    v56 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v40 = v12;

    v12 = v40;
  }

  bufferedAdvConfigsForAOP = self->_bufferedAdvConfigsForAOP;
  if (bufferedAdvConfigsForAOP)
  {
    v42 = bufferedAdvConfigsForAOP;
    v57 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v43 = v12;

    v12 = v43;
  }

  if (self->_xpcReportCompleteDevice)
  {
    NSAppendPrintF_safe();
    v44 = v12;

    v12 = v44;
  }

  return v12;
}

- (void)setAuthFlags:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__CBDiscovery_setAuthFlags___block_invoke;
  v3[3] = &unk_1E811D5A8;
  v3[4] = self;
  v3[5] = a3;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __28__CBDiscovery_setAuthFlags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 232);
  if (v1 != v3)
  {
    *(v2 + 232) = v1;
  }

  return v1 != v3;
}

- (void)setAuthFlagsExcluded:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CBDiscovery_setAuthFlagsExcluded___block_invoke;
  v3[3] = &unk_1E811D5A8;
  v3[4] = self;
  v3[5] = a3;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __36__CBDiscovery_setAuthFlagsExcluded___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 240);
  if (v1 != v3)
  {
    *(v2 + 240) = v1;
  }

  return v1 != v3;
}

- (void)setBleScanRate:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__CBDiscovery_setBleScanRate___block_invoke;
  v3[3] = &unk_1E811D508;
  v4 = a3;
  v3[4] = self;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __30__CBDiscovery_setBleScanRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 92);
  if (v1 != v3)
  {
    *(v2 + 92) = v1;
  }

  return v1 != v3;
}

- (void)setBleScanRateScreenOff:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CBDiscovery_setBleScanRateScreenOff___block_invoke;
  v3[3] = &unk_1E811D508;
  v4 = a3;
  v3[4] = self;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __39__CBDiscovery_setBleScanRateScreenOff___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 100);
  if (v1 != v3)
  {
    *(v2 + 100) = v1;
  }

  return v1 != v3;
}

- (void)setDeviceFilter:(id)a3
{
  v4 = [a3 copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__CBDiscovery_setDeviceFilter___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __31__CBDiscovery_setDeviceFilter___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 264);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 264);
    *(v10 + 264) = v11;
  }

  return v5;
}

- (void)setDiscoveryFlags:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CBDiscovery_setDiscoveryFlags___block_invoke;
  v3[3] = &unk_1E811D5A8;
  v3[4] = self;
  v3[5] = a3;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __33__CBDiscovery_setDiscoveryFlags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 272);
  if (v1 != v3)
  {
    *(v2 + 272) = v1;
  }

  return v1 != v3;
}

- (void)addDiscoveryType:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBDiscovery_addDiscoveryType___block_invoke;
  v3[3] = &unk_1E811D508;
  v3[4] = self;
  v4 = a3;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

uint64_t __32__CBDiscovery_addDiscoveryType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = 1;
  if ((v2 - 45) >= 0xFFFFFFD4)
  {
    v4 = *(a1 + 32) + 41;
    v5 = (v2 - 1);
    v6 = 1 << (-v2 & 7);
    v7 = v5 >> 3;
    v8 = *(v4 + (v5 >> 3));
    result = 0;
    if ((v6 & v8) == 0)
    {
      *(v4 + v7) = v8 | v6;
      return 1;
    }
  }

  return result;
}

- (void)clearDuplicateFilterCache
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CBDiscovery_clearDuplicateFilterCache__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __40__CBDiscovery_clearDuplicateFilterCache__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 47) & 1) == 0 && (*(v2 + 43) & 0x20) != 0 && *(v2 + 88) == 524290)
  {
    if (gCBDaemonServer)
    {
      v3 = gCBDaemonServer;

      [v3 clearDuplicateFilterCache:?];
    }

    else
    {
      xdict = xpc_dictionary_create(0, 0, 0);
      [*(a1 + 32) encodeWithXPCObject:xdict];
      xpc_dictionary_set_string(xdict, "mTyp", "DsCD");
      v5 = [*(a1 + 32) _ensureXPCStarted];
      xpc_connection_send_message(v5, xdict);
    }
  }
}

- (void)removeDiscoveryType:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__CBDiscovery_removeDiscoveryType___block_invoke;
  v3[3] = &unk_1E811D508;
  v3[4] = self;
  v4 = a3;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

uint64_t __35__CBDiscovery_removeDiscoveryType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((v1 - 45) < 0xFFFFFFD4)
  {
    return 0;
  }

  v2 = *(a1 + 32) + 41;
  v3 = (v1 - 1);
  v4 = 1 << (-v1 & 7);
  v5 = v3 >> 3;
  v6 = *(v2 + (v3 >> 3));
  if ((v4 & v6) == 0)
  {
    return 0;
  }

  *(v2 + v5) = v6 & ~v4;
  return 1;
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v5 = a3;
  v4 = v5;
  [v5 UTF8String];
  LogCategoryReplaceF();
}

- (void)setOobKeys:(id)a3
{
  v4 = [a3 copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__CBDiscovery_setOobKeys___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __26__CBDiscovery_setOobKeys___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 296);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 296);
    *(v10 + 296) = v11;
  }

  return v5;
}

- (void)setServiceUUIDs:(id)a3
{
  v4 = [a3 copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__CBDiscovery_setServiceUUIDs___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __31__CBDiscovery_setServiceUUIDs___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 304);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 304);
    *(v10 + 304) = v11;
  }

  return v5;
}

- (void)setSoftwareUpdatePayloads:(id)a3
{
  v4 = [a3 copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CBDiscovery_setSoftwareUpdatePayloads___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __41__CBDiscovery_setSoftwareUpdatePayloads___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 312);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 312);
    *(v10 + 312) = v11;
  }

  return v5;
}

- (void)setSpatialInteractionFilter:(id)a3
{
  v4 = [a3 copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CBDiscovery_setSpatialInteractionFilter___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __43__CBDiscovery_setSpatialInteractionFilter___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 336);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 336);
    *(v10 + 336) = v11;
  }

  return v5;
}

- (void)setBufferedConfigsForAOP:(id)a3
{
  v4 = [a3 copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CBDiscovery_setBufferedConfigsForAOP___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __40__CBDiscovery_setBufferedConfigsForAOP___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 248);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 248);
    *(v10 + 248) = v11;
  }

  return v5;
}

- (void)setUseCase:(unsigned int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__CBDiscovery_setUseCase___block_invoke;
  v3[3] = &unk_1E811D508;
  v4 = a3;
  v3[4] = self;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __26__CBDiscovery_setUseCase___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v1 != v3)
  {
    *(v2 + 88) = v1;
  }

  return v1 != v3;
}

- (void)setUseCaseClientIDs:(id)a3
{
  v4 = [a3 copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__CBDiscovery_setUseCaseClientIDs___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __35__CBDiscovery_setUseCaseClientIDs___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 224);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 224);
    *(v10 + 224) = v11;
  }

  return v5;
}

- (BOOL)updateWithCBDiscovery:(id)a3
{
  v4 = a3;
  v5 = [v4 bleRSSIThresholdOrder];
  bleRSSIThresholdOrder = self->_bleRSSIThresholdOrder;
  v7 = v5 != bleRSSIThresholdOrder;
  if (v5 == bleRSSIThresholdOrder)
  {
    v9 = 0;
    v12 = [v4 bleRSSIThresholdHint];
    bleRSSIThresholdHint = self->_bleRSSIThresholdHint;
    if (v12 == self->_bleRSSIThresholdHint)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = CUPrintFlags32();
  [v4 bleRSSIThresholdOrder];
  v145 = CUPrintFlags32();
  CUAppendF();
  v9 = 0;

  self->_bleRSSIThresholdOrder = [v4 bleRSSIThresholdOrder];
  v10 = [v4 bleRSSIThresholdHint];
  bleRSSIThresholdHint = self->_bleRSSIThresholdHint;
  if (v10 != self->_bleRSSIThresholdHint)
  {
LABEL_5:
    v135 = bleRSSIThresholdHint;
    v146 = [v4 bleRSSIThresholdHint];
    CUAppendF();
    v13 = v9;

    self->_bleRSSIThresholdHint = [v4 bleRSSIThresholdHint];
    v7 = 1;
    v9 = v13;
  }

LABEL_6:
  v14 = [v4 bleScanRate];
  bleScanRate = self->_bleScanRate;
  if (v14 != bleScanRate)
  {
    if (bleScanRate > 34)
    {
      if (bleScanRate > 49)
      {
        if (bleScanRate == 50)
        {
          v18 = "High";
          v19 = [v4 bleScanRate];
          if (v19 > 34)
          {
            goto LABEL_45;
          }

          goto LABEL_35;
        }

        if (bleScanRate != 60)
        {
          goto LABEL_44;
        }

        v18 = "Max";
        v19 = [v4 bleScanRate];
        if (v19 <= 34)
        {
          goto LABEL_35;
        }
      }

      else if (bleScanRate == 35)
      {
        v18 = "MediumLow";
        v19 = [v4 bleScanRate];
        if (v19 <= 34)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (bleScanRate != 40)
        {
          goto LABEL_44;
        }

        v18 = "Medium";
        v19 = [v4 bleScanRate];
        if (v19 <= 34)
        {
          goto LABEL_35;
        }
      }
    }

    else if (bleScanRate > 19)
    {
      if (bleScanRate == 20)
      {
        v18 = "Background";
        v19 = [v4 bleScanRate];
        if (v19 <= 34)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (bleScanRate != 30)
        {
          goto LABEL_44;
        }

        v18 = "Low";
        v19 = [v4 bleScanRate];
        if (v19 <= 34)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      if (bleScanRate)
      {
        if (bleScanRate == 10)
        {
          v18 = "Periodic";
          v19 = [v4 bleScanRate];
          if (v19 > 34)
          {
            goto LABEL_45;
          }

LABEL_35:
          if (v19 > 19)
          {
            if (v19 == 20)
            {
              v20 = "Background";
              goto LABEL_55;
            }

            if (v19 == 30)
            {
              v20 = "Low";
              goto LABEL_55;
            }
          }

          else
          {
            if (!v19)
            {
              v20 = "Default";
              goto LABEL_55;
            }

            if (v19 == 10)
            {
              v20 = "Periodic";
              goto LABEL_55;
            }
          }

          goto LABEL_54;
        }

LABEL_44:
        v18 = "?";
        v19 = [v4 bleScanRate];
        if (v19 > 34)
        {
          goto LABEL_45;
        }

        goto LABEL_35;
      }

      v18 = "Default";
      v19 = [v4 bleScanRate];
      if (v19 <= 34)
      {
        goto LABEL_35;
      }
    }

LABEL_45:
    if (v19 > 49)
    {
      if (v19 == 50)
      {
        v20 = "High";
        goto LABEL_55;
      }

      if (v19 == 60)
      {
        v20 = "Max";
        goto LABEL_55;
      }
    }

    else
    {
      if (v19 == 35)
      {
        v20 = "MediumLow";
        goto LABEL_55;
      }

      if (v19 == 40)
      {
        v20 = "Medium";
        goto LABEL_55;
      }
    }

LABEL_54:
    v20 = "?";
LABEL_55:
    v147 = v20;
    CUAppendF();
    v21 = v9;

    self->_bleScanRate = [v4 bleScanRate];
    v7 = 1;
    v9 = v21;
    v22 = [v4 bleScanRateScreenOff];
    bleScanRateScreenOff = self->_bleScanRateScreenOff;
    if (v22 == bleScanRateScreenOff)
    {
      goto LABEL_103;
    }

LABEL_56:
    if (bleScanRateScreenOff > 34)
    {
      if (bleScanRateScreenOff > 49)
      {
        if (bleScanRateScreenOff == 50)
        {
          v23 = "High";
          v24 = [v4 bleScanRateScreenOff];
          if (v24 > 34)
          {
            goto LABEL_92;
          }

          goto LABEL_82;
        }

        if (bleScanRateScreenOff != 60)
        {
          goto LABEL_91;
        }

        v23 = "Max";
        v24 = [v4 bleScanRateScreenOff];
        if (v24 <= 34)
        {
          goto LABEL_82;
        }
      }

      else if (bleScanRateScreenOff == 35)
      {
        v23 = "MediumLow";
        v24 = [v4 bleScanRateScreenOff];
        if (v24 <= 34)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (bleScanRateScreenOff != 40)
        {
          goto LABEL_91;
        }

        v23 = "Medium";
        v24 = [v4 bleScanRateScreenOff];
        if (v24 <= 34)
        {
          goto LABEL_82;
        }
      }
    }

    else if (bleScanRateScreenOff > 19)
    {
      if (bleScanRateScreenOff == 20)
      {
        v23 = "Background";
        v24 = [v4 bleScanRateScreenOff];
        if (v24 <= 34)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (bleScanRateScreenOff != 30)
        {
          goto LABEL_91;
        }

        v23 = "Low";
        v24 = [v4 bleScanRateScreenOff];
        if (v24 <= 34)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      if (bleScanRateScreenOff)
      {
        if (bleScanRateScreenOff == 10)
        {
          v23 = "Periodic";
          v24 = [v4 bleScanRateScreenOff];
          if (v24 > 34)
          {
            goto LABEL_92;
          }

LABEL_82:
          if (v24 > 19)
          {
            if (v24 == 20)
            {
              v25 = "Background";
            }

            else
            {
              if (v24 != 30)
              {
                goto LABEL_101;
              }

              v25 = "Low";
            }
          }

          else if (v24)
          {
            if (v24 != 10)
            {
              goto LABEL_101;
            }

            v25 = "Periodic";
          }

          else
          {
            v25 = "Default";
          }

LABEL_102:
          v148 = v25;
          CUAppendF();
          v26 = v9;

          self->_bleScanRateScreenOff = [v4 bleScanRateScreenOff];
          v7 = 1;
          v9 = v26;
          goto LABEL_103;
        }

LABEL_91:
        v23 = "?";
        v24 = [v4 bleScanRateScreenOff];
        if (v24 > 34)
        {
          goto LABEL_92;
        }

        goto LABEL_82;
      }

      v23 = "Default";
      v24 = [v4 bleScanRateScreenOff];
      if (v24 <= 34)
      {
        goto LABEL_82;
      }
    }

LABEL_92:
    if (v24 > 49)
    {
      if (v24 == 50)
      {
        v25 = "High";
        goto LABEL_102;
      }

      if (v24 == 60)
      {
        v25 = "Max";
        goto LABEL_102;
      }
    }

    else
    {
      if (v24 == 35)
      {
        v25 = "MediumLow";
        goto LABEL_102;
      }

      if (v24 == 40)
      {
        v25 = "Medium";
        goto LABEL_102;
      }
    }

LABEL_101:
    v25 = "?";
    goto LABEL_102;
  }

  v16 = [v4 bleScanRateScreenOff];
  bleScanRateScreenOff = self->_bleScanRateScreenOff;
  if (v16 != bleScanRateScreenOff)
  {
    goto LABEL_56;
  }

LABEL_103:
  v27 = [v4 deviceFilter];
  deviceFilter = self->_deviceFilter;
  v29 = v27;
  v30 = deviceFilter;
  if (v29 == v30)
  {
  }

  else
  {
    if ((v29 != 0) != (v30 == 0))
    {
      v31 = v30;
      v32 = [(NSArray *)v29 isEqual:v30];

      if (v32)
      {
        if ([v4 discoveryFlags] == self->_discoveryFlags)
        {
          goto LABEL_108;
        }

        goto LABEL_107;
      }
    }

    else
    {
    }

    v45 = self->_deviceFilter;
    v46 = CUPrintNSObjectOneLine();
    v47 = [v4 deviceFilter];
    v151 = CUPrintNSObjectOneLine();
    CUAppendF();
    v48 = v9;

    v49 = [v4 deviceFilter];
    v29 = self->_deviceFilter;
    self->_deviceFilter = v49;
    v7 = 1;
    v9 = v48;
  }

  if ([v4 discoveryFlags] != self->_discoveryFlags)
  {
LABEL_107:
    v33 = CUPrintFlags64();
    [v4 discoveryFlags];
    v149 = CUPrintFlags64();
    CUAppendF();
    v34 = v9;

    self->_discoveryFlags = [v4 discoveryFlags];
    v7 = 1;
    v9 = v34;
  }

LABEL_108:
  if (*(v4 + 41) != *self->_discoveryTypesInternal.bitArray || *(v4 + 45) != *&self->_discoveryTypesInternal.bitArray[4])
  {
    v36 = CBDiscoveryTypesToString(&self->_discoveryTypesInternal);
    CBDiscoveryTypesToString((v4 + 41));
    v144 = v134 = v36;
    CUAppendF();
    v37 = v9;

    v38 = *(v4 + 41);
    *&self->_discoveryTypesInternal.bitArray[4] = *(v4 + 45);
    *self->_discoveryTypesInternal.bitArray = v38;
    v7 = 1;
    v9 = v37;
  }

  v39 = [v4 oobKeys];
  oobKeys = self->_oobKeys;
  v41 = v39;
  v42 = oobKeys;
  if (v41 == v42)
  {

LABEL_125:
    goto LABEL_126;
  }

  if ((v41 != 0) == (v42 == 0))
  {

    goto LABEL_124;
  }

  v43 = v42;
  v44 = [(NSArray *)v41 isEqual:v42];

  if ((v44 & 1) == 0)
  {
LABEL_124:
    v50 = self->_oobKeys;
    v51 = CUPrintNSObjectOneLine();
    v52 = [v4 oobKeys];
    v152 = CUPrintNSObjectOneLine();
    CUAppendF();
    v53 = v9;

    v54 = [v4 oobKeys];
    v41 = self->_oobKeys;
    self->_oobKeys = v54;
    v7 = 1;
    v9 = v53;
    goto LABEL_125;
  }

LABEL_126:
  v55 = [v4 serviceUUIDs];
  serviceUUIDs = self->_serviceUUIDs;
  v57 = v55;
  v58 = serviceUUIDs;
  if (v57 == v58)
  {

LABEL_133:
    goto LABEL_134;
  }

  if ((v57 != 0) == (v58 == 0))
  {

    goto LABEL_132;
  }

  v59 = v58;
  v60 = [(NSArray *)v57 isEqual:v58];

  if ((v60 & 1) == 0)
  {
LABEL_132:
    v61 = self->_serviceUUIDs;
    v62 = CUPrintNSObjectOneLine();
    v63 = [v4 serviceUUIDs];
    v153 = CUPrintNSObjectOneLine();
    CUAppendF();
    v64 = v9;

    v65 = [v4 serviceUUIDs];
    v57 = self->_serviceUUIDs;
    self->_serviceUUIDs = v65;
    v7 = 1;
    v9 = v64;
    goto LABEL_133;
  }

LABEL_134:
  v66 = [v4 softwareUpdatePayloads];
  softwareUpdatePayloads = self->_softwareUpdatePayloads;
  v68 = v66;
  v69 = softwareUpdatePayloads;
  if (v68 == v69)
  {
  }

  else
  {
    if ((v68 != 0) != (v69 == 0))
    {
      v70 = v69;
      v71 = [(NSArray *)v68 isEqual:v69];

      if (v71)
      {
        v72 = [v4 useCase];
        useCase = self->_useCase;
        if (v72 == useCase)
        {
          goto LABEL_139;
        }

        goto LABEL_138;
      }
    }

    else
    {
    }

    v106 = self->_softwareUpdatePayloads;
    v107 = CUPrintNSObjectOneLine();
    v108 = [v4 softwareUpdatePayloads];
    v157 = CUPrintNSObjectOneLine();
    CUAppendF();
    v109 = v9;

    v110 = [v4 softwareUpdatePayloads];
    v68 = self->_softwareUpdatePayloads;
    self->_softwareUpdatePayloads = v110;
    v7 = 1;
    v9 = v109;
  }

  v72 = [v4 useCase];
  useCase = self->_useCase;
  if (v72 != useCase)
  {
LABEL_138:
    v136 = CBUseCaseToString_0(useCase);
    v150 = CBUseCaseToString_0(v72);
    CUAppendF();
    v74 = v9;

    self->_useCase = v72;
    v7 = 1;
    v9 = v74;
  }

LABEL_139:
  v75 = [v4 useCaseClientIDs];
  useCaseClientIDs = self->_useCaseClientIDs;
  v77 = v75;
  v78 = useCaseClientIDs;
  if (v77 == v78)
  {

    v105 = v77;
  }

  else
  {
    if ((v77 != 0) != (v78 == 0))
    {
      v79 = v78;
      v80 = [(NSArray *)v77 isEqual:v78];

      if (v80)
      {
        v81 = [v4 bleSensorRssiIncreaseScanThreshold];
        bleSensorRssiIncreaseScanThreshold = self->_bleSensorRssiIncreaseScanThreshold;
        if (v81 == self->_bleSensorRssiIncreaseScanThreshold)
        {
          goto LABEL_143;
        }

        goto LABEL_168;
      }
    }

    else
    {
    }

    v111 = self->_useCaseClientIDs;
    v112 = CUPrintNSObjectOneLine();
    CUPrintNSObjectOneLine();
    v154 = v137 = v112;
    CUAppendF();
    v113 = v9;

    v114 = v77;
    v105 = self->_useCaseClientIDs;
    self->_useCaseClientIDs = v114;
    v7 = 1;
    v9 = v113;
  }

  v115 = [v4 bleSensorRssiIncreaseScanThreshold];
  bleSensorRssiIncreaseScanThreshold = self->_bleSensorRssiIncreaseScanThreshold;
  if (v115 == self->_bleSensorRssiIncreaseScanThreshold)
  {
LABEL_143:
    v83 = [v4 bleSensorEnableRssiIncreaseScan];
    bleSensorEnableRssiIncreaseScan = self->_bleSensorEnableRssiIncreaseScan;
    if (bleSensorEnableRssiIncreaseScan == v83)
    {
      goto LABEL_144;
    }

    goto LABEL_169;
  }

LABEL_168:
  v116 = [v4 bleSensorRssiIncreaseScanThreshold];
  v140 = bleSensorRssiIncreaseScanThreshold;
  v158 = v116;
  CUAppendF();
  v117 = v9;

  self->_bleSensorRssiIncreaseScanThreshold = [v4 bleSensorRssiIncreaseScanThreshold];
  v7 = 1;
  v9 = v117;
  v118 = [v4 bleSensorEnableRssiIncreaseScan];
  bleSensorEnableRssiIncreaseScan = self->_bleSensorEnableRssiIncreaseScan;
  if (bleSensorEnableRssiIncreaseScan == v118)
  {
LABEL_144:
    v85 = [v4 bleSensorIncreaseScanRate];
    bleSensorIncreaseScanRate = self->_bleSensorIncreaseScanRate;
    if (v85 == bleSensorIncreaseScanRate)
    {
      goto LABEL_145;
    }

    goto LABEL_170;
  }

LABEL_169:
  v141 = bleSensorEnableRssiIncreaseScan;
  v159 = [v4 bleSensorEnableRssiIncreaseScan];
  CUAppendF();
  v119 = v9;

  self->_bleSensorEnableRssiIncreaseScan = [v4 bleSensorEnableRssiIncreaseScan];
  v7 = 1;
  v9 = v119;
  v120 = [v4 bleSensorIncreaseScanRate];
  bleSensorIncreaseScanRate = self->_bleSensorIncreaseScanRate;
  if (v120 == bleSensorIncreaseScanRate)
  {
LABEL_145:
    v87 = [v4 bleSensorIncreaseScanTimeout];
    bleSensorIncreaseScanTimeout = self->_bleSensorIncreaseScanTimeout;
    if (v87 == bleSensorIncreaseScanTimeout)
    {
      goto LABEL_146;
    }

    goto LABEL_171;
  }

LABEL_170:
  v142 = bleSensorIncreaseScanRate;
  v160 = [v4 bleSensorIncreaseScanRate];
  CUAppendF();
  v121 = v9;

  self->_bleSensorIncreaseScanRate = [v4 bleSensorIncreaseScanRate];
  v7 = 1;
  v9 = v121;
  v122 = [v4 bleSensorIncreaseScanTimeout];
  bleSensorIncreaseScanTimeout = self->_bleSensorIncreaseScanTimeout;
  if (v122 == bleSensorIncreaseScanTimeout)
  {
LABEL_146:
    v89 = [v4 bleSensorTimeoutBetweenIncreaseScan];
    bleSensorTimeoutBetweenIncreaseScan = self->_bleSensorTimeoutBetweenIncreaseScan;
    if (v89 == bleSensorTimeoutBetweenIncreaseScan)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

LABEL_171:
  v143 = bleSensorIncreaseScanTimeout;
  v161 = [v4 bleSensorIncreaseScanTimeout];
  CUAppendF();
  v123 = v9;

  self->_bleSensorIncreaseScanTimeout = [v4 bleSensorIncreaseScanTimeout];
  v7 = 1;
  v9 = v123;
  v124 = [v4 bleSensorTimeoutBetweenIncreaseScan];
  bleSensorTimeoutBetweenIncreaseScan = self->_bleSensorTimeoutBetweenIncreaseScan;
  if (v124 != bleSensorTimeoutBetweenIncreaseScan)
  {
LABEL_147:
    v138 = bleSensorTimeoutBetweenIncreaseScan;
    v155 = [v4 bleSensorTimeoutBetweenIncreaseScan];
    CUAppendF();
    v91 = v9;

    self->_bleSensorTimeoutBetweenIncreaseScan = [v4 bleSensorTimeoutBetweenIncreaseScan];
    v7 = 1;
    v9 = v91;
  }

LABEL_148:
  v92 = [v4 bufferedAdvConfigsForAOP];
  bufferedAdvConfigsForAOP = self->_bufferedAdvConfigsForAOP;

  if (v92 != bufferedAdvConfigsForAOP)
  {
    v94 = self->_bufferedAdvConfigsForAOP;
    [v4 bufferedAdvConfigsForAOP];
    v156 = v139 = v94;
    CUAppendF();
    v95 = v9;

    v96 = [v4 bufferedAdvConfigsForAOP];
    v97 = self->_bufferedAdvConfigsForAOP;
    self->_bufferedAdvConfigsForAOP = v96;

    v7 = 1;
    v9 = v95;
  }

  v98 = [v4 spatialInteractionfilter];
  spatialInteractionfilter = self->_spatialInteractionfilter;
  v100 = v98;
  v101 = spatialInteractionfilter;
  if (v100 == v101)
  {

    var0 = self->_ucat->var0;
    if (!v9)
    {
      goto LABEL_175;
    }

LABEL_154:
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_181;
        }

        ucat = self->_ucat;
      }

      goto LABEL_177;
    }

    goto LABEL_181;
  }

  if ((v100 != 0) == (v101 == 0))
  {

LABEL_174:
    v125 = self->_spatialInteractionfilter;
    v126 = CUPrintNSObjectOneLine();
    v127 = [v4 spatialInteractionfilter];
    v162 = CUPrintNSObjectOneLine();
    CUAppendF();
    v128 = v9;

    v129 = [v4 spatialInteractionfilter];
    v130 = self->_spatialInteractionfilter;
    self->_spatialInteractionfilter = v129;
    v7 = 1;
    v9 = v128;

    var0 = self->_ucat->var0;
    if (!v128)
    {
      goto LABEL_175;
    }

    goto LABEL_154;
  }

  v102 = v101;
  v103 = [(CBSpatialInteractionFilter *)v100 isEqual:v101];

  if (!v103)
  {
    goto LABEL_174;
  }

  var0 = self->_ucat->var0;
  if (v9)
  {
    goto LABEL_154;
  }

LABEL_175:
  if (var0 <= 10)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_181;
      }

      v133 = self->_ucat;
    }

LABEL_177:
    LogPrintF_safe();
  }

LABEL_181:

  return v7;
}

- (unint64_t)updateWithXPCSubscriberInfo:(id)a3
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v80 = 0;
    goto LABEL_170;
  }

  v5 = v4;
  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    v80 = 0;
    v4 = v5;
    goto LABEL_170;
  }

  v81 = self;
  v104 = 0;
  xdict = v5;
  CUXPCDecodeNSArrayOfNSString();
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v6 = 0;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v100 objects:v106 count:16];
  if (v8)
  {
    v9 = *v101;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v101 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v100 + 1) + 8 * i);
        if ([v11 isEqual:@"Family"])
        {
          v12 = 256;
        }

        else if ([v11 isEqual:@"Friend"])
        {
          v12 = 1024;
        }

        else if ([v11 isEqual:@"SameAccount"])
        {
          v12 = 128;
        }

        else if ([v11 isEqual:@"SharedHome"])
        {
          v12 = 512;
        }

        else if ([v11 isEqual:@"SystemPaired"])
        {
          v12 = 2048;
        }

        else
        {
          v12 = 0;
        }

        v7 |= v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v100 objects:v106 count:16];
    }

    while (v8);
  }

  if (v7 == v81->_authFlags)
  {
    v80 = 0;
  }

  else
  {
    v81->_authFlags = v7;
    v80 = 0x80000000000;
  }

  v99 = 0;
  CUXPCDecodeNSArrayOfNSString();
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = [v13 countByEnumeratingWithState:&v95 objects:v105 count:16];
  if (v15)
  {
    v16 = *v96;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v96 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v95 + 1) + 8 * j);
        if ([v18 isEqual:@"Family"])
        {
          v19 = 256;
        }

        else if ([v18 isEqual:@"Friend"])
        {
          v19 = 1024;
        }

        else if ([v18 isEqual:@"SameAccount"])
        {
          v19 = 128;
        }

        else if ([v18 isEqual:@"SharedHome"])
        {
          v19 = 512;
        }

        else if ([v18 isEqual:@"SystemPaired"])
        {
          v19 = 2048;
        }

        else
        {
          v19 = 0;
        }

        v14 |= v19;
      }

      v15 = [v13 countByEnumeratingWithState:&v95 objects:v105 count:16];
    }

    while (v15);
  }

  if (v14 != v81->_authFlagsExcluded)
  {
    v81->_authFlagsExcluded = v14;
    v80 = 0x80000000000;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "bleRSSIThresholdOrder");
  if (uint64 != v81->_bleRSSIThresholdOrder)
  {
    v81->_bleRSSIThresholdOrder = uint64;
    v80 = 0x80000000000;
  }

  int64 = xpc_dictionary_get_int64(xdict, "bleRSSIThresholdHint");
  v22 = 127;
  if (int64 < 127)
  {
    v22 = int64;
  }

  if (v22 <= -128)
  {
    v22 = -128;
  }

  if (v22 != v81->_bleRSSIThresholdHint)
  {
    v81->_bleRSSIThresholdHint = v22;
    v80 = 0x80000000000;
  }

  v94 = 0;
  CUXPCDecodeNSArrayOfNSString();
  deviceFilter = v81->_deviceFilter;
  v24 = 0;
  v25 = deviceFilter;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_59;
  }

  if ((v24 != 0) == (v25 == 0))
  {

    goto LABEL_58;
  }

  v27 = [(NSArray *)v24 isEqual:v25];

  if ((v27 & 1) == 0)
  {
LABEL_58:
    v28 = [v94 copy];
    v29 = v81->_deviceFilter;
    v81->_deviceFilter = v28;

    v80 |= 0x80000000000uLL;
  }

LABEL_59:
  string = xpc_dictionary_get_string(xdict, "bleScanRate");
  v31 = xpc_dictionary_get_string(xdict, "bleScanRateScreenOff");
  v32 = v31;
  if (!string)
  {
    v33 = v81;
    if (!v31)
    {
      goto LABEL_102;
    }

    if (!strcmp(v31, "Default"))
    {
      v81->_bleScanRateScreenOff = 0;
      v80 |= 0x80000000000uLL;
      if (strcmp(v32, "Periodic"))
      {
LABEL_95:
        if (strcmp(v32, "Background"))
        {
          goto LABEL_96;
        }

        goto LABEL_187;
      }
    }

    else if (strcmp(v32, "Periodic"))
    {
      goto LABEL_95;
    }

    v81->_bleScanRateScreenOff = 10;
    v80 |= 0x80000000000uLL;
    if (strcmp(v32, "Background"))
    {
LABEL_96:
      if (strcmp(v32, "Low"))
      {
        goto LABEL_97;
      }

      goto LABEL_188;
    }

LABEL_187:
    v81->_bleScanRateScreenOff = 20;
    v80 |= 0x80000000000uLL;
    if (strcmp(v32, "Low"))
    {
LABEL_97:
      if (strcmp(v32, "MediumLow"))
      {
        goto LABEL_98;
      }

      goto LABEL_189;
    }

LABEL_188:
    v81->_bleScanRateScreenOff = 30;
    v80 |= 0x80000000000uLL;
    if (strcmp(v32, "MediumLow"))
    {
LABEL_98:
      if (strcmp(v32, "Medium"))
      {
        goto LABEL_99;
      }

      goto LABEL_190;
    }

LABEL_189:
    v81->_bleScanRateScreenOff = 35;
    v80 |= 0x80000000000uLL;
    if (strcmp(v32, "Medium"))
    {
LABEL_99:
      if (strcmp(v32, "High"))
      {
        goto LABEL_100;
      }

      goto LABEL_191;
    }

LABEL_190:
    v81->_bleScanRateScreenOff = 40;
    v80 |= 0x80000000000uLL;
    if (strcmp(v32, "High"))
    {
LABEL_100:
      if (strcmp(v32, "Max"))
      {
        goto LABEL_102;
      }

      goto LABEL_101;
    }

LABEL_191:
    v81->_bleScanRateScreenOff = 50;
    v80 |= 0x80000000000uLL;
    if (strcmp(v32, "Max"))
    {
      goto LABEL_102;
    }

LABEL_101:
    v33->_bleScanRateScreenOff = 60;
    v80 |= 0x80000000000uLL;
    goto LABEL_102;
  }

  v33 = v81;
  if (!strcmp(string, "Default"))
  {
    v81->_bleScanRate = 0;
    v80 |= 0x80000000000uLL;
  }

  if (v32 && !strcmp(v32, "Default"))
  {
    v81->_bleScanRateScreenOff = 0;
    v80 |= 0x80000000000uLL;
    if (strcmp(string, "Periodic"))
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (!strcmp(string, "Periodic"))
  {
LABEL_65:
    v81->_bleScanRate = 10;
    v80 |= 0x80000000000uLL;
  }

LABEL_66:
  if (v32 && !strcmp(v32, "Periodic"))
  {
    v81->_bleScanRateScreenOff = 10;
    v80 |= 0x80000000000uLL;
    if (strcmp(string, "Background"))
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  if (!strcmp(string, "Background"))
  {
LABEL_69:
    v81->_bleScanRate = 20;
    v80 |= 0x80000000000uLL;
  }

LABEL_70:
  if (v32 && !strcmp(v32, "Background"))
  {
    v81->_bleScanRateScreenOff = 20;
    v80 |= 0x80000000000uLL;
    if (strcmp(string, "Low"))
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (!strcmp(string, "Low"))
  {
LABEL_73:
    v81->_bleScanRate = 30;
    v80 |= 0x80000000000uLL;
  }

LABEL_74:
  if (v32 && !strcmp(v32, "Low"))
  {
    v81->_bleScanRateScreenOff = 30;
    v80 |= 0x80000000000uLL;
    if (strcmp(string, "MediumLow"))
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (!strcmp(string, "MediumLow"))
  {
LABEL_77:
    v81->_bleScanRate = 35;
    v80 |= 0x80000000000uLL;
  }

LABEL_78:
  if (v32 && !strcmp(v32, "MediumLow"))
  {
    v81->_bleScanRateScreenOff = 35;
    v80 |= 0x80000000000uLL;
    if (strcmp(string, "Medium"))
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (!strcmp(string, "Medium"))
  {
LABEL_81:
    v81->_bleScanRate = 40;
    v80 |= 0x80000000000uLL;
  }

LABEL_82:
  if (v32 && !strcmp(v32, "Medium"))
  {
    v81->_bleScanRateScreenOff = 40;
    v80 |= 0x80000000000uLL;
    if (strcmp(string, "High"))
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  if (!strcmp(string, "High"))
  {
LABEL_85:
    v81->_bleScanRate = 50;
    v80 |= 0x80000000000uLL;
  }

LABEL_86:
  if (!v32 || strcmp(v32, "High"))
  {
    if (strcmp(string, "Max"))
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  v81->_bleScanRateScreenOff = 50;
  v80 |= 0x80000000000uLL;
  if (!strcmp(string, "Max"))
  {
LABEL_89:
    v81->_bleScanRate = 60;
    v80 |= 0x80000000000uLL;
  }

LABEL_90:
  if (v32)
  {
    goto LABEL_100;
  }

LABEL_102:
  discoveryFlags = v33->_discoveryFlags;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v35 = xpc_dictionary_get_array(xdict, "discoveryFlags");
  if (v35)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __43__CBDiscovery_updateWithXPCSubscriberInfo___block_invoke;
    applier[3] = &unk_1E8120850;
    applier[5] = &v90;
    applier[4] = v81;
    v36 = v35;
    xpc_array_apply(v35, applier);
    v35 = v36;
  }

  v37 = v91[3];
  v78 = v35;
  if (v37 != discoveryFlags)
  {
    v81->_discoveryFlags = v37;
    v80 |= 0x800000000uLL;
  }

  v83 = 0;
  v84 = &v83;
  v85 = 0x2810000000;
  v86 = &unk_1C0BA24F2;
  v87 = 0;
  v88 = 0;
  v38 = xpc_dictionary_get_array(xdict, "discoveryTypes");
  v39 = v38;
  if (v38)
  {
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __43__CBDiscovery_updateWithXPCSubscriberInfo___block_invoke_2;
    v82[3] = &unk_1E81204B8;
    v82[4] = &v83;
    xpc_array_apply(v38, v82);
  }

  if (*(v84 + 8) != *v81->_discoveryTypesInternal.bitArray || *(v84 + 18) != *&v81->_discoveryTypesInternal.bitArray[4])
  {
    v41 = *(v84 + 8);
    *&v81->_discoveryTypesInternal.bitArray[4] = *(v84 + 18);
    *v81->_discoveryTypesInternal.bitArray = v41;
    v80 |= 0x800000000uLL;
  }

  v42 = xpc_dictionary_get_BOOL(xdict, "keepAlive");
  if (v81->_keepAlive != v42)
  {
    v81->_keepAlive = v42;
    v80 |= 0x80000000000uLL;
  }

  v43 = xpc_dictionary_get_string(xdict, "memoryPressure");
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = "";
  }

  if (!strcmp(v44, "warn"))
  {
    v45 = 2;
    if (v81->_memoryPressureFlags != 2)
    {
LABEL_123:
      v81->_memoryPressureFlags = v45;
      v80 |= 0x80000000000uLL;
    }
  }

  else
  {
    if (!strcmp(v44, "critical"))
    {
      v45 = 6;
    }

    else
    {
      v45 = 0;
    }

    if (v45 != v81->_memoryPressureFlags)
    {
      goto LABEL_123;
    }
  }

  objc_opt_class();
  CUXPCDecodeNSArrayOfClass();
  oobKeys = v81->_oobKeys;
  v47 = 0;
  v48 = oobKeys;
  v49 = v48;
  if (v47 == v48)
  {

    goto LABEL_133;
  }

  if ((v47 != 0) == (v48 == 0))
  {

    goto LABEL_132;
  }

  v50 = [(NSArray *)v47 isEqual:v48];

  if ((v50 & 1) == 0)
  {
LABEL_132:
    v51 = [0 copy];
    v52 = v81->_oobKeys;
    v81->_oobKeys = v51;

    v80 |= 0x80000000000uLL;
  }

LABEL_133:
  CUXPCDecodeNSArrayOfNSString();
  objc_opt_class();
  CUXPCDecodeNSArrayOfClass();
  serviceUUIDs = v81->_serviceUUIDs;
  v54 = 0;
  v55 = serviceUUIDs;
  v56 = v55;
  if (v54 == v55)
  {

    goto LABEL_140;
  }

  if ((v54 != 0) == (v55 == 0))
  {

    goto LABEL_139;
  }

  v57 = [(NSArray *)v54 isEqual:v55];

  if ((v57 & 1) == 0)
  {
LABEL_139:
    objc_storeStrong(&v81->_serviceUUIDs, 0);
    v80 |= 0x80000000000uLL;
  }

LABEL_140:
  v58 = xpc_dictionary_get_int64(xdict, "bleSensorRssiIncreaseScanThreshold");
  v59 = 127;
  if (v58 < 127)
  {
    v59 = v58;
  }

  if (v59 <= -128)
  {
    v59 = -128;
  }

  if (v59 != v81->_bleSensorRssiIncreaseScanThreshold)
  {
    v81->_bleSensorRssiIncreaseScanThreshold = v59;
    v80 |= 0x80000000000uLL;
  }

  v60 = xpc_dictionary_get_int64(xdict, "bleSensorEnableRssiIncreaseScan");
  if (v60 != v81->_bleSensorEnableRssiIncreaseScan)
  {
    v81->_bleSensorEnableRssiIncreaseScan = v60 != 0;
    v80 |= 0x80000000000uLL;
  }

  v61 = xpc_dictionary_get_int64(xdict, "bleSensorIncreaseScanRate");
  if (v61 != v81->_bleSensorIncreaseScanRate)
  {
    v81->_bleSensorIncreaseScanRate = v61;
    v80 |= 0x80000000000uLL;
  }

  v62 = xpc_dictionary_get_int64(xdict, "bleSensorIncreaseScanTimeout");
  if (v62 != v81->_bleSensorIncreaseScanTimeout)
  {
    v81->_bleSensorIncreaseScanTimeout = v62;
    v80 |= 0x80000000000uLL;
  }

  v63 = xpc_dictionary_get_int64(xdict, "bleSensorTimeoutBetweenIncreaseScan");
  if (v63 != v81->_bleSensorTimeoutBetweenIncreaseScan)
  {
    v81->_bleSensorTimeoutBetweenIncreaseScan = v63;
    v80 |= 0x80000000000uLL;
  }

  v64 = xpc_dictionary_get_BOOL(xdict, "denyLowPowerModeScans");
  if (v81->_denyLowPowerModeScans != v64)
  {
    v81->_denyLowPowerModeScans = v64;
    v80 |= 0x80000000000uLL;
  }

  v65 = xpc_dictionary_get_BOOL(xdict, "denyScreenLockedScans");
  if (v81->_denyScreenLockedScans != v65)
  {
    v81->_denyScreenLockedScans = v65;
    v80 |= 0x80000000000uLL;
  }

  v66 = xpc_dictionary_get_uint64(xdict, "deviceSetupState");
  if (v66 != v81->_deviceSetupState)
  {
    v81->_deviceSetupState = v66;
    v80 |= 0x80000000000uLL;
  }

  objc_opt_class();
  CUXPCDecodeNSArrayOfClass();
  bufferedAdvConfigsForAOP = v81->_bufferedAdvConfigsForAOP;
  v68 = 0;
  v69 = bufferedAdvConfigsForAOP;
  v70 = v69;
  if (v68 == v69)
  {
  }

  else
  {
    if ((v68 != 0) != (v69 == 0))
    {
      v71 = [(NSArray *)v68 isEqual:v69];

      if (v71)
      {
        goto LABEL_167;
      }
    }

    else
    {
    }

    v72 = [0 copy];
    v73 = v81->_bufferedAdvConfigsForAOP;
    v81->_bufferedAdvConfigsForAOP = v72;

    v80 |= 0x80000000000uLL;
  }

LABEL_167:
  v74 = xpc_dictionary_get_BOOL(xdict, "xpcReportCompleteDevice");
  if (v81->_xpcReportCompleteDevice != v74)
  {
    v81->_xpcReportCompleteDevice = v74;
    v80 |= 0x80000000000uLL;
  }

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v90, 8);

  v4 = xdict;
LABEL_170:

  v75 = *MEMORY[0x1E69E9840];
  return v80;
}

uint64_t __43__CBDiscovery_updateWithXPCSubscriberInfo___block_invoke(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (!string_ptr)
  {
    return 1;
  }

  v5 = string_ptr;
  if (!strcmp(string_ptr, "ApplePay"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 1uLL;
    return 1;
  }

  if (!strcmp(v5, "AppleTVSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 2uLL;
    return 1;
  }

  else if (!strcmp(v5, "AppSignIn"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 4uLL;
    return 1;
  }

  else if (!strcmp(v5, "BLEAdvertisementData"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x40000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "BLEPresent"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x20000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "CNJ"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x10000000000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "CompanionAuthentication"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x10000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "CompanionLink"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 8uLL;
    return 1;
  }

  else if (!strcmp(v5, "HomePodSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x10uLL;
    return 1;
  }

  else if (!strcmp(v5, "iOSSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x20uLL;
    return 1;
  }

  else if (!strcmp(v5, "NearbyAction"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x80000uLL;
    return 1;
  }

  else if (!strcmp(v5, "NearbyInfo"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x40uLL;
    return 1;
  }

  else if (!strcmp(v5, "OSR"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x800000000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "PassiveRSSI"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x100000uLL;
    return 1;
  }

  else if (!strcmp(v5, "ProxControl"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x200000000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "ProxRepair"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x200uLL;
    return 1;
  }

  else if (!strcmp(v5, "RemoteDisplay"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x100uLL;
    return 1;
  }

  else if (!strcmp(v5, "RemotePairing"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x20000uLL;
    return 1;
  }

  else if (!strcmp(v5, "ShareAudio"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x400uLL;
    return 1;
  }

  else if (!strcmp(v5, "SIMTransfer"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x4000000000000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "TVLatencySetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x800uLL;
    return 1;
  }

  else if (!strcmp(v5, "WatchSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x20000000000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "WHASetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x1000uLL;
    return 1;
  }

  else if (!strcmp(v5, "WiFiPassword"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x2000uLL;
    return 1;
  }

  else if (!strcmp(v5, "WxSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x4000uLL;
    return 1;
  }

  else if (!strcmp(v5, "WxStatus"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x8000uLL;
    return 1;
  }

  else if (!strcmp(v5, "ObjectSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x10000uLL;
    return 1;
  }

  else if (!strcmp(v5, "Connections"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x200000uLL;
    return 1;
  }

  else if (!strcmp(v5, "Pairing"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x800000uLL;
    return 1;
  }

  else
  {
    if (strcmp(v5, "ScreenOff"))
    {
      v6 = **(*(a1 + 32) + 56);
      if (v6 <= 90)
      {
        if (v6 != -1)
        {
LABEL_34:
          LogPrintF_safe();
          return 1;
        }

        if (_LogCategory_Initialize())
        {
          v8 = *(*(a1 + 32) + 56);
          goto LABEL_34;
        }
      }

      return 1;
    }

    *(*(*(a1 + 40) + 8) + 24) |= 0x2000000uLL;
    return 1;
  }
}

uint64_t __43__CBDiscovery_updateWithXPCSubscriberInfo___block_invoke_2(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (string_ptr)
  {
    v5 = CBDiscoveryTypeFromCString(string_ptr);
    if ((v5 - 45) >= 0xFFFFFFD4)
    {
      v6 = *(*(a1 + 32) + 8) + ((v5 - 1) >> 3);
      *(v6 + 32) |= 1 << (-v5 & 7);
    }
  }

  return 1;
}

- (id)xpcAuthFlagsCreateWithDeviceFlags:(unint64_t)a3
{
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if ((a3 & 0x100) != 0)
  {
    xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "Family");
    if ((a3 & 0x400) == 0)
    {
LABEL_3:
      if ((a3 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x400) == 0)
  {
    goto LABEL_3;
  }

  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "Friend");
  if ((a3 & 0x80) == 0)
  {
LABEL_4:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "SameAccount");
  if ((a3 & 0x200) == 0)
  {
LABEL_5:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "SharedHome");
  if ((a3 & 0x800) == 0)
  {
LABEL_6:
    if ((a3 & 0x100000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "SystemPaired");
  if ((a3 & 0x100000000000) == 0)
  {
LABEL_7:
    v6 = v5;

    return v6;
  }

LABEL_15:
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "AdHocPairedDevice");
  v6 = v5;

  return v6;
}

- (OS_xpc_object)xpcSubscriberRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (self->_authFlags)
  {
    v4 = [(CBDiscovery *)self xpcAuthFlagsCreateWithDeviceFlags:?];
    xpc_dictionary_set_value(v3, "authFlags", v4);
  }

  if (self->_authFlagsExcluded)
  {
    v5 = [(CBDiscovery *)self xpcAuthFlagsCreateWithDeviceFlags:?];
    xpc_dictionary_set_value(v3, "authFlagsExcluded", v5);
  }

  if (self->_bleRSSIThresholdOrder)
  {
    xpc_dictionary_set_uint64(v3, "bleRSSIThresholdOrder", self->_bleRSSIThresholdOrder);
  }

  if (self->_bleRSSIThresholdHint)
  {
    xpc_dictionary_set_int64(v3, "bleRSSIThresholdHint", self->_bleRSSIThresholdHint);
  }

  v6 = self->_deviceFilter;
  if (v6)
  {
    CUXPCEncodeNSArrayOfNSString();
  }

  bleScanRate = self->_bleScanRate;
  if (bleScanRate > 34)
  {
    if (bleScanRate > 49)
    {
      if (bleScanRate == 50)
      {
        v8 = "High";
        goto LABEL_30;
      }

      if (bleScanRate == 60)
      {
        v8 = "Max";
        goto LABEL_30;
      }
    }

    else
    {
      if (bleScanRate == 35)
      {
        v8 = "MediumLow";
        goto LABEL_30;
      }

      if (bleScanRate == 40)
      {
        v8 = "Medium";
        goto LABEL_30;
      }
    }

LABEL_29:
    v8 = "?";
    goto LABEL_30;
  }

  if (bleScanRate > 19)
  {
    if (bleScanRate == 20)
    {
      v8 = "Background";
      goto LABEL_30;
    }

    if (bleScanRate == 30)
    {
      v8 = "Low";
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (!bleScanRate)
  {
    goto LABEL_31;
  }

  if (bleScanRate != 10)
  {
    goto LABEL_29;
  }

  v8 = "Periodic";
LABEL_30:
  xpc_dictionary_set_string(v3, "bleScanRate", v8);
LABEL_31:
  bleScanRateScreenOff = self->_bleScanRateScreenOff;
  if (bleScanRateScreenOff > 34)
  {
    if (bleScanRateScreenOff > 49)
    {
      if (bleScanRateScreenOff == 50)
      {
        v10 = "High";
        goto LABEL_50;
      }

      if (bleScanRateScreenOff == 60)
      {
        v10 = "Max";
        goto LABEL_50;
      }
    }

    else
    {
      if (bleScanRateScreenOff == 35)
      {
        v10 = "MediumLow";
        goto LABEL_50;
      }

      if (bleScanRateScreenOff == 40)
      {
        v10 = "Medium";
        goto LABEL_50;
      }
    }

LABEL_49:
    v10 = "?";
    goto LABEL_50;
  }

  if (bleScanRateScreenOff > 19)
  {
    if (bleScanRateScreenOff == 20)
    {
      v10 = "Background";
      goto LABEL_50;
    }

    if (bleScanRateScreenOff == 30)
    {
      v10 = "Low";
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (!bleScanRateScreenOff)
  {
    goto LABEL_51;
  }

  if (bleScanRateScreenOff != 10)
  {
    goto LABEL_49;
  }

  v10 = "Periodic";
LABEL_50:
  xpc_dictionary_set_string(v3, "bleScanRateScreenOff", v10);
LABEL_51:
  discoveryFlags = self->_discoveryFlags;
  if (!discoveryFlags)
  {
    goto LABEL_81;
  }

  v12 = xpc_array_create(0, 0);
  v13 = v12;
  if (discoveryFlags)
  {
    xpc_array_set_string(v12, 0xFFFFFFFFFFFFFFFFLL, "ApplePay");
    if ((discoveryFlags & 2) == 0)
    {
LABEL_54:
      if ((discoveryFlags & 4) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_128;
    }
  }

  else if ((discoveryFlags & 2) == 0)
  {
    goto LABEL_54;
  }

  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "AppleTVSetup");
  if ((discoveryFlags & 4) == 0)
  {
LABEL_55:
    if ((discoveryFlags & 0x20000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_129;
  }

LABEL_128:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "AppSignIn");
  if ((discoveryFlags & 0x20000000) == 0)
  {
LABEL_56:
    if ((discoveryFlags & 0x10000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_130;
  }

LABEL_129:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "BLEPresent");
  if ((discoveryFlags & 0x10000000000000) == 0)
  {
LABEL_57:
    if ((discoveryFlags & 0x10000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_131;
  }

LABEL_130:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "CNJ");
  if ((discoveryFlags & 0x10000000) == 0)
  {
LABEL_58:
    if ((discoveryFlags & 8) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_132;
  }

LABEL_131:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "CompanionAuthentication");
  if ((discoveryFlags & 8) == 0)
  {
LABEL_59:
    if ((discoveryFlags & 0x10) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_133;
  }

LABEL_132:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "CompanionLink");
  if ((discoveryFlags & 0x10) == 0)
  {
LABEL_60:
    if ((discoveryFlags & 0x20) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_134;
  }

LABEL_133:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "HomePodSetup");
  if ((discoveryFlags & 0x20) == 0)
  {
LABEL_61:
    if ((discoveryFlags & 0x80000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_135;
  }

LABEL_134:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "iOSSetup");
  if ((discoveryFlags & 0x80000) == 0)
  {
LABEL_62:
    if ((discoveryFlags & 0x40) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_136;
  }

LABEL_135:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "NearbyAction");
  if ((discoveryFlags & 0x40) == 0)
  {
LABEL_63:
    if ((discoveryFlags & 0x800000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_137;
  }

LABEL_136:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "NearbyInfo");
  if ((discoveryFlags & 0x800000000000) == 0)
  {
LABEL_64:
    if ((discoveryFlags & 0x100) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_138;
  }

LABEL_137:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "OSR");
  if ((discoveryFlags & 0x100) == 0)
  {
LABEL_65:
    if ((discoveryFlags & 0x200000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_139;
  }

LABEL_138:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "RemoteDisplay");
  if ((discoveryFlags & 0x200000000000) == 0)
  {
LABEL_66:
    if ((discoveryFlags & 0x200) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_140;
  }

LABEL_139:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "ProxControl");
  if ((discoveryFlags & 0x200) == 0)
  {
LABEL_67:
    if ((discoveryFlags & 0x400) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_141;
  }

LABEL_140:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "ProxRepair");
  if ((discoveryFlags & 0x400) == 0)
  {
LABEL_68:
    if ((discoveryFlags & 0x4000000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_142;
  }

LABEL_141:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "ShareAudio");
  if ((discoveryFlags & 0x4000000000000000) == 0)
  {
LABEL_69:
    if ((discoveryFlags & 0x800) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_143;
  }

LABEL_142:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "SIMTransfer");
  if ((discoveryFlags & 0x800) == 0)
  {
LABEL_70:
    if ((discoveryFlags & 0x20000000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_144;
  }

LABEL_143:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "TVLatencySetup");
  if ((discoveryFlags & 0x20000000000000) == 0)
  {
LABEL_71:
    if ((discoveryFlags & 0x1000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_145;
  }

LABEL_144:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "WatchSetup");
  if ((discoveryFlags & 0x1000) == 0)
  {
LABEL_72:
    if ((discoveryFlags & 0x2000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_146;
  }

LABEL_145:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "WHASetup");
  if ((discoveryFlags & 0x2000) == 0)
  {
LABEL_73:
    if ((discoveryFlags & 0x4000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_147;
  }

LABEL_146:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "WiFiPassword");
  if ((discoveryFlags & 0x4000) == 0)
  {
LABEL_74:
    if ((discoveryFlags & 0x8000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_148;
  }

LABEL_147:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "WxSetup");
  if ((discoveryFlags & 0x8000) == 0)
  {
LABEL_75:
    if ((discoveryFlags & 0x10000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_149;
  }

LABEL_148:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "WxStatus");
  if ((discoveryFlags & 0x10000) == 0)
  {
LABEL_76:
    if ((discoveryFlags & 0x200000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_150;
  }

LABEL_149:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "ObjectSetup");
  if ((discoveryFlags & 0x200000) == 0)
  {
LABEL_77:
    if ((discoveryFlags & 0x800000) == 0)
    {
      goto LABEL_78;
    }

LABEL_151:
    xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "Pairing");
    if ((discoveryFlags & 0x2000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_150:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "Connections");
  if ((discoveryFlags & 0x800000) != 0)
  {
    goto LABEL_151;
  }

LABEL_78:
  if ((discoveryFlags & 0x2000000) != 0)
  {
LABEL_79:
    xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "ScreenOff");
  }

LABEL_80:
  xpc_dictionary_set_value(v3, "discoveryFlags", v13);

LABEL_81:
  v14 = "AirDrop";
  if ("AirDrop")
  {
    v15 = 0;
    v16 = &off_1E811F518;
    do
    {
      v18 = *(v16 - 4);
      if (v18 - 45) >= 0xFFFFFFD4 && ((self->_discoveryTypesInternal.bitArray[(v18 - 1) >> 3] >> (-v18 & 7)))
      {
        if (!v15)
        {
          v19 = v14;
          v20 = xpc_array_create(0, 0);
          v14 = v19;
          v15 = v20;
        }

        xpc_array_set_string(v15, 0xFFFFFFFFFFFFFFFFLL, v14);
      }

      v17 = *v16;
      v16 += 3;
      v14 = v17;
    }

    while (v17);
    if (v15)
    {
      xpc_dictionary_set_value(v3, "discoveryTypes", v15);
    }

    if (self->_keepAlive)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v15 = 0;
    if (self->_keepAlive)
    {
LABEL_92:
      xpc_dictionary_set_BOOL(v3, "keepAlive", 1);
    }
  }

  memoryPressureFlags = self->_memoryPressureFlags;
  if ((memoryPressureFlags & 6) != 0)
  {
    if ((memoryPressureFlags & 4) != 0)
    {
      v22 = "critical";
    }

    else
    {
      v22 = "warn";
    }

    xpc_dictionary_set_string(v3, "memoryPressure", v22);
  }

  v23 = self->_oobKeys;
  if (v23)
  {
    CUXPCEncodeNSArrayOfObjects();
  }

  v24 = self->_serviceUUIDs;
  if (v24)
  {
    CUXPCEncodeNSArrayOfObjects();
  }

  if (self->_bleSensorRssiIncreaseScanThreshold)
  {
    xpc_dictionary_set_int64(v3, "bleSensorRssiIncreaseScanThreshold", self->_bleSensorRssiIncreaseScanThreshold);
  }

  if (self->_bleSensorEnableRssiIncreaseScan)
  {
    xpc_dictionary_set_int64(v3, "bleSensorEnableRssiIncreaseScan", 1);
  }

  bleSensorIncreaseScanRate = self->_bleSensorIncreaseScanRate;
  if (bleSensorIncreaseScanRate)
  {
    xpc_dictionary_set_int64(v3, "bleSensorIncreaseScanRate", bleSensorIncreaseScanRate);
  }

  bleSensorIncreaseScanTimeout = self->_bleSensorIncreaseScanTimeout;
  if (bleSensorIncreaseScanTimeout)
  {
    xpc_dictionary_set_int64(v3, "bleSensorIncreaseScanTimeout", bleSensorIncreaseScanTimeout);
  }

  bleSensorTimeoutBetweenIncreaseScan = self->_bleSensorTimeoutBetweenIncreaseScan;
  if (bleSensorTimeoutBetweenIncreaseScan)
  {
    xpc_dictionary_set_int64(v3, "bleSensorTimeoutBetweenIncreaseScan", bleSensorTimeoutBetweenIncreaseScan);
  }

  if (self->_denyLowPowerModeScans)
  {
    xpc_dictionary_set_BOOL(v3, "denyLowPowerModeScans", 1);
    if (!self->_denyScreenLockedScans)
    {
LABEL_114:
      deviceSetupState = self->_deviceSetupState;
      if (!self->_deviceSetupState)
      {
        goto LABEL_116;
      }

      goto LABEL_115;
    }
  }

  else if (!self->_denyScreenLockedScans)
  {
    goto LABEL_114;
  }

  xpc_dictionary_set_BOOL(v3, "denyScreenLockedScans", 1);
  deviceSetupState = self->_deviceSetupState;
  if (self->_deviceSetupState)
  {
LABEL_115:
    xpc_dictionary_set_uint64(v3, "deviceSetupState", deviceSetupState);
  }

LABEL_116:
  v29 = self->_bufferedAdvConfigsForAOP;
  if (v29)
  {
    CUXPCEncodeNSArrayOfObjects();
  }

  if (self->_xpcReportCompleteDevice)
  {
    xpc_dictionary_set_BOOL(v3, "xpcReportCompleteDevice", 1);
  }

  v30 = v3;

  return v3;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_activateCalled)
  {
    v5->_activateCalled = 1;
    v6 = MEMORY[0x1C68DF720](v4);
    activateCompletion = v5->_activateCompletion;
    v5->_activateCompletion = v6;

    dispatchQueue = v5->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__CBDiscovery_activateWithCompletion___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = v5;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(v5);
}

- (void)_activateDirectStart
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    clientID = self->_clientID;
    LogPrintF_safe();
  }

LABEL_5:
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__CBDiscovery__activateDirectStart__block_invoke;
  v6[3] = &unk_1E811D5F8;
  v6[4] = self;
  [gCBDaemonServer activateCBDiscovery:self completion:{v6, clientID}];
}

void __35__CBDiscovery__activateDirectStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 168);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CBDiscovery__activateDirectStart__block_invoke_2;
  v7[3] = &unk_1E811CF50;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __35__CBDiscovery__activateDirectStart__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  v5 = *(a1 + 32);
  v6 = **(v5 + 56);
  if (*(a1 + 40))
  {
    if (v6 > 90)
    {
      goto LABEL_9;
    }

    if (v6 == -1)
    {
      v8 = *(v5 + 56);
      if (!_LogCategory_Initialize())
      {
LABEL_9:
        if (v2)
        {
          v2[2](v2, *(a1 + 40));
        }

        else
        {
          v9 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 176));
          v10 = v9;
          if (v9)
          {
            (*(v9 + 16))(v9, *(a1 + 40));
          }
        }

        goto LABEL_20;
      }

      v5 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = *(v5 + 56);
    }

    v7 = *(v5 + 116);
    v21 = CUPrintNSError();
    LogPrintF_safe();

    goto LABEL_9;
  }

  if (v6 <= 30)
  {
    if (v6 == -1)
    {
      v11 = *(v5 + 56);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v5 = *(a1 + 32);
      v19 = *(v5 + 56);
    }

    v20 = *(v5 + 116);
    LogPrintF_safe();
  }

LABEL_15:
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__4;
  v28 = __Block_byref_object_dispose__4;
  v29 = 0;
  v12 = [gCBDaemonServer deviceMap];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __35__CBDiscovery__activateDirectStart__block_invoke_174;
  v23[3] = &unk_1E8120878;
  v23[4] = *(a1 + 32);
  v23[5] = &v24;
  [v12 enumerateKeysAndObjectsUsingBlock:v23];

  v13 = *(a1 + 32);
  objc_sync_enter(v13);
  objc_storeStrong((*(a1 + 32) + 32), v25[5]);
  objc_sync_exit(v13);

  if (v2)
  {
    v2[2](v2, 0);
  }

  v14 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 144));
  if (v14)
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __35__CBDiscovery__activateDirectStart__block_invoke_2_177;
    v22[3] = &unk_1E81208A0;
    v22[4] = v15;
    v22[5] = v14;
    [v16 enumerateKeysAndObjectsUsingBlock:v22];
  }

  _Block_object_dispose(&v24, 8);
LABEL_20:
}

void __35__CBDiscovery__activateDirectStart__block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 discoveryTypesContainCBDiscovery:*(a1 + 32)])
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 setObject:v5 forKeyedSubscript:v10];
  }
}

void __35__CBDiscovery__activateDirectStart__block_invoke_2_177(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = **(*(a1 + 32) + 56);
  if (v6 <= 15)
  {
    if (v6 != -1)
    {
LABEL_3:
      LogPrintF_safe();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v7 = *(*(a1 + 32) + 56);
      goto LABEL_3;
    }
  }

LABEL_5:
  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)_activateXPCStart:(BOOL)a3
{
  var0 = self->_ucat->var0;
  if (a3)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        ucat = self->_ucat;
      }

      clientID = self->_clientID;
      goto LABEL_8;
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v9 = self->_ucat;
    }

    v11 = self->_clientID;
LABEL_8:
    LogPrintF_safe();
  }

LABEL_12:
  v6 = xpc_dictionary_create(0, 0, 0);
  [(CBDiscovery *)self encodeWithXPCObject:v6];
  xpc_dictionary_set_string(v6, "mTyp", "DscA");
  v7 = [(CBDiscovery *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __33__CBDiscovery__activateXPCStart___block_invoke;
  handler[3] = &unk_1E811D158;
  handler[4] = self;
  xpc_connection_send_message_with_reply(v7, v6, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)a3
{
  v4 = a3;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__4;
  v43 = __Block_byref_object_dispose__4;
  v44 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __37__CBDiscovery__activateXPCCompleted___block_invoke;
  v38[3] = &unk_1E811D378;
  v38[4] = self;
  v38[5] = &v39;
  v5 = MEMORY[0x1C68DF720](v38);
  v6 = CUXPCDecodeNSErrorIfNeeded();
  v7 = v40[5];
  v40[5] = v6;

  if (!v40[5])
  {
    self->_bluetoothState = xpc_dictionary_get_int64(v4, "pwrS");
    v8 = xpc_dictionary_get_array(v4, "devA");
    v9 = v8;
    if (v8)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__4;
      v36 = __Block_byref_object_dispose__4;
      v37 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__4;
      v30 = __Block_byref_object_dispose__4;
      v31 = 0;
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __37__CBDiscovery__activateXPCCompleted___block_invoke_2;
      applier[3] = &unk_1E81208C8;
      applier[4] = &v26;
      applier[5] = &v32;
      xpc_array_apply(v8, applier);
      v10 = v27[5];
      if (v10)
      {
        v22 = v40;
        v23 = v10;
        v11 = v22[5];
        v22[5] = v23;
      }

      else
      {
        v11 = self;
        objc_sync_enter(v11);
        objc_storeStrong(&v11->_deviceMap, v33[5]);
        objc_sync_exit(v11);
      }

      _Block_object_dispose(&v26, 8);
      _Block_object_dispose(&v32, 8);

      if (v10)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
        bluetoothState = self->_bluetoothState;
        if (bluetoothState > 0xA)
        {
LABEL_12:
          clientID = self->_clientID;
          [(NSMutableDictionary *)self->_deviceMap count];
          LogPrintF_safe();
          goto LABEL_13;
        }

LABEL_9:
        v14 = off_1E8120910[bluetoothState];
        goto LABEL_12;
      }

      ucat = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v16 = self->_ucat;
        bluetoothState = self->_bluetoothState;
        if (bluetoothState > 0xA)
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }
    }

LABEL_13:
    v18 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v18)
    {
      v18[2](v18, 0);
    }

    v20 = MEMORY[0x1C68DF720](self->_deviceFoundHandler);
    if (v20)
    {
      deviceMap = self->_deviceMap;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __37__CBDiscovery__activateXPCCompleted___block_invoke_3;
      v24[3] = &unk_1E81208A0;
      v24[4] = self;
      v24[5] = v20;
      [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v24];
    }

    goto LABEL_18;
  }

LABEL_19:
  v5[2](v5);

  _Block_object_dispose(&v39, 8);
}

void __37__CBDiscovery__activateXPCCompleted___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return;
  }

  v2 = *(a1 + 32);
  v3 = **(v2 + 56);
  if (v3 <= 90)
  {
    if (v3 == -1)
    {
      v5 = *(v2 + 56);
      v6 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_7;
      }

      v11 = *(v2 + 56);
      v12 = *(*(*(a1 + 40) + 8) + 40);
    }

    v4 = *(v2 + 116);
    v13 = CUPrintNSError();
    LogPrintF_safe();

    v2 = *(a1 + 32);
  }

LABEL_7:
  v14 = MEMORY[0x1C68DF720](*(v2 + 16));
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  if (v14)
  {
    v14[2](v14, *(*(*(a1 + 40) + 8) + 40));
  }

  else
  {
    v9 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 176));
    v10 = v9;
    if (v9)
    {
      (*(v9 + 16))(v9, *(*(*(a1 + 40) + 8) + 40));
    }
  }
}

void __37__CBDiscovery__activateXPCCompleted___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = **(*(a1 + 32) + 56);
  if (v6 <= 15)
  {
    if (v6 != -1)
    {
LABEL_3:
      LogPrintF_safe();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v7 = *(*(a1 + 32) + 56);
      goto LABEL_3;
    }
  }

LABEL_5:
  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)finish
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__CBDiscovery_finish__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __21__CBDiscovery_finish__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 56);
  if (*(v2 + 47) != 1)
  {
    if (v3 <= 30)
    {
      if (v3 == -1)
      {
        v4 = *(v2 + 56);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v2 = *(a1 + 32);
        v9 = *(v2 + 56);
      }

      v10 = *(v2 + 116);
      LogPrintF_safe();
    }

LABEL_6:
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "mTyp", "DscF");
    v6 = [*(a1 + 32) _ensureXPCStarted];
    v7 = *(a1 + 32);
    v8 = *(v7 + 168);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __21__CBDiscovery_finish__block_invoke_2;
    handler[3] = &unk_1E811D158;
    handler[4] = v7;
    xpc_connection_send_message_with_reply(v6, v5, v8, handler);

    return;
  }

  __21__CBDiscovery_finish__block_invoke_cold_1(v3, *(v2 + 56), a1 + 32);
}

void __21__CBDiscovery_finish__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (!v4)
  {
    objc_opt_class();
    CUXPCDecodeObject();
    v4 = 0;
  }

  if (v4)
  {
    v5 = 90;
  }

  else
  {
    v5 = 30;
  }

  v6 = *(a1 + 32);
  v7 = **(v6 + 56);
  if (v5 >= v7)
  {
    if (v7 != -1)
    {
LABEL_8:
      v8 = *(v6 + 116);
      v14 = CUPrintNSError();
      LogPrintF_safe();

      v6 = *(a1 + 32);
      goto LABEL_10;
    }

    v9 = *(v6 + 56);
    v10 = _LogCategory_Initialize();
    v6 = *(a1 + 32);
    if (v10)
    {
      v13 = *(v6 + 56);
      goto LABEL_8;
    }
  }

LABEL_10:
  v11 = MEMORY[0x1C68DF720](*(v6 + 280));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, 0, v4);
  }

  [*(a1 + 32) _invalidate];
}

- (void)_interrupted
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v13 = v2;
  var0 = self->_ucat->var0;
  if (var0 <= 90)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_6:
  [(CBDiscovery *)self _lostAllDevices:v3];
  v8 = MEMORY[0x1C68DF720](self->_interruptionHandler);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8);
  }

  self->_bluetoothState = 1;
  v10 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10);
  }

  [(CBDiscovery *)self _activateXPCStart:1];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CBDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  self->_invalidateCalled = 1;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    clientID = self->_clientID;
    LogPrintF_safe();
  }

LABEL_6:
  v9 = self->_mockID;
  if (v9)
  {
    CBMockRemoveDiscovery(v9, self);
  }

  if (self->_direct)
  {
    [(CBDiscovery *)self _invalidateDirect];
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_xpcCnx;
  v6 = v5;
  if (v5)
  {
    xpc_connection_cancel(v5);
  }

  objc_sync_exit(v4);
  [(CBDiscovery *)v4 _invalidated];
}

void __32__CBDiscovery__invalidateDirect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CBDiscovery__invalidateDirect__block_invoke_2;
  block[3] = &unk_1E811D130;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_direct)
  {
    v3 = self;
    objc_sync_enter(v3);
    xpcCnx = v3->_xpcCnx;
    objc_sync_exit(v3);

    if (!xpcCnx)
    {
      self->_invalidateCalled = 1;
      v17 = MEMORY[0x1C68DF720](v3->_invalidationHandler);
      bluetoothStateChangedHandler = v3->_bluetoothStateChangedHandler;
      v3->_bluetoothStateChangedHandler = 0;

      deviceFoundHandler = v3->_deviceFoundHandler;
      v3->_deviceFoundHandler = 0;

      deviceLostHandler = v3->_deviceLostHandler;
      v3->_deviceLostHandler = 0;

      devicesBufferedHandler = v3->_devicesBufferedHandler;
      v3->_devicesBufferedHandler = 0;

      errorHandler = v3->_errorHandler;
      v3->_errorHandler = 0;

      finishHandler = v3->_finishHandler;
      v3->_finishHandler = 0;

      interruptionHandler = v3->_interruptionHandler;
      v3->_interruptionHandler = 0;

      invalidationHandler = v3->_invalidationHandler;
      v3->_invalidationHandler = 0;

      systemOverrideHandler = v3->_systemOverrideHandler;
      v3->_systemOverrideHandler = 0;

      v14 = v17;
      if (v17)
      {
        (*(v17 + 16))(v17);
        v14 = v17;
      }

      self->_invalidateDone = 1;
      p_var0 = &v3->_ucat->var0;
      if (*p_var0 <= 30)
      {
        if (*p_var0 != -1)
        {
          goto LABEL_10;
        }

        p_var0 = _LogCategory_Initialize();
        v14 = v17;
        if (p_var0)
        {
          ucat = v3->_ucat;
LABEL_10:
          p_var0 = LogPrintF_safe();
          v14 = v17;

- (void)_lostAllDevices
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1C68DF720](self->_deviceLostHandler, a2);
  v4 = self;
  objc_sync_enter(v4);
  deviceMap = v4->_deviceMap;
  if (!v3)
  {
    [(NSMutableDictionary *)deviceMap removeAllObjects];
    objc_sync_exit(v4);

    goto LABEL_17;
  }

  v6 = [(NSMutableDictionary *)deviceMap allValues];
  [(NSMutableDictionary *)v4->_deviceMap removeAllObjects];
  objc_sync_exit(v4);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = *v17;
  do
  {
    v10 = 0;
    do
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      var0 = v4->_ucat->var0;
      if (var0 <= 15)
      {
        if (var0 != -1)
        {
          goto LABEL_9;
        }

        if (_LogCategory_Initialize())
        {
          ucat = v4->_ucat;
LABEL_9:
          LogPrintF_safe();
        }
      }

      v3[2](v3, v11);
      ++v10;
    }

    while (v8 != v10);
    v14 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    v8 = v14;
  }

  while (v14);
LABEL_15:

LABEL_17:
  v15 = *MEMORY[0x1E69E9840];
}

- (void)reportMockDeviceFound:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CBDiscovery_reportMockDeviceFound___block_invoke;
  v7[3] = &unk_1E811CF50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __37__CBDiscovery_reportMockDeviceFound___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 47))
  {
    return result;
  }

  v2 = **(v1 + 56);
  if (v2 <= 30)
  {
    if (v2 != -1)
    {
LABEL_4:
      v12 = *(result + 40);
      v3 = result;
      LogPrintF();
      result = v3;
      v1 = *(v3 + 32);
      goto LABEL_6;
    }

    v4 = result;
    v5 = *(v1 + 56);
    v6 = _LogCategory_Initialize();
    result = v4;
    v1 = *(v4 + 32);
    if (v6)
    {
      v11 = *(v1 + 56);
      goto LABEL_4;
    }
  }

LABEL_6:
  v7 = *(v1 + 144);
  if (v7)
  {
    v8 = *(result + 40);
    v9 = *(v7 + 16);
    v10 = *(v1 + 144);

    return v9(v10, v8);
  }

  return result;
}

- (void)reportMockDeviceLost:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CBDiscovery_reportMockDeviceLost___block_invoke;
  v7[3] = &unk_1E811CF50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __36__CBDiscovery_reportMockDeviceLost___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 47))
  {
    return result;
  }

  v2 = **(v1 + 56);
  if (v2 <= 30)
  {
    if (v2 != -1)
    {
LABEL_4:
      v12 = *(result + 40);
      v3 = result;
      LogPrintF();
      result = v3;
      v1 = *(v3 + 32);
      goto LABEL_6;
    }

    v4 = result;
    v5 = *(v1 + 56);
    v6 = _LogCategory_Initialize();
    result = v4;
    v1 = *(v4 + 32);
    if (v6)
    {
      v11 = *(v1 + 56);
      goto LABEL_4;
    }
  }

LABEL_6:
  v7 = *(v1 + 152);
  if (v7)
  {
    v8 = *(result + 40);
    v9 = *(v7 + 16);
    v10 = *(v1 + 152);

    return v9(v10, v8);
  }

  return result;
}

- (void)_updateIfNeededWithBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ((v4[2](v4) & 1) != 0 && v5->_activateCalled && !v5->_changesPending)
  {
    v5->_changesPending = 1;
    dispatchQueue = v5->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__CBDiscovery__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = v5;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(v5);
}

- (void)_update
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v2 = self;
  objc_sync_enter(v2);
  changesPending = v2->_changesPending;
  v2->_changesPending = 0;
  objc_sync_exit(v2);

  var0 = v2->_ucat->var0;
  if (changesPending)
  {
    if (var0 > 30)
    {
      goto LABEL_13;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_13:
        if (!v2->_direct)
        {
          xdict = xpc_dictionary_create(0, 0, 0);
          [(CBDiscovery *)v2 encodeWithXPCObject:xdict];
          xpc_dictionary_set_string(xdict, "mTyp", "DscU");
          v5 = [(CBDiscovery *)v2 _ensureXPCStarted];
          xpc_connection_send_message(v5, xdict);
        }

        return;
      }

      ucat = v2->_ucat;
    }

    LogPrintF_safe();
    goto LABEL_13;
  }

  if (var0 > 10)
  {
    return;
  }

  if (var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      return;
    }

    v6 = v2->_ucat;
  }

  LogPrintF_safe();
}

- (void)xpcReceivedMessage:(id)a3
{
  v4 = a3;
  var0 = self->_ucat->var0;
  v28 = v4;
  if (var0 <= 9)
  {
    if (var0 != -1)
    {
LABEL_3:
      v26 = CUPrintXPC();
      LogPrintF_safe();

      v4 = v28;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = v28;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (MEMORY[0x1C68DFDD0](v4) == MEMORY[0x1E69E9E80])
  {
    [(CBDiscovery *)self _xpcReceivedMessage:v28];
    goto LABEL_26;
  }

  if (v28 == MEMORY[0x1E69E9E18])
  {
    [(CBDiscovery *)self _interrupted];
    goto LABEL_26;
  }

  if (v28 == MEMORY[0x1E69E9E20])
  {
    if (self->_invalidateCalled)
    {
      goto LABEL_25;
    }

    v17 = self->_ucat->var0;
    if (v17 > 90)
    {
      goto LABEL_25;
    }

    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v25 = self->_ucat;
    }

    LogPrintF_safe();
LABEL_25:
    v21 = self;
    objc_sync_enter(v21);
    xpcCnx = v21->_xpcCnx;
    v21->_xpcCnx = 0;

    objc_sync_exit(v21);
    [(CBDiscovery *)v21 _invalidated];
    goto LABEL_26;
  }

  v7 = CUXPCDecodeNSErrorIfNeeded();
  v14 = v7;
  if (v7)
  {
    v15 = v7;

    v16 = self->_ucat->var0;
    if (v16 > 90)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v15 = CBErrorF(-6700, "XPC event error", v8, v9, v10, v11, v12, v13, v26);

    v16 = self->_ucat->var0;
    if (v16 > 90)
    {
      goto LABEL_21;
    }
  }

  if (v16 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

    v24 = self->_ucat;
  }

  v18 = CUPrintNSError();
  v27 = CUPrintXPC();
  LogPrintF_safe();

LABEL_21:
  v19 = MEMORY[0x1C68DF720](self->_errorHandler);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 16))(v19, v15);
  }

LABEL_26:
}

- (void)_xpcReceivedMessage:(id)a3
{
  v11 = a3;
  string = xpc_dictionary_get_string(v11, "mTyp");
  if (!string)
  {
    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_13;
    }

    if (var0 != -1)
    {
      goto LABEL_12;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
LABEL_12:
      LogPrintF_safe();
    }

LABEL_13:
    v8 = v11;

    goto LABEL_15;
  }

  v5 = string;
  if (!strcmp(string, "DvFo"))
  {
    [(CBDiscovery *)self _xpcReceivedDeviceFound:v11];
    v8 = v11;
  }

  else if (!strcmp(v5, "DvLo"))
  {
    [(CBDiscovery *)self _xpcReceivedDeviceLost:v11];
    v8 = v11;
  }

  else if (!strcmp(v5, "DsBf"))
  {
    [(CBDiscovery *)self _xpcReceivedDevicesBuffered:v11];
    v8 = v11;
  }

  else if (!strcmp(v5, "PwrC"))
  {
    [(CBDiscovery *)self _xpcReceivedPowerStateChanged:v11];
    v8 = v11;
  }

  else
  {
    if (strcmp(v5, "SyOC"))
    {
      v6 = self->_ucat->var0;
      if (v6 > 90)
      {
        goto LABEL_13;
      }

      if (v6 != -1)
      {
        goto LABEL_12;
      }

      if (_LogCategory_Initialize())
      {
        v10 = self->_ucat;
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    [(CBDiscovery *)self _xpcReceivedSystemOverrideChanged:v11];
    v8 = v11;
  }

LABEL_15:
}

- (void)_xpcReceivedDeviceFound:(id)a3
{
  v4 = a3;
  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    [CBDiscovery _xpcReceivedDeviceFound:?];
    goto LABEL_15;
  }

  v16 = 0;
  v5 = [[CBDevice alloc] initWithXPCObject:v4 error:&v16];
  v6 = v16;
  if (v5)
  {
    v7 = [(CBDevice *)v5 identifier];
    if (v7)
    {
      v8 = self;
      objc_sync_enter(v8);
      deviceMap = v8->_deviceMap;
      if (!deviceMap)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = v8->_deviceMap;
        v8->_deviceMap = v10;

        deviceMap = v8->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v5 forKeyedSubscript:v7];
      objc_sync_exit(v8);

      var0 = v8->_ucat->var0;
      if (var0 > 15)
      {
        goto LABEL_10;
      }

      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        ucat = v8->_ucat;
      }

      LogPrintF_safe();
LABEL_10:
      v13 = MEMORY[0x1C68DF720](v8->_deviceFoundHandler);
      v14 = v13;
      if (v13)
      {
        (*(v13 + 16))(v13, v5);
      }

      goto LABEL_13;
    }

    [CBDiscovery _xpcReceivedDeviceFound:?];
    v7 = v17;
  }

  else
  {
    if (([CBDiscovery _xpcReceivedDeviceFound:?]& 1) != 0)
    {
      goto LABEL_14;
    }

    v7 = v17;
  }

LABEL_13:

LABEL_14:
LABEL_15:
}

- (void)_xpcReceivedDeviceLost:(id)a3
{
  v4 = a3;
  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    [CBDiscovery _xpcReceivedDeviceLost:?];
    goto LABEL_13;
  }

  v13 = 0;
  v5 = [[CBDevice alloc] initWithXPCObject:v4 error:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = [(CBDevice *)v5 identifier];
    if (v7)
    {
      v8 = self;
      objc_sync_enter(v8);
      [(NSMutableDictionary *)v8->_deviceMap setObject:0 forKeyedSubscript:v7];
      objc_sync_exit(v8);

      var0 = v8->_ucat->var0;
      if (var0 <= 15)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_8;
          }

          ucat = v8->_ucat;
        }

        LogPrintF_safe();
      }

LABEL_8:
      v10 = MEMORY[0x1C68DF720](v8->_deviceLostHandler);
      v11 = v10;
      if (v10)
      {
        (*(v10 + 16))(v10, v5);
      }

      goto LABEL_11;
    }

    [CBDiscovery _xpcReceivedDeviceLost:?];
    v7 = v14;
  }

  else
  {
    if (([CBDiscovery _xpcReceivedDeviceLost:?]& 1) != 0)
    {
      goto LABEL_12;
    }

    v7 = v14;
  }

LABEL_11:

LABEL_12:
LABEL_13:
}

- (void)_xpcReceivedDevicesBuffered:(id)a3
{
  v4 = a3;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    objc_opt_class();
    CUXPCDecodeNSArrayOfClass();
    v5 = 0;
    [CBDiscovery _xpcReceivedDevicesBuffered:?];
  }

  else
  {
    [CBDiscovery _xpcReceivedDevicesBuffered:?];
  }
}

- (void)_xpcReceivedPowerStateChanged:(id)a3
{
  xdict = a3;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    self->_bluetoothState = xpc_dictionary_get_int64(xdict, "pwrS");
    v4 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4);
    }

    v6 = xdict;
  }

  else
  {
    [CBDiscovery _xpcReceivedPowerStateChanged:?];
    v6 = xdict;
  }
}

- (void)_xpcReceivedSystemOverrideChanged:(id)a3
{
  xdict = a3;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    self->_bleScanRateOverride = xpc_dictionary_get_int64(xdict, "scRO");
    self->_systemOverrideFlags = xpc_dictionary_get_uint64(xdict, "syOF");
    v4 = MEMORY[0x1C68DF720](self->_systemOverrideHandler);
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4);
    }

    v6 = xdict;
  }

  else
  {
    [CBDiscovery _xpcReceivedSystemOverrideChanged:?];
    v6 = xdict;
  }
}

- (void)injectAOPBufAdv:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    var0 = self->_ucat->var0;
    if (var0 <= 40)
    {
      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v19 = self->_ucat;
      }

      [v5 count];
      LogPrintF_safe();
    }

LABEL_12:
    empty = xpc_array_create_empty();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          xpc_array_set_data(empty, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v20 + 1) + 8 * i) bytes], objc_msgSend(*(*(&v20 + 1) + 8 * i), "length"));
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v16, "mTyp", "DsIA");
    xpc_dictionary_set_value(v16, "rAdv", empty);
    v17 = [(CBDiscovery *)self _ensureXPCStarted];
    xpc_connection_send_message(v17, v16);

    goto LABEL_20;
  }

  v7 = self->_ucat->var0;
  if (v7 <= 40)
  {
    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      v8 = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_20:

  v18 = *MEMORY[0x1E69E9840];
}

+ (id)devicesWithDiscoveryFlags:(unint64_t)a3 endpoint:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "mTyp", "DsGD");
  xpc_dictionary_set_uint64(v8, "dsFl", a3);
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("CBDiscovery-GetDevices", v9);

  v11 = v7;
  v12 = v11;
  if (v11)
  {
    mach_service = xpc_connection_create_from_endpoint(v11);
    xpc_connection_set_target_queue(mach_service, v10);
  }

  else
  {
    mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", v10, 0);
  }

  xpc_connection_set_event_handler(mach_service, &__block_literal_global_5);
  xpc_connection_activate(mach_service);
  v14 = xpc_connection_send_message_with_reply_sync(mach_service, v8);
  xpc_connection_cancel(mach_service);
  if (v14)
  {
    v21 = CUXPCDecodeNSErrorIfNeeded();
    v22 = v21;
    if (v21)
    {
      if (a5)
      {
        v33 = v21;
        v31 = 0;
        *a5 = v22;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v29 = xpc_dictionary_get_array(v14, "devA");
      if (v29)
      {
        v41 = 0;
        v42 = &v41;
        v43 = 0x3032000000;
        v44 = __Block_byref_object_copy__4;
        v45 = __Block_byref_object_dispose__4;
        v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy__4;
        v39 = __Block_byref_object_dispose__4;
        v40 = 0;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __56__CBDiscovery_devicesWithDiscoveryFlags_endpoint_error___block_invoke_2;
        v34[3] = &unk_1E81208C8;
        v34[4] = &v35;
        v34[5] = &v41;
        xpc_array_apply(v29, v34);
        v30 = v36[5];
        if (v30)
        {
          v31 = 0;
          if (a5)
          {
            *a5 = v30;
          }
        }

        else
        {
          v31 = v42[5];
        }

        _Block_object_dispose(&v35, 8);

        _Block_object_dispose(&v41, 8);
      }

      else if (a5)
      {
        CBErrorF(-6700, "No devices", v23, v24, v25, v26, v27, v28, v34[0]);
        *a5 = v31 = 0;
      }

      else
      {
        v31 = 0;
      }
    }
  }

  else if (a5)
  {
    CBErrorF(-6700, "No reply", v15, v16, v17, v18, v19, v20, v34[0]);
    *a5 = v31 = 0;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)devicesMatchingPropertiesOn:(id)a3 exactMatch:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke;
  v13[3] = &unk_1E81208F0;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

void __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "DGDv");
  v3 = *(a1 + 40);
  CUXPCEncodeObject();
  if (*(a1 + 56) == 1)
  {
    xpc_dictionary_set_BOOL(v2, "gDvE", 1);
  }

  v4 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(*(a1 + 32) + 168);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke_2;
  v6[3] = &unk_1E811E3F8;
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v4, v2, v5, v6);
}

void __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v5 = v4;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_opt_class();
    CUXPCDecodeNSArrayOfClass();
    v5 = 0;
    __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke_2_cold_1(v5, a1, (*(a1 + 40) + 16), *(a1 + 40), v6, v7, v8, v9);
  }
}

- (CBDiscovery)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = [(CBDiscovery *)self init];
  if (!v13)
  {
    if (!a4)
    {
      goto LABEL_86;
    }

    v42 = "CBDiscovery init failed";
LABEL_85:
    CBErrorF(-6756, v42, v7, v8, v9, v10, v11, v12, v46);
    *a4 = v40 = 0;
    goto LABEL_80;
  }

  if (MEMORY[0x1C68DFDD0](v6) != MEMORY[0x1E69E9E80])
  {
    if (!a4)
    {
      goto LABEL_86;
    }

    v42 = "XPC non-dict";
    goto LABEL_85;
  }

  OUTLINED_FUNCTION_0();
  v14 = CUXPCDecodeUInt64RangedEx();
  if (v14 == 6)
  {
    v13->_authFlags = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0();
  v15 = CUXPCDecodeUInt64RangedEx();
  if (v15 == 6)
  {
    v13->_authFlagsExcluded = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0();
  v16 = CUXPCDecodeUInt64RangedEx();
  if (v16 == 6)
  {
    v13->_bleRSSIThresholdOrder = 0;
  }

  else if (v16 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_4();
  v17 = CUXPCDecodeSInt64RangedEx();
  if (v17 == 6)
  {
    v13->_bleRSSIThresholdHint = 0;
  }

  else if (v17 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_4();
  v18 = CUXPCDecodeSInt64RangedEx();
  if (v18 == 6)
  {
    v13->_bleScanRate = 0;
  }

  else if (v18 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_4();
  v19 = CUXPCDecodeSInt64RangedEx();
  if (v19 == 6)
  {
    v13->_bleScanRateScreenOff = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0();
  v20 = OUTLINED_FUNCTION_5();
  if (v20 == 6)
  {
    v13->_clientID = 0;
  }

  else if (v20 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0();
  v21 = CUXPCDecodeUInt64RangedEx();
  if (v21 == 6)
  {
    v13->_discoveryFlags = 0;
  }

  else if (v21 == 5)
  {
    goto LABEL_86;
  }

  v22 = OUTLINED_FUNCTION_1_0();
  if (!CBXPCDecodeDiscoveryTypes(v22, v23, v24))
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0();
  v25 = OUTLINED_FUNCTION_5();
  if (v25 == 6)
  {
    v13->_internalFlags = 0;
  }

  else if (v25 == 5)
  {
    goto LABEL_86;
  }

  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_86;
  }

  oobKeys = v13->_oobKeys;
  if (oobKeys)
  {
    if ([(NSArray *)oobKeys count])
    {
      if (!v13->_discoveryFlags)
      {
        OUTLINED_FUNCTION_6_1();
        if (v29 ^ v30 | v28)
        {
          if (v27 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_41;
            }

            ucat = v13->_ucat;
          }

          LogPrintF_safe();
        }
      }
    }
  }

LABEL_41:
  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_86;
  }

  serviceUUIDs = v13->_serviceUUIDs;
  if (serviceUUIDs)
  {
    if ([(NSArray *)serviceUUIDs count])
    {
      if (!v13->_discoveryFlags)
      {
        OUTLINED_FUNCTION_6_1();
        if (v29 ^ v30 | v28)
        {
          if (v32 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_50;
            }

            v45 = v13->_ucat;
          }

          LogPrintF_safe();
        }
      }
    }
  }

LABEL_50:
  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_86;
  }

  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0();
  v33 = OUTLINED_FUNCTION_5();
  if (v33 == 6)
  {
    v13->_useCase = 0;
  }

  else if (v33 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_4();
  v34 = CUXPCDecodeSInt64RangedEx();
  if (v34 == 6)
  {
    v13->_bleSensorRssiIncreaseScanThreshold = 0;
  }

  else if (v34 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_86;
  }

  v13->_bleSensorEnableRssiIncreaseScan = 1;
  OUTLINED_FUNCTION_0();
  v35 = OUTLINED_FUNCTION_5();
  if (v35 == 6)
  {
    v13->_bleSensorIncreaseScanRate = 0;
  }

  else if (v35 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0();
  v36 = OUTLINED_FUNCTION_5();
  if (v36 == 6)
  {
    v13->_bleSensorIncreaseScanTimeout = 0;
  }

  else if (v36 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0();
  v37 = OUTLINED_FUNCTION_5();
  if (v37 != 6)
  {
    if (v37 != 5)
    {
      goto LABEL_69;
    }

LABEL_86:
    v40 = 0;
    goto LABEL_80;
  }

  v13->_bleSensorTimeoutBetweenIncreaseScan = 0;
LABEL_69:
  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_86;
  }

  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_86;
  }

  bufferedAdvConfigsForAOP = v13->_bufferedAdvConfigsForAOP;
  if (!bufferedAdvConfigsForAOP)
  {
    goto LABEL_79;
  }

  if (![(NSArray *)bufferedAdvConfigsForAOP count])
  {
    goto LABEL_79;
  }

  if ((v13->_discoveryTypesInternal.bitArray[3] & 8) != 0)
  {
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_6_1();
  if (!(v29 ^ v30 | v28))
  {
    goto LABEL_79;
  }

  if (v39 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_79;
    }

    v43 = v13->_ucat;
  }

  LogPrintF_safe();
LABEL_79:
  v40 = v13;
LABEL_80:

  return v40;
}

BOOL __37__CBDiscovery__activateXPCCompleted___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = OUTLINED_FUNCTION_8_2([CBDevice alloc], *(a1 + 32), v23, obj);

  objc_storeStrong(v3, obja);
  if (v6)
  {
    v13 = [v6 identifier];
    v14 = v13 != 0;
    if (v13)
    {
      v15 = *(*(*(a1 + 40) + 8) + 40);
      if (!v15)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v17 = *(*(a1 + 40) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        v15 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v15 setObject:v6 forKeyedSubscript:v13];
    }

    else
    {
      v20 = CBErrorF(-6708, "No device ID", v7, v8, v9, v10, v11, v12, v24);
      v21 = *(*(a1 + 32) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

BOOL __56__CBDiscovery_devicesWithDiscoveryFlags_endpoint_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = OUTLINED_FUNCTION_8_2([CBDevice alloc], *(a1 + 32), v8, obj);

  objc_storeStrong(v3, obja);
  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }

  return v6 != 0;
}

uint64_t __21__CBDiscovery_finish__block_invoke_cold_1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v4 = *(*a3 + 56);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_8(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 56);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_7(a1);
  if (v7 ^ v8 | v6)
  {
    if (v5 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v9 = *(v3 + 56);
    }

    result = LogPrintF_safe();
  }

LABEL_6:
  *v1 = v2;
  return result;
}

- (uint64_t)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  if (!(v5 ^ v6 | v4))
  {
    return 1;
  }

  v7 = v2;
  if (v3 != -1)
  {
LABEL_4:
    *v7 = CUPrintNSError();
    LogPrintF_safe();
    return 0;
  }

  v9 = v1;
  if (_LogCategory_Initialize())
  {
    v10 = *(v9 + 56);
    goto LABEL_4;
  }

  return 1;
}

- (uint64_t)_xpcReceivedDeviceLost:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_8(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 56);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)_xpcReceivedDeviceLost:(uint64_t)a1 .cold.2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_7(a1);
  if (v7 ^ v8 | v6)
  {
    if (v5 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v9 = *(v3 + 56);
    }

    result = LogPrintF_safe();
  }

LABEL_6:
  *v1 = v2;
  return result;
}

- (uint64_t)_xpcReceivedDeviceLost:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  if (!(v5 ^ v6 | v4))
  {
    return 1;
  }

  v7 = v2;
  if (v3 != -1)
  {
LABEL_4:
    *v7 = CUPrintNSError();
    LogPrintF_safe();
    return 0;
  }

  v9 = v1;
  if (_LogCategory_Initialize())
  {
    v10 = *(v9 + 56);
    goto LABEL_4;
  }

  return 1;
}

- (uint64_t)_xpcReceivedDevicesBuffered:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_8(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 56);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)_xpcReceivedDevicesBuffered:(uint64_t *)a3 .cold.2(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = *a3;
      return LogPrintF_safe();
    }
  }

  return result;
}

- (void)_xpcReceivedDevicesBuffered:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 == -1)
    {
      v6 = v1;
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v7 = *(v6 + 56);
    }

    v8 = CUPrintNSError();
    LogPrintF_safe();
  }
}

- (uint64_t)_xpcReceivedPowerStateChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_8(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 56);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)_xpcReceivedSystemOverrideChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_8(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 56);
    }

    return LogPrintF_safe();
  }

  return result;
}

void __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    (*a3)(a4, 0, a1);
  }

  else
  {
    v10 = CBErrorF(-6727, "No devices found matching device %@", a3, a4, a5, a6, a7, a8, *(a2 + 32));
    (*a3)(a4, 0, v10);
  }
}

@end