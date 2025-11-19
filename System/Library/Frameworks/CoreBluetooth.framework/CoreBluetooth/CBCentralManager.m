@interface CBCentralManager
- (BOOL)isMsgAllowedAlways:(unsigned __int16)a3;
- (CBCentralManager)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue;
- (CBCentralManager)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue options:(NSDictionary *)options;
- (NSArray)retrieveConnectedPeripheralsWithServices:(NSArray *)serviceUUIDs;
- (NSArray)retrievePeripheralsWithIdentifiers:(NSArray *)identifiers;
- (id)createCBPeripheralsFromIDs:(id)a3;
- (id)createPeripheralWithAddress:(id)a3 andIdentifier:(id)a4;
- (id)createSessionEvent:(int64_t)a3 withMsg:(id)a4;
- (id)dataArrayToUUIDArray:(id)a3;
- (id)delegate;
- (id)getLPEMData:(id)a3;
- (id)isApplicationConnectedToAnyPeripherals:(id)a3;
- (id)peripheralWithIdentifier:(id)a3;
- (id)peripheralWithInfo:(id)a3;
- (id)retrieveAddressForPeripheral:(id)a3;
- (id)retrieveConnectingPeripherals;
- (id)retrievePairingInfoForPeripheral:(id)a3;
- (id)retrievePeripheralWithAddress:(id)a3;
- (id)retrieveState;
- (id)retrieveWhbCBPeripheralWithInfo:(id)a3;
- (id)startConnectionEventCounterForPeripheral:(id)a3;
- (id)stopConnectionEventCounterForPeripheral:(id)a3;
- (unsigned)getRemainingAdvancedMatchingRule;
- (unsigned)getTotalSupportedAdvancedMatchingRules;
- (void)HandleBluetoothPhyStatisticEventMsg:(id)a3;
- (void)HandleBluetoothUsageEventMsg:(id)a3;
- (void)HandleControllerBTClockUpdateMsg:(id)a3;
- (void)HandleLESynchronizationEventMsg:(id)a3;
- (void)HandleRssiDetectionUpdateMsg:(id)a3;
- (void)_handleLEAudioXpcEvents:(id)a3;
- (void)_scanForPeripheralsWithServices:(id)a3 options:(id)a4 completion:(id)a5;
- (void)activateWhbCnxForCBPeripheral:(id)a3 infoDict:(id)a4;
- (void)addAdvancedMatchingRule:(id)a3;
- (void)addIRKwithBTAddress:(id)a3 irk:(id)a4;
- (void)cancelPeripheralConnection:(CBPeripheral *)peripheral;
- (void)cancelPeripheralConnection:(id)a3 force:(BOOL)a4;
- (void)cancelPeripheralConnection:(id)a3 options:(id)a4;
- (void)changeMicrophoneGainSettingForSession:(id)a3 forAudioInputType:(unsigned __int8)a4 withMicGain:(char)a5 withResponse:(id)a6;
- (void)changeVolumeForSession:(id)a3 withVolume:(float)a4 withResponse:(id)a5;
- (void)changeVolumeMuteStateForSession:(id)a3 withVolumeMuteState:(int64_t)a4 withResponse:(id)a5;
- (void)changeVolumeOffsetForSession:(id)a3 toLocation:(unsigned int)a4 withVolumeOffSet:(signed __int16)a5 withResponse:(id)a6;
- (void)clearDuplicateFilterCache:(id)a3;
- (void)connectCIS:(id)a3;
- (void)connectPeripheral:(CBPeripheral *)peripheral options:(NSDictionary *)options;
- (void)connectWhbCBPeripheral:(id)a3 withCompletion:(id)a4;
- (void)createPeripheralFromIdentifier:(id)a3 completion:(id)a4;
- (void)createXPCForLEAudio;
- (void)csCreateConfig:(id)a3 options:(id)a4;
- (void)csProcedureEnable:(id)a3 options:(id)a4;
- (void)csReadRemoteFAETable:(id)a3;
- (void)csReadRemoteSupportedCapabilities:(id)a3;
- (void)csRemoveConfig:(id)a3 options:(id)a4;
- (void)csSecurityEnable:(id)a3;
- (void)csSetAfh:(id)a3;
- (void)csSetDefaultSettings:(id)a3 options:(id)a4;
- (void)csSetProcedureParams:(id)a3 options:(id)a4;
- (void)csTest:(id)a3;
- (void)csWriteCachedRemoteSupportedCapabilities:(id)a3 options:(id)a4;
- (void)csWriteRemoteFAETable:(id)a3 options:(id)a4;
- (void)dealloc;
- (void)deleteDevice:(id)a3;
- (void)disconnectCIS:(id)a3;
- (void)enableMrc:(id)a3 options:(id)a4;
- (void)forEachPeripheral:(id)a3;
- (void)handleActivePresetUpdated:(id)a3;
- (void)handleAncsAuthChanged:(id)a3;
- (void)handleApplicationActivityEvent:(id)a3;
- (void)handleApplicationConnectionEventDidOccur:(id)a3;
- (void)handleCSProcedureEventMsg:(id)a3;
- (void)handleConnectCISComplete:(id)a3;
- (void)handleConnectLEAudioComplete:(id)a3;
- (void)handleConnectionParametersUpdated:(id)a3;
- (void)handleDidReceiveDataFromPeripheral:(id)a3;
- (void)handleDidSendBytesToPeripheralwithError:(id)a3;
- (void)handleDisconnectCISComplete:(id)a3;
- (void)handleFeaturesUpdated:(id)a3;
- (void)handleFindMyDevicesUpdated:(id)a3;
- (void)handleLEAudioMsg:(id)a3;
- (void)handleLEAudioSessionEvents:(id)a3;
- (void)handleLEAudioXpcInterrupted;
- (void)handleLEAudioXpcInvalid;
- (void)handleMicrophoneGainUpdated:(id)a3;
- (void)handleMicrophoneMuteUpdated:(id)a3;
- (void)handlePeerMTUChanged:(id)a3;
- (void)handlePeripheralCLReady:(id)a3;
- (void)handlePeripheralConnectionCompleted:(id)a3;
- (void)handlePeripheralConnectionStateUpdated:(id)a3;
- (void)handlePeripheralDisconnectionCompleted:(id)a3;
- (void)handlePeripheralDiscovered:(id)a3;
- (void)handlePeripheralInvalidated:(id)a3;
- (void)handlePeripheralTrackingUpdated:(id)a3;
- (void)handlePresetNameUpdated:(id)a3;
- (void)handlePresetsUpdated:(id)a3;
- (void)handleReadyForUpdates:(id)a3;
- (void)handleRemoveCIGComplete:(id)a3;
- (void)handleRestoringState:(id)a3;
- (void)handleScanComplete:(id)a3;
- (void)handleScanFailedToStartWithError:(id)a3;
- (void)handleScanParamsUpdated:(id)a3;
- (void)handleSessionCompleted:(id)a3;
- (void)handleSessionMicrophoneGainUpdated:(id)a3;
- (void)handleSessionMicrophoneMuteUpdated:(id)a3;
- (void)handleSessionVolumeMuteUpdated:(id)a3;
- (void)handleSessionVolumeOffsetUpdated:(id)a3;
- (void)handleSessionVolumeUpdated:(id)a3;
- (void)handleSetupCIGComplete:(id)a3;
- (void)handleSupportedFeatures:(id)a3;
- (void)handleVolumeInputGainUpdated:(id)a3;
- (void)handleVolumeMuteUpdated:(id)a3;
- (void)handleVolumeOffsetUpdated:(id)a3;
- (void)handleVolumeUpdated:(id)a3;
- (void)handleZoneLost:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)orphanPeripherals;
- (void)powerAssertionNearCompletion;
- (void)randomizeAFHMapForPeripheral:(id)a3;
- (void)readLocalFastLeConnectionCachedControllerInfoWithcompletion:(id)a3;
- (void)registerForConnectionEventsWithOptions:(NSDictionary *)options;
- (void)registerLEAudioClient;
- (void)removeAdvancedMatchingRule:(id)a3;
- (void)removeCIG:(id)a3 completion:(id)a4;
- (void)removeIRKwithBTAddress:(id)a3;
- (void)removeMultipleEntriesDuplicateFilter:(id)a3;
- (void)removeSingleEntryDuplicateFilter:(id)a3;
- (void)retrieveBTDeviceCacheInfo:(id)a3 withCompletion:(id)a4;
- (void)retrieveConnectedPeripherals;
- (void)retrieveConnectedPeripheralsWithServices:(id)a3 completion:(id)a4;
- (void)retrieveConnectionHandleWithIdentifier:(id)a3 completion:(id)a4;
- (void)retrievePeripherals:(id)a3;
- (void)retrievePeripheralsWithCustomProperties:(id)a3 completion:(id)a4;
- (void)retrievePeripheralsWithFindMyIds:(id)a3 completion:(id)a4;
- (void)retrievePeripheralsWithFindMySerialNumberStrings:(id)a3 completion:(id)a4;
- (void)retrievePeripheralsWithFindMySerialNumbers:(id)a3 completion:(id)a4;
- (void)retrievePeripheralsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)retrievePeripheralsWithTags:(id)a3 completion:(id)a4;
- (void)sendData:(id)a3 toPeripheral:(id)a4;
- (void)sendLEAudioMsg:(id)a3 args:(id)a4 completion:(id)a5;
- (void)setBluetoothPhyStatisticsNotifications:(id)a3 options:(id)a4;
- (void)setBluetoothUsageNotifications:(id)a3 options:(id)a4;
- (void)setConnectionEventOptions:(id)a3;
- (void)setDataLengthChange:(id)a3 options:(id)a4;
- (void)setDesiredConnectionLatency:(int64_t)a3 forPeripheral:(id)a4;
- (void)setDesiredConnectionLatency:(int64_t)a3 forPeripheral:(id)a4 completion:(id)a5;
- (void)setEnhancedScanEnable:(id)a3;
- (void)setEnhancedSetScanParamtersMultiCore:(id)a3;
- (void)setLESetPhy:(id)a3 options:(id)a4;
- (void)setLeAFHMap:(id)a3;
- (void)setLePowerControl:(id)a3 options:(id)a4 completion:(id)a5;
- (void)setMatchActionRules:(id)a3;
- (void)setMicrophoneMuteStateForSession:(id)a3 withMicMuteState:(int64_t)a4 withResponse:(id)a5;
- (void)setRSSIStatisticsDetection:(id)a3 options:(id)a4;
- (void)setupCIG:(id)a3 completion:(id)a4;
- (void)startLEAudioXPC;
- (void)startTrackingPeripheral:(id)a3 options:(id)a4;
- (void)stopScan;
- (void)stopTrackingPeripheral:(id)a3 options:(id)a4;
- (void)updatePeripheral:(id)a3 options:(id)a4;
- (void)wipeDuplicateFilterList:(id)a3;
@end

@implementation CBCentralManager

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(CBCentralManager *)self orphanPeripherals];
  if (self->_observingKeyPaths)
  {
    [(CBCentralManager *)self removeObserver:self forKeyPath:@"delegate" context:objc_opt_class()];
    [(CBCentralManager *)self removeObserver:self forKeyPath:@"state" context:objc_opt_class()];
    [(CBCentralManager *)self removeObserver:self forKeyPath:@"localName" context:objc_opt_class()];
    self->_observingKeyPaths = 0;
  }

  v3.receiver = self;
  v3.super_class = CBCentralManager;
  [(CBManager *)&v3 dealloc];
}

- (void)orphanPeripherals
{
  [(CBCentralManager *)self forEachPeripheral:&__block_literal_global];
  pthread_mutex_lock(&self->peripheralsMutex);
  [(NSMapTable *)self->_peripherals removeAllObjects];

  pthread_mutex_unlock(&self->peripheralsMutex);
}

- (void)stopScan
{
  if ([(CBManager *)self sendMsg:78 args:0])
  {

    [(CBCentralManager *)self setIsScanning:0];
  }
}

- (id)peripheralWithIdentifier:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->peripheralsMutex);
  v5 = [(NSMapTable *)self->_peripherals objectForKey:v4];

  pthread_mutex_unlock(&self->peripheralsMutex);

  return v5;
}

- (id)peripheralWithInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  if (v5)
  {
    pthread_mutex_lock(&self->peripheralsMutex);
    peripherals = self->_peripherals;
    v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
    v5 = [(NSMapTable *)peripherals objectForKey:v7];

    if (v5)
    {
      v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgName"];
      if (v8)
      {
        v9 = [(CBPeripheral *)v5 name];
        v10 = [v9 isEqualToString:v8];

        if ((v10 & 1) == 0)
        {
          [(CBPeripheral *)v5 setName:v8];
        }
      }

      [(CBPeripheral *)v5 updateFindMyInfo:v4];
      v11 = [v4 objectForKey:@"kCBMsgArgVisibleInSettings"];

      if (v11)
      {
        v12 = [v4 objectForKeyedSubscript:@"kCBMsgArgVisibleInSettings"];
        -[CBPeripheral setVisibleInSettings:](v5, "setVisibleInSettings:", [v12 BOOLValue]);
      }

      else
      {
        [(CBPeripheral *)v5 setVisibleInSettings:1];
      }
    }

    else
    {
      v5 = [[CBPeripheral alloc] initWithCentralManager:self info:v4];
      v13 = self->_peripherals;
      v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
      [(NSMapTable *)v13 setObject:v5 forKey:v8];
    }

    pthread_mutex_unlock(&self->peripheralsMutex);
  }

  return v5;
}

- (void)forEachPeripheral:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  pthread_mutex_lock(&self->peripheralsMutex);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(NSMapTable *)self->_peripherals objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:*(*(&v16 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  pthread_mutex_unlock(&self->peripheralsMutex);
  v11 = [v5 objectEnumerator];
  v12 = [v11 nextObject];
  if (v12)
  {
    v13 = v12;
    do
    {
      v4[2](v4, v13);
      v14 = [v11 nextObject];

      v13 = v14;
    }

    while (v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)powerAssertionNearCompletion
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.bluetooth.powerAssertion.end" object:self];
}

void __37__CBCentralManager_orphanPeripherals__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __37__CBCentralManager_orphanPeripherals__block_invoke_cold_2();
  }

  [v2 handleDisconnection];
  [v2 setOrphan];
}

