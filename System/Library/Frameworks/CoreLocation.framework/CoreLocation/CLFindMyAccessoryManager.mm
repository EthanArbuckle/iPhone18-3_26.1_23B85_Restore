@interface CLFindMyAccessoryManager
+ (id)checkAvailabilityForPairedOwnerInformationControlPointMessages:(id)a3 messageName:()basic_string<char;
+ (id)errorFromFragmentationStatus:(unint64_t)a3;
- (CLFindMyAccessoryManager)initWithDelegate:(id)a3 delegateQueue:(id)a4;
- (void)configureNBRangingOnDevice:(id)a3 withParams:(id)a4;
- (void)connectDevice:(id)a3;
- (void)dealloc;
- (void)deinitRangingOnDevice:(id)a3;
- (void)disconnectDevice:(id)a3;
- (void)dumpLogDataOfType:(unint64_t)a3 fromDevice:(id)a4;
- (void)fetchAISAccessoryCapabilities:(id)a3;
- (void)fetchAISAccessoryCategory:(id)a3;
- (void)fetchAISBatteryLevel:(id)a3;
- (void)fetchAISBatteryType:(id)a3;
- (void)fetchAISFirmwareVersion:(id)a3;
- (void)fetchAISForTAUnknownBeacon:(id)a3 macAddress:(id)a4 deviceType:(id)a5;
- (void)fetchAISManufacturerName:(id)a3;
- (void)fetchAISModelName:(id)a3;
- (void)fetchAISNetworkID:(id)a3;
- (void)fetchAISProductData:(id)a3;
- (void)fetchAISProtocolImplementation:(id)a3;
- (void)fetchAISSerialNumber:(id)a3;
- (void)fetchAccelerometerOrientationModeConfigurationForDevice:(id)a3;
- (void)fetchAccelerometerSlopeModeConfigurationForDevice:(id)a3;
- (void)fetchAccessoryInformationForDevice:(id)a3;
- (void)fetchBatteryStatusForDevice:(id)a3;
- (void)fetchConnectionStateForDevice:(id)a3;
- (void)fetchFindingCapabilities:(id)a3;
- (void)fetchFirmwareVersionFromDevice:(id)a3;
- (void)fetchHawkeyeAISAccessoryCapabilities:(id)a3;
- (void)fetchHawkeyeAISAccessoryCategory:(id)a3;
- (void)fetchHawkeyeAISBatteryType:(id)a3;
- (void)fetchHawkeyeAISFindMyVersion:(id)a3;
- (void)fetchHawkeyeAISManufacturerName:(id)a3;
- (void)fetchHawkeyeAISModelColorCode:(id)a3;
- (void)fetchHawkeyeAISModelName:(id)a3;
- (void)fetchHawkeyeAISProductData:(id)a3;
- (void)fetchHawkeyeCurrentPrimaryKey:(id)a3;
- (void)fetchHawkeyeSerialNumber:(id)a3;
- (void)fetchHawkeyeiCloudIdentifier:(id)a3;
- (void)fetchTxPower:(id)a3;
- (void)forceSurfaceStagedDetections:(id)a3 deviceType:(id)a4 detailsBitmask:(id)a5;
- (void)getMultiPartStatusFromDevice:(id)a3;
- (void)getMultiStatusFromDevice:(id)a3;
- (void)handleInterruption;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)a3;
- (void)induceCrashOnDevice:(id)a3;
- (void)initAccumulator;
- (void)initRangingOnDevice:(id)a3 macAddress:(id)a4;
- (void)prepareRangingOnDevice:(id)a3;
- (void)rollWildKeyOnDevice:(id)a3;
- (void)scanForHELE;
- (void)scanForNearbyDevicesLong;
- (void)scanForNearbyOwner;
- (void)sendMessage:(const char *)a3;
- (void)sendMessage:(const char *)a3 withPayload:(id)a4;
- (void)setAccelerometerOrientationModeConfiguration:(id)a3 forDevice:(id)a4;
- (void)setAccelerometerSlopeModeConfiguration:(id)a3 forDevice:(id)a4;
- (void)setBatteryStatus:(unint64_t)a3 forDevice:(id)a4;
- (void)setObfuscatedIdentifier:(id)a3 onDevice:(id)a4;
- (void)setWildConfiguration:(id)a3 onDevice:(id)a4;
- (void)stageTADetection:(id)a3 deviceType:(id)a4 detailsBitmask:(id)a5 shouldRemoveDevice:(id)a6;
- (void)startEventCounterForDevice:(id)a3;
- (void)startNBRangingOnDevice:(id)a3 withIRK:(id)a4;
- (void)startPlayingSoundSequence:(id)a3 onDevice:(id)a4;
- (void)startPlayingUnauthorizedSoundOnDevice:(id)a3;
- (void)startPlayingUnauthorizedSoundSequence:(id)a3 onDevice:(id)a4;
- (void)startUnauthorizedAggressiveAdvertisingOnDevice:(id)a3;
- (void)stopAggressiveAdvertisingOnDevice:(id)a3;
- (void)stopEventCounterForDevice:(id)a3;
- (void)stopPlayingSoundOnDevice:(id)a3;
- (void)stopPlayingUnauthorizedSoundOnDevice:(id)a3;
- (void)stopRangingOnDevice:(id)a3;
- (void)stopScanForNearbyDevicesLong;
- (void)unpairFromDevice:(id)a3;
- (void)unpairFromDeviceWithAddress:(id)a3;
@end

@implementation CLFindMyAccessoryManager

- (void)dealloc
{
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = CLFindMyAccessoryManager;
  [(CLFindMyAccessoryManager *)&v4 dealloc];
}

- (void)initAccumulator
{
  if (!self->_accumulator)
  {
    self->_accumulator = [[CLFindMyAccessoryFragmentAccumulator alloc] initWithMaxBytesPerUUID:100000];
  }
}

- (CLFindMyAccessoryManager)initWithDelegate:(id)a3 delegateQueue:(id)a4
{
  v9.receiver = self;
  v9.super_class = CLFindMyAccessoryManager;
  v6 = [(CLFindMyAccessoryManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, a3);
    if (a4)
    {
      v7->_delegateQueue = a4;
      dispatch_retain(a4);
    }

    else
    {
      v7->_delegateQueue = dispatch_queue_create("com.apple.DurianManagement.privateQueue", 0);
    }

    [(CLFindMyAccessoryManager *)v7 initAccumulator];
    operator new();
  }

  return 0;
}