- (id)dataArrayToUUIDArray:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [CBUUID UUIDWithData:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (objc_opt_class() == a6)
  {
    if ([v10 isEqualToString:@"state"])
    {
      if ([(CBManager *)self state]!= CBManagerStatePoweredOn && [(CBManager *)self state]!= 10)
      {
        [(CBCentralManager *)self setIsScanning:0];
        [(CBCentralManager *)self forEachPeripheral:&__block_literal_global_25];
        if ([(CBManager *)self state]== CBManagerStateResetting)
        {
          [(CBCentralManager *)self orphanPeripherals];
        }
      }

      v13 = [(CBCentralManager *)self delegate];
      [v13 centralManagerDidUpdateState:self];
    }

    else
    {
      if (![v10 isEqualToString:@"delegate"])
      {
        goto LABEL_93;
      }

      v14 = [(CBCentralManager *)self delegate];
      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);

      v15 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFD | v16);

      v17 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFB | v18);

      v19 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v20 = 8;
      }

      else
      {
        v20 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFF7 | v20);

      v21 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v22 = 16;
      }

      else
      {
        v22 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFEF | v22);

      v23 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v24 = 32;
      }

      else
      {
        v24 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFDF | v24);

      v25 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v26 = 64;
      }

      else
      {
        v26 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFBF | v26);

      v27 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v28 = 128;
      }

      else
      {
        v28 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFF7F | v28);

      v29 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v30 = 256;
      }

      else
      {
        v30 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFEFF | v30);

      v31 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v32 = 512;
      }

      else
      {
        v32 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFDFF | v32);

      v33 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v34 = 1024;
      }

      else
      {
        v34 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFBFF | v34);

      v35 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v36 = 2048;
      }

      else
      {
        v36 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFF7FF | v36);

      v37 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v38 = 4096;
      }

      else
      {
        v38 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFEFFF | v38);

      v39 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v40 = 0x2000;
      }

      else
      {
        v40 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFDFFF | v40);

      v41 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v42 = 0x4000;
      }

      else
      {
        v42 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFBFFF | v42);

      v43 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v44 = 0x8000;
      }

      else
      {
        v44 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFF7FFF | v44);

      v45 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v46 = 0x10000;
      }

      else
      {
        v46 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFEFFFF | v46);

      v47 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v48 = 0x20000;
      }

      else
      {
        v48 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFDFFFF | v48);

      v49 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v50 = 0x40000;
      }

      else
      {
        v50 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFFBFFFF | v50);

      v51 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v52 = 0x80000;
      }

      else
      {
        v52 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFF7FFFF | v52);

      v53 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v54 = 0x100000;
      }

      else
      {
        v54 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFEFFFFF | v54);

      v55 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v56 = 0x200000;
      }

      else
      {
        v56 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFDFFFFF | v56);

      v57 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v58 = 0x400000;
      }

      else
      {
        v58 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFFBFFFFF | v58);

      v59 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v60 = 0x800000;
      }

      else
      {
        v60 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFF7FFFFF | v60);

      v61 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v62 = 0x1000000;
      }

      else
      {
        v62 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFEFFFFFF | v62);

      v63 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v64 = 0x2000000;
      }

      else
      {
        v64 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFDFFFFFF | v64);

      v65 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v66 = 0x4000000;
      }

      else
      {
        v66 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xFBFFFFFF | v66);

      v13 = [(CBCentralManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v67 = 0x8000000;
      }

      else
      {
        v67 = 0;
      }

      self->_delegateFlags = (*&self->_delegateFlags & 0xF7FFFFFF | v67);
    }

    goto LABEL_93;
  }

  v68.receiver = self;
  v68.super_class = CBCentralManager;
  [(CBCentralManager *)&v68 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_93:
}

- (void)setupCIG:(id)a3 completion:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1C68DF720](a4);
  setupCIGCompletion = self->_setupCIGCompletion;
  self->_setupCIGCompletion = v7;

  v11 = @"kCBMsgArgOptions";
  v12[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(CBManager *)self sendMsg:156 args:v9];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeCIG:(id)a3 completion:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1C68DF720](a4);
  removeCIGCompletion = self->_removeCIGCompletion;
  self->_removeCIGCompletion = v7;

  v11 = @"kCBMsgArgOptions";
  v12[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(CBManager *)self sendMsg:158 args:v9];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)connectCIS:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"kCBMsgArgOptions";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(CBManager *)self sendMsg:160 args:v6];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)disconnectCIS:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"kCBMsgArgOptions";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(CBManager *)self sendMsg:164 args:v6];
  v7 = *MEMORY[0x1E69E9840];
}

- (CBCentralManager)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"kCBInitOptionShowPowerAlert";
  v14[0] = MEMORY[0x1E695E118];
  v6 = MEMORY[0x1E695DF20];
  v7 = queue;
  v8 = delegate;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [(CBCentralManager *)self initWithDelegate:v8 queue:v7 options:v9];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (CBCentralManager)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue options:(NSDictionary *)options
{
  v8 = delegate;
  v9 = queue;
  v10 = options;
  v44.receiver = self;
  v44.super_class = CBCentralManager;
  v11 = [(CBManager *)&v44 initInternal];
  if (v11)
  {
    [(CBCentralManager *)v11 addObserver:v11 forKeyPath:@"state" options:0 context:objc_opt_class()];
    [(CBCentralManager *)v11 addObserver:v11 forKeyPath:@"delegate" options:0 context:objc_opt_class()];
    [(CBCentralManager *)v11 addObserver:v11 forKeyPath:@"localName" options:0 context:objc_opt_class()];
    v12 = 1;
    v11->_observingKeyPaths = 1;
    [(CBCentralManager *)v11 setDelegate:v8];
    v11->_isScanning = 0;
    pthread_mutex_init(&v11->peripheralsMutex, 0);
    pthread_mutex_lock(&v11->peripheralsMutex);
    v13 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    peripherals = v11->_peripherals;
    v11->_peripherals = v13;

    pthread_mutex_unlock(&v11->peripheralsMutex);
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    discoveredPeripherals = v11->_discoveredPeripherals;
    v11->_discoveredPeripherals = v15;

    [(CBManager *)v11 setTccComplete:0];
    v17 = [MEMORY[0x1E696AAE8] mainBundle];
    v18 = [v17 objectForInfoDictionaryKey:@"UIBackgroundModes"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v18 containsObject:@"bluetooth-central"])
      {
        v12 = 0;
      }

      else
      {
        v12 = [v18 containsObject:@"bluetooth"] ^ 1;
      }
    }

    v19 = [(NSDictionary *)v10 objectForKeyedSubscript:@"kCBInitOptionRestoreIdentifier"];

    delegateFlags = v11->_delegateFlags;
    v21 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
    v22 = [(CBManager *)v11 getCBPrivacySupported];
    v23 = [MEMORY[0x1E696AD98] numberWithBool:v22];
    [v21 setObject:v23 forKey:@"kCBManagerPrivacySupported"];

    if (v19)
    {
      if (*&delegateFlags)
      {
        if (!v12)
        {
          goto LABEL_15;
        }

        goto LABEL_9;
      }

      [CBCentralManager initWithDelegate:queue:options:];
      if (v12)
      {
LABEL_9:
        [CBCentralManager initWithDelegate:queue:options:];
      }
    }

    else if (*&delegateFlags)
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer handlePeerUpdated:];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        [CBCentralManager initWithDelegate:queue:options:];
      }
    }

LABEL_15:
    v24 = [MEMORY[0x1E696AE30] processInfo];
    v25 = [v24 environment];
    v26 = [v25 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];

    if (v26)
    {
      if (!+[CBManager checkIfExtension])
      {
LABEL_18:
        v28 = [v21 copy];
        [(CBManager *)v11 startWithQueue:v9 options:v28 sessionType:0];

        v11->_validLeAudioXpcCalled = 0;
        leAudioXpcConnection = v11->_leAudioXpcConnection;
        v11->_leAudioXpcConnection = 0;

        leAudioDevice = v11->_leAudioDevice;
        v11->_leAudioDevice = 0;

        goto LABEL_19;
      }

LABEL_17:
      v27 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v21 setObject:v27 forKey:@"kCBManagerSessionIsExtension"];

      goto LABEL_18;
    }

    if (!_os_feature_enabled_impl())
    {
      v36 = 0;
      goto LABEL_34;
    }

    v32 = [MEMORY[0x1E696AAE8] mainBundle];
    v33 = [v32 objectForInfoDictionaryKey:@"NSAccessorySetupKitSupports"];

    v34 = xpc_copy_entitlement_for_self();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v33 containsObject:@"Bluetooth"];
      if (!v34)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v35 = 0;
      if (!v34)
      {
        goto LABEL_27;
      }
    }

    if (MEMORY[0x1C68DFDD0](v34) == MEMORY[0x1E69E9E58])
    {
      if (((v35 | xpc_BOOL_get_value(v34)) & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_30:
      if (+[CBManager tccAvailable])
      {
        v36 = +[CBManager preflightCheckForTCC]== 2;
LABEL_33:

LABEL_34:
        v37 = [MEMORY[0x1E696AAE8] mainBundle];
        v38 = [v37 objectForInfoDictionaryKey:@"NSBluetoothServices"];

        v39 = [MEMORY[0x1E696AAE8] mainBundle];
        v40 = [v39 objectForInfoDictionaryKey:@"NSBluetoothCompanyIdentifiers"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = 1;
        }

        else
        {
          objc_opt_class();
          v41 = objc_opt_isKindOfClass() & 1;
        }

        v42 = v41 | v36;
        v43 = [MEMORY[0x1E696AD98] numberWithBool:dyld_program_sdk_at_least()];
        [v21 setObject:v43 forKey:@"kCBManagerAppSDKSupportASK"];

        if (v42)
        {
          [v21 setObject:MEMORY[0x1E695E118] forKey:@"kCBManagerRequiresPlistInspection"];
        }

        if (!+[CBManager checkIfExtension])
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_32:
      v36 = 0;
      goto LABEL_33;
    }

LABEL_27:
    if ((v35 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

LABEL_19:

  return v11;
}

- (void)retrievePeripherals:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CBCentralManager *)self retrievePeripheralsWithIdentifiers:v4];
    v8 = [(CBManager *)self getCurrentQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__CBCentralManager_retrievePeripherals___block_invoke;
    v10[3] = &unk_1E811CF50;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
    dispatch_async(v8, v10);
  }
}

void __40__CBCentralManager_retrievePeripherals___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 centralManager:*(a1 + 32) didRetrievePeripherals:*(a1 + 40)];
}

- (id)retrievePairingInfoForPeripheral:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [CBCentralManager retrievePairingInfoForPeripheral:];
  }

  v10 = @"kCBMsgArgDeviceUUID";
  v5 = [v4 identifier];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [(CBManager *)self sendSyncMsg:118 args:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)createCBPeripheralsFromIDs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CBCentralManager *)self peripheralWithInfo:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSArray)retrievePeripheralsWithIdentifiers:(NSArray *)identifiers
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = identifiers;
  if (!v4)
  {
    [CBCentralManager retrievePeripheralsWithIdentifiers:];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v4;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        while (1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [(CBCentralManager *)self peripheralWithIdentifier:v12, v20];
          if (v13)
          {
            break;
          }

          [v6 addObject:v12];

          if (v9 == ++i)
          {
            goto LABEL_5;
          }
        }

        [v5 addObject:v13];
      }

LABEL_5:
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v24 = @"kCBMsgArgUUIDs";
    v25 = v6;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v15 = [(CBManager *)self sendSyncMsg:69 args:v14];

    v16 = [v15 objectForKeyedSubscript:@"kCBMsgArgDevices"];
    v17 = [(CBCentralManager *)self createCBPeripheralsFromIDs:v16];
    [v5 addObjectsFromArray:v17];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)retrievePeripheralsWithIdentifiers:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager retrievePeripheralsWithIdentifiers:completion:];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        while (1)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = [(CBCentralManager *)self peripheralWithIdentifier:v15];
          if (v16)
          {
            break;
          }

          [v9 addObject:v15];

          if (v12 == ++i)
          {
            goto LABEL_5;
          }
        }

        [v8 addObject:v16];
      }

LABEL_5:
      v12 = [v10 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v36 = @"kCBMsgArgUUIDs";
    v37 = v9;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __66__CBCentralManager_retrievePeripheralsWithIdentifiers_completion___block_invoke;
    v29[3] = &unk_1E811CF78;
    v18 = v30;
    v30[0] = v8;
    v30[1] = self;
    v31 = v7;
    v19 = v7;
    v20 = v8;
    [(CBManager *)self sendMsg:69 args:v17 withReply:v29];

    v21 = v31;
  }

  else
  {
    v22 = [(CBManager *)self getCurrentQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__CBCentralManager_retrievePeripheralsWithIdentifiers_completion___block_invoke_2;
    block[3] = &unk_1E811CFA0;
    v18 = &v28;
    v27 = v8;
    v28 = v7;
    v23 = v7;
    v24 = v8;
    dispatch_async(v22, block);

    v21 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __66__CBCentralManager_retrievePeripheralsWithIdentifiers_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = [a2 objectForKeyedSubscript:@"kCBMsgArgDevices"];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(a1 + 32);
          v10 = [*(a1 + 40) peripheralWithInfo:*(*(&v14 + 1) + 8 * v8)];
          [v9 addObject:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  v11 = *(a1 + 32);
  result = (*(*(a1 + 48) + 16))();
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)retrieveConnectionHandleWithIdentifier:(id)a3 completion:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager retrieveConnectionHandleWithIdentifier:completion:];
  }

  v13 = @"kCBMsgArgUUID";
  v14[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__CBCentralManager_retrieveConnectionHandleWithIdentifier_completion___block_invoke;
  v11[3] = &unk_1E811CFC8;
  v12 = v7;
  v9 = v7;
  [(CBManager *)self sendMsg:70 args:v8 withReply:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __70__CBCentralManager_retrieveConnectionHandleWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v14 objectForKeyedSubscript:@"kCBMsgArgConnectionHandle"];

  if (v6)
  {
    v7 = [v14 objectForKeyedSubscript:@"kCBMsgArgConnectionHandle"];
    [v7 unsignedShortValue];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = MEMORY[0x1E696ABC0];
    v10 = [v5 userInfo];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    v13 = [v9 errorWithInfo:v12];
    (*(v8 + 16))(v8, 0, v13);
  }
}

- (void)retrievePeripheralsWithTags:(id)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager retrievePeripheralsWithTags:completion:];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = @"kCBMsgArgTags";
  v18[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__CBCentralManager_retrievePeripheralsWithTags_completion___block_invoke;
  v13[3] = &unk_1E811CF78;
  v14 = v8;
  v15 = self;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  [(CBManager *)self sendMsg:71 args:v9 withReply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __59__CBCentralManager_retrievePeripheralsWithTags_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"kCBMsgArgDevices"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) peripheralWithInfo:*(*(&v12 + 1) + 8 * v7)];
        [v8 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (void)retrievePeripheralsWithCustomProperties:(id)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager retrievePeripheralsWithCustomProperties:completion:];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = @"kCBMsgArgCustomProperties";
  v18[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__CBCentralManager_retrievePeripheralsWithCustomProperties_completion___block_invoke;
  v13[3] = &unk_1E811CF78;
  v14 = v8;
  v15 = self;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  [(CBManager *)self sendMsg:72 args:v9 withReply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __71__CBCentralManager_retrievePeripheralsWithCustomProperties_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"kCBMsgArgDevices"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) peripheralWithInfo:*(*(&v12 + 1) + 8 * v7)];
        [v8 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (id)retrieveState
{
  v2 = [(CBManager *)self sendSyncMsg:219 args:0];
  v3 = [v2 objectForKeyedSubscript:@"kCBMsgArgs"];

  return v3;
}

- (void)retrieveConnectedPeripherals
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CBCentralManager *)self retrieveConnectedPeripheralsWithServices:MEMORY[0x1E695E0F0]];
    v6 = [(CBManager *)self getCurrentQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__CBCentralManager_retrieveConnectedPeripherals__block_invoke;
    v8[3] = &unk_1E811CF50;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

void __48__CBCentralManager_retrieveConnectedPeripherals__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 centralManager:*(a1 + 32) didRetrieveConnectedPeripherals:*(a1 + 40)];
}