+ (id)errorFromFragmentationStatus:(unint64_t)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    result = 0;
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A578];
    v7[0] = [CLFindMyAccessoryFragmentAccumulator convertDataStatusToString:?];
    result = [v4 errorWithDomain:@"kCLErrorDomainPrivate" code:26 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)checkAvailabilityForPairedOwnerInformationControlPointMessages:(id)a3 messageName:()basic_string<char
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_15;
  }

  if (!std::string::compare(a4, "DurianManagement/DidFetchHawkeyeSerialNumber"))
  {
    if ([a3 length] != 141 && objc_msgSend(a3, "length") != 145)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (std::string::compare(a4, "DurianManagement/DidFetchHawkeyeCurrentPrimaryKey"))
    {
      if (std::string::compare(a4, "DurianManagement/DidFetchHawkeyeiCloudIdentifier"))
      {
        goto LABEL_15;
      }

      if ([a3 length] == 60)
      {
        goto LABEL_11;
      }

LABEL_9:
      v6 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v16[0] = @"Invalid response length";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v8 = v6;
      v9 = 21;
LABEL_14:
      result = [v8 errorWithDomain:@"kCLErrorDomainPrivate" code:v9 userInfo:v7];
      goto LABEL_16;
    }

    if ([a3 length] != 28)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  result = [a3 length];
  if (result)
  {
    if ([a3 isEqual:{objc_msgSend(MEMORY[0x1E695DF88], "dataWithLength:", objc_msgSend(a3, "length"))}])
    {
      v11 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A578];
      v14 = @"Response unavailable";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v8 = v11;
      v9 = 22;
      goto LABEL_14;
    }

LABEL_15:
    result = 0;
  }

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)a3
{
  var0 = a3.var0;
  v198 = *MEMORY[0x1E69E9840];
  v173 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v170 = objc_opt_class();
  v12 = var0;
  v13 = [v173 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, v170, objc_opt_class(), 0}];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v13);
  v15 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E747E0];
  v16 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
  }

  v17 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    v18 = CLConnectionMessage::name(*v12);
    if (*(v18 + 23) >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = *v18;
    }

    *buf = 68289795;
    v183 = 0;
    v184 = 2082;
    v185 = "";
    v186 = 2082;
    *v187 = v19;
    *&v187[8] = 2113;
    *&v187[10] = v15;
    v188 = 2113;
    v189 = v16;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian handling message to client, message:%{public, location:escape_only}s, beaconUUID:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x30u);
  }

  v20 = CLConnectionMessage::name(*v12);
  if (std::string::compare(v20, "DurianManagement/DidReceiveDataFragment"))
  {
    v21 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v21, "DurianManagement/DidConnect"))
    {
      objc_loadWeak(&self->_delegate);
      v101 = objc_opt_respondsToSelector();
      Weak = objc_loadWeak(&self->_delegate);
      if (v101)
      {
        [Weak findMyAccessoryManager:self didConnectDevice:v15 error:v16];
      }

      else if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didConnectDevice:v15];
      }

      goto LABEL_251;
    }

    v22 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v22, "DurianManagement/DidDisconnect"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didDisconnectDevice:v15];
      }

      goto LABEL_251;
    }

    v23 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v23, "DurianManagement/DidFetchConnectionState"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchConnectionState:objc_msgSend(objc_msgSend(DictionaryOfClasses forDevice:{"objectForKey:", 0x1F0E74820), "unsignedIntegerValue"), v15}];
      }

      goto LABEL_251;
    }

    v24 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v24, "DurianManagement/DidStartPlayingSound"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didStartPlayingSoundOnDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v25 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v25, "DurianManagement/DidCompletePlayingSound"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didCompletePlayingSoundOnDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v26 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v26, "DurianManagement/DidStopPlayingSound"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didStopPlayingSoundOnDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v27 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v27, "DurianManagement/DidFetchFindingCapabilities"))
    {
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
      }

      v103 = qword_1EAFE4700;
      if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v183 = 0;
        v184 = 2082;
        v185 = "";
        v186 = 2114;
        *v187 = v15;
        _os_log_impl(&dword_19B873000, v103, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFindMyAccessoryFindingCapabilities didFetchFindingCapabilitiesOnDevice, device:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchFindingCapabilitiesOnDevice:v15 withFindingCapabilities:objc_msgSend(DictionaryOfClasses error:{"objectForKeyedSubscript:", 0x1F0E74B20), v16}];
      }

      goto LABEL_251;
    }

    v28 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v28, "DurianManagement/DidInitRanging"))
    {
      v104 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74C40), "unsignedIntValue"}];
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didInitRangingOnDevice:v15 withStatus:v104 error:v16];
      }

      goto LABEL_251;
    }

    v29 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v29, "DurianManagement/DidDeinitRanging"))
    {
      v105 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74C40), "unsignedIntValue"}];
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didDeinitRangingOnDevice:v15 withStatus:v105 error:v16];
      }

      goto LABEL_251;
    }

    v30 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v30, "DurianManagement/DidConfigureRanging"))
    {
      v106 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74C40), "unsignedIntValue"}];
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didConfigureRangingOnDevice:v15 withStatus:v106 error:v16];
      }

      goto LABEL_251;
    }

    v31 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v31, "DurianManagement/DidPrepareRanging"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didPrepareRangingOnDevice:v15 error:v16];
      }

      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didPrepareRangingOnDevice:v15 withConnInterval:objc_msgSend(DictionaryOfClasses error:{"objectForKeyedSubscript:", 0x1F0E74C00), v16}];
      }

      goto LABEL_251;
    }

    v32 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v32, "DurianManagement/DidStartRanging"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didStartRangingOnDevice:v15 error:v16];
      }

      goto LABEL_251;
    }

    v33 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v33, "DurianManagement/DidCompleteRanging"))
    {
      v107 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74C40), "unsignedIntValue"}];
      v108 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74C60), "unsignedShortValue"}];
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didCompleteRangingOnDevice:v15 withStatus:v107 endReason:v108 error:v16];
      }

      goto LABEL_251;
    }

    v34 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v34, "DurianManagement/DidReceiveRangingError"))
    {
      v109 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74C40), "unsignedIntValue"}];
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didReceiveRangingErrorFromDevice:v15 withStatus:v109];
      }

      goto LABEL_251;
    }

    v35 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v35, "DurianManagement/DidReceiveRangingTimestamps"))
    {
      v110 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74C80), "unsignedShortValue"}];
      v111 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74CA0), "unsignedLongLongValue"}];
      v112 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74CC0), "unsignedLongLongValue"}];
      v113 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74CE0), "unsignedShortValue"}];
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didReceiveRangingTimestampFromDevice:v15 status:v110 rtt:v111 tat:v112 cycleIndex:v113];
      }

      goto LABEL_251;
    }

    v36 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v36, "DurianManagement/DidHaveRangingMovement"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didHaveRangingMovementOnDevice:v15];
      }

      goto LABEL_251;
    }

    v37 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v37, "DurianManagement/DidFailRangingEventCounterAction"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFailWithError:v16 forDevice:v15];
      }

      goto LABEL_251;
    }

    v38 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v38, "DurianManagement/DidStartPlayingUnauthorizedSound"))
    {
      objc_loadWeak(&self->_delegate);
      v114 = objc_opt_respondsToSelector();
      v115 = objc_loadWeak(&self->_delegate);
      if (v114)
      {
        [v115 findMyAccessoryManager:self didStartPlayingUnauthorizedSoundOnDevice:v15 withError:v16];
      }

      else if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didPlayUnauthorizedSoundOnDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v39 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v39, "DurianManagement/DidCompletePlayingUnauthorizedSound"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didCompletePlayingUnauthorizedSoundOnDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v40 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v40, "DurianManagement/DidStopPlayingUnauthorizedSound"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didStopPlayingUnauthorizedSoundOnDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v41 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v41, "DurianManagement/DidReceiveKeyRollIndex"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didReceiveKeyRollIndex:objc_msgSend(objc_msgSend(DictionaryOfClasses fromDevice:"objectForKey:" withError:{0x1F0E74AE0), "unsignedIntegerValue"), v15, 0}];
      }

      goto LABEL_251;
    }

    v42 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v42, "DurianManagement/DidGetMultiStatus"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didGetMultiStatus:objc_msgSend(objc_msgSend(DictionaryOfClasses fromDevice:"objectForKey:" withError:{0x1F0E749C0), "unsignedIntegerValue"), v15, v16}];
      }

      goto LABEL_251;
    }

    v43 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v43, "DurianManagement/DidReceiveGroupStatus"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didReceiveGroupRelationStatus:objc_msgSend(objc_msgSend(DictionaryOfClasses maintenanceStatus:"objectForKey:" fromDevice:0x1F0E749E0) withError:{"unsignedIntegerValue"), objc_msgSend(objc_msgSend(DictionaryOfClasses, "objectForKey:", 0x1F0E74A00), "unsignedIntegerValue"), v15, 0}];
      }

      goto LABEL_251;
    }

    v44 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v44, "DurianManagement/DidFetchBatteryStatus"))
    {
      v116 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E748C0), "unsignedLongValue"}];
      objc_loadWeak(&self->_delegate);
      v117 = objc_opt_respondsToSelector();
      v118 = objc_loadWeak(&self->_delegate);
      if (v117)
      {
        [v118 findMyAccessoryManager:self didFetchBatteryStatus:v116 forDevice:v15 withError:v16];
      }

      else if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchBatteryStatus:v116 forDevice:v15];
      }

      goto LABEL_251;
    }

    v45 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v45, "DurianManagement/DidDetectCrash"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didDetectCrashOnDevice:v15];
      }

      goto LABEL_251;
    }

    v46 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v46, "DurianManagement/DidDumpLogs"))
    {
      v119 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74880), "unsignedLongValue"}];
      v120 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74860];
      if (v119 == 4)
      {
        -[CLFindMyAccessoryFragmentAccumulator appendData:forUUID:](self->_accumulator, "appendData:forUUID:", [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74860], v15);
        v121 = [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator getDataStatusForUUID:v15];
        if (!v16)
        {
          v16 = [CLFindMyAccessoryManager errorFromFragmentationStatus:v121];
        }

        v120 = [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator dataForUUID:v15];
      }

      v122 = v120;
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didDumpLogData:v122 ofType:v119 fromDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v47 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v47, "DurianManagement/DidUnpair"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didUnpairFromDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v48 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v48, "DurianManagement/DidSetTagType"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didSetDeviceTypeOnDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v49 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v49, "DurianManagement/DidSetObfuscatedIdentifier"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didSetObfuscatedIdentifierOnDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v50 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v50, "DurianManagement/DidSetNearOwnerTimeout"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didSetNearOwnerTimeoutOnDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v51 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v51, "DurianManagement/DidSetWildConfiguration"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didSetWildConfigurationOnDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v52 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v52, "DurianManagement/DidFetchUserStats_Deprecated"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchUserStats:objc_msgSend(DictionaryOfClasses fromDevice:"objectForKeyedSubscript:" withError:{0x1F0E74A20), v15, v16}];
      }

      goto LABEL_251;
    }

    v53 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v53, "DurianManagement/DidFetchUserStats"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchUserStats:objc_msgSend(DictionaryOfClasses forDevice:"objectForKeyedSubscript:" withError:{0x1F0E74A20), v15, v16}];
      }

      goto LABEL_251;
    }

    v54 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v54, "DurianManagement/DidRollWildKey"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didRollWildKeyOnDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v55 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v55, "DurianManagement/DidSetAccelerometerSlopeMode"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didSetAccelerometerSlopeModeConfigurationForDevice:v15 withError:v16];
      }

      goto LABEL_251;
    }

    v56 = CLConnectionMessage::name(*v12);
    if (!std::string::compare(v56, "DurianManagement/DidSetAccelerometerOrientationMode"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
LABEL_190:
        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didSetAccelerometerOrientationModeConfigurationForDevice:v15 withError:v16];
      }
    }

    else
    {
      v57 = CLConnectionMessage::name(*v12);
      if (std::string::compare(v57, "DurianManagement/DidGetAccelerometerSlopeModeConfiguration"))
      {
        v58 = CLConnectionMessage::name(*v12);
        if (!std::string::compare(v58, "DurianManagement/DidGetAccelerometerMode"))
        {
          v123 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74AA0), "unsignedIntValue"}];
          objc_loadWeak(&self->_delegate);
          if (objc_opt_respondsToSelector())
          {
            [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAccelerometerMode:v123 forDevice:v15 withError:v16];
          }
        }

        else
        {
          v59 = CLConnectionMessage::name(*v12);
          if (!std::string::compare(v59, "DurianManagement/DidSetUnauthorizedPlaySoundRateLimit"))
          {
            objc_loadWeak(&self->_delegate);
            if (objc_opt_respondsToSelector())
            {
              [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didSetUnauthorizedPlaySoundRateLimitFromDevice:v15 withError:v16];
            }
          }

          else
          {
            v60 = CLConnectionMessage::name(*v12);
            if (!std::string::compare(v60, "DurianManagement/DidFetchFirmwareVersion"))
            {
              v124 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E748A0];
              objc_loadWeak(&self->_delegate);
              if (objc_opt_respondsToSelector())
              {
                [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchFirmwareVersion:v124 fromDevice:v15 withError:v16];
              }
            }

            else
            {
              v61 = CLConnectionMessage::name(*v12);
              if (!std::string::compare(v61, "DurianManagement/DidCompleteHawkeyeTask"))
              {
                v125 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74D20), "intValue"}];
                objc_loadWeak(&self->_delegate);
                if (objc_opt_respondsToSelector())
                {
                  [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didCompleteHawkeyeTaskWithOpcode:v125 fromDevice:v15 withError:v16];
                }
              }

              else
              {
                v62 = CLConnectionMessage::name(*v12);
                if (!std::string::compare(v62, "DurianManagement/DidSetHawkeyeUTMotionConfig"))
                {
                  objc_loadWeak(&self->_delegate);
                  if (objc_opt_respondsToSelector())
                  {
                    [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didSetHawkeyeUTMotionConfigForDevice:v15 withError:v16];
                  }
                }

                else
                {
                  v63 = CLConnectionMessage::name(*v12);
                  if (!std::string::compare(v63, "DurianManagement/DidFetchTxPower"))
                  {
                    objc_loadWeak(&self->_delegate);
                    if (objc_opt_respondsToSelector())
                    {
                      [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchTxPower:objc_msgSend(DictionaryOfClasses fromDevice:"objectForKeyedSubscript:" withError:{0x1F0E74DA0), v15, v16}];
                    }
                  }

                  else
                  {
                    v64 = CLConnectionMessage::name(*v12);
                    if (!std::string::compare(v64, "DurianManagement/DidStartAggressiveAdvertising"))
                    {
                      objc_loadWeak(&self->_delegate);
                      if (objc_opt_respondsToSelector())
                      {
                        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didStartAggressiveAdvertisingOnDevice:v15 withError:v16];
                      }
                    }

                    else
                    {
                      v65 = CLConnectionMessage::name(*v12);
                      if (!std::string::compare(v65, "DurianManagement/DidStopAggressiveAdvertising"))
                      {
                        objc_loadWeak(&self->_delegate);
                        if (objc_opt_respondsToSelector())
                        {
                          [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didStopAggressiveAdvertisingOnDevice:v15 withError:v16];
                        }
                      }

                      else
                      {
                        v66 = CLConnectionMessage::name(*v12);
                        if (!std::string::compare(v66, "DurianManagement/DidCompleteAggressiveAdvertising"))
                        {
                          objc_loadWeak(&self->_delegate);
                          if (objc_opt_respondsToSelector())
                          {
                            [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didCompleteAggressiveAdvertisingOnDevice:v15 withError:v16];
                          }
                        }

                        else
                        {
                          v67 = CLConnectionMessage::name(*v12);
                          if (!std::string::compare(v67, "DurianManagement/DidStartUnauthorizedAggressiveAdvertising"))
                          {
                            objc_loadWeak(&self->_delegate);
                            if (objc_opt_respondsToSelector())
                            {
                              [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didStartUnauthorizedAggressiveAdvertisingOnDevice:v15 withError:v16];
                            }
                          }

                          else
                          {
                            v68 = CLConnectionMessage::name(*v12);
                            if (!std::string::compare(v68, "DurianManagement/DidFetchHawkeyeAISProductData"))
                            {
                              v126 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74DC0];
                              objc_loadWeak(&self->_delegate);
                              if (objc_opt_respondsToSelector())
                              {
                                [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchHawkeyeAISProductData:v126 fromDevice:v15 withError:v16];
                              }
                            }

                            else
                            {
                              v69 = CLConnectionMessage::name(*v12);
                              if (!std::string::compare(v69, "DurianManagement/DidFetchHawkeyeAISManufacturerName"))
                              {
                                v127 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74DE0];
                                objc_loadWeak(&self->_delegate);
                                if (objc_opt_respondsToSelector())
                                {
                                  [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchHawkeyeAISManufacturerName:v127 fromDevice:v15 withError:v16];
                                }
                              }

                              else
                              {
                                v70 = CLConnectionMessage::name(*v12);
                                if (!std::string::compare(v70, "DurianManagement/DidFetchHawkeyeAISModelName"))
                                {
                                  v128 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74E00];
                                  objc_loadWeak(&self->_delegate);
                                  if (objc_opt_respondsToSelector())
                                  {
                                    [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchHawkeyeAISModelName:v128 fromDevice:v15 withError:v16];
                                  }
                                }

                                else
                                {
                                  v71 = CLConnectionMessage::name(*v12);
                                  if (!std::string::compare(v71, "DurianManagement/DidFetchHawkeyeAISModelColorCode"))
                                  {
                                    v129 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74E20];
                                    objc_loadWeak(&self->_delegate);
                                    if (objc_opt_respondsToSelector())
                                    {
                                      [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchHawkeyeAISModelColorCode:v129 fromDevice:v15 withError:v16];
                                    }
                                  }

                                  else
                                  {
                                    v72 = CLConnectionMessage::name(*v12);
                                    if (!std::string::compare(v72, "DurianManagement/DidFetchHawkeyeAISAccessoryCategory"))
                                    {
                                      v130 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74E40];
                                      objc_loadWeak(&self->_delegate);
                                      if (objc_opt_respondsToSelector())
                                      {
                                        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchHawkeyeAISAccessoryCategory:v130 fromDevice:v15 withError:v16];
                                      }
                                    }

                                    else
                                    {
                                      v73 = CLConnectionMessage::name(*v12);
                                      if (!std::string::compare(v73, "DurianManagement/DidFetchHawkeyeAISAccessoryCapabilities"))
                                      {
                                        v131 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74E60];
                                        objc_loadWeak(&self->_delegate);
                                        if (objc_opt_respondsToSelector())
                                        {
                                          [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchHawkeyeAISAccessoryCapabilities:v131 fromDevice:v15 withError:v16];
                                        }
                                      }

                                      else
                                      {
                                        v74 = CLConnectionMessage::name(*v12);
                                        if (!std::string::compare(v74, "DurianManagement/DidFetchHawkeyeAISFindMyVersion"))
                                        {
                                          v132 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74E80), "unsignedIntegerValue"}];
                                          objc_loadWeak(&self->_delegate);
                                          if (objc_opt_respondsToSelector())
                                          {
                                            [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchHawkeyeAISFindMyVersion:v132 fromDevice:v15 withError:v16];
                                          }
                                        }

                                        else
                                        {
                                          v75 = CLConnectionMessage::name(*v12);
                                          if (!std::string::compare(v75, "DurianManagement/DidFetchHawkeyeAISBatteryType"))
                                          {
                                            v133 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74EA0];
                                            objc_loadWeak(&self->_delegate);
                                            if (objc_opt_respondsToSelector())
                                            {
                                              [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchHawkeyeAISBatteryType:v133 fromDevice:v15 withError:v16];
                                            }
                                          }

                                          else
                                          {
                                            v76 = CLConnectionMessage::name(*v12);
                                            if (!std::string::compare(v76, "DurianManagement/DidFetchHawkeyeSerialNumber"))
                                            {
                                              -[CLFindMyAccessoryFragmentAccumulator appendData:forUUID:](self->_accumulator, "appendData:forUUID:", [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74EC0], v15);
                                              v134 = [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator getDataStatusForUUID:v15];
                                              if (v16)
                                              {
                                                v135 = [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator dataForUUID:v15];
                                              }

                                              else
                                              {
                                                v16 = [CLFindMyAccessoryManager errorFromFragmentationStatus:v134];
                                                v135 = [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator dataForUUID:v15];
                                                if (!v16)
                                                {
                                                  v138 = CLConnectionMessage::name(*v12);
                                                  if (*(v138 + 23) < 0)
                                                  {
                                                    sub_19B874C9C(__p, *v138, *(v138 + 8));
                                                  }

                                                  else
                                                  {
                                                    v139 = *v138;
                                                    v181 = *(v138 + 16);
                                                    *__p = v139;
                                                  }

                                                  v16 = [CLFindMyAccessoryManager checkAvailabilityForPairedOwnerInformationControlPointMessages:v135 messageName:__p];
                                                  if (SHIBYTE(v181) < 0)
                                                  {
                                                    operator delete(__p[0]);
                                                  }
                                                }
                                              }

                                              objc_loadWeak(&self->_delegate);
                                              if (objc_opt_respondsToSelector())
                                              {
                                                [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchHawkeyeSerialNumber:v135 fromDevice:v15 withError:v16];
                                              }
                                            }

                                            else
                                            {
                                              v77 = CLConnectionMessage::name(*v12);
                                              if (!std::string::compare(v77, "DurianManagement/DidFetchAISProductData"))
                                              {
                                                v136 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E75160];
                                                objc_loadWeak(&self->_delegate);
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAISProductData:v136 fromDevice:v15 error:v16];
                                                }
                                              }

                                              else
                                              {
                                                v78 = CLConnectionMessage::name(*v12);
                                                if (!std::string::compare(v78, "DurianManagement/DidFetchAISManufacturerName"))
                                                {
                                                  v137 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E75180];
                                                  objc_loadWeak(&self->_delegate);
                                                  if (objc_opt_respondsToSelector())
                                                  {
                                                    [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAISManufacturerName:v137 fromDevice:v15 error:v16];
                                                  }
                                                }

                                                else
                                                {
                                                  v79 = CLConnectionMessage::name(*v12);
                                                  if (!std::string::compare(v79, "DurianManagement/DidFetchAISModelName"))
                                                  {
                                                    v140 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E751A0];
                                                    objc_loadWeak(&self->_delegate);
                                                    if (objc_opt_respondsToSelector())
                                                    {
                                                      [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAISModelName:v140 fromDevice:v15 error:v16];
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v80 = CLConnectionMessage::name(*v12);
                                                    if (!std::string::compare(v80, "DurianManagement/DidFetchAISProtocolImplementation"))
                                                    {
                                                      v141 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E751E0), "unsignedIntValue"}];
                                                      objc_loadWeak(&self->_delegate);
                                                      if (objc_opt_respondsToSelector())
                                                      {
                                                        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAISProtocolImplementation:v141 fromDevice:v15 error:v16];
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v81 = CLConnectionMessage::name(*v12);
                                                      if (!std::string::compare(v81, "DurianManagement/DidFetchAISAccessoryCategory"))
                                                      {
                                                        v142 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E751C0), "unsignedShortValue"}];
                                                        objc_loadWeak(&self->_delegate);
                                                        if (objc_opt_respondsToSelector())
                                                        {
                                                          [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAISAccessoryCategory:v142 fromDevice:v15 error:v16];
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v82 = CLConnectionMessage::name(*v12);
                                                        if (!std::string::compare(v82, "DurianManagement/DidFetchAISAccessoryCapabilities"))
                                                        {
                                                          v143 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E75200];
                                                          objc_loadWeak(&self->_delegate);
                                                          if (objc_opt_respondsToSelector())
                                                          {
                                                            [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAISAccessoryCapabilities:v143 fromDevice:v15 error:v16];
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v83 = CLConnectionMessage::name(*v12);
                                                          if (!std::string::compare(v83, "DurianManagement/DidFetchAISNetworkID"))
                                                          {
                                                            v146 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E75220), "unsignedShortValue"}];
                                                            objc_loadWeak(&self->_delegate);
                                                            if (objc_opt_respondsToSelector())
                                                            {
                                                              [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAISNetworkID:v146 fromDevice:v15 error:v16];
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v84 = CLConnectionMessage::name(*v12);
                                                            if (!std::string::compare(v84, "DurianManagement/DidFetchAISFirmwareVersion"))
                                                            {
                                                              v147 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E75240];
                                                              objc_loadWeak(&self->_delegate);
                                                              if (objc_opt_respondsToSelector())
                                                              {
                                                                [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAISFirmwareVersion:v147 fromDevice:v15 error:v16];
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v85 = CLConnectionMessage::name(*v12);
                                                              if (!std::string::compare(v85, "DurianManagement/DidFetchAISBatteryType"))
                                                              {
                                                                v148 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E75260), "unsignedShortValue"}];
                                                                objc_loadWeak(&self->_delegate);
                                                                if (objc_opt_respondsToSelector())
                                                                {
                                                                  [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAISBatteryType:v148 fromDevice:v15 error:v16];
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v86 = CLConnectionMessage::name(*v12);
                                                                if (!std::string::compare(v86, "DurianManagement/DidFetchAISBatteryLevel"))
                                                                {
                                                                  v149 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E75280), "unsignedShortValue"}];
                                                                  objc_loadWeak(&self->_delegate);
                                                                  if (objc_opt_respondsToSelector())
                                                                  {
                                                                    [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAISBatteryLevel:v149 fromDevice:v15 error:v16];
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v87 = CLConnectionMessage::name(*v12);
                                                                  if (!std::string::compare(v87, "DurianManagement/DidFetchAISSerialNumber"))
                                                                  {
                                                                    v150 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E752A0];
                                                                    objc_loadWeak(&self->_delegate);
                                                                    if (objc_opt_respondsToSelector())
                                                                    {
                                                                      [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAISSerialNumber:v150 fromDevice:v15 error:v16];
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v88 = CLConnectionMessage::name(*v12);
                                                                    if (!std::string::compare(v88, "DurianManagement/DidFetchHawkeyeCurrentPrimaryKey"))
                                                                    {
                                                                      -[CLFindMyAccessoryFragmentAccumulator appendData:forUUID:](self->_accumulator, "appendData:forUUID:", [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74EE0], v15);
                                                                      v151 = [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator getDataStatusForUUID:v15];
                                                                      if (v16)
                                                                      {
                                                                        v152 = [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator dataForUUID:v15];
                                                                      }

                                                                      else
                                                                      {
                                                                        v16 = [CLFindMyAccessoryManager errorFromFragmentationStatus:v151];
                                                                        v152 = [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator dataForUUID:v15];
                                                                        if (!v16)
                                                                        {
                                                                          v161 = CLConnectionMessage::name(*v12);
                                                                          if (*(v161 + 23) < 0)
                                                                          {
                                                                            sub_19B874C9C(__dst, *v161, *(v161 + 8));
                                                                          }

                                                                          else
                                                                          {
                                                                            v162 = *v161;
                                                                            v179 = *(v161 + 16);
                                                                            *__dst = v162;
                                                                          }

                                                                          v16 = [CLFindMyAccessoryManager checkAvailabilityForPairedOwnerInformationControlPointMessages:v152 messageName:__dst];
                                                                          if (SHIBYTE(v179) < 0)
                                                                          {
                                                                            operator delete(__dst[0]);
                                                                          }
                                                                        }
                                                                      }

                                                                      objc_loadWeak(&self->_delegate);
                                                                      if (objc_opt_respondsToSelector())
                                                                      {
                                                                        [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchHawkeyeCurrentPrimaryKey:v152 fromDevice:v15 withError:v16];
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v89 = CLConnectionMessage::name(*v12);
                                                                      if (!std::string::compare(v89, "DurianManagement/DidFetchHawkeyeiCloudIdentifier"))
                                                                      {
                                                                        -[CLFindMyAccessoryFragmentAccumulator appendData:forUUID:](self->_accumulator, "appendData:forUUID:", [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74F00], v15);
                                                                        v153 = [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator getDataStatusForUUID:v15];
                                                                        if (v16)
                                                                        {
                                                                          v154 = [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator dataForUUID:v15];
                                                                        }

                                                                        else
                                                                        {
                                                                          v16 = [CLFindMyAccessoryManager errorFromFragmentationStatus:v153];
                                                                          v154 = [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator dataForUUID:v15];
                                                                          if (!v16)
                                                                          {
                                                                            v165 = CLConnectionMessage::name(*v12);
                                                                            if (*(v165 + 23) < 0)
                                                                            {
                                                                              sub_19B874C9C(v176, *v165, *(v165 + 8));
                                                                            }

                                                                            else
                                                                            {
                                                                              v166 = *v165;
                                                                              v177 = *(v165 + 16);
                                                                              *v176 = v166;
                                                                            }

                                                                            v16 = [CLFindMyAccessoryManager checkAvailabilityForPairedOwnerInformationControlPointMessages:v154 messageName:v176];
                                                                            if (SHIBYTE(v177) < 0)
                                                                            {
                                                                              operator delete(v176[0]);
                                                                            }
                                                                          }
                                                                        }

                                                                        objc_loadWeak(&self->_delegate);
                                                                        if (objc_opt_respondsToSelector())
                                                                        {
                                                                          [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchHawkeyeiCloudIdentifier:v154 fromDevice:v15 withError:v16];
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v90 = CLConnectionMessage::name(*v12);
                                                                        if (!std::string::compare(v90, "DurianManagement/DidObserveAdvertisement"))
                                                                        {
                                                                          v174 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E75020];
                                                                          v172 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E75040];
                                                                          v171 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E75060];
                                                                          v155 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E750C0];
                                                                          v156 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E75080), "unsignedIntegerValue"}];
                                                                          v157 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E750A0), "integerValue"}];
                                                                          v158 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E75100), "unsignedIntegerValue"}];
                                                                          v159 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E750E0), "unsignedIntegerValue"}];
                                                                          if (qword_1EAFE46C8 != -1)
                                                                          {
                                                                            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
                                                                          }

                                                                          v160 = qword_1EAFE4700;
                                                                          if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
                                                                          {
                                                                            *buf = 68290819;
                                                                            v183 = 0;
                                                                            v184 = 2082;
                                                                            v185 = "";
                                                                            v186 = 2113;
                                                                            *v187 = v15;
                                                                            *&v187[8] = 2113;
                                                                            *&v187[10] = v172;
                                                                            v188 = 2113;
                                                                            v189 = v171;
                                                                            v190 = 2113;
                                                                            v191 = v174;
                                                                            v192 = 1025;
                                                                            v193 = v156;
                                                                            v194 = 2049;
                                                                            v195 = v157;
                                                                            v196 = 2113;
                                                                            v197 = v155;
                                                                            _os_log_impl(&dword_19B873000, v160, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian #client client received advertisement, uuid:%{private, location:escape_only}@, address:%{private, location:escape_only}@, advertisementData:%{private, location:escape_only}@, scanDate:%{private, location:escape_only}@, status:%{private}u, rssi:%{private}ld, reserved:%{private, location:escape_only}@}", buf, 0x54u);
                                                                          }

                                                                          objc_loadWeak(&self->_delegate);
                                                                          if (objc_opt_respondsToSelector())
                                                                          {
                                                                            [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didObserveAdvertisementWithDate:v174 address:v172 advertisementData:v171 status:v156 rssi:v157 reserved:v155 uuid:v15 ownershipType:v159 channel:v158];
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v91 = CLConnectionMessage::name(*v12);
                                                                          if (!std::string::compare(v91, "DurianManagement/DidFetchStatusOfUTEnablementRequirements"))
                                                                          {
                                                                            v163 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E75140];
                                                                            if (qword_1EAFE46C8 != -1)
                                                                            {
                                                                              dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
                                                                            }

                                                                            v164 = qword_1EAFE4700;
                                                                            if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
                                                                            {
                                                                              *buf = 68289026;
                                                                              v183 = 0;
                                                                              v184 = 2082;
                                                                              v185 = "";
                                                                              _os_log_impl(&dword_19B873000, v164, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:didFetchStatusOfUTEnablementRequirements}", buf, 0x12u);
                                                                            }

                                                                            objc_loadWeak(&self->_delegate);
                                                                            if (objc_opt_respondsToSelector())
                                                                            {
                                                                              [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchStatusOfUTEnablementRequirementsWithStatus:v163 withError:v16];
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v92 = CLConnectionMessage::name(*v12);
                                                                            if (!std::string::compare(v92, "DurianManagement/DidFetchAccessoryInformation"))
                                                                            {
                                                                              v167 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E750E0), "unsignedIntegerValue"}];
                                                                              v168 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E752C0), "unsignedIntegerValue"}];
                                                                              v169 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E752E0];
                                                                              objc_loadWeak(&self->_delegate);
                                                                              if (objc_opt_respondsToSelector())
                                                                              {
                                                                                [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFetchAccessoryInformationForDevice:v15 ownershipType:v167 communicationProtocol:v168 accessoryTypeName:v169 error:v16];
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              if (qword_1EAFE46C8 != -1)
                                                                              {
                                                                                dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
                                                                              }

                                                                              v93 = qword_1EAFE4700;
                                                                              if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
                                                                              {
                                                                                *buf = 0;
                                                                                _os_log_impl(&dword_19B873000, v93, OS_LOG_TYPE_ERROR, "#durian Got a message we do not understand... dropping!", buf, 2u);
                                                                              }

                                                                              v94 = sub_19B87DD40();
                                                                              if ((*(v94 + 160) & 0x80000000) == 0 || (*(v94 + 164) & 0x80000000) == 0 || (*(v94 + 168) & 0x80000000) == 0 || *(v94 + 152))
                                                                              {
                                                                                bzero(buf, 0x65CuLL);
                                                                                if (qword_1EAFE46C8 != -1)
                                                                                {
                                                                                  dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
                                                                                }

                                                                                v95 = _os_log_send_and_compose_impl();
                                                                                sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryManager handleMessage:]", "CoreLocation: %s\n", v95);
                                                                                if (v95 != buf)
                                                                                {
                                                                                  free(v95);
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_251;
      }

      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        goto LABEL_190;
      }
    }