- (NSArray)retrieveConnectedPeripheralsWithServices:(NSArray *)serviceUUIDs
{
  v4 = serviceUUIDs;
  if (!v4)
  {
    [CBCentralManager retrieveConnectedPeripheralsWithServices:];
  }

  v5 = [(CBCentralManager *)self retrieveConnectedPeripheralsWithServices:v4 allowAll:0];

  return v5;
}

- (void)retrieveConnectedPeripheralsWithServices:(id)a3 completion:(id)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v7 = a3;
  }

  v15[0] = @"kCBMsgArgUUIDs";
  v15[1] = @"kCBMsgArgState";
  v16[0] = v7;
  v16[1] = MEMORY[0x1E695E118];
  v8 = MEMORY[0x1E695DF20];
  v9 = a3;
  v10 = [v8 dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__CBCentralManager_retrieveConnectedPeripheralsWithServices_completion___block_invoke;
  v13[3] = &unk_1E811CFF0;
  v13[4] = self;
  v14 = v6;
  v11 = v6;
  [(CBManager *)self sendMsg:73 args:v10 withReply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __72__CBCentralManager_retrieveConnectedPeripheralsWithServices_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = [a2 objectForKeyedSubscript:@"kCBMsgArgDevices"];
  v4 = [v3 createCBPeripheralsFromIDs:v5];
  (*(v2 + 16))(v2, v4);
}

- (void)retrievePeripheralsWithFindMySerialNumbers:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = objc_alloc(MEMORY[0x1E696AEC0]);
        v16 = [v15 initWithData:v14 encoding:{4, v18}];
        [v8 addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(CBCentralManager *)self retrievePeripheralsWithFindMySerialNumberStrings:v8 completion:v7];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)retrievePeripheralsWithFindMySerialNumberStrings:(id)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v15 = @"kCBMsgArgFindMySerialNumberString";
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v16[0] = v7;
  v8 = MEMORY[0x1E695DF20];
  v9 = a3;
  v10 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__CBCentralManager_retrievePeripheralsWithFindMySerialNumberStrings_completion___block_invoke;
  v13[3] = &unk_1E811CFF0;
  v13[4] = self;
  v14 = v6;
  v11 = v6;
  [(CBManager *)self sendMsg:75 args:v10 withReply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __80__CBCentralManager_retrievePeripheralsWithFindMySerialNumberStrings_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = [a2 objectForKeyedSubscript:@"kCBMsgArgDevices"];
  v4 = [v3 createCBPeripheralsFromIDs:v5];
  (*(v2 + 16))(v2, v4);
}

- (void)retrievePeripheralsWithFindMyIds:(id)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v15 = @"kCBMsgArgUUIDs";
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v16[0] = v7;
  v8 = MEMORY[0x1E695DF20];
  v9 = a3;
  v10 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__CBCentralManager_retrievePeripheralsWithFindMyIds_completion___block_invoke;
  v13[3] = &unk_1E811CFF0;
  v13[4] = self;
  v14 = v6;
  v11 = v6;
  [(CBManager *)self sendMsg:76 args:v10 withReply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __64__CBCentralManager_retrievePeripheralsWithFindMyIds_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = [a2 objectForKeyedSubscript:@"kCBMsgArgDevices"];
  v4 = [v3 createCBPeripheralsFromIDs:v5];
  (*(v2 + 16))(v2, v4);
}

- (id)retrieveConnectingPeripherals
{
  v3 = [(CBManager *)self sendSyncMsg:74 args:0];
  v4 = [v3 objectForKeyedSubscript:@"kCBMsgArgDevices"];
  v5 = [(CBCentralManager *)self createCBPeripheralsFromIDs:v4];

  return v5;
}

- (void)_scanForPeripheralsWithServices:(id)a3 options:(id)a4 completion:(id)a5
{
  v22[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a4];
  if (v9)
  {
    v11 = MEMORY[0x1C68DF720](v9);
    v12 = MEMORY[0x1E695E118];
  }

  else
  {
    v11 = 0;
    v12 = MEMORY[0x1E695E110];
  }

  scanCompletion = self->_scanCompletion;
  self->_scanCompletion = v11;

  [v10 setObject:v12 forKeyedSubscript:@"kCBMsgArgHasCompletionBlock"];
  v14 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v14 = v8;
  }

  v21[0] = @"kCBMsgArgUUIDs";
  v21[1] = @"kCBMsgArgOptions";
  v15 = MEMORY[0x1E695E0F8];
  if (v10)
  {
    v15 = v10;
  }

  v22[0] = v14;
  v22[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v17 = [v10 objectForKeyedSubscript:@"kCBOptionUseCase"];
  v18 = [v17 unsignedLongValue];

  if (v18 == 22)
  {
    [(CBCentralManager *)self setIsScanning:1];
    v19 = [(CBManager *)self sendSyncMsg:77 args:v16];
  }

  else if ([(CBManager *)self sendMsg:77 args:v16])
  {
    [(CBCentralManager *)self setIsScanning:1];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)connectPeripheral:(CBPeripheral *)peripheral options:(NSDictionary *)options
{
  v6 = peripheral;
  v7 = options;
  v8 = [(NSDictionary *)v7 valueForKey:@"kCBConnectOptionAutoReconnect"];

  if (!v8 || (delegateFlags = self->_delegateFlags, (*&delegateFlags & 0x20) != 0))
  {
    if (!v6)
    {
      [CBCentralManager connectPeripheral:options:];
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __46__CBCentralManager_connectPeripheral_options___block_invoke;
    v16[3] = &unk_1E811D018;
    v16[4] = self;
    v12 = v6;
    v17 = v12;
    v13 = v7;
    v18 = v13;
    v14 = MEMORY[0x1C68DF720](v16);
    v15 = [(NSDictionary *)v13 valueForKey:@"kCBConnectOptionUseWHB"];

    if (v15)
    {
      [(CBCentralManager *)self connectWhbCBPeripheral:v12 withCompletion:v14];
    }

    else
    {
      v14[2](v14);
    }
  }

  else if ((*&delegateFlags & 8) != 0)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithInfo:&unk_1F4020FF0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained centralManager:self didFailToConnectPeripheral:v6 error:v10];
  }
}

void __46__CBCentralManager_connectPeripheral_options___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"kCBMsgArgDeviceUUID";
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = v3;
  v10[1] = @"kCBMsgArgOptions";
  v5 = *(a1 + 48);
  if (!v5)
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v11[0] = v3;
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v2 sendMsg:79 args:v6];

  if (v7)
  {
    v8 = [*(a1 + 40) state];
    if (v8 == 3 || !v8)
    {
      [*(a1 + 40) setState:1];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)enableMrc:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager enableMrc:options:];
  }

  v13[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v13[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v14[0] = v8;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CBManager *)self sendMsg:232 args:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)retrieveWhbCBPeripheralWithInfo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgWhbStableIdentifier"];
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgWhbRemoteControllerId"];
  if (v6)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v8 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = v4;
      _os_log_impl(&dword_1C0AC1000, v8, OS_LOG_TYPE_DEFAULT, "Retrieving peripheral for device:%@ with info %@", buf, 0x16u);
    }

    v25 = @"kCBMsgArgWhbStableIdentifier";
    v26 = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v10 = [(CBManager *)self sendSyncMsg:153 args:v9];

    v11 = [v10 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
    if (!v11)
    {
      v13 = [(CBCentralManager *)self peripheralWithIdentifier:v5];
      if (!v13)
      {
        v13 = [(CBCentralManager *)self peripheralWithInfo:v4];
      }

      [v13 setStableIdentifier:v6];
      [v13 setRemoteControllerId:v7];
      if (CBLogInitOnce == -1)
      {
        v19 = CBLogComponent;
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }
      }

      else
      {
        [CBClassicPeer handlePeerUpdated:];
        v19 = CBLogComponent;
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }
      }

      *buf = 138412290;
      v28 = v5;
      v15 = "Retrieved non local peripheral successfully for device:%@";
      v16 = v19;
      v17 = 12;
      goto LABEL_21;
    }

    v12 = [(CBCentralManager *)self peripheralWithIdentifier:v11];
    if (v12)
    {
      v13 = v12;
      [v12 setStableIdentifier:v6];
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer handlePeerUpdated:];
        v14 = CBLogComponent;
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        goto LABEL_10;
      }

      v14 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:
        *buf = 138412546;
        v28 = v11;
        v29 = 2112;
        v30 = v5;
        v15 = "Retrieved local peripheral:%@ successfully for device:%@";
        v16 = v14;
        v17 = 22;
LABEL_21:
        _os_log_impl(&dword_1C0AC1000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }

LABEL_22:
      v18 = v13;
LABEL_27:

      goto LABEL_28;
    }

    v20 = [v4 mutableCopy];
    [v20 setObject:v11 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];
    [v20 setObject:0 forKeyedSubscript:@"kCBMsgArgWhbRemoteControllerId"];
    v21 = [(CBCentralManager *)self peripheralWithInfo:v20];
    [v21 setStableIdentifier:v6];
    if (CBLogInitOnce == -1)
    {
      v22 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:
        v18 = v21;

        goto LABEL_27;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v22 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }
    }

    *buf = 138412546;
    v28 = v11;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_1C0AC1000, v22, OS_LOG_TYPE_DEFAULT, "Created local peripheral:%@ successfully for device:%@", buf, 0x16u);
    goto LABEL_26;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [CBCentralManager retrieveWhbCBPeripheralWithInfo:];
  }

  v18 = 0;
LABEL_28:

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)activateWhbCnxForCBPeripheral:(id)a3 infoDict:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [(CBManager *)self getCnxInstanceForIdentifier:v8];

  if (v9)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBCentralManager activateWhbCnxForCBPeripheral:infoDict:];
    }
  }

  else
  {
    v9 = [(CBManager *)self createCnxWithInfo:v7];
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v10 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v7;
      _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "Setup WHB cnx: infoDict %@", buf, 0xCu);
    }

    v11 = [v6 identifier];
    v12 = [v9 peerDevice];
    v13 = [v12 identifier];
    [(CBManager *)self setWhbLocalId:v11 forRemoteId:v13];
  }

  v14 = [v9 peerDevice];
  v15 = [v14 identifier];

  delegateFlags = self->_delegateFlags;
  v17 = (*&delegateFlags >> 3) & 1;
  v18 = (*&delegateFlags >> 4) & 1;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __59__CBCentralManager_activateWhbCnxForCBPeripheral_infoDict___block_invoke;
  v28[3] = &unk_1E811D040;
  v28[4] = self;
  v19 = v6;
  v29 = v19;
  v20 = v15;
  v30 = v20;
  v31 = v18;
  [v9 setInterruptionHandler:v28];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__CBCentralManager_activateWhbCnxForCBPeripheral_infoDict___block_invoke_216;
  v24[3] = &unk_1E811D068;
  v24[4] = self;
  v25 = v19;
  v26 = v20;
  v27 = v17;
  v21 = v20;
  v22 = v19;
  [v9 activateWithCompletion:v24];

  v23 = *MEMORY[0x1E69E9840];
}

void __59__CBCentralManager_activateWhbCnxForCBPeripheral_infoDict___block_invoke(uint64_t a1)
{
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    __59__CBCentralManager_activateWhbCnxForCBPeripheral_infoDict___block_invoke_cold_2();
  }

  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 removeCnxInstanceForIdentifier:v3];

  [*(a1 + 32) removeWhbRemoteId:*(a1 + 48)];
  if (*(a1 + 56))
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithInfo:&unk_1F4021018];
    v5 = [*(a1 + 32) delegate];
    [v5 centralManager:*(a1 + 32) didDisconnectPeripheral:*(a1 + 40) error:v4];
  }
}

void __59__CBCentralManager_activateWhbCnxForCBPeripheral_infoDict___block_invoke_216(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v4 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1C0AC1000, v4, OS_LOG_TYPE_DEFAULT, "Got WHB CBConnection completed with error %@", &v9, 0xCu);
  }

  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) identifier];
    [v5 removeCnxInstanceForIdentifier:v6];

    [*(a1 + 32) removeWhbRemoteId:*(a1 + 48)];
    if (*(a1 + 56))
    {
      v7 = [*(a1 + 32) delegate];
      [v7 centralManager:*(a1 + 32) didFailToConnectPeripheral:*(a1 + 40) error:v3];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)connectWhbCBPeripheral:(id)a3 withCompletion:(id)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 remoteControllerId];
  if (v8)
  {
  }

  else
  {
    v9 = [v6 stableIdentifier];

    if (!v9)
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        [CBCentralManager connectWhbCBPeripheral:withCompletion:];
        if ((*&self->_delegateFlags & 8) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((*&self->_delegateFlags & 8) == 0)
      {
        goto LABEL_13;
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithInfo:&unk_1F4021040];
      v19 = [(CBCentralManager *)self delegate];
      [v19 centralManager:self didFailToConnectPeripheral:v6 error:v13];
      goto LABEL_11;
    }
  }

  v10 = MEMORY[0x1E695DF90];
  v33 = @"kCBMsgArgDeviceUUID";
  v11 = [v6 identifier];
  v34[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v13 = [v10 dictionaryWithDictionary:v12];

  v14 = [v6 remoteControllerId];

  if (v14)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
    }

    v15 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v6 remoteControllerId];
      *buf = 138412290;
      v32 = v17;
      _os_log_impl(&dword_1C0AC1000, v16, OS_LOG_TYPE_DEFAULT, "Setting up WhbCnx using manually entered remoteControllerId %@", buf, 0xCu);
    }

    v18 = [v6 remoteControllerId];
    [v13 setValue:v18 forKey:@"kCBMsgArgWhbRemoteControllerId"];

    [(CBCentralManager *)self activateWhbCnxForCBPeripheral:v6 infoDict:v13];
    goto LABEL_12;
  }

  v19 = [v6 stableIdentifier];
  v20 = (*&self->_delegateFlags >> 3) & 1;
  v29 = @"kCBMsgArgWhbStableIdentifier";
  v30 = v19;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __58__CBCentralManager_connectWhbCBPeripheral_withCompletion___block_invoke;
  v23[3] = &unk_1E811D090;
  v28 = v20;
  v24 = v6;
  v25 = self;
  v27 = v7;
  v13 = v13;
  v26 = v13;
  [(CBManager *)self sendMsg:152 args:v21 withReply:v23];

LABEL_11:
LABEL_12:

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