LABEL_251:
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
    }

    v144 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289283;
      v183 = 0;
      v184 = 2082;
      v185 = "";
      v186 = 2113;
      *v187 = v15;
      _os_log_impl(&dword_19B873000, v144, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian #hawkeye clearing fragments from accumulator, uuid:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    [(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator clearForUUID:v15];
    goto LABEL_256;
  }

  v96 = [DictionaryOfClasses objectForKeyedSubscript:0x1F0E74F20];
  v97 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E74D20), "unsignedIntValue"}];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
  }

  v98 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    v183 = 0;
    v184 = 2082;
    v185 = "";
    v186 = 1025;
    *v187 = v97;
    *&v187[4] = 2113;
    *&v187[6] = v96;
    _os_log_impl(&dword_19B873000, v98, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #hawkeye got fragment, opcode:%{private}u, dataFragment:%{private, location:escape_only}@}", buf, 0x22u);
  }

  if (![(CLFindMyAccessoryFragmentAccumulator *)self->_accumulator appendData:v96 forUUID:v15])
  {
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
    }

    v99 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289539;
      v183 = 0;
      v184 = 2082;
      v185 = "";
      v186 = 1025;
      *v187 = v97;
      *&v187[4] = 2113;
      *&v187[6] = v96;
      _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #hawkeye error appending fragment, opcode:%{private}u, dataFragment:%{private, location:escape_only}@}", buf, 0x22u);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
      }
    }

    v100 = qword_1EAFE4700;
    if (os_signpost_enabled(qword_1EAFE4700))
    {
      *buf = 68289539;
      v183 = 0;
      v184 = 2082;
      v185 = "";
      v186 = 1025;
      *v187 = v97;
      *&v187[4] = 2113;
      *&v187[6] = v96;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v100, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian #hawkeye error appending fragment", "{msg%{public}.0s:#durian #hawkeye error appending fragment, opcode:%{private}u, dataFragment:%{private, location:escape_only}@}", buf, 0x22u);
    }
  }