void __58__CBCentralManager_connectWhbCBPeripheral_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kCBMsgArgWhbRemoteControllerId"];
  v5 = [v3 objectForKeyedSubscript:@"kCBMsgArgWhbRemoteDeviceUUID"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v6 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1C0AC1000, v6, OS_LOG_TYPE_DEFAULT, "Whb connect request to p %@, routing via %@", &v11, 0x16u);
  }

  if (v4)
  {
    if ([v4 isEqualToString:@"CBLocalHostID"])
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      [*(a1 + 48) setValue:v4 forKey:@"kCBMsgArgWhbRemoteControllerId"];
      if (v5)
      {
        [*(a1 + 48) setValue:v5 forKey:@"kCBMsgArgWhbRemoteDeviceUUID"];
      }

      [*(a1 + 40) activateWhbCnxForCBPeripheral:*(a1 + 32) infoDict:*(a1 + 48)];
    }
  }

  else if (*(a1 + 64))
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithInfo:v3];
    v9 = [*(a1 + 40) delegate];
    [v9 centralManager:*(a1 + 40) didFailToConnectPeripheral:*(a1 + 32) error:v8];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)randomizeAFHMapForPeripheral:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [CBCentralManager randomizeAFHMapForPeripheral:];
  }

  v8 = @"kCBMsgArgDeviceUUID";
  v5 = [v4 identifier];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CBManager *)self sendMsg:106 args:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setLeAFHMap:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [CBCentralManager setLeAFHMap:];
  }

  v7 = @"kCBMsgArgLeAFHMap";
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CBManager *)self sendMsg:107 args:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setLePowerControl:(id)a3 options:(id)a4 completion:(id)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  v17[0] = @"kCBMsgArgOptions";
  v17[1] = @"kCBMsgArgDeviceUUID";
  v18[0] = v9;
  v10 = a4;
  v11 = [a3 identifier];
  v18[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__CBCentralManager_setLePowerControl_options_completion___block_invoke;
  v15[3] = &unk_1E811CFC8;
  v16 = v8;
  v13 = v8;
  [(CBManager *)self sendMsg:231 args:v12 withReply:v15];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)wipeDuplicateFilterList:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v9 = @"kCBMsgArgOptions";
  v10[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(CBManager *)self sendMsg:108 args:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)addAdvancedMatchingRule:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v9 = @"kCBMsgArgOptions";
  v10[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(CBManager *)self sendMsg:115 args:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeAdvancedMatchingRule:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v9 = @"kCBMsgArgOptions";
  v10[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(CBManager *)self sendMsg:116 args:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setEnhancedScanEnable:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v9 = @"kCBMsgArgOptions";
  v10[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(CBManager *)self sendMsg:113 args:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setEnhancedSetScanParamtersMultiCore:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v9 = @"kCBMsgArgOptions";
  v10[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(CBManager *)self sendMsg:114 args:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeSingleEntryDuplicateFilter:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"kCBMsgArgOptions";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(CBManager *)self sendMsg:109 args:v6];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeMultipleEntriesDuplicateFilter:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"kCBMsgArgOptions";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(CBManager *)self sendMsg:110 args:v6];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)clearDuplicateFilterCache:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"kCBMsgArgOptions";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(CBManager *)self sendMsg:111 args:v6];
  v7 = *MEMORY[0x1E69E9840];
}

- (unsigned)getTotalSupportedAdvancedMatchingRules
{
  v2 = [(CBManager *)self sendSyncMsg:112 args:0];
  v3 = [v2 valueForKey:@"kCBScanOptionTotalAdvMatchingRules"];
  v4 = [v3 intValue];

  return v4;
}

- (unsigned)getRemainingAdvancedMatchingRule
{
  v2 = [(CBManager *)self sendSyncMsg:112 args:MEMORY[0x1E695E0F8]];
  v3 = [v2 valueForKey:@"kCBScanOptionRemainingAdvMatchingRules"];
  v4 = [v3 intValue];

  return v4;
}

- (void)setDataLengthChange:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager setDataLengthChange:options:];
  }

  v13[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v13[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v14[0] = v8;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CBManager *)self sendMsg:120 args:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)csReadRemoteSupportedCapabilities:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [CBCentralManager csReadRemoteSupportedCapabilities:];
  }

  v8 = @"kCBMsgArgDeviceUUID";
  v5 = [v4 identifier];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CBManager *)self sendMsg:122 args:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)csWriteCachedRemoteSupportedCapabilities:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager csWriteCachedRemoteSupportedCapabilities:options:];
  }

  v13[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v13[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v14[0] = v8;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CBManager *)self sendMsg:123 args:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)csSecurityEnable:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [CBCentralManager csSecurityEnable:];
  }

  v8 = @"kCBMsgArgDeviceUUID";
  v5 = [v4 identifier];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CBManager *)self sendMsg:124 args:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)csTest:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [CBCentralManager csTest:];
  }

  v8 = @"kCBMsgArgDeviceUUID";
  v5 = [v4 identifier];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CBManager *)self sendMsg:125 args:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)csCreateConfig:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager csCreateConfig:options:];
  }

  v13[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v13[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v14[0] = v8;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CBManager *)self sendMsg:126 args:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)csRemoveConfig:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager csRemoveConfig:options:];
  }

  v13[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v13[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v14[0] = v8;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CBManager *)self sendMsg:127 args:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)csProcedureEnable:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager csProcedureEnable:options:];
  }

  v13[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v13[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v14[0] = v8;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CBManager *)self sendMsg:128 args:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)csSetProcedureParams:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager csSetProcedureParams:options:];
  }

  v13[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v13[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v14[0] = v8;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CBManager *)self sendMsg:129 args:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)csSetAfh:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v9 = @"kCBMsgArgOptions";
  v10[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(CBManager *)self sendMsg:130 args:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)csSetDefaultSettings:(id)a3 options:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"kCBMsgArgDeviceUUID";
  v6 = a4;
  v7 = [a3 identifier];
  v8 = v7;
  v12[1] = @"kCBMsgArgOptions";
  v9 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    v9 = v6;
  }

  v13[0] = v7;
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  [(CBManager *)self sendMsg:131 args:v10];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)csReadRemoteFAETable:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"kCBMsgArgDeviceUUID";
  v4 = [a3 identifier];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CBManager *)self sendMsg:133 args:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)csWriteRemoteFAETable:(id)a3 options:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"kCBMsgArgDeviceUUID";
  v6 = a4;
  v7 = [a3 identifier];
  v8 = v7;
  v12[1] = @"kCBMsgArgOptions";
  v9 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    v9 = v6;
  }

  v13[0] = v7;
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  [(CBManager *)self sendMsg:134 args:v10];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setLESetPhy:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager setLESetPhy:options:];
  }

  v13[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v13[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v14[0] = v8;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CBManager *)self sendMsg:135 args:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setRSSIStatisticsDetection:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager setRSSIStatisticsDetection:options:];
  }

  v13[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v13[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v14[0] = v8;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CBManager *)self sendMsg:149 args:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setBluetoothUsageNotifications:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager setBluetoothUsageNotifications:options:];
  }

  v13[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v13[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v14[0] = v8;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CBManager *)self sendMsg:150 args:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setBluetoothPhyStatisticsNotifications:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager setBluetoothPhyStatisticsNotifications:options:];
  }

  v13[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v13[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v14[0] = v8;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CBManager *)self sendMsg:151 args:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)cancelPeripheralConnection:(id)a3 options:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CBCentralManager cancelPeripheralConnection:options:];
  }

  v14[0] = @"kCBMsgArgDeviceUUID";
  v8 = [v6 identifier];
  v9 = v8;
  v14[1] = @"kCBMsgArgOptions";
  v10 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v10 = v7;
  }

  v15[0] = v8;
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12 = [(CBManager *)self sendMsg:80 args:v11];

  if (v12 && ([v6 state] - 1) <= 1)
  {
    [v6 setState:3];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)cancelPeripheralConnection:(CBPeripheral *)peripheral
{
  v4 = MEMORY[0x1E695DF90];
  v5 = peripheral;
  v7 = [v4 dictionary];
  v6 = MEMORY[0x1E695E110];
  [v7 setObject:MEMORY[0x1E695E110] forKey:@"kCBCancelConnectOptionForce"];
  [v7 setObject:v6 forKey:@"kCBCancelConnectOptionDoNotAutoConnectBuiltInServices"];
  [(CBCentralManager *)self cancelPeripheralConnection:v5 options:v7];
}

- (void)cancelPeripheralConnection:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if (!v10)
  {
    [CBCentralManager cancelPeripheralConnection:force:];
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = v6;
  v8 = MEMORY[0x1E695E110];
  if (v4)
  {
    v9 = MEMORY[0x1E695E118];
  }

  else
  {
    v9 = MEMORY[0x1E695E110];
  }

  [v6 setObject:v9 forKey:@"kCBCancelConnectOptionForce"];
  [v7 setObject:v8 forKey:@"kCBCancelConnectOptionDoNotAutoConnectBuiltInServices"];
  [(CBCentralManager *)self cancelPeripheralConnection:v10 options:v7];
}

- (void)setDesiredConnectionLatency:(int64_t)a3 forPeripheral:(id)a4
{
  v12[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!v6)
  {
    [CBCentralManager setDesiredConnectionLatency:forPeripheral:];
  }

  v11[0] = @"kCBMsgArgDeviceUUID";
  v7 = [v6 identifier];
  v12[0] = v7;
  v12[1] = MEMORY[0x1E695E110];
  v11[1] = @"kCBMsgArgHasCompletionBlock";
  v11[2] = @"kCBMsgArgConnectionLatency";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v12[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [(CBManager *)self sendMsg:174 args:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setDesiredConnectionLatency:(int64_t)a3 forPeripheral:(id)a4 completion:(id)a5
{
  v18[3] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    [CBCentralManager setDesiredConnectionLatency:forPeripheral:completion:];
  }

  v17[0] = @"kCBMsgArgDeviceUUID";
  v10 = [v8 identifier];
  v18[0] = v10;
  v18[1] = MEMORY[0x1E695E118];
  v17[1] = @"kCBMsgArgHasCompletionBlock";
  v17[2] = @"kCBMsgArgConnectionLatency";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v18[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__CBCentralManager_setDesiredConnectionLatency_forPeripheral_completion___block_invoke;
  v15[3] = &unk_1E811CFC8;
  v16 = v9;
  v13 = v9;
  [(CBManager *)self sendMsg:174 args:v12 withReply:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __73__CBCentralManager_setDesiredConnectionLatency_forPeripheral_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithInfo:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)startTrackingPeripheral:(id)a3 options:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  if (!v12)
  {
    [CBCentralManager startTrackingPeripheral:options:];
    v7 = 0;
  }

  v8 = MEMORY[0x1E695DF90];
  v9 = [v7 identifier];
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DF20] dictionary];
  }

  v11 = [v8 dictionaryWithObjectsAndKeys:{v9, @"kCBMsgArgDeviceUUID", v10, @"kCBMsgArgOptions", 0}];
  [(CBManager *)self sendMsg:217 args:v11];

  if (!v6)
  {
  }
}

- (void)stopTrackingPeripheral:(id)a3 options:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  if (!v12)
  {
    [CBCentralManager stopTrackingPeripheral:options:];
    v7 = 0;
  }

  v8 = MEMORY[0x1E695DF90];
  v9 = [v7 identifier];
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DF20] dictionary];
  }

  v11 = [v8 dictionaryWithObjectsAndKeys:{v9, @"kCBMsgArgDeviceUUID", v10, @"kCBMsgArgOptions", 0}];
  [(CBManager *)self sendMsg:218 args:v11];

  if (!v6)
  {
  }
}

- (void)registerForConnectionEventsWithOptions:(NSDictionary *)options
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (options)
  {
    v4 = options;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v9 = @"kCBMsgArgOptions";
  v10[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = options;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(CBManager *)self sendMsg:100 args:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)sendData:(id)a3 toPeripheral:(id)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"kCBMsgArgDeviceUUID";
  v6 = a3;
  v7 = [a4 identifier];
  v10[1] = @"kCBMsgArgObjectDiscoveryData";
  v11[0] = v7;
  v11[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(CBManager *)self sendMsg:144 args:v8];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setConnectionEventOptions:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v9 = @"kCBMsgArgOptions";
  v10[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(CBManager *)self sendMsg:100 args:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setMatchActionRules:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v9 = @"kCBMsgArgRules";
  v10[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(CBManager *)self sendMsg:119 args:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (id)startConnectionEventCounterForPeripheral:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v11 = @"kCBMsgArgDeviceUUID";
  v5 = [a3 identifier];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [(CBManager *)self sendSyncMsg:147 args:v6];
  v8 = [v4 errorWithInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)stopConnectionEventCounterForPeripheral:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v11 = @"kCBMsgArgDeviceUUID";
  v5 = [a3 identifier];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [(CBManager *)self sendSyncMsg:148 args:v6];
  v8 = [v4 errorWithInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)isApplicationConnectedToAnyPeripherals:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"kCBMsgArgAnyConnectedPeripheralsPerApp";
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(CBManager *)self sendSyncMsg:84 args:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)getLPEMData:(id)a3
{
  v4 = a3;
  v5 = [(CBManager *)self sendSyncMsg:223 args:MEMORY[0x1E695E0F8]];
  v6 = [v5 objectForKeyedSubscript:@"kCBMsgArgLPEMData"];
  [v4 setData:v6];

  v7 = [MEMORY[0x1E696ABC0] errorWithInfo:v5];

  return v7;
}

- (id)retrieveAddressForPeripheral:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [CBCentralManager retrieveAddressForPeripheral:];
  }

  v11 = @"kCBMsgArgDeviceUUID";
  v5 = [v4 identifier];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [(CBManager *)self sendSyncMsg:229 args:v6];

  v8 = [v7 objectForKeyedSubscript:@"kCBMsgArgAddressString"];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)updatePeripheral:(id)a3 options:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"kCBMsgArgDeviceUUID";
  v6 = a4;
  v7 = [a3 identifier];
  v8 = v7;
  v12[1] = @"kCBMsgArgOptions";
  v9 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    v9 = v6;
  }

  v13[0] = v7;
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  [(CBManager *)self sendMsg:88 args:v10];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)retrieveBTDeviceCacheInfo:(id)a3 withCompletion:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = @"kCBMsgArgOptions";
  v15[0] = a3;
  v7 = MEMORY[0x1E695DF20];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__CBCentralManager_retrieveBTDeviceCacheInfo_withCompletion___block_invoke;
  v12[3] = &unk_1E811CFC8;
  v13 = v6;
  v10 = v6;
  [(CBManager *)self sendMsg:90 args:v9 withReply:v12];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleSupportedFeatures:(id)a3
{
  gSupportedFeatures = 0;
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgSupportedFeatures"];
  v3 = [v4 objectForKey:@"kCBMsgArgSupportsExtendedScanAndConnect"];

  if (v3)
  {
    gSupportedFeatures = 1;
  }
}