LABEL_256:
  v145 = *MEMORY[0x1E69E9840];
}

- (void)handleInterruption
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
  }

  v3 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Connection to locationd interrupted!!", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryManager handleInterruption]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = *MEMORY[0x1E696A578];
  v10 = @"Connection to locationd interrupted!";
  v7 = [v6 initWithDomain:@"kCLErrorDomainPrivate" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1)}];
  [objc_loadWeak(&self->_delegate) findMyAccessoryManager:self didFailWithError:v7 forDevice:0];

  self->_accumulator = [[CLFindMyAccessoryFragmentAccumulator alloc] initWithMaxBytesPerUUID:100000];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(const char *)a3 withPayload:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a4 objectForKey:0x1F0E747E0];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
  }

  v7 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    v9[0] = 2082;
    *&v9[1] = "";
    v9[5] = 2082;
    v10 = a3;
    v11 = 2082;
    v12 = [objc_msgSend(v6 "UUIDString")];
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian client sending message, messageName:%{public, location:escape_only}s, beaconUUID:%{public, location:escape_only}s}", buf, 0x26u);
  }

  sub_19B87C844();
}

- (void)sendMessage:(const char *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
  }

  v4 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = a3;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian client sending message, messageName:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  operator new();
}

- (void)connectDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/Connect", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)disconnectDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/Disconnect", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchConnectionStateForDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchConnectionState", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startPlayingSoundSequence:(id)a3 onDevice:(id)a4
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = 0x1F0E747E0;
  v9[1] = 0x1F0E74940;
  v10[0] = a4;
  v10[1] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/StartSoundSequence", [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2]);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startPlayingUnauthorizedSoundOnDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/StartUnauthorizedSound", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startPlayingUnauthorizedSoundSequence:(id)a3 onDevice:(id)a4
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v8[0] = 0x1F0E747E0;
  v8[1] = 0x1F0E74940;
  v9[0] = a4;
  v9[1] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/StartUnauthorizedSound", [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2]);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)stopPlayingSoundOnDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/StopSound", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopPlayingUnauthorizedSoundOnDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/StopUnauthorizedSound", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getMultiStatusFromDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/GetMultiStatus", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getMultiPartStatusFromDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/GetMultiPartStatus", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)dumpLogDataOfType:(unint64_t)a3 fromDevice:(id)a4
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v8[0] = 0x1F0E747E0;
  v8[1] = 0x1F0E74880;
  v9[0] = a4;
  v9[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/DumpLogs", [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2]);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)induceCrashOnDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/InduceCrash", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)unpairFromDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/Unpair", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)unpairFromDeviceWithAddress:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E74800;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/Unpair", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setObfuscatedIdentifier:(id)a3 onDevice:(id)a4
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v8[0] = 0x1F0E747E0;
  v8[1] = 0x1F0E74900;
  v9[0] = a4;
  v9[1] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/SetObfuscatedIdentifier", [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2]);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setWildConfiguration:(id)a3 onDevice:(id)a4
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = 0x1F0E747E0;
  v9[1] = 0x1F0E749A0;
  v10[0] = a4;
  v10[1] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/SetWildConfiguration", [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2]);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)rollWildKeyOnDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/RollWildKey", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setBatteryStatus:(unint64_t)a3 forDevice:(id)a4
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v8[0] = 0x1F0E747E0;
  v8[1] = 0x1F0E748C0;
  v9[0] = a4;
  v9[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/SetBatteryStatus", [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2]);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchBatteryStatusForDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchBatteryStatus", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)scanForNearbyOwner
{
  v3 = *MEMORY[0x1E69E9840];
  *buf = MEMORY[0x1E695E0F8];
  sub_19B87B83C();
}