- (void)handleRestoringState:(id)a3
{
  v119 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_delegateFlags & 1) == 0)
  {
    [CBCentralManager handleRestoringState:];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgOptions"];
  if (v6)
  {
    [(CBCentralManager *)self setIsScanning:1];
    v7 = [v6 objectForKeyedSubscript:@"kCBMsgArgUUIDs"];
    if ([v7 count])
    {
      v8 = [(CBCentralManager *)self dataArrayToUUIDArray:v7];
      [v5 setObject:v8 forKeyedSubscript:@"kCBRestoredScanServices"];
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = [v6 objectForKeyedSubscript:@"kCBScanOptionSolicitedServiceUUIDs"];
    if ([v10 count])
    {
      v11 = [(CBCentralManager *)self dataArrayToUUIDArray:v10];
      [v9 setObject:v11 forKeyedSubscript:@"kCBScanOptionSolicitedServiceUUIDs"];
    }

    v12 = [v6 objectForKeyedSubscript:@"kCBScanOptionAllowDuplicates"];
    v13 = [v12 BOOLValue];

    if (v13)
    {
      [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCBScanOptionAllowDuplicates"];
    }

    if ([v9 count])
    {
      [v5 setObject:v9 forKeyedSubscript:@"kCBRestoredScanOptions"];
    }
  }

  v60 = v6;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v62 = v4;
  obj = [v4 objectForKeyedSubscript:@"kCBMsgArgDevices"];
  v67 = [obj countByEnumeratingWithState:&v107 objects:v118 count:16];
  if (v67)
  {
    v64 = *v108;
    v65 = v14;
    v66 = self;
    do
    {
      v15 = 0;
      do
      {
        if (*v108 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v68 = v15;
        v16 = *(*(&v107 + 1) + 8 * v15);
        v17 = [(CBCentralManager *)self peripheralWithInfo:v16, v60];
        v18 = [v16 objectForKeyedSubscript:@"kCBMsgArgState"];
        if ([v18 BOOLValue])
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }

        [v17 setState:v19];

        [v17 setCanSendWriteWithoutResponse:{objc_msgSend(v17, "state") == 2}];
        v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v76 = [v16 objectForKeyedSubscript:@"kCBMsgArgSubscribedHandles"];
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v69 = [v16 objectForKeyedSubscript:@"kCBMsgArgServices"];
        v71 = [v69 countByEnumeratingWithState:&v103 objects:v117 count:16];
        if (v71)
        {
          v70 = *v104;
          do
          {
            v20 = 0;
            do
            {
              if (*v104 != v70)
              {
                objc_enumerationMutation(v69);
              }

              v72 = v20;
              v22 = *(*(&v103 + 1) + 8 * v20);
              v23 = [[CBService alloc] initWithPeripheral:v17 dictionary:v22];
              v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v99 = 0u;
              v100 = 0u;
              v101 = 0u;
              v102 = 0u;
              v25 = [v22 objectForKeyedSubscript:@"kCBMsgArgIncludedServices"];
              v26 = [v25 countByEnumeratingWithState:&v99 objects:v116 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v100;
                do
                {
                  for (i = 0; i != v27; ++i)
                  {
                    if (*v100 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = *(*(&v99 + 1) + 8 * i);
                    v114[0] = @"service";
                    v114[1] = @"incInfo";
                    v115[0] = v23;
                    v115[1] = v30;
                    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:2];
                    [v75 addObject:v31];
                  }

                  v27 = [v25 countByEnumeratingWithState:&v99 objects:v116 count:16];
                }

                while (v27);
              }

              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v74 = [v22 objectForKeyedSubscript:@"kCBMsgArgCharacteristics"];
              v80 = [v74 countByEnumeratingWithState:&v95 objects:v113 count:16];
              if (v80)
              {
                v77 = *v96;
                v78 = v24;
                v79 = v23;
                do
                {
                  v32 = 0;
                  do
                  {
                    if (*v96 != v77)
                    {
                      objc_enumerationMutation(v74);
                    }

                    v81 = v32;
                    v35 = *(*(&v95 + 1) + 8 * v32);
                    v36 = [[CBCharacteristic alloc] initWithService:v23 dictionary:v35];
                    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v93[0] = MEMORY[0x1E69E9820];
                    v93[1] = 3221225472;
                    v93[2] = __41__CBCentralManager_handleRestoringState___block_invoke;
                    v93[3] = &unk_1E811D0B8;
                    v38 = v36;
                    v94 = v38;
                    [v76 enumerateObjectsUsingBlock:v93];
                    v91 = 0u;
                    v92 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v39 = [v35 objectForKeyedSubscript:@"kCBMsgArgDescriptors"];
                    v40 = [v39 countByEnumeratingWithState:&v89 objects:v112 count:16];
                    if (v40)
                    {
                      v41 = v40;
                      v42 = *v90;
                      do
                      {
                        for (j = 0; j != v41; ++j)
                        {
                          if (*v90 != v42)
                          {
                            objc_enumerationMutation(v39);
                          }

                          v44 = [[CBDescriptor alloc] initWithCharacteristic:v38 dictionary:*(*(&v89 + 1) + 8 * j)];
                          [v37 addObject:v44];
                          v45 = [(CBDescriptor *)v44 handle];
                          [v17 setAttribute:v44 forHandle:v45];
                        }

                        v41 = [v39 countByEnumeratingWithState:&v89 objects:v112 count:16];
                      }

                      while (v41);
                    }

                    if ([v37 count])
                    {
                      [(CBCharacteristic *)v38 setDescriptors:v37];
                    }

                    v24 = v78;
                    [v78 addObject:v38];
                    v33 = [(CBCharacteristic *)v38 handle];
                    [v17 setAttribute:v38 forHandle:v33];

                    v34 = [(CBCharacteristic *)v38 valueHandle];
                    [v17 setAttribute:v38 forHandle:v34];

                    v32 = v81 + 1;
                    v23 = v79;
                  }

                  while (v81 + 1 != v80);
                  v80 = [v74 countByEnumeratingWithState:&v95 objects:v113 count:16];
                }

                while (v80);
              }

              if ([v24 count])
              {
                [(CBService *)v23 setCharacteristics:v24];
              }

              [v73 addObject:v23];
              v21 = [(CBService *)v23 startHandle];
              [v17 setAttribute:v23 forHandle:v21];

              v20 = v72 + 1;
            }

            while (v72 + 1 != v71);
            v71 = [v69 countByEnumeratingWithState:&v103 objects:v117 count:16];
          }

          while (v71);
        }

        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v46 = v75;
        v47 = [v46 countByEnumeratingWithState:&v85 objects:v111 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v86;
          do
          {
            for (k = 0; k != v48; ++k)
            {
              if (*v86 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v85 + 1) + 8 * k);
              v52 = [v51 objectForKeyedSubscript:@"service"];
              v53 = [CBService alloc];
              v54 = [v51 objectForKeyedSubscript:@"incInfo"];
              v55 = [(CBService *)v53 initWithPeripheral:0 dictionary:v54];

              v82[0] = MEMORY[0x1E69E9820];
              v82[1] = 3221225472;
              v82[2] = __41__CBCentralManager_handleRestoringState___block_invoke_2;
              v82[3] = &unk_1E811D0E0;
              v83 = v55;
              v84 = v52;
              v56 = v52;
              v57 = v55;
              [v73 enumerateObjectsUsingBlock:v82];
            }

            v48 = [v46 countByEnumeratingWithState:&v85 objects:v111 count:16];
          }

          while (v48);
        }

        if ([v73 count])
        {
          [v17 setServices:v73];
        }

        v14 = v65;
        [v65 addObject:v17];

        v15 = v68 + 1;
        self = v66;
      }

      while (v68 + 1 != v67);
      v67 = [obj countByEnumeratingWithState:&v107 objects:v118 count:16];
    }

    while (v67);
  }

  if ([v14 count])
  {
    [v5 setObject:v14 forKeyedSubscript:@"kCBRestoredPeripherals"];
  }

  v58 = [(CBCentralManager *)self delegate];
  [v58 centralManager:self willRestoreState:v5];

  v59 = *MEMORY[0x1E69E9840];
}

void __41__CBCentralManager_handleRestoringState___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 handle];
  v9 = [v7 isEqualToNumber:v8];

  if (v9)
  {
    [*(a1 + 32) setIsNotifying:1];
    *a4 = 1;
  }
}

void __41__CBCentralManager_handleRestoringState___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [v15 UUID];
  v7 = [*(a1 + 32) UUID];
  if (([v6 isEqual:v7] & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = [v15 startHandle];
  v9 = [*(a1 + 32) startHandle];
  if (![v8 isEqualToNumber:v9])
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = [v15 endHandle];
  v11 = [*(a1 + 32) endHandle];
  v12 = [v10 isEqualToNumber:v11];

  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = [*(a1 + 40) includedServices];
  if (v13)
  {
    v14 = [*(a1 + 40) includedServices];
    v6 = [v14 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v6 addObject:v15];
  [*(a1 + 40) setIncludedServices:v6];
  *a4 = 1;
LABEL_8:

LABEL_9:
}

- (void)handlePeripheralDiscovered:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_isScanning && (*&self->_delegateFlags & 2) != 0)
  {
    v5 = [(CBCentralManager *)self peripheralWithInfo:v4];
    v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgAdvertisingMoreAvailable"];
    v7 = [v6 integerValue];

    v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgAdvertisingIsFromADVBuff"];
    v9 = [v8 integerValue];

    if (!v5)
    {
      if (!v7 && v9 && (*(&self->_delegateFlags + 1) & 0x40) != 0)
      {
        v31 = [(CBCentralManager *)self delegate];
        if ([(NSMutableArray *)self->_discoveredPeripherals count])
        {
          discoveredPeripherals = self->_discoveredPeripherals;
        }

        else
        {
          discoveredPeripherals = 0;
        }

        [v31 centralManager:self didDiscoverMultiplePeripherals:discoveredPeripherals];

        [(NSMutableArray *)self->_discoveredPeripherals removeAllObjects];
      }

      goto LABEL_37;
    }

    v43 = v5;
    v41 = v9;
    v10 = [v4 objectForKeyedSubscript:@"kCBMsgArgAdvertisementData"];
    v11 = [v10 mutableCopy];

    v12 = [v4 objectForKeyedSubscript:@"kCBMsgArgRssi"];
    v13 = [v11 objectForKeyedSubscript:@"kCBAdvDataServiceUUIDs"];
    if (v13)
    {
      v14 = [(CBCentralManager *)self dataArrayToUUIDArray:v13];
      [v11 setObject:v14 forKeyedSubscript:@"kCBAdvDataServiceUUIDs"];
    }

    v15 = [v11 objectForKeyedSubscript:@"kCBAdvDataSolicitedServiceUUIDs"];
    v45 = v15;
    if (v15)
    {
      v16 = [(CBCentralManager *)self dataArrayToUUIDArray:v15];
      [v11 setObject:v16 forKeyedSubscript:@"kCBAdvDataSolicitedServiceUUIDs"];

      v15 = v45;
    }

    v17 = [v11 objectForKeyedSubscript:@"kCBAdvDataHashedServiceUUIDs"];
    if (v17)
    {
      v18 = [(CBCentralManager *)self dataArrayToUUIDArray:v17];
      [v11 setObject:v18 forKeyedSubscript:@"kCBAdvDataHashedServiceUUIDs"];

      v15 = v45;
    }

    v42 = v17;
    v19 = [v4 objectForKey:@"kCBScanOptionFilterIdentifierString"];

    if (v19)
    {
      v20 = [v4 objectForKeyedSubscript:@"kCBScanOptionFilterIdentifierString"];
      [v11 setObject:v20 forKeyedSubscript:@"kCBScanOptionFilterIdentifierString"];
    }

    v21 = @"kCBAdvDataServiceData";
    [v11 objectForKeyedSubscript:@"kCBAdvDataServiceData"];
    v22 = v12;
    v44 = v5 = v43;
    if (v44)
    {
      v39 = v7;
      v40 = v13;
      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v24 = v44;
      v25 = [v24 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v25)
      {
        v26 = v25;
        v37 = @"kCBAdvDataServiceData";
        v38 = v22;
        v27 = 0;
        v28 = *v47;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            while (1)
            {
              if (*v47 != v28)
              {
                objc_enumerationMutation(v24);
              }

              v30 = *(*(&v46 + 1) + 8 * i);
              if (!v27)
              {
                break;
              }

              [v23 setObject:v30 forKeyedSubscript:v27];

              v27 = 0;
              if (v26 == ++i)
              {
                goto LABEL_15;
              }
            }

            v27 = [CBUUID UUIDWithData:v30];
          }

LABEL_15:
          v26 = [v24 countByEnumeratingWithState:&v46 objects:v50 count:{16, v37, v38}];
        }

        while (v26);

        v5 = v43;
        v21 = v37;
        v22 = v38;
        v15 = v45;
      }

      [v11 setObject:v23 forKeyedSubscript:v21];
      v7 = v39;
      v13 = v40;
    }

    if (v41)
    {
      v33 = v42;
      if ((*(&self->_delegateFlags + 1) & 0x40) == 0)
      {
LABEL_36:

LABEL_37:
        goto LABEL_38;
      }

      v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v34 setObject:v5 forKeyedSubscript:@"kCBMsgArgAdvertisementPeripheral"];
      [v34 setObject:v22 forKeyedSubscript:@"kCBMsgArgRssi"];
      [v34 setObject:v11 forKeyedSubscript:@"kCBMsgArgAdvertisementData"];
      [(NSMutableArray *)self->_discoveredPeripherals addObject:v34];
      if (!v7)
      {
        v35 = [(CBCentralManager *)self delegate];
        [v35 centralManager:self didDiscoverMultiplePeripherals:self->_discoveredPeripherals];

        v15 = v45;
        [(NSMutableArray *)self->_discoveredPeripherals removeAllObjects];
      }
    }

    else
    {
      v34 = [(CBCentralManager *)self delegate];
      [v34 centralManager:self didDiscoverPeripheral:v5 advertisementData:v11 RSSI:v22];
    }

    v33 = v42;
    goto LABEL_36;
  }

LABEL_38:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)handlePeripheralInvalidated:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = [(CBCentralManager *)self peripheralWithIdentifier:v4];
    if (v6)
    {
      pthread_mutex_lock(&self->peripheralsMutex);
      [(NSMapTable *)self->_peripherals removeObjectForKey:v7];
      pthread_mutex_unlock(&self->peripheralsMutex);
    }

    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)handleScanComplete:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_scanCompletion)
  {
    v10 = v4;
    v6 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
    scanCompletion = self->_scanCompletion;
    if (v6)
    {
      v8 = [v10 objectForKeyedSubscript:@"kCBScanOptionTotalRXTimeMS"];
      scanCompletion[2](scanCompletion, v6, v8);
    }

    else
    {
      scanCompletion[2](self->_scanCompletion, 0, 0);
    }

    v9 = self->_scanCompletion;
    self->_scanCompletion = 0;

    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)handleScanParamsUpdated:(id)a3
{
  if ((*(&self->_delegateFlags + 3) & 4) != 0)
  {
    v5 = a3;
    v6 = [(CBCentralManager *)self delegate];
    [v6 centralManager:self didUpdateScanParams:v5];
  }
}

- (void)handleFindMyDevicesUpdated:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*(&self->_delegateFlags + 3) & 8) != 0)
  {
    v5 = objc_opt_new();
    v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgDevices"];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(CBCentralManager *)self peripheralWithInfo:*(*(&v14 + 1) + 8 * v10)];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [(CBCentralManager *)self delegate];
    [v12 centralManager:self didUpdateFindMyPeripherals:v5];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleSetupCIGComplete:(id)a3
{
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBCentralManager handleSetupCIGComplete:];
    if (!self->_setupCIGCompletion)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (self->_setupCIGCompletion)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
    v6 = [v4 objectForKeyedSubscript:@"kCBLEAudioArgCigId"];
    (*(self->_setupCIGCompletion + 2))();
    setupCIGCompletion = self->_setupCIGCompletion;
    self->_setupCIGCompletion = 0;
  }

LABEL_6:
}