- (void)scanForHELE
{
  v3 = *MEMORY[0x1E69E9840];
  *buf = MEMORY[0x1E695E0F8];
  sub_19B87B83C();
}

- (void)scanForNearbyDevicesLong
{
  v3 = *MEMORY[0x1E69E9840];
  *buf = MEMORY[0x1E695E0F8];
  sub_19B87B83C();
}

- (void)stopScanForNearbyDevicesLong
{
  v3 = *MEMORY[0x1E69E9840];
  *buf = MEMORY[0x1E695E0F8];
  sub_19B87B83C();
}

- (void)setAccelerometerSlopeModeConfiguration:(id)a3 forDevice:(id)a4
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = 0x1F0E747E0;
  v9[1] = 0x1F0E74A60;
  v10[0] = a4;
  v10[1] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/SetAccelerometerSlopeMode", [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2]);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchAccelerometerSlopeModeConfigurationForDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/GetAccelerometerSlopeModeConfiguration", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setAccelerometerOrientationModeConfiguration:(id)a3 forDevice:(id)a4
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = 0x1F0E747E0;
  v9[1] = 0x1F0E74A80;
  v10[0] = a4;
  v10[1] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/SetAccelerometerOrientationMode", [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2]);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchAccelerometerOrientationModeConfigurationForDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/GetAccelerometerOrientationModeConfiguration", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchFirmwareVersionFromDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchFirmwareVersion", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchTxPower:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchTxPower", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopAggressiveAdvertisingOnDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/StopAggressiveAdvertising", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startUnauthorizedAggressiveAdvertisingOnDevice:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/StartUnauthorizedAggressiveAdvertising", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchHawkeyeAISProductData:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchHawkeyeAISProductData", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchHawkeyeAISManufacturerName:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchHawkeyeAISManufacturerName", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchHawkeyeAISModelName:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchHawkeyeAISModelName", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchHawkeyeAISModelColorCode:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchHawkeyeAISModelColorCode", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchHawkeyeAISAccessoryCategory:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchHawkeyeAISAccessoryCategory", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchHawkeyeAISAccessoryCapabilities:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchHawkeyeAISAccessoryCapabilities", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchHawkeyeAISFindMyVersion:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchHawkeyeAISFindMyVersion", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchHawkeyeAISBatteryType:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchHawkeyeAISBatteryType", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchHawkeyeSerialNumber:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchHawkeyeSerialNumber", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchHawkeyeCurrentPrimaryKey:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchHawkeyeCurrentPrimaryKey", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchHawkeyeiCloudIdentifier:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = 0x1F0E747E0;
  v7[0] = a3;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchHawkeyeiCloudIdentifier", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchAISForTAUnknownBeacon:(id)a3 macAddress:(id)a4 deviceType:(id)a5
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11[0] = 0x1F0E747E0;
  v11[1] = 0x1F0E74800;
  v12[0] = a3;
  v12[1] = a4;
  v11[2] = 0x1F0E748E0;
  v12[2] = a5;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/FetchAISForTAUnknownBeacon", [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3]);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)stageTADetection:(id)a3 deviceType:(id)a4 detailsBitmask:(id)a5 shouldRemoveDevice:(id)a6
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_4;
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13[0] = 0x1F0E74800;
  v13[1] = 0x1F0E748E0;
  v14[0] = a3;
  v14[1] = a4;
  v13[2] = 0x1F0E75120;
  v13[3] = 0x1F0E74D00;
  v14[2] = a5;
  v14[3] = a6;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/StageTADetection", [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4]);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)forceSurfaceStagedDetections:(id)a3 deviceType:(id)a4 detailsBitmask:(id)a5
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_4;
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11[0] = 0x1F0E74800;
  v11[1] = 0x1F0E748E0;
  v12[0] = a3;
  v12[1] = a4;
  v11[2] = 0x1F0E75120;
  v12[2] = a5;
  -[CLFindMyAccessoryManager sendMessage:withPayload:](self, "sendMessage:withPayload:", "DurianManagement/ForceSurfaceStagedDetections", [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3]);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchFindingCapabilities:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)initRangingOnDevice:(id)a3 macAddress:(id)a4
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6[0] = 0x1F0E747E0;
  v6[1] = 0x1F0E74B40;
  v7[0] = a3;
  v7[1] = a4;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  sub_19B890E08();
}

- (void)deinitRangingOnDevice:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)configureNBRangingOnDevice:(id)a3 withParams:(id)a4
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6[0] = 0x1F0E747E0;
  v6[1] = @"CLDurianNBConfigDictionary";
  v7[0] = a3;
  v7[1] = a4;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  sub_19B890E08();
}

- (void)prepareRangingOnDevice:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)startNBRangingOnDevice:(id)a3 withIRK:(id)a4
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6[0] = 0x1F0E747E0;
  v6[1] = @"CLDurianRangingIRK";
  v7[0] = a3;
  v7[1] = a4;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  sub_19B890E08();
}

- (void)stopRangingOnDevice:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)startEventCounterForDevice:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)stopEventCounterForDevice:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAISProductData:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAISManufacturerName:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAISModelName:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAISProtocolImplementation:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAISAccessoryCategory:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAISAccessoryCapabilities:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAISNetworkID:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAISFirmwareVersion:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAISBatteryType:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAISBatteryLevel:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAISSerialNumber:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

- (void)fetchAccessoryInformationForDevice:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = 0x1F0E747E0;
  v5[0] = a3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  sub_19B890E08();
}

@end