- (void)handleRemoveCIGComplete:(id)a3
{
  if (self->_removeCIGCompletion)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = a3;
    v8 = [v4 errorWithInfo:v5];
    v6 = [v5 objectForKeyedSubscript:@"kCBLEAudioArgCigId"];

    (*(self->_removeCIGCompletion + 2))();
    removeCIGCompletion = self->_removeCIGCompletion;
    self->_removeCIGCompletion = 0;
  }
}

- (void)handleConnectCISComplete:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v9 = [v4 errorWithInfo:v5];
  v6 = [v5 objectForKeyedSubscript:@"kCBLEAudioArgCigId"];
  v7 = [v5 objectForKeyedSubscript:@"kCBLEAudioArgCisId"];

  cisConnectEvent = self->_cisConnectEvent;
  if (cisConnectEvent)
  {
    cisConnectEvent[2](cisConnectEvent, v9, v6, v7);
  }
}

- (void)handleDisconnectCISComplete:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v9 = [v4 errorWithInfo:v5];
  v6 = [v5 objectForKeyedSubscript:@"kCBLEAudioArgCigId"];
  v7 = [v5 objectForKeyedSubscript:@"kCBLEAudioArgCisId"];

  cisDisconnectEvent = self->_cisDisconnectEvent;
  if (cisDisconnectEvent)
  {
    cisDisconnectEvent[2](cisDisconnectEvent, v9, v6, v7);
  }
}

- (void)handleConnectLEAudioComplete:(id)a3
{
  v4 = a3;
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v5 = [(CBCentralManager *)self peripheralWithIdentifier:?];
  [v5 handleMsg:236 args:v4];

  if (!self->_leAudioDevice)
  {
    [(CBCentralManager *)self startLEAudioXPC];
    objc_storeStrong(&self->_leAudioDevice, v5);
  }
}

- (void)handlePeripheralConnectionCompleted:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
    if (v7)
    {
      [v6 handleFailedConnection];
      v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgResult"];
      v9 = [MEMORY[0x1E696AD98] numberWithInt:341];
      v10 = [v8 isEqualToNumber:v9];

      if (v10)
      {
        if (CBLogInitOnce != -1)
        {
          [CBClassicPeer dealloc];
        }

        if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_FAULT))
        {
          [CBCentralManager handlePeripheralConnectionCompleted:];
          if ((*&self->_delegateFlags & 8) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v13 = [v4 objectForKeyedSubscript:@"kCBMsgArgResult"];
        v14 = [MEMORY[0x1E696AD98] numberWithInt:348];
        v15 = [v13 isEqualToNumber:v14];

        if (v15)
        {
          if (CBLogInitOnce != -1)
          {
            [CBClassicPeer dealloc];
          }

          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_FAULT))
          {
            [CBCentralManager handlePeripheralConnectionCompleted:];
            if ((*&self->_delegateFlags & 8) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_20;
          }
        }
      }

      if ((*&self->_delegateFlags & 8) != 0)
      {
LABEL_20:
        v12 = [(CBCentralManager *)self delegate];
        [v12 centralManager:self didFailToConnectPeripheral:v6 error:v7];
        goto LABEL_21;
      }
    }

    else
    {
      [v6 handleSuccessfulConnection:v4];
      if ((*&self->_delegateFlags & 4) != 0)
      {
        v12 = [(CBCentralManager *)self delegate];
        [v12 centralManager:self didConnectPeripheral:v6];
LABEL_21:
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v11 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_1C0AC1000, v11, OS_LOG_TYPE_DEFAULT, "No peripheral found for args %@", &v17, 0xCu);
  }

LABEL_23:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)handlePeripheralCLReady:(id)a3
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v5 = [(CBCentralManager *)self peripheralWithIdentifier:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithInfo:v8];
    if (!v6 && (*(&self->_delegateFlags + 2) & 1) != 0)
    {
      v7 = [(CBCentralManager *)self delegate];
      [v7 centralManager:self canSendDataToPeripheral:v5];

      v6 = 0;
    }
  }
}

- (void)handlePeripheralDisconnectionCompleted:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v5];

  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  v8 = [v4 objectForKeyedSubscript:@"kCBDisconnectInfoTimestamp"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 objectForKeyedSubscript:@"kCBDisconnectInfoIsReconnecting"];
  v12 = [v11 BOOLValue];

  [v6 handleDisconnection];
  if (v12)
  {
    [v6 setState:1];
  }

  v13 = [v6 identifier];
  v14 = [(CBManager *)self getCnxInstanceForIdentifier:v13];

  if (v14)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v15 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v6;
      _os_log_impl(&dword_1C0AC1000, v15, OS_LOG_TYPE_DEFAULT, "WHB device %@ disconnected", &v26, 0xCu);
    }

    v16 = [v14 peerDevice];
    v17 = [v16 identifier];
    [(CBManager *)self removeWhbRemoteId:v17];

    v18 = [v6 identifier];
    [(CBManager *)self removeCnxInstanceForIdentifier:v18];
  }

  delegateFlags = self->_delegateFlags;
  if ((*&delegateFlags & 0x10) != 0)
  {
    v20 = [(CBCentralManager *)self delegate];
    [v20 centralManager:self didDisconnectPeripheral:v6 error:v7];
  }

  else
  {
    if ((*&delegateFlags & 0x20) == 0)
    {
      goto LABEL_15;
    }

    v20 = [(CBCentralManager *)self delegate];
    [v20 centralManager:self didDisconnectPeripheral:v6 timestamp:v12 isReconnecting:v7 error:v10];
  }

LABEL_15:
  if (self->_leAudioDevice)
  {
    v21 = [v6 identifier];
    v22 = [(CBPeer *)self->_leAudioDevice identifier];
    v23 = [v21 isEqual:v22];

    if (v23)
    {
      leAudioDevice = self->_leAudioDevice;
      self->_leAudioDevice = 0;
    }
  }

LABEL_19:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)handleApplicationConnectionEventDidOccur:(id)a3
{
  v4 = a3;
  v5 = [(CBCentralManager *)self peripheralWithInfo:v4];
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgConnectionEvent"];
  v7 = [v6 intValue];

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBCentralManager handleApplicationConnectionEventDidOccur:];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else if (!v5)
  {
    goto LABEL_7;
  }

  if ((*(&self->_delegateFlags + 1) & 8) != 0)
  {
    [v5 handleConnectionStateUpdated:v7 != 0];
    v8 = [(CBCentralManager *)self delegate];
    [v8 centralManager:self connectionEventDidOccur:v7 forPeripheral:v5];
  }

LABEL_7:
}

- (void)handleScanFailedToStartWithError:(id)a3
{
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBCentralManager handleScanFailedToStartWithError:];
  }

  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgResult"];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:341];
  v7 = [v5 isEqualToNumber:v6];

  if (v7)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    [CBClassicPeer handlePeerUpdated:];
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_FAULT))
    {
LABEL_8:
      [CBCentralManager handleScanFailedToStartWithError:];
    }
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgResult"];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:348];
    v10 = [v8 isEqualToNumber:v9];

    if (!v10)
    {
      goto LABEL_12;
    }

    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }
    }

    [CBCentralManager handleScanFailedToStartWithError:];
  }

LABEL_12:
  if ((*(&self->_delegateFlags + 2) & 2) != 0)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
    v12 = [(CBCentralManager *)self delegate];
    [v12 centralManager:self didFailToScanWithError:v11];
  }
}

- (void)handlePeripheralConnectionStateUpdated:(id)a3
{
  v7 = a3;
  v4 = [(CBCentralManager *)self peripheralWithInfo:?];
  if (v4)
  {
    v5 = [v7 objectForKeyedSubscript:@"kCBMsgArgConnectionState"];
    [v4 handleConnectionStateUpdated:{objc_msgSend(v5, "BOOLValue")}];
    if ((*&self->_delegateFlags & 0x40) != 0)
    {
      v6 = [(CBCentralManager *)self delegate];
      [v6 centralManager:self didUpdatePeripheralConnectionState:v4];
    }
  }
}

- (void)handlePeripheralTrackingUpdated:(id)a3
{
  v4 = a3;
  v10 = [(CBCentralManager *)self peripheralWithInfo:v4];
  v5 = [v4 objectForKeyedSubscript:@"kCBTrackingOptionType"];
  v6 = [v4 objectForKeyedSubscript:@"kCBTrackingOptionState"];

  if (v10 && v5 && v6)
  {
    v7 = [v6 isEqual:&unk_1F4020738];
    delegateFlags = self->_delegateFlags;
    if (v7)
    {
      if ((*&delegateFlags & 0x100) == 0)
      {
        goto LABEL_10;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained centralManager:self didLosePeripheral:v10 forType:v5];
    }

    else
    {
      if ((*&delegateFlags & 0x80) == 0)
      {
        goto LABEL_10;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained centralManager:self didFindPeripheral:v10 forType:v5];
    }
  }

LABEL_10:
}

- (void)handleApplicationActivityEvent:(id)a3
{
  v4 = a3;
  v12 = [v4 objectForKeyedSubscript:@"kCBMsgArgName"];
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgState"];

  v6 = [v5 BOOLValue];
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = objc_loadWeakRetained(&self->_delegate);
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        [v11 centralManager:self application:v12 isActive:v6];
      }
    }
  }
}

- (void)handleZoneLost:(id)a3
{
  v4 = a3;
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgLeZone"];
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgLeZoneMask"];

  if ((*(&self->_delegateFlags + 1) & 2) != 0)
  {
    v6 = [(CBCentralManager *)self delegate];
    [v6 centralManager:self didLoseZone:v7 mask:v5];
  }
}

- (void)HandleControllerBTClockUpdateMsg:(id)a3
{
  v14 = a3;
  v4 = [v14 objectForKeyedSubscript:@"kCBGetControllerBTClockSeconds"];
  v5 = [v14 objectForKeyedSubscript:@"kCBGetControllerBTClockMicroSeconds"];
  v6 = [v14 objectForKeyedSubscript:@"kCBGetControllerBTClockEventType"];
  v7 = [v14 objectForKeyedSubscript:@"kCBGetControllerBTLocalClock"];
  v8 = [v14 objectForKeyedSubscript:@"kCBGetControllerBTRemoteClock"];
  v9 = [v14 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v10 = [(CBCentralManager *)self peripheralWithIdentifier:v9];

  if (v10)
  {
    delegateFlags = self->_delegateFlags;
    if ((*&delegateFlags & 0x40000) != 0)
    {
      v12 = [(CBCentralManager *)self delegate];
      [v12 centralManager:self didUpdateControllerBTClockForPeripheral:v10 eventType:v6 seconds:v4 microseconds:v5 localClock:v7 remoteClock:v8];

      delegateFlags = self->_delegateFlags;
    }

    if ((*&delegateFlags & 0x80000) != 0)
    {
      v13 = [(CBCentralManager *)self delegate];
      [v13 centralManager:self didUpdateControllerBTClockDictForPeripheral:v10 results:v14];
    }
  }
}

- (void)HandleLESynchronizationEventMsg:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v5];

  if (v6)
  {
    if ((*(&self->_delegateFlags + 2) & 0x10) != 0)
    {
      v7 = [(CBCentralManager *)self delegate];
      [v7 centralManager:self didUpdateSynchronizationEventForPeripheral:v6 results:v4];
    }
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v8 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1C0AC1000, v8, OS_LOG_TYPE_DEFAULT, "No peripheral found in HandleLESynchronizationEventMsg for args %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)HandleRssiDetectionUpdateMsg:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v5];

  v7 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if (v6)
  {
    if ((*(&self->_delegateFlags + 2) & 0x40) != 0)
    {
      v8 = [(CBCentralManager *)self delegate];
      [v8 centralManager:self didUpdateRSSIStatisticsDetectionForPeripheral:v6 results:v4 error:v7];
    }
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v9 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1C0AC1000, v9, OS_LOG_TYPE_DEFAULT, "No peripheral found in HandleRssiDetectionUpdateMsg for args %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)HandleBluetoothUsageEventMsg:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v5];

  v7 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if (v6)
  {
    if ((*(&self->_delegateFlags + 2) & 0x80) != 0)
    {
      v8 = [(CBCentralManager *)self delegate];
      [v8 centralManager:self didUpdateUsageStatisticEvent:v6 results:v4 error:v7];
    }
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v9 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1C0AC1000, v9, OS_LOG_TYPE_DEFAULT, "No peripheral found in HandleBluetoothUsageEventMsg for args %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)HandleBluetoothPhyStatisticEventMsg:(id)a3
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v5 = [(CBCentralManager *)self peripheralWithIdentifier:v4];

  v6 = [MEMORY[0x1E696ABC0] errorWithInfo:v8];
  if (v5 && (*(&self->_delegateFlags + 3) & 1) != 0)
  {
    v7 = [(CBCentralManager *)self delegate];
    [v7 centralManager:self didUpdatePhyStatisticEvent:v5 results:v8 error:v6];
  }
}

- (void)handleCSProcedureEventMsg:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v5];

  v7 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if (v6)
  {
    if ((*(&self->_delegateFlags + 3) & 2) != 0)
    {
      v8 = [(CBCentralManager *)self delegate];
      [v8 centralManager:self didChannelSoundingProcedureEvent:v6 results:v4 error:v7];
    }
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v9 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1C0AC1000, v9, OS_LOG_TYPE_DEFAULT, "No peripheral found in handleCSProcedureEventMsg for args %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleConnectionParametersUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v10 = [(CBCentralManager *)self peripheralWithIdentifier:v5];

  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgConnectionInterval"];
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgConnectionLatency"];
  v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgSupervisionTimeout"];

  if (v10 && (*(&self->_delegateFlags + 1) & 4) != 0)
  {
    v9 = [(CBCentralManager *)self delegate];
    [v9 centralManager:self didUpdateConnectionParameters:v10 interval:v6 latency:v7 supervisionTimeout:v8];
  }
}

- (void)handleReadyForUpdates:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->peripheralsMutex);
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NSMapTable *)self->_peripherals objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObject:*(*(&v20 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  pthread_mutex_unlock(&self->peripheralsMutex);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v4 objectEnumerator];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) isReadyForUpdates];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)retrievePeripheralWithAddress:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v13 = @"kCBMsgArgAddressString";
    v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [(CBManager *)self sendSyncMsg:81 args:v7];

    v9 = [v8 objectForKeyedSubscript:@"kCBMsgArgDevices"];
    if (v9)
    {
      v10 = [(CBCentralManager *)self peripheralWithInfo:v9];
      [v10 setBDAddress:v4];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBCentralManager retrievePeripheralWithAddress:];
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)addIRKwithBTAddress:(id)a3 irk:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v6 = a3;
  }

  v13[0] = @"kCBSetIRKForAddressPublicAddress";
  v13[1] = @"kCBSetIRKForAddressIRK";
  v7 = MEMORY[0x1E695E0F8];
  if (a4)
  {
    v7 = a4;
  }

  v14[0] = v6;
  v14[1] = v7;
  v8 = MEMORY[0x1E695DF20];
  v9 = a4;
  v10 = a3;
  v11 = [v8 dictionaryWithObjects:v14 forKeys:v13 count:2];

  [(CBManager *)self sendMsg:137 args:v11];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeIRKwithBTAddress:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v9 = @"kCBSetIRKForAddressPublicAddress";
  v10[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(CBManager *)self sendMsg:138 args:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)deleteDevice:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"kCBMsgArgDeviceUUID";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CBManager *)self sendMsg:139 args:v6];

  pthread_mutex_lock(&self->peripheralsMutex);
  [(NSMapTable *)self->_peripherals removeObjectForKey:v5];

  pthread_mutex_unlock(&self->peripheralsMutex);
  v7 = *MEMORY[0x1E69E9840];
}

- (id)createPeripheralWithAddress:(id)a3 andIdentifier:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = [v7 dictionary];
  [v9 setObject:v8 forKeyedSubscript:@"kCBAdvOptionInstanceRandomAddressBytes"];

  if (v6)
  {
    [v9 setObject:v6 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  }

  v10 = [(CBManager *)self sendSyncMsg:82 args:v9];
  v11 = [v10 objectForKeyedSubscript:@"kCBMsgArgDevices"];
  if (v11)
  {
    v12 = [(CBCentralManager *)self peripheralWithInfo:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)createPeripheralFromIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = [v7 dictionary];
  [v9 setObject:v8 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CBCentralManager_createPeripheralFromIdentifier_completion___block_invoke;
  v11[3] = &unk_1E811D108;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [(CBManager *)self sendMsg:83 args:v9 withReply:v11];
}

void __62__CBCentralManager_createPeripheralFromIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:@"kCBMsgArgDevices"];
    v8 = v6;
    if (v6)
    {
      v7 = [*(a1 + 32) peripheralWithInfo:v6];
    }

    else
    {
      v7 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)readLocalFastLeConnectionCachedControllerInfoWithcompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__CBCentralManager_readLocalFastLeConnectionCachedControllerInfoWithcompletion___block_invoke;
  v6[3] = &unk_1E811CFC8;
  v7 = v4;
  v5 = v4;
  [(CBManager *)self sendMsg:89 args:MEMORY[0x1E695E0F8] withReply:v6];
}

void __80__CBCentralManager_readLocalFastLeConnectionCachedControllerInfoWithcompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = objc_opt_new();
    (*(v6 + 16))(v6, v5, v7);
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithInfo:v9];
    v8 = [v9 objectForKeyedSubscript:@"kCBFastLeConnectionInfoData"];
    (*(v6 + 16))(v6, v7, v8);
  }
}

- (void)handleDidSendBytesToPeripheralwithError:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v9 = [(CBCentralManager *)self peripheralWithIdentifier:v5];

  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgBytesSent"];
  v7 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];

  if (v9 && (*(&self->_delegateFlags + 1) & 0x10) != 0)
  {
    v8 = [(CBCentralManager *)self delegate];
    [v8 centralManager:self didSendBytes:v6 toPeripheral:v9 withError:v7];
  }
}

- (void)handleDidReceiveDataFromPeripheral:(id)a3
{
  v12 = a3;
  v4 = [v12 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v5 = [(CBCentralManager *)self peripheralWithIdentifier:v4];

  v6 = v12;
  if (v5)
  {
    goto LABEL_6;
  }

  v7 = [v12 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v7, 0}];
  v9 = [(CBCentralManager *)self retrievePeripheralsWithIdentifiers:v8];
  if (![v9 count])
  {

    v6 = v12;
    goto LABEL_9;
  }

  v5 = [v9 objectAtIndexedSubscript:0];

  v6 = v12;
  if (v5)
  {
LABEL_6:
    v10 = [v6 objectForKeyedSubscript:@"kCBMsgArgObjectDiscoveryData"];
    if ((*(&self->_delegateFlags + 1) & 0x20) != 0)
    {
      v11 = [(CBCentralManager *)self delegate];
      [v11 centralManager:self didReceiveData:v10 fromPeripheral:v5];
    }

    v6 = v12;
  }

LABEL_9:
}

- (void)handleAncsAuthChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v9 = [(CBCentralManager *)self peripheralWithIdentifier:v5];

  v6 = [v4 objectForKey:@"kCBMsgArgAncsAuthorization"];

  v7 = [v6 BOOLValue];
  if (v9)
  {
    [v9 setAncsAuthorized:v7];
    if ((*(&self->_delegateFlags + 1) & 0x80) != 0)
    {
      v8 = [(CBCentralManager *)self delegate];
      [v8 centralManager:self didUpdateANCSAuthorizationForPeripheral:v9];
    }
  }
}

- (void)handlePeerMTUChanged:(id)a3
{
  v4 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBCentralManager handlePeerMTUChanged:];
  }

  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v5];

  if (v6 && (*(&self->_delegateFlags + 2) & 0x20) != 0)
  {
    v7 = [(CBCentralManager *)self delegate];
    [v7 centralManager:self didUpdateMTUForPeripheral:v6];
  }
}

- (void)startLEAudioXPC
{
  v3 = dispatch_time(0, 500000000);
  v4 = [(CBManager *)self getCurrentQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CBCentralManager_startLEAudioXPC__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

- (void)createXPCForLEAudio
{
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v3 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C0AC1000, v3, OS_LOG_TYPE_DEFAULT, "Create LE audio XPC", buf, 2u);
  }

  v4 = xpc_copy_entitlement_for_self();
  v5 = v4;
  if (!v4 || MEMORY[0x1C68DFDD0](v4) != MEMORY[0x1E69E9E58] || !xpc_BOOL_get_value(v5))
  {
    if (CBLogInitOnce == -1)
    {
      v10 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v10 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    *buf = 0;
    v11 = "Not LE audio XPC allowed";
LABEL_13:
    _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    goto LABEL_14;
  }

  self->_validLeAudioXpcCalled = 1;
  v6 = [(CBManager *)self getCurrentQueue];
  mach_service = xpc_connection_create_mach_service("com.apple.bluetoothaudiod.cb", v6, 0);
  leAudioXpcConnection = self->_leAudioXpcConnection;
  self->_leAudioXpcConnection = mach_service;

  v9 = self->_leAudioXpcConnection;
  if (!v9)
  {
    if (CBLogInitOnce == -1)
    {
      v10 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v10 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    *buf = 0;
    v11 = "Failed to create LE audio XPC";
    goto LABEL_13;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39__CBCentralManager_createXPCForLEAudio__block_invoke;
  handler[3] = &unk_1E811D158;
  handler[4] = self;
  xpc_connection_set_event_handler(v9, handler);
  xpc_connection_resume(self->_leAudioXpcConnection);
  [(CBCentralManager *)self registerLEAudioClient];
LABEL_14:
}

- (void)registerLEAudioClient
{
  keys[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:getprogname()];
  }

  v7 = v6;

  keys[0] = "kCBMsgArgLEAudioClient";
  values = xpc_string_create([v7 UTF8String]);
  v8 = xpc_dictionary_create(keys, &values, 1uLL);
  [(CBCentralManager *)self sendLEAudioMsg:@"kCBMsgLEAudioRegister" args:v8 completion:&__block_literal_global_423];

  v9 = *MEMORY[0x1E69E9840];
}

void __41__CBCentralManager_registerLEAudioClient__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v3 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v2;
      v4 = "Failed to send LE audio register message over XPC, %@";
      v5 = v3;
      v6 = 12;
LABEL_10:
      _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, v4, &v9, v6);
    }
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v7 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v4 = "Ready to use LE audio";
      v5 = v7;
      v6 = 2;
      goto LABEL_10;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)sendLEAudioMsg:(id)a3 args:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  *keys = xmmword_1E811D198;
  values = xpc_string_create([a3 UTF8String]);
  v10 = v8;
  v21 = v10;
  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = xpc_dictionary_create(keys, &values, v11);
  if (v12)
  {
    leAudioXpcConnection = self->_leAudioXpcConnection;
    v14 = [(CBManager *)self getCurrentQueue];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __51__CBCentralManager_sendLEAudioMsg_args_completion___block_invoke;
    handler[3] = &unk_1E811D1B0;
    v19 = v9;
    xpc_connection_send_message_with_reply(leAudioXpcConnection, v12, v14, handler);
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
    }

    v15 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1C0AC1000, v15, OS_LOG_TYPE_DEFAULT, "LE audio message is nil", v17, 2u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __51__CBCentralManager_sendLEAudioMsg_args_completion___block_invoke(uint64_t a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (void)changeVolumeForSession:(id)a3 withVolume:(float)a4 withResponse:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  *uuid = 0;
  v17 = 0;
  v10 = [v8 audioSessionIdentifier];
  [v10 getUUIDBytes:uuid];
  *keys = xmmword_1E811D1D0;
  v13 = xpc_uuid_create(uuid);
  v14 = xpc_double_create(a4);
  v11 = xpc_dictionary_create(keys, &v13, 2uLL);
  [(CBCentralManager *)self sendLEAudioMsg:@"kCBMsgChangeSessionVolume" args:v11 completion:v9];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)changeVolumeOffsetForSession:(id)a3 toLocation:(unsigned int)a4 withVolumeOffSet:(signed __int16)a5 withResponse:(id)a6
{
  v7 = a5;
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  *uuid = 0;
  v21 = 0;
  v12 = [v10 audioSessionIdentifier];
  [v12 getUUIDBytes:uuid];
  *keys = xmmword_1E811D1E0;
  v19 = "kCBMsgArgLEAudioLocation";
  values = xpc_uuid_create(uuid);
  v16 = xpc_int64_create(v7);
  v17 = xpc_uint64_create(a4);
  v13 = xpc_dictionary_create(keys, &values, 3uLL);
  [(CBCentralManager *)self sendLEAudioMsg:@"kCBMsgChangeSessionVolumeOffset" args:v13 completion:v11];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)changeVolumeMuteStateForSession:(id)a3 withVolumeMuteState:(int64_t)a4 withResponse:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  *uuid = 0;
  v17 = 0;
  v10 = [v8 audioSessionIdentifier];
  [v10 getUUIDBytes:uuid];
  *keys = xmmword_1E811D1F8;
  v13 = xpc_uuid_create(uuid);
  v14 = xpc_uint64_create(a4);
  v11 = xpc_dictionary_create(keys, &v13, 2uLL);
  [(CBCentralManager *)self sendLEAudioMsg:@"kCBMsgChangeSessionVolumeMuteState" args:v11 completion:v9];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setMicrophoneMuteStateForSession:(id)a3 withMicMuteState:(int64_t)a4 withResponse:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  *uuid = 0;
  v17 = 0;
  v10 = [v8 audioSessionIdentifier];
  [v10 getUUIDBytes:uuid];
  *keys = xmmword_1E811D208;
  v13 = xpc_uuid_create(uuid);
  v14 = xpc_uint64_create(a4);
  v11 = xpc_dictionary_create(keys, &v13, 2uLL);
  [(CBCentralManager *)self sendLEAudioMsg:@"kCBMsgChangeSessionMicrophoneMuteState" args:v11 completion:v9];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)changeMicrophoneGainSettingForSession:(id)a3 forAudioInputType:(unsigned __int8)a4 withMicGain:(char)a5 withResponse:(id)a6
{
  v7 = a5;
  v8 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  *uuid = 0;
  v21 = 0;
  v12 = [v10 audioSessionIdentifier];
  [v12 getUUIDBytes:uuid];
  *keys = xmmword_1E811D218;
  v19 = "kCBMsgArgLEAudioMicrophoneGain";
  values = xpc_uuid_create(uuid);
  v16 = xpc_int64_create(v8);
  v17 = xpc_int64_create(v7);
  v13 = xpc_dictionary_create(keys, &values, 3uLL);
  [(CBCentralManager *)self sendLEAudioMsg:@"kCBMsgChangeSessionMicrophoneGain" args:v13 completion:v11];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleLEAudioXpcEvents:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1C68DFDD0]();
  if (v5 == MEMORY[0x1E69E9E80])
  {
    [(CBCentralManager *)self handleLEAudioMsg:v4];
  }

  else if (v5 == MEMORY[0x1E69E9E98])
  {
    if (v4 == MEMORY[0x1E69E9E18])
    {
      [(CBCentralManager *)self handleLEAudioXpcInterrupted];
    }

    else if (v4 == MEMORY[0x1E69E9E20])
    {
      [(CBCentralManager *)self handleLEAudioXpcInvalid];
    }

    else
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      [CBCentralManager _handleLEAudioXpcEvents:];
    }
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
LABEL_6:

      return;
    }

    [CBCentralManager _handleLEAudioXpcEvents:];
  }
}

- (void)handleLEAudioXpcInterrupted
{
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v3 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C0AC1000, v3, OS_LOG_TYPE_DEFAULT, "LE audio XPC interrupted", v4, 2u);
  }

  if (self->_validLeAudioXpcCalled)
  {
    if (self->_leAudioDevice)
    {
      [(CBCentralManager *)self registerLEAudioClient];
    }
  }
}

- (void)handleLEAudioXpcInvalid
{
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v3 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C0AC1000, v3, OS_LOG_TYPE_DEFAULT, "LE audio XPC invalid", v5, 2u);
  }

  leAudioXpcConnection = self->_leAudioXpcConnection;
  self->_leAudioXpcConnection = 0;

  xpc_connection_cancel(self->_leAudioXpcConnection);
}

- (id)createSessionEvent:(int64_t)a3 withMsg:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [[CBLEAudioSessionEvent alloc] initWithEventType:a3 withError:0];
  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  uuid = xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioSessionID");
  if (a3 == 7)
  {
    v9 = [v7 initWithUUIDBytes:uuid];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(v5, "kCBMsgArgLEAudioCoordinatedSetSize")}];
    v11 = xpc_dictionary_get_array(v5, "kCBMsgArgLEAudioCoordinatedSetIds");
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __47__CBCentralManager_createSessionEvent_withMsg___block_invoke;
    applier[3] = &unk_1E811D238;
    v27 = v12;
    v13 = v12;
    xpc_array_apply(v11, applier);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioDeviceUUID")}];
    v16 = MEMORY[0x1E696AD98];
    uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgLEAudioLocation");

    v18 = [v16 numberWithUnsignedLongLong:uint64];
    [v14 setObject:v18 forKeyedSubscript:v15];

    v19 = [[CBCoordinatedSetInfo alloc] initWithInfo:0 withSize:[(CBLEAudioSessionInfo *)v10 unsignedCharValue]];
    v20 = [[CBLEAudioSessionInfo alloc] initWithInfo:v19 withSessionId:v9 withState:0 withCoordIds:v13 withLocation:v14];
    [(CBLEAudioSessionEvent *)v6 setSessionInfo:v20];
  }

  else
  {

    v9 = [v7 initWithUUIDBytes:uuid];
    v10 = [[CBLEAudioSessionInfo alloc] initWithSession:v9];
    [(CBLEAudioSessionEvent *)v6 setSessionInfo:v10];
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  v21 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [(CBLEAudioSessionEvent *)v6 description];
    *buf = 138412290;
    v29 = v23;
    _os_log_impl(&dword_1C0AC1000, v22, OS_LOG_TYPE_DEFAULT, "Generated event: %@", buf, 0xCu);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __47__CBCentralManager_createSessionEvent_withMsg___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 alloc];
  bytes = xpc_uuid_get_bytes(v5);

  v8 = [v6 initWithUUIDBytes:bytes];
  [v3 addObject:v8];

  return 1;
}

- (void)handleLEAudioSessionEvents:(id)a3
{
  v4 = a3;
  v5 = [(CBCentralManager *)self leAudioEventHandler];

  if (v5)
  {
    v6 = [(CBCentralManager *)self leAudioEventHandler];
    (v6)[2](v6, v4);

LABEL_3:
    return;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v7 = CBLogComponent;
  if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_3;
  }

  *v8 = 0;
  _os_log_impl(&dword_1C0AC1000, v7, OS_LOG_TYPE_DEFAULT, "No LE audio event handher found", v8, 2u);
}

- (void)handleLEAudioMsg:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "kCBMsgId");
  v6 = xpc_dictionary_get_value(v4, "kCBMsgArgs");

  if (IsAppleInternalBuild())
  {
    if (CBLogInitOnce == -1)
    {
      v7 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    [CBClassicPeer dealloc];
    v7 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
LABEL_4:
      v10 = 136315394;
      v11 = string;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1C0AC1000, v7, OS_LOG_TYPE_DEFAULT, "Received XPC message for LE audio - %s: %@", &v10, 0x16u);
    }
  }

LABEL_5:
  if (!strcmp(string, "kCBMsgLEAudioUnregistered"))
  {
    if (CBLogInitOnce == -1)
    {
      v8 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v8 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }
    }

    LOWORD(v10) = 0;
    _os_log_impl(&dword_1C0AC1000, v8, OS_LOG_TYPE_DEFAULT, "LE audio unregistered", &v10, 2u);
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioSessionCompleted"))
  {
    [(CBCentralManager *)self handleSessionCompleted:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioSessionVolumeUpdated"))
  {
    [(CBCentralManager *)self handleSessionVolumeUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioSessionVolumeOffsetUpdated"))
  {
    [(CBCentralManager *)self handleSessionVolumeOffsetUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioSessionVolumeMuteUpdated"))
  {
    [(CBCentralManager *)self handleSessionVolumeMuteUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioSessionMicrophoneMuteUpdated"))
  {
    [(CBCentralManager *)self handleSessionMicrophoneMuteUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioSessionMicrophoneGainUpdated"))
  {
    [(CBCentralManager *)self handleSessionMicrophoneGainUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioVolumeUpdated"))
  {
    [(CBCentralManager *)self handleVolumeUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioReadPresetUpdated"))
  {
    [(CBCentralManager *)self handlePresetsUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioVolumeOffsetUpdated"))
  {
    [(CBCentralManager *)self handleVolumeOffsetUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioVolumeMuteUpdated"))
  {
    [(CBCentralManager *)self handleVolumeMuteUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioVolumeInputGainUpdated"))
  {
    [(CBCentralManager *)self handleVolumeInputGainUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioMicrophoneMuteUpdated"))
  {
    [(CBCentralManager *)self handleMicrophoneMuteUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioMicrophoneGainUpdated"))
  {
    [(CBCentralManager *)self handleMicrophoneGainUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioActivePresetUpdated"))
  {
    [(CBCentralManager *)self handleActivePresetUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioPresetNameUpdated"))
  {
    [(CBCentralManager *)self handlePresetNameUpdated:v6];
    goto LABEL_47;
  }

  if (!strcmp(string, "kCBMsgLEAudioHearingAidFeaturesUpdated"))
  {
    [(CBCentralManager *)self handleFeaturesUpdated:v6];
    goto LABEL_47;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
LABEL_24:
    [CBCentralManager handleLEAudioMsg:];
  }

LABEL_47:

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleSessionCompleted:(id)a3
{
  v4 = [(CBCentralManager *)self createSessionEvent:7 withMsg:a3];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleSessionCompleted", v6, 2u);
  }

  [(CBCentralManager *)self handleLEAudioSessionEvents:v4];
}

- (void)handleSessionVolumeUpdated:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CBCentralManager *)self createSessionEvent:2 withMsg:v4];
  v6 = MEMORY[0x1E696AD98];
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLEAudioVolume");

  v8 = [v6 numberWithUnsignedLongLong:uint64];
  [v5 setUpdatedValue:v8];

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v9 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v5 updatedValue];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "handleSessionVolumeUpdated - %@", &v13, 0xCu);
  }

  [(CBCentralManager *)self handleLEAudioSessionEvents:v5];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleSessionVolumeOffsetUpdated:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CBCentralManager *)self createSessionEvent:3 withMsg:v4];
  v6 = MEMORY[0x1E696AD98];
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLEAudioVolumeOffset");

  v8 = [v6 numberWithUnsignedLongLong:uint64];
  [v5 setUpdatedValue:v8];

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v9 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v5 updatedValue];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "handleSessionVolumeOffsetUpdated - %@", &v13, 0xCu);
  }

  [(CBCentralManager *)self handleLEAudioSessionEvents:v5];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleSessionVolumeMuteUpdated:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CBCentralManager *)self createSessionEvent:4 withMsg:v4];
  v6 = MEMORY[0x1E696AD98];
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLEAudioVolumeMuteState");

  v8 = [v6 numberWithUnsignedLongLong:uint64];
  [v5 setUpdatedValue:v8];

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v9 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v5 updatedValue];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "handleSessionVolumeMuteUpdated - %@", &v13, 0xCu);
  }

  [(CBCentralManager *)self handleLEAudioSessionEvents:v5];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleSessionMicrophoneMuteUpdated:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CBCentralManager *)self createSessionEvent:5 withMsg:v4];
  v6 = MEMORY[0x1E696AD98];
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLEAudioMicrophoneMuteState");

  v8 = [v6 numberWithUnsignedLongLong:uint64];
  [v5 setUpdatedValue:v8];

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v9 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v5 updatedValue];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "handleSessionMicrophoneMuteUpdated - %@", &v13, 0xCu);
  }

  [(CBCentralManager *)self handleLEAudioSessionEvents:v5];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleSessionMicrophoneGainUpdated:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CBCentralManager *)self createSessionEvent:6 withMsg:v4];
  v6 = MEMORY[0x1E696AD98];
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLEAudioMicrophoneGain");

  v8 = [v6 numberWithUnsignedLongLong:uint64];
  [v5 setUpdatedValue:v8];

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v9 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v5 updatedValue];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "handleSessionMicrophoneGainUpdated - %@", &v13, 0xCu);
  }

  [(CBCentralManager *)self handleLEAudioSessionEvents:v5];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleVolumeUpdated:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v10 = [[v4 alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioDeviceUUID")}];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v10];
  uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgLEAudioVolume");

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v8, @"kCBMsgArgLEAudioVolume", 0}];
  [v6 handleMsg:247 args:v9];
}

- (void)handlePresetsUpdated:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v21 = [[v4 alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioDeviceUUID")}];
  v20 = [(CBCentralManager *)self peripheralWithIdentifier:v21];
  v6 = xpc_dictionary_get_array(v5, "kCBMsgArgLEAudioDevicePresetIndexes");
  v7 = xpc_dictionary_get_array(v5, "kCBMsgArgLEAudioDevicePresetProperties");
  v8 = xpc_dictionary_get_array(v5, "kCBMsgArgLEAudioDevicePresetNames");

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __41__CBCentralManager_handlePresetsUpdated___block_invoke;
  applier[3] = &unk_1E811D238;
  v27 = v9;
  v12 = v9;
  xpc_array_apply(v6, applier);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __41__CBCentralManager_handlePresetsUpdated___block_invoke_2;
  v24[3] = &unk_1E811D238;
  v25 = v10;
  v13 = v10;
  xpc_array_apply(v7, v24);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __41__CBCentralManager_handlePresetsUpdated___block_invoke_3;
  v22[3] = &unk_1E811D238;
  v23 = v11;
  v14 = v11;
  xpc_array_apply(v8, v22);
  v15 = objc_alloc(MEMORY[0x1E695DF90]);
  v16 = [v12 copy];
  v17 = [v13 copy];
  v18 = [v14 copy];
  v19 = [v15 initWithObjectsAndKeys:{v16, @"kCBMsgArgLEAudioDevicePresetIndexes", v17, @"kCBMsgArgLEAudioDevicePresetProperties", v18, @"kCBMsgArgLEAudioDevicePresetNames", 0}];

  [v20 handleMsg:246 args:v19];
}

uint64_t __41__CBCentralManager_handlePresetsUpdated___block_invoke(uint64_t a1, int a2, xpc_object_t xuint)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:xpc_uint64_get_value(xuint)];
  [v3 addObject:v4];

  return 1;
}

uint64_t __41__CBCentralManager_handlePresetsUpdated___block_invoke_2(uint64_t a1, int a2, xpc_object_t xuint)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:xpc_uint64_get_value(xuint)];
  [v3 addObject:v4];

  return 1;
}

uint64_t __41__CBCentralManager_handlePresetsUpdated___block_invoke_3(uint64_t a1, int a2, xpc_object_t xstring)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(xstring)];
  [v3 addObject:v4];

  return 1;
}

- (void)handleVolumeOffsetUpdated:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v10 = [[v4 alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioDeviceUUID")}];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v10];
  int64 = xpc_dictionary_get_int64(v5, "kCBMsgArgLEAudioVolumeOffset");

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:int64];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v8, @"kCBMsgArgLEAudioVolumeOffset", 0}];
  [v6 handleMsg:248 args:v9];
}

- (void)handleVolumeMuteUpdated:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v10 = [[v4 alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioDeviceUUID")}];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v10];
  uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgLEAudioVolumeMuteState");

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v8, @"kCBMsgArgLEAudioVolumeMuteState", 0}];
  [v6 handleMsg:249 args:v9];
}

- (void)handleVolumeInputGainUpdated:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v10 = [[v4 alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioDeviceUUID")}];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v10];
  int64 = xpc_dictionary_get_int64(v5, "kCBMsgArgLEAudioVolumeGain");

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:int64];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v8, @"kCBMsgArgLEAudioVolumeGain", 0}];
  [v6 handleMsg:250 args:v9];
}

- (void)handleMicrophoneMuteUpdated:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v10 = [[v4 alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioDeviceUUID")}];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v10];
  uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgLEAudioMicrophoneMuteState");

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v8, @"kCBMsgArgLEAudioMicrophoneMuteState", 0}];
  [v6 handleMsg:251 args:v9];
}

- (void)handleMicrophoneGainUpdated:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v10 = [[v4 alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioDeviceUUID")}];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v10];
  int64 = xpc_dictionary_get_int64(v5, "kCBMsgArgLEAudioMicrophoneGain");

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:int64];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v8, @"kCBMsgArgLEAudioMicrophoneGain", 0}];
  [v6 handleMsg:252 args:v9];
}

- (void)handleActivePresetUpdated:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v10 = [[v4 alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioDeviceUUID")}];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v10];
  uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgLEAudioPresetIndex");

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v8, @"kCBMsgArgLEAudioPresetIndex", 0}];
  [v6 handleMsg:253 args:v9];
}

- (void)handlePresetNameUpdated:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v10 = [[v4 alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioDeviceUUID")}];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v10];
  uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgLEAudioPresetIndex");

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v8, @"kCBMsgArgLEAudioPresetIndex", 0}];
  [v6 handleMsg:254 args:v9];
}

- (void)handleFeaturesUpdated:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v16 = [[v4 alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(v5, "kCBMsgArgLEAudioDeviceUUID")}];
  v6 = [(CBCentralManager *)self peripheralWithIdentifier:v16];
  uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgLEAudioHearingAidType");
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{xpc_dictionary_get_BOOL(v5, "kCBMsgArgLEAudioHearingAidSyncSupported")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{xpc_dictionary_get_BOOL(v5, "kCBMsgArgLEAudioHearingAidIndependent")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{xpc_dictionary_get_BOOL(v5, "kCBMsgArgLEAudioHearingAidDynamic")}];
  v11 = MEMORY[0x1E696AD98];
  v12 = xpc_dictionary_get_BOOL(v5, "kCBMsgArgLEAudioHearingAidWritable");

  v13 = [v11 numberWithBool:v12];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v14, @"kCBMsgArgLEAudioHearingAidType", v8, @"kCBMsgArgLEAudioHearingAidSyncSupported", v9, @"kCBMsgArgLEAudioHearingAidIndependent", v10, @"kCBMsgArgLEAudioHearingAidDynamic", v13, @"kCBMsgArgLEAudioHearingAidWritable", 0}];
  [v6 handleMsg:255 args:v15];
}

- (BOOL)isMsgAllowedAlways:(unsigned __int16)a3
{
  result = 1;
  if ((a3 - 10) >= 2 && a3 != 218)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = CBCentralManager;
    return [(CBManager *)&v7 isMsgAllowedAlways:?];
  }

  return result;
}

void __37__CBCentralManager_orphanPeripherals__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_1C0AC1000, v0, v1, "Orphaning %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithDelegate:queue:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v2 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:queue:options:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v2 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:queue:options:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)retrievePairingInfoForPeripheral:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)retrievePeripheralsWithIdentifiers:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"identifiers != nil" object:? file:? lineNumber:? description:?];
}

- (void)retrievePeripheralsWithIdentifiers:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"identifiers != nil" object:? file:? lineNumber:? description:?];
}

- (void)retrieveConnectionHandleWithIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)retrievePeripheralsWithTags:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"tags != nil" object:? file:? lineNumber:? description:?];
}

- (void)retrievePeripheralsWithCustomProperties:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"properties != nil" object:? file:? lineNumber:? description:?];
}

- (void)retrieveConnectedPeripheralsWithServices:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"serviceUUIDs != nil" object:? file:? lineNumber:? description:?];
}

- (void)connectPeripheral:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)enableMrc:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)retrieveWhbCBPeripheralWithInfo:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)activateWhbCnxForCBPeripheral:infoDict:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __59__CBCentralManager_activateWhbCnxForCBPeripheral_infoDict___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connectWhbCBPeripheral:withCompletion:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)randomizeAFHMapForPeripheral:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)setLeAFHMap:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"map != nil" object:? file:? lineNumber:? description:?];
}

- (void)setDataLengthChange:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)csReadRemoteSupportedCapabilities:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)csWriteCachedRemoteSupportedCapabilities:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)csSecurityEnable:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)csTest:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)csCreateConfig:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)csRemoveConfig:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)csProcedureEnable:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)csSetProcedureParams:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)setLESetPhy:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)setRSSIStatisticsDetection:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)setBluetoothUsageNotifications:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)setBluetoothPhyStatisticsNotifications:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)cancelPeripheralConnection:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)cancelPeripheralConnection:force:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)setDesiredConnectionLatency:forPeripheral:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)setDesiredConnectionLatency:forPeripheral:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)startTrackingPeripheral:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)stopTrackingPeripheral:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)retrieveAddressForPeripheral:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"peripheral != nil" object:? file:? lineNumber:? description:?];
}

- (void)handleRestoringState:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)handleApplicationConnectionEventDidOccur:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_1C0AC1000, v0, v1, "ConnectionEventDidOccur %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleScanFailedToStartWithError:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_1C0AC1000, v0, v1, "handleScanFailedToStartWithError %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)retrievePeripheralWithAddress:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handlePeerMTUChanged:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_1C0AC1000, v0, v1, "handlePeerMTUChanged %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleLEAudioXpcEvents:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleLEAudioXpcEvents:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleLEAudioMsg:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleMsg:args:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_1C0AC1000, v1, OS_LOG_TYPE_DEBUG, "%@ is not powered on, ignoring message: %u", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleMsg:args:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end