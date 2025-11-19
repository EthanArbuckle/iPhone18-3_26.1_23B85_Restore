@interface AccessoryTransportPluginNFC
- (BOOL)_checkLRC:(id)a3;
- (BOOL)_checkProductTypeCompatibility:(unsigned __int8)a3;
- (BOOL)_connectToTagId:(id)a3;
- (BOOL)_getpowerPauseStatus;
- (BOOL)_handleSessionOpen:(BOOL)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5;
- (BOOL)_hasWalletOnClearCase2020:(id)a3;
- (BOOL)_initXPC;
- (BOOL)_requiresLegacyAuth:(id)a3;
- (BOOL)_requiresMfi40Auth:(id)a3;
- (BOOL)_tagsHavePowerBits:(unsigned __int8)a3 uuid:(id *)a4;
- (BOOL)sendOutgoingData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5;
- (id)_decodeTagIdentifier:(id)a3;
- (int)_animationDelayMs:(unsigned __int8)a3;
- (unint64_t)_getTimeSinceLastRequestPowerPauseMs;
- (unsigned)_getAccessoryFamily:(id)a3;
- (unsigned)_getAccessoryType:(id)a3;
- (unsigned)_getNfcStateMachineState;
- (void)_closeReaderSession;
- (void)_connectPeer:(id)a3;
- (void)_createEndpointsForTags:(id)a3 skipWalletAuth:(BOOL)a4;
- (void)_didNfcTagsListChange:(id)a3;
- (void)_didScreenStateChange:(BOOL)a3;
- (void)_getNfcStateMachineState;
- (void)_handleIOHIDEvent:(__IOHIDEvent *)a3;
- (void)_handleNearFieldAccessoryEventNotification:(id)a3;
- (void)_notifyAuthReadyAfterPowerPauseComplete;
- (void)_requestPowerPause;
- (void)_setProximityMonitoringEnabled:(BOOL)a3;
- (void)_setScreenStateMonitoringEnabled:(BOOL)a3;
- (void)_updateAccessoryPower:(BOOL)a3;
- (void)initPlugin;
- (void)propertiesDidChange:(id)a3 forEndpointWithUUID:(id)a4 previousProperties:(id)a5 connectionUUID:(id)a6;
- (void)readerSession:(id)a3 didDetectTags:(id)a4;
- (void)readerSessionDidEndUnexpectedly:(id)a3;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation AccessoryTransportPluginNFC

- (void)initPlugin
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2336E3000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v5, OS_LOG_TYPE_DEFAULT, "Starting NFC transport plugin", buf, 2u);
  }

  if ((NearFieldFrameworkAvailable_available & 1) != 0 || (NFAccessoryHardwareManagerClass = getNFAccessoryHardwareManagerClass(), NearFieldFrameworkAvailable_available = NFAccessoryHardwareManagerClass != 0, NFAccessoryHardwareManagerClass))
  {
    readerSession = self->_readerSession;
    self->_readerSession = 0;

    connectedTag = self->_connectedTag;
    self->_connectedTag = 0;

    self->_screenStateToken = -1;
    v14.receiver = self;
    v14.super_class = AccessoryTransportPluginNFC;
    [(ACCTransportPlugin *)&v14 startPlugin];
    [(AccessoryTransportPluginNFC *)self _initXPC];
    v9 = 1;
    [(AccessoryTransportPluginNFC *)self _setScreenStateMonitoringEnabled:1];
    [(AccessoryTransportPluginNFC *)self _setProximityMonitoringEnabled:1];
    v10 = [getNFAccessoryHardwareManagerClass() sharedHardwareManager];
    v11 = [v10 enableMultiTag:0];

    v12 = [getNFAccessoryHardwareManagerClass() sharedHardwareManager];
    v13 = [v12 enableMultiTag:1];
  }

  else
  {
    v9 = 0;
  }

  [(AccessoryTransportPluginNFC *)self setIsRunning:v9];
}

- (void)stopPlugin
{
  v35 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v5, OS_LOG_TYPE_DEFAULT, "Stopping NFC transport plugin", buf, 2u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(NSMutableDictionary *)self->_connectionUuidForEndpointUuid allKeys];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        [(ACCTransportPlugin *)self destroyEndpointWithUUID:v11];
        [(NSMutableDictionary *)self->_connectionUuidForEndpointUuid removeObjectForKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [(NSMutableDictionary *)self->_tagForConnectionUuid allKeys];
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * j);
        [(ACCTransportPlugin *)self destroyConnectionWithUUID:v17];
        [(NSMutableDictionary *)self->_tagForConnectionUuid removeObjectForKey:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v14);
  }

  [(AccessoryTransportPluginNFC *)self _setProximityMonitoringEnabled:0];
  [(AccessoryTransportPluginNFC *)self _setScreenStateMonitoringEnabled:0];
  connectionUuidForEndpointUuid = self->_connectionUuidForEndpointUuid;
  self->_connectionUuidForEndpointUuid = 0;

  tagForConnectionUuid = self->_tagForConnectionUuid;
  self->_tagForConnectionUuid = 0;

  polledTags = self->_polledTags;
  self->_polledTags = 0;

  readerSession = self->_readerSession;
  self->_readerSession = 0;

  v23.receiver = self;
  v23.super_class = AccessoryTransportPluginNFC;
  [(ACCTransportPlugin *)&v23 stopPlugin];
  [(AccessoryTransportPluginNFC *)self setIsRunning:0];
  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendOutgoingData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5
{
  v67 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v8 = a4;
  v9 = a5;
  if (acc_userDefaultsLogging_BOOLForKey(@"TransportSignpost"))
  {
    v10 = gLogSignpostObjects;
    v11 = gNumLogSignpostObjects;
    if (gLogSignpostObjects)
    {
      v12 = gNumLogSignpostObjects < 4;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC sendOutgoingData:v10 forEndpointWithUUID:v11 connectionUUID:?];
      }

      v14 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *(gLogSignpostObjects + 24);
    }

    v15 = [(NSData *)v8 hash];
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        *buf = 138412546;
        v64 = v8;
        v65 = 2048;
        v66 = [v55 length];
        _os_signpost_emit_with_name_impl(&dword_2336E3000, v14, OS_SIGNPOST_EVENT, v16, "Endpoint SEND", "Send outgoing data! %@, %lu bytes", buf, 0x16u);
      }
    }
  }

  v54 = v8;
  if (!self->_readerSession || !self->_connectedTag)
  {
    v35 = logObjectForModule();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v35, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData: !_readerSession || !_connectedTag", buf, 2u);
    }

    v20 = 0;
    v18 = 0;
    goto LABEL_103;
  }

  v17 = [(NSMutableDictionary *)self->_connectionUuidForEndpointUuid valueForKey:v8];
  v18 = v17;
  if (!v17 || ([v17 isEqualToString:v9] & 1) == 0)
  {
    v35 = logObjectForModule();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v53 = "NFC transport plugin: sendOutgoingData: !uuid || !equal";
LABEL_101:
      _os_log_impl(&dword_2336E3000, v35, OS_LOG_TYPE_DEFAULT, v53, buf, 2u);
    }

LABEL_102:
    v20 = 0;
LABEL_103:
    v36 = 0;
LABEL_76:
    v45 = 0;
LABEL_92:

    goto LABEL_93;
  }

  v19 = [(NSMutableDictionary *)self->_tagForConnectionUuid valueForKey:v9];
  if (!v19)
  {
    v35 = logObjectForModule();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v53 = "NFC transport plugin: sendOutgoingData: !requestedTag";
      goto LABEL_101;
    }

    goto LABEL_102;
  }

  v20 = v19;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v21 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v21 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    connectedTagId = self->_connectedTagId;
    v24 = [v20 tagID];
    *buf = 138412546;
    v64 = connectedTagId;
    v65 = 2112;
    v66 = v24;
    _os_log_impl(&dword_2336E3000, v21, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData: sameTagId? %@ ?= %@", buf, 0x16u);
  }

  if ([(AccessoryTransportPluginNFC *)self _tagsHavePowerBits:48 uuid:0]&& [(AccessoryTransportPluginNFC *)self _getTimeSinceLastRequestPowerPauseMs]>= 0x5DD && ![(AccessoryTransportPluginNFC *)self _getpowerPauseStatus])
  {
    [(AccessoryTransportPluginNFC *)self _requestPowerPause];
    usleep(0x30D40u);
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v25 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(AccessoryTransportPluginNFC *)self _getpowerPauseStatus];
      *buf = 67109120;
      LODWORD(v64) = v27;
      _os_log_impl(&dword_2336E3000, v25, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData: powerPause:0->%d", buf, 8u);
    }
  }

  v28 = [v20 tagID];
  v29 = [(AccessoryTransportPluginNFC *)self _requiresMfi40Auth:v28];

  if (v29)
  {
    v62 = 43520;
    v61[0] = 0;
    v58 = -256;
    v30 = [MEMORY[0x277CBEB28] dataWithBytes:&v62 length:4];
    v59 = [v55 length];
    v60 = [v55 length] >> 8;
    [(NSData *)v30 appendBytes:v61 length:1];
    [(NSData *)v30 appendBytes:&v60 length:1];
    [(NSData *)v30 appendBytes:&v59 length:1];
    [(NSData *)v30 appendData:v55];
    [(NSData *)v30 appendBytes:&v58 + 1 length:1];
    [(NSData *)v30 appendBytes:&v58 length:1];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v31 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v31 = MEMORY[0x277D86220];
      v37 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = v30;
      _os_log_impl(&dword_2336E3000, v31, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData: %@", buf, 0xCu);
    }

    readerSession = self->_readerSession;
    v57 = 0;
    v35 = [(NFAccessoryReaderSession *)readerSession transceive:v30 error:&v57];
    v36 = v57;
  }

  else
  {
    v32 = [v20 tagID];
    v33 = [(AccessoryTransportPluginNFC *)self _requiresLegacyAuth:v32];

    if (!v33)
    {
      v35 = 0;
      goto LABEL_56;
    }

    v34 = self->_readerSession;
    v56 = 0;
    v35 = [(NFAccessoryReaderSession *)v34 sendAccessoryProtocolCommand:v55 outError:&v56];
    v36 = v56;
  }

  if (v36)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v39 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v39 = MEMORY[0x277D86220];
      v43 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = v36;
      _os_log_impl(&dword_2336E3000, v39, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: cmdError: %@", buf, 0xCu);
    }

    v44 = logObjectForModule();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = v36;
      _os_log_impl(&dword_2336E3000, v44, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData failed: Error: %@", buf, 0xCu);
    }

    goto LABEL_76;
  }

LABEL_56:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v40 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v40 = MEMORY[0x277D86220];
    v41 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v40, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData completed", buf, 2u);
  }

  if (v35)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v42 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v42 = MEMORY[0x277D86220];
      v46 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = v35;
      _os_log_impl(&dword_2336E3000, v42, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: dataIn: %@", buf, 0xCu);
    }

    v47 = [v35 subdataWithRange:0, [v35 length]- 2];
    v48 = [v35 subdataWithRange:[v35 length]- 2, 2];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v49 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v49 = MEMORY[0x277D86220];
      v50 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = v48;
      _os_log_impl(&dword_2336E3000, v49, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: dataIn status: %@", buf, 0xCu);
    }

    v45 = [(ACCTransportPlugin *)self processIncomingData:v47 forEndpointWithUUID:v54];
    v36 = 0;
    goto LABEL_92;
  }

  v36 = 0;
  v45 = 1;
LABEL_93:

  v51 = *MEMORY[0x277D85DE8];
  return v45;
}

- (void)propertiesDidChange:(id)a3 forEndpointWithUUID:(id)a4 previousProperties:(id)a5 connectionUUID:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 valueForKey:*MEMORY[0x277CFD310]];

  if (v12)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __105__AccessoryTransportPluginNFC_propertiesDidChange_forEndpointWithUUID_previousProperties_connectionUUID___block_invoke;
    v14[3] = &unk_2789EBE10;
    v15 = v9;
    v16 = self;
    v17 = v10;
    v18 = v11;
    dispatch_async(queue, v14);
  }
}

void __105__AccessoryTransportPluginNFC_propertiesDidChange_forEndpointWithUUID_previousProperties_connectionUUID___block_invoke(uint64_t a1)
{
  *&v42[5] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) valueForKey:*MEMORY[0x277CFD310]];
  v3 = [v2 BOOLValue];

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v42[0] = v3;
    _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: propertiesDidChange, open = %d", buf, 8u);
  }

  if (v3)
  {
    v7 = *(a1 + 40);
    if (v7[15])
    {
      if (([*(a1 + 48) isEqualToString:?] & 1) == 0)
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v8 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v8 = MEMORY[0x277D86220];
          v21 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 48);
          *buf = 138412290;
          *v42 = v22;
          _os_log_impl(&dword_2336E3000, v8, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: propertiesDidChange, queued, uuid = %@", buf, 0xCu);
        }

        v23 = *(*(a1 + 40) + 128);
        if (v23 || ([MEMORY[0x277CBEB18] arrayWithCapacity:1], v24 = objc_claimAutoreleasedReturnValue(), v25 = *(a1 + 40), v26 = *(v25 + 128), *(v25 + 128) = v24, v26, (v23 = *(*(a1 + 40) + 128)) != 0))
        {
          if (([v23 containsObject:*(a1 + 48)] & 1) == 0)
          {
            [*(*(a1 + 40) + 128) addObject:*(a1 + 48)];
          }
        }
      }
    }

    else
    {
      v11 = [v7 _handleSessionOpen:1 forEndpointWithUUID:*(a1 + 48) connectionUUID:*(a1 + 56)];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v12 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v12 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v42[0] = 1;
        LOWORD(v42[1]) = 1024;
        *(&v42[1] + 2) = v11;
        _os_log_impl(&dword_2336E3000, v12, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: propertiesDidChange, open:%d, success:%d", buf, 0xEu);
      }

      if (v11)
      {
        v19 = *(a1 + 40);
        v39 = *MEMORY[0x277CFD318];
        v40 = MEMORY[0x277CBEC38];
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        [v19 setProperties:v20 forEndpointWithUUID:*(a1 + 48)];
      }
    }
  }

  else if ([*(a1 + 48) isEqualToString:*(*(a1 + 40) + 120)])
  {
    v9 = [*(a1 + 40) _handleSessionOpen:0 forEndpointWithUUID:*(a1 + 48) connectionUUID:*(a1 + 56)];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v10 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v42[0] = 0;
      LOWORD(v42[1]) = 1024;
      *(&v42[1] + 2) = v9;
      _os_log_impl(&dword_2336E3000, v10, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: propertiesDidChange, open:%d, success:%d", buf, 0xEu);
    }

    if (v9)
    {
      v14 = *(a1 + 40);
      v15 = *MEMORY[0x277CFD318];
      v37 = *MEMORY[0x277CFD318];
      v38 = MEMORY[0x277CBEC28];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      [v14 setProperties:v16 forEndpointWithUUID:*(a1 + 48)];

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v17 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(*(a1 + 40) + 128);
        *buf = 138412290;
        *v42 = v28;
        _os_log_impl(&dword_2336E3000, v17, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: propertiesDidChange, queue:%@", buf, 0xCu);
      }

      v29 = *(*(a1 + 40) + 128);
      if (v29 && [v29 count])
      {
        v30 = [*(*(a1 + 40) + 128) firstObject];
        if (v30)
        {
          v31 = [*(*(a1 + 40) + 56) valueForKey:v30];
          if (v31 && [*(a1 + 40) _handleSessionOpen:1 forEndpointWithUUID:v30 connectionUUID:v31])
          {
            v32 = *(a1 + 40);
            v35 = v15;
            v36 = MEMORY[0x277CBEC38];
            v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            [v32 setProperties:v33 forEndpointWithUUID:v30];
          }

          [*(*(a1 + 40) + 128) removeObject:v30];
        }
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)readerSessionDidEndUnexpectedly:(id)a3
{
  queue = self->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__AccessoryTransportPluginNFC_readerSessionDidEndUnexpectedly___block_invoke;
    block[3] = &unk_2789EBE38;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

void __63__AccessoryTransportPluginNFC_readerSessionDidEndUnexpectedly___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getpowerPauseStatus];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v2;
    _os_log_impl(&dword_2336E3000, v5, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: Session ended unexpectedly: powerPause:%d", buf, 8u);
  }

  [*(a1 + 32) _closeReaderSession];
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__AccessoryTransportPluginNFC_readerSessionDidEndUnexpectedly___block_invoke_27;
  block[3] = &unk_2789EBE38;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __63__AccessoryTransportPluginNFC_readerSessionDidEndUnexpectedly___block_invoke_27(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2336E3000, v4, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: restart auth", v6, 2u);
  }

  return [*(a1 + 32) _notifyAuthReadyAfterPowerPauseComplete];
}

- (void)readerSession:(id)a3 didDetectTags:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&dword_2336E3000, v10, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: didDetectTags: %@", &v14, 0xCu);
  }

  polledTags = self->_polledTags;
  self->_polledTags = v7;
  v12 = v7;

  dispatch_semaphore_signal(self->_polledSem);
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_initXPC
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.accessoryd.nf-events", v3);
  queue = self->_queue;
  self->_queue = v4;

  mach_service = xpc_connection_create_mach_service("com.apple.accessoryd.nf-events", self->_queue, 1uLL);
  listenerConnection = self->_listenerConnection;
  self->_listenerConnection = mach_service;

  if (!self->_listenerConnection)
  {
    [AccessoryTransportPluginNFC _initXPC];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v8 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v8, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _initXPC", buf, 2u);
  }

  xpc_set_event_stream_handler("com.apple.accessoryd.nf-events", self->_queue, &__block_literal_global_1);
  v10 = self->_listenerConnection;
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v10)
  {
    if (v12)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v13, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _listenerConnection", buf, 2u);
    }

    v16 = self->_listenerConnection;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __39__AccessoryTransportPluginNFC__initXPC__block_invoke_32;
    handler[3] = &unk_2789EBE80;
    handler[4] = self;
    xpc_connection_set_event_handler(v16, handler);
    xpc_connection_activate(self->_listenerConnection);
  }

  else
  {
    if (v12)
    {
      v14 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v14 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v14, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: could not create listener connection.", buf, 2u);
    }
  }

  return v10 != 0;
}

void __39__AccessoryTransportPluginNFC__initXPC__block_invoke(int a1, xpc_object_t xdict)
{
  v10 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]);
  if (string)
  {
    v3 = string;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *gLogObjects;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = v3;
      _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: Received %s", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __39__AccessoryTransportPluginNFC__initXPC__block_invoke_32(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x2383AA970]();
  if (v4 == MEMORY[0x277D86450])
  {
    [*(a1 + 32) _connectPeer:v3];
    goto LABEL_42;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (xpc_equal(v3, MEMORY[0x277D863F0]))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v7 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v7 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      LOWORD(v15) = 0;
      v10 = "NFC transport plugin: Service interrupted: com.apple.accessoryd.nf-events";
    }

    else
    {
      if (!xpc_equal(v3, MEMORY[0x277D863F8]))
      {
        v7 = xpc_dictionary_get_value(v3, *MEMORY[0x277D86400]);
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v11 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v11 = MEMORY[0x277D86220];
          v13 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315138;
          string_ptr = xpc_string_get_string_ptr(v7);
          _os_log_impl(&dword_2336E3000, v11, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: listener connection error %s", &v15, 0xCu);
        }

        goto LABEL_41;
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v7 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v7 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:

        goto LABEL_42;
      }

      LOWORD(v15) = 0;
      v10 = "NFC transport plugin: Service not available: com.apple.accessoryd.nf-events";
    }

    _os_log_impl(&dword_2336E3000, v7, OS_LOG_TYPE_DEFAULT, v10, &v15, 2u);
    goto LABEL_41;
  }

  v5 = MEMORY[0x2383AA930](v3);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446210;
    string_ptr = v5;
    _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: received error or other non-connection type in handler for listener: %{public}s.", &v15, 0xCu);
  }

  free(v5);
LABEL_42:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_connectPeer:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v7, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: connecting peer", buf, 2u);
  }

  peers = self->_peers;
  if (!peers)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = self->_peers;
    self->_peers = v9;

    peers = self->_peers;
  }

  [(NSMutableArray *)peers addObject:v4];
  v11 = [(NSMutableArray *)self->_peers count];
  if (v11 >= 2)
  {
    v12 = v11;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = v12;
      _os_log_impl(&dword_2336E3000, v13, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: unexpected number of peer connections %lu.", buf, 0xCu);
    }
  }

  xpc_connection_set_target_queue(v4, self->_queue);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__AccessoryTransportPluginNFC__connectPeer___block_invoke;
  v17[3] = &unk_2789EBEA8;
  v17[4] = self;
  v18 = v4;
  v15 = v4;
  xpc_connection_set_event_handler(v15, v17);
  xpc_connection_activate(v15);

  v16 = *MEMORY[0x277D85DE8];
}

void __44__AccessoryTransportPluginNFC__connectPeer___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x2383AA970]();
  if (v4 == MEMORY[0x277D86468])
  {
    v7 = xpc_dictionary_get_value(v3, "xpcEventName");
    string_ptr = xpc_string_get_string_ptr(v7);

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 136315138;
      *&v20[4] = string_ptr;
      _os_log_impl(&dword_2336E3000, v9, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: event name:%s", v20, 0xCu);
    }

    [*(a1 + 32) _handleNearFieldAccessoryEventNotification:0];
  }

  else
  {
    if (v4 != MEMORY[0x277D86480])
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v13 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v13 = *gLogObjects;
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *v20 = 0;
      v14 = "NFC transport plugin: Unexpected data, invalidating the connection.";
      goto LABEL_29;
    }

    if (v3 != MEMORY[0x277D863F0] && v3 != MEMORY[0x277D86420])
    {
      if (gLogObjects)
      {
        v11 = gNumLogObjects <= 0;
      }

      else
      {
        v11 = 1;
      }

      v12 = !v11;
      if (v3 == MEMORY[0x277D863F8])
      {
        if (v12)
        {
          v17 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v17 = MEMORY[0x277D86220];
          v19 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_2336E3000, v17, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: disconnecting peer", v20, 2u);
        }

        goto LABEL_31;
      }

      if (v12)
      {
        v13 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v13 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:

        xpc_connection_cancel(*(a1 + 40));
LABEL_31:
        [*(*(a1 + 32) + 208) removeObjectIdenticalTo:{*(a1 + 40), *v20}];
        goto LABEL_38;
      }

      *v20 = 0;
      v14 = "NFC transport plugin: Unexpected error dictionary, invalidating the connection.";
LABEL_29:
      _os_log_impl(&dword_2336E3000, v13, OS_LOG_TYPE_DEFAULT, v14, v20, 2u);
      goto LABEL_30;
    }
  }

LABEL_38:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_notifyAuthReadyAfterPowerPauseComplete
{
  v20 = *MEMORY[0x277D85DE8];
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v16 = 0;
  v3 = [(AccessoryTransportPluginNFC *)self _tagsHavePowerBits:48 uuid:&v16];
  v4 = v16;
  if (v3)
  {
    v5 = [(AccessoryTransportPluginNFC *)self _getNfcStateMachineState];
    if ((v5 & 0x100) != 0 || __tp.tv_sec > self->_tagsArrivalTime.tv_sec + 3)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v6 = MEMORY[0x277D86220];
        v7 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _notifyAuthReadyAfterPowerPauseComplete: notify: %@", buf, 0xCu);
      }

      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:@"endpointUUID"];
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 postNotificationName:@"NfcAuthReady" object:0 userInfo:v8];
    }

    else
    {
      v10 = v5;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v11 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v11 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v19) = v10;
        _os_log_impl(&dword_2336E3000, v11, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _notifyAuthReadyAfterPowerPauseComplete: delay due to nfcState:0x%x", buf, 8u);
      }

      v13 = dispatch_time(0, 200000000);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__AccessoryTransportPluginNFC__notifyAuthReadyAfterPowerPauseComplete__block_invoke;
      v15[3] = &unk_2789EBE38;
      v15[4] = self;
      dispatch_after(v13, MEMORY[0x277D85CD0], v15);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleNearFieldAccessoryEventNotification:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v43 = a3;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleNearFieldAccessoryEventNotification", &buf, 2u);
  }

  v7 = MEMORY[0x277CBEB18];
  v8 = [getNFAccessoryHardwareManagerClass() sharedHardwareManager];
  v55 = 0;
  v9 = [v8 getMultiTagState:&v55];
  v41 = v55;
  v10 = [v7 arrayWithArray:v9];

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_2336E3000, v11, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: newTags=%@", &buf, 0xCu);
  }

  v42 = [(AccessoryTransportPluginNFC *)self _tagsHavePowerBits:32 uuid:0];
  polledTags = self->_polledTags;
  self->_polledTags = 0;

  [(AccessoryTransportPluginNFC *)self _didNfcTagsListChange:v10];
  v14 = [(AccessoryTransportPluginNFC *)self _hasWalletOnClearCase2020:v10];
  tagForConnectionUuid = self->_tagForConnectionUuid;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke;
  v52[3] = &unk_2789EBEF8;
  v16 = v10;
  v53 = v16;
  v54 = self;
  [(NSMutableDictionary *)tagForConnectionUuid enumerateKeysAndObjectsUsingBlock:v52];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v18)
  {
    v19 = *v49;
LABEL_21:
    v20 = 0;
    while (1)
    {
      if (*v49 != v19)
      {
        objc_enumerationMutation(v17);
      }

      v21 = [*(*(&v48 + 1) + 8 * v20) tagID];
      v22 = [(AccessoryTransportPluginNFC *)self _getAccessoryType:v21];

      if (v22 == 86)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [v17 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (v18)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v23 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      screenState = self->_screenState;
      LODWORD(buf) = 67109120;
      DWORD1(buf) = screenState;
      _os_log_impl(&dword_2336E3000, v23, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: hasSleeve: _screenState=%d", &buf, 8u);
    }

    v26 = self->_screenState;
    if (v26 == 1)
    {
      if (self->_proximityOcclusionState)
      {
        goto LABEL_45;
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v34 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v34 = MEMORY[0x277D86220];
        v35 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2336E3000, v34, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: wait for delayed prox events", &buf, 2u);
      }

      clock_gettime(_CLOCK_REALTIME, &self->_proxRequestTime);
    }

    else
    {
      if (!v26)
      {
        v56 = 0;
        v57 = &v56;
        v58 = 0x2020000000;
        v27 = getBKSHIDServicesRequestProximityStatusEventSymbolLoc_ptr;
        v59 = getBKSHIDServicesRequestProximityStatusEventSymbolLoc_ptr;
        if (!getBKSHIDServicesRequestProximityStatusEventSymbolLoc_ptr)
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v62 = __getBKSHIDServicesRequestProximityStatusEventSymbolLoc_block_invoke;
          v63 = &unk_2789EC038;
          v64 = &v56;
          __getBKSHIDServicesRequestProximityStatusEventSymbolLoc_block_invoke(&buf);
          v27 = v57[3];
        }

        _Block_object_dispose(&v56, 8);
        if (!v27)
        {
          [AccessoryTransportPluginNFC _handleNearFieldAccessoryEventNotification:];
          __break(1u);
        }

        v27(@"proxSleeveCheck");
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v28 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v28 = MEMORY[0x277D86220];
          v33 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_2336E3000, v28, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: request prox state", &buf, 2u);
        }

        clock_gettime(_CLOCK_REALTIME, &self->_proxRequestTime);
        v29 = 1;
        v30 = 100000000;
        goto LABEL_71;
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v31 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v31 = MEMORY[0x277D86220];
        v32 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2336E3000, v31, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: invalid _screenState value", &buf, 2u);
      }
    }

    v30 = 360000000;
    v29 = 1;
    goto LABEL_71;
  }

LABEL_27:

LABEL_45:
  v29 = 0;
  v30 = -1431655756000000;
LABEL_71:
  self->_waitProxState = v29;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke_48;
  v44[3] = &unk_2789EBF20;
  v44[4] = self;
  v36 = v17;
  v45 = v36;
  v46 = v14;
  v47 = v42;
  v37 = MEMORY[0x2383AA7A0](v44);
  v38 = v37;
  if (self->_waitProxState)
  {
    v39 = dispatch_time(0, v30);
    dispatch_after(v39, self->_queue, v38);
  }

  else
  {
    (*(v37 + 16))(v37);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v5 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 tagID];
        v13 = [v5 tagID];
        v14 = [v12 isEqualToData:v13];

        if (v14)
        {
          [*(a1 + 32) removeObject:v11];
          v15 = v20;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = v20;
  v16 = v20;
  v17 = *(a1 + 40);
  v18 = *(v17 + 56);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke_2;
  v21[3] = &unk_2789EBED0;
  v22 = v16;
  v23 = v17;
  [v18 enumerateKeysAndObjectsUsingBlock:v21];
  [*(a1 + 40) destroyConnectionWithUUID:v16];
  [*(*(a1 + 40) + 48) removeObjectForKey:v16];
  v6 = v22;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
}

void __74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    [*(*(a1 + 40) + 56) removeObjectForKey:v5];
  }
}

uint64_t __74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke_48(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2336E3000, v4, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _createEndpointsForTags", v7, 2u);
  }

  [*(a1 + 32) _createEndpointsForTags:*(a1 + 40) skipWalletAuth:*(a1 + 48)];
  v5 = [*(a1 + 32) _tagsHavePowerBits:32 uuid:0];
  if (*(a1 + 49) != v5)
  {
    [*(a1 + 32) _updateAccessoryPower:v5];
  }

  result = [*(a1 + 32) _tagsHavePowerBits:48 uuid:0];
  if (result)
  {
    clock_gettime(_CLOCK_REALTIME, (*(a1 + 32) + 64));
    return [*(a1 + 32) _notifyAuthReadyAfterPowerPauseComplete];
  }

  return result;
}

void __41__AccessoryTransportPluginNFC__pollTags___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2336E3000, v4, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _connectedTag = nil", v8, 2u);
  }

  v5 = WeakRetained[13];
  WeakRetained[13] = 0;

  v6 = WeakRetained[14];
  WeakRetained[14] = 0;

  v7 = WeakRetained[15];
  WeakRetained[15] = 0;
}

void __41__AccessoryTransportPluginNFC__pollTags___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v6)
  {
    if (v9)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v10, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: Could not create session", buf, 2u);
    }
  }

  else
  {
    if (v9)
    {
      v11 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_2336E3000, v11, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: created _readerSession", v16, 2u);
    }

    [v5 setDelegate:*(a1 + 32)];
    v14 = *(a1 + 32);
    v15 = v5;
    v10 = *(v14 + 80);
    *(v14 + 80) = v15;
  }

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

- (void)_requestPowerPause
{
  v27 = *MEMORY[0x277D85DE8];
  connect = -1431655766;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v3;
  v22 = v3;
  *&v19[16] = v3;
  v20 = v3;
  *v19 = v3;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _requestPowerPause", buf, 2u);
  }

  v7 = *MEMORY[0x277CD28A0];
  v8 = IOServiceMatching("AppleSMCSensorDispatcher");
  MatchingService = IOServiceGetMatchingService(v7, v8);
  if (!MatchingService)
  {
    p_super = logObjectForModule();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v16 = "NFC transport plugin: _requestPowerPause: !service";
    v17 = p_super;
    v18 = 2;
LABEL_23:
    _os_log_impl(&dword_2336E3000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    goto LABEL_15;
  }

  v10 = MatchingService;
  v11 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  IOObjectRelease(v10);
  if (v11)
  {
    p_super = logObjectForModule();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    v26 = v11;
    v16 = "NFC transport plugin: _requestPowerPause: IOServiceOpen: 0x%x";
    goto LABEL_22;
  }

  *&v19[8] = xmmword_2336EFD20;
  v19[0] = 1;
  v12 = IOConnectCallStructMethod(connect, 3u, v19, 0x58uLL, 0, 0);
  IOServiceClose(connect);
  if (v12)
  {
    p_super = logObjectForModule();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    v26 = v12;
    v16 = "NFC transport plugin: _requestPowerPause: 0x%x";
LABEL_22:
    v17 = p_super;
    v18 = 8;
    goto LABEL_23;
  }

  v13 = [MEMORY[0x277CBEAA8] date];
  p_super = &self->_lastRequestPowerPauseTime->super;
  self->_lastRequestPowerPauseTime = v13;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_getTimeSinceLastRequestPowerPauseMs
{
  if (!self->_lastRequestPowerPauseTime)
  {
    return -1;
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:self->_lastRequestPowerPauseTime];
  v5 = (v4 * 1000.0);

  return v5;
}

- (BOOL)_getpowerPauseStatus
{
  v19 = *MEMORY[0x277D85DE8];
  connect = -1431655766;
  output = 0;
  outputCnt = 1;
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("AppleSMCSensorDispatcher");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (!MatchingService)
  {
    v10 = logObjectForModule();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "NFC transport plugin: _getpowerPauseStatus: !service";
      v12 = v10;
      v13 = 2;
LABEL_12:
      _os_log_impl(&dword_2336E3000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v5 = MatchingService;
  v6 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  IOObjectRelease(v5);
  if (v6)
  {
    v10 = logObjectForModule();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = v6;
      v11 = "NFC transport plugin: _getpowerPauseStatus: IOServiceOpen: 0x%x";
LABEL_11:
      v12 = v10;
      v13 = 8;
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_4;
  }

  v7 = IOConnectCallScalarMethod(connect, 5u, 0, 0, &output, &outputCnt);
  IOServiceClose(connect);
  if (v7)
  {
    v10 = logObjectForModule();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = v7;
      v11 = "NFC transport plugin: _getpowerPauseStatus: 0x%x";
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_4:
  result = output != 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)_getNfcStateMachineState
{
  connect = -1431655766;
  output = 0;
  outputCnt = 1;
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("AppleSMCSensorDispatcher");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (!MatchingService)
  {
    [AccessoryTransportPluginNFC _getNfcStateMachineState];
    return 0;
  }

  v5 = MatchingService;
  v6 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  IOObjectRelease(v5);
  if (v6)
  {
    [AccessoryTransportPluginNFC _getNfcStateMachineState];
    return 0;
  }

  v7 = IOConnectCallScalarMethod(connect, 6u, 0, 0, &output, &outputCnt);
  IOServiceClose(connect);
  if (v7)
  {
    [AccessoryTransportPluginNFC _getNfcStateMachineState];
    return 0;
  }

  return output;
}

- (BOOL)_tagsHavePowerBits:(unsigned __int8)a3 uuid:(id *)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  connectionUuidForEndpointUuid = self->_connectionUuidForEndpointUuid;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__AccessoryTransportPluginNFC__tagsHavePowerBits_uuid___block_invoke;
  v8[3] = &unk_2789EBF98;
  v9 = a3 & 0x30;
  v8[4] = self;
  v8[5] = &v16;
  v8[6] = &v10;
  [(NSMutableDictionary *)connectionUuidForEndpointUuid enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v17 + 24);
  if (a4 && (v17[3] & 1) != 0)
  {
    *a4 = v11[5];
    v6 = *(v17 + 24);
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v6 & 1;
}

void __55__AccessoryTransportPluginNFC__tagsHavePowerBits_uuid___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v9 = [*(*(a1 + 32) + 48) valueForKey:a3];
  v10 = [v9 tagID];
  v11 = 0;
  [v10 getBytes:&v11 length:4];
  if ((*(a1 + 56) & BYTE1(v11)) != 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (unsigned)_getAccessoryType:(id)a3
{
  v4 = a3;
  v5 = v4;
  v9 = 0;
  if (!v4 || [v4 length] != 4 || !-[AccessoryTransportPluginNFC _checkLRC:](self, "_checkLRC:", v5) || ((objc_msgSend(v5, "getBytes:length:", &v9, 4), v6 = v9, v7 = v9 - 57, v7 > 0x3A) || ((1 << v7) & 0x6001181FC381F01) == 0) && (v9 - 128 > 0x15 || ((1 << (v9 + 0x80)) & 0x2B0123) == 0) && v9 != 22)
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)_getAccessoryFamily:(id)a3
{
  v4 = a3;
  v5 = v4;
  v8 = 0;
  if (!v4 || [v4 length] != 4 || !-[AccessoryTransportPluginNFC _checkLRC:](self, "_checkLRC:", v5))
  {
    goto LABEL_48;
  }

  [v5 getBytes:&v8 length:4];
  v6 = 5;
  if (v8 <= 0x56u)
  {
    if (v8 > 0x4Bu)
    {
      if (v8 - 76 < 3)
      {
        v6 = 3;
        goto LABEL_49;
      }

      if (v8 - 83 < 3)
      {
        goto LABEL_49;
      }

      if (v8 == 86)
      {
        v6 = 6;
        goto LABEL_49;
      }
    }

    else
    {
      if (v8 <= 0x41u)
      {
        if (v8 == 22)
        {
          v6 = 11;
          goto LABEL_49;
        }

        if (v8 != 57)
        {
          if (v8 != 65)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        goto LABEL_51;
      }

      if (v8 - 67 < 3)
      {
        goto LABEL_47;
      }

      if (v8 == 66)
      {
LABEL_44:
        v6 = 1;
        goto LABEL_49;
      }
    }

LABEL_48:
    v6 = 0;
    goto LABEL_49;
  }

  if (v8 > 0x7Fu)
  {
    if (v8 <= 0x8Fu)
    {
      if (v8 > 0x84u)
      {
        if (v8 == 133)
        {
          goto LABEL_47;
        }

        if (v8 == 136)
        {
          v6 = 9;
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v8 != 128)
      {
        if (v8 == 129)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

LABEL_37:
      v6 = 7;
      goto LABEL_49;
    }

    if (v8 <= 0x92u)
    {
      if (v8 != 144)
      {
        if (v8 != 145)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      goto LABEL_37;
    }

    if (v8 != 147)
    {
      if (v8 == 149)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

LABEL_51:
    v6 = 10;
    goto LABEL_49;
  }

  if (v8 <= 0x60u)
  {
    if (v8 - 87 < 2)
    {
      v6 = 8;
      goto LABEL_49;
    }

    if (v8 == 89)
    {
      v6 = 12;
      goto LABEL_49;
    }

    if (v8 != 96)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  if (v8 > 0x71u)
  {
    if (v8 == 114)
    {
      v6 = 4;
      goto LABEL_49;
    }

    if (v8 != 115)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (v8 != 97)
  {
    if (v8 != 101)
    {
      goto LABEL_48;
    }

LABEL_47:
    v6 = 2;
  }

LABEL_49:

  return v6;
}

- (void)_createEndpointsForTags:(id)a3 skipWalletAuth:(BOOL)a4
{
  v41 = a4;
  v57 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0x2812FF000uLL;
    v8 = *v47;
    v43 = *MEMORY[0x277CFD298];
    v44 = *v47;
    do
    {
      v9 = 0;
      v42 = v6;
      do
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v46 + 1) + 8 * v9);
        v11 = [v10 tagID];
        if ([(AccessoryTransportPluginNFC *)self _checkLRC:v11])
        {
          v12 = [v10 tagID];
          v13 = [(AccessoryTransportPluginNFC *)self _getAccessoryType:v12];

          if (v13 != 86 || self->_proximityOcclusionState)
          {
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v11];
            v15 = [(ACCTransportPlugin *)self createConnectionWithType:9 andIdentifier:v14];
            v50 = v43;
            v16 = [MEMORY[0x277CBEB68] null];
            v51 = v16;
            v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            [(ACCTransportPlugin *)self setProperties:v17 forConnectionWithUUID:v15];

            v18 = *(v7 + 1192);
            v19 = gNumLogObjects;
            if (v18 && gNumLogObjects >= 1)
            {
              v20 = *v18;
            }

            else
            {
              v21 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v54 = v18;
                v55 = 1024;
                v56 = v19;
                _os_log_error_impl(&dword_2336E3000, v21, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v22 = v21;
              v20 = v21;
              v6 = v42;
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v54 = v14;
              _os_log_impl(&dword_2336E3000, v20, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: tagID=%@", buf, 0xCu);
            }

            if (v15)
            {
              if (![(AccessoryTransportPluginNFC *)self _requiresMfi40Auth:v11]|| v41)
              {
                if ([(AccessoryTransportPluginNFC *)self _requiresLegacyAuth:v11])
                {
                  v23 = 10;
                }

                else
                {
                  v23 = 1;
                }
              }

              else
              {
                v23 = 14;
              }

              v24 = *(v7 + 1192);
              v25 = gNumLogObjects;
              if (v24 && gNumLogObjects >= 1)
              {
                v26 = *v24;
              }

              else
              {
                v27 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v54 = v24;
                  v55 = 1024;
                  v56 = v25;
                  _os_log_error_impl(&dword_2336E3000, v27, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v28 = v27;
                v26 = v27;
                v6 = v42;
              }

              v7 = 0x2812FF000;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v54) = v23;
                _os_log_impl(&dword_2336E3000, v26, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: protocol=%d", buf, 8u);
              }

              v29 = [(ACCTransportPlugin *)self createEndpointWithTransportType:13 andProtocol:v23 andIdentifier:v14 forConnectionWithUUID:v15 publishConnection:0];
              v30 = [(AccessoryTransportPluginNFC *)self _decodeTagIdentifier:v11];
              if (v30)
              {
                [(ACCTransportPlugin *)self setProperties:v30 forEndpointWithUUID:v29];
              }

              [(NSMutableDictionary *)self->_connectionUuidForEndpointUuid setObject:v15 forKey:v29];
              [(NSMutableDictionary *)self->_tagForConnectionUuid setObject:v10 forKey:v15];
            }

            [(ACCTransportPlugin *)self publishConnectionWithUUID:v15];
            goto LABEL_36;
          }

          v31 = *(v7 + 1192);
          v32 = gNumLogObjects;
          if (v31 && gNumLogObjects >= 1)
          {
            v33 = *v31;
          }

          else
          {
            v33 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v54 = v31;
              v55 = 1024;
              v56 = v32;
              _os_log_error_impl(&dword_2336E3000, v33, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v34 = v33;
          }

          v7 = 0x2812FF000uLL;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2336E3000, v33, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: ignore sleeve", buf, 2u);
          }

          if ([obj count] == 1)
          {
            v35 = [getNFAccessoryHardwareManagerClass() sharedHardwareManager];
            v14 = [v35 clearMultiTagState];

            if (v14)
            {
              v36 = gLogObjects;
              v37 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v15 = *gLogObjects;
              }

              else
              {
                v15 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v54 = v36;
                  v55 = 1024;
                  v56 = v37;
                  _os_log_error_impl(&dword_2336E3000, v15, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v38 = v15;
                v6 = v42;
              }

              v7 = 0x2812FF000;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v54 = v14;
                _os_log_impl(&dword_2336E3000, v15, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: clearMultiTagState error: %@", buf, 0xCu);
              }

LABEL_36:

              v8 = v44;
            }
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v39 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      v6 = v39;
    }

    while (v39);
  }

  self->_waitProxState = 0;

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_setScreenStateMonitoringEnabled:(BOOL)a3
{
  if (a3)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__AccessoryTransportPluginNFC__setScreenStateMonitoringEnabled___block_invoke;
    v10[3] = &unk_2789EBFC0;
    v10[4] = self;
    v4 = MEMORY[0x2383AA7A0](v10, a2);
    v5 = dispatch_get_global_queue(0, 0);
    v6 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &self->_screenStateToken, v5, v4);

    if (v6)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v7 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v7 = MEMORY[0x277D86220];
        v8 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_2336E3000, v7, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: Fail to register for screen state change", v9, 2u);
      }
    }
  }

  else
  {
    if (notify_is_valid_token(self->_screenStateToken))
    {
      notify_cancel(self->_screenStateToken);
    }

    self->_screenStateToken = -1;
  }
}

void __64__AccessoryTransportPluginNFC__setScreenStateMonitoringEnabled___block_invoke(uint64_t a1, int token)
{
  v11 = *MEMORY[0x277D85DE8];
  state64 = 0xAAAAAAAAAAAAAAAALL;
  if (!notify_get_state(token, &state64))
  {
    *(*(a1 + 32) + 148) = state64 == 0;
    [*(a1 + 32) _didScreenStateChange:*(*(a1 + 32) + 148) != 0];
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 1;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v5 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 148);
      *buf = 67109120;
      v10 = v6;
      _os_log_impl(&dword_2336E3000, v5, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: screen handler: _screenState=%d", buf, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setProximityMonitoringEnabled:(BOOL)a3
{
  if (a3)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *gLogObjects;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_2336E3000, v9, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _setProximityMonitoringEnabled", v14, 2u);
    }

    if (!self->_hidEventClient)
    {
      v10 = *MEMORY[0x277CBECE8];
      self->_hidEventClient = IOHIDEventSystemClientCreateWithType();
      IOHIDEventSystemClientSetMatching();
      hidEventClient = self->_hidEventClient;
      CFRunLoopGetMain();
      v12 = *MEMORY[0x277CBF058];
      IOHIDEventSystemClientScheduleWithRunLoop();
      v13 = self->_hidEventClient;
      IOHIDEventSystemClientRegisterEventCallback();
    }
  }

  else
  {
    v6 = self->_hidEventClient;
    CFRunLoopGetMain();
    v7 = *MEMORY[0x277CBF058];
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    v8 = self->_hidEventClient;
    IOHIDEventSystemClientUnregisterEventCallback();
    self->_hidEventClient = 0;
  }
}

- (void)_handleIOHIDEvent:(__IOHIDEvent *)a3
{
  queue = self->_queue;
  if (queue)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__AccessoryTransportPluginNFC__handleIOHIDEvent___block_invoke;
    v5[3] = &unk_2789EBFE8;
    v5[4] = self;
    v5[5] = a3;
    dispatch_sync(queue, v5);
  }
}

- (void)_didScreenStateChange:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x277D85DE8];
  connect = -1431655766;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v4;
  v23 = v4;
  v20 = v4;
  v21 = v4;
  v19 = v4;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v27 = v3;
    _os_log_impl(&dword_2336E3000, v7, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _didScreenStateChange: %d", buf, 8u);
  }

  v8 = *MEMORY[0x277CD28A0];
  v9 = IOServiceMatching("AppleSMCSensorDispatcher");
  MatchingService = IOServiceGetMatchingService(v8, v9);
  if (!MatchingService)
  {
    v15 = logObjectForModule();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "NFC transport plugin: _didScreenStateChange: !service";
      v17 = v15;
      v18 = 2;
LABEL_22:
      _os_log_impl(&dword_2336E3000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v11 = MatchingService;
  v12 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  IOObjectRelease(v11);
  if (v12)
  {
    v15 = logObjectForModule();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v27 = v12;
      v16 = "NFC transport plugin: _didScreenStateChange: IOServiceOpen: 0x%x";
LABEL_21:
      v17 = v15;
      v18 = 8;
      goto LABEL_22;
    }

LABEL_23:

    goto LABEL_14;
  }

  *(&v19 + 1) = 1313227588;
  *&v20 = v3;
  LOBYTE(v19) = 1;
  v13 = IOConnectCallStructMethod(connect, 3u, &v19, 0x58uLL, 0, 0);
  IOServiceClose(connect);
  if (v13)
  {
    v15 = logObjectForModule();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v27 = v13;
      v16 = "NFC transport plugin: _didScreenStateChange: 0x%x";
      goto LABEL_21;
    }

    goto LABEL_23;
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_didNfcTagsListChange:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  connect = -1431655766;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v5;
  v39 = v5;
  v36 = v5;
  v37 = v5;
  inputStruct = v5;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v8, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _didNfcTagsListChange", buf, 2u);
  }

  v9 = [v4 count] << 24;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [v16 tagID];
        if ([(AccessoryTransportPluginNFC *)self _checkLRC:v17])
        {
          v18 = [v16 tagID];
          v19 = [(AccessoryTransportPluginNFC *)self _getAccessoryType:v18];

          *buf = 0;
          [v17 getBytes:buf length:4];
          v9 |= (v19 << (8 * v13++)) | ((buf[1] & 0x30) << 16);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v12);
  }

  v20 = *MEMORY[0x277CD28A0];
  v21 = IOServiceMatching("AppleSMCSensorDispatcher");
  MatchingService = IOServiceGetMatchingService(v20, v21);
  if (!MatchingService)
  {
    v27 = logObjectForModule();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v28 = "NFC transport plugin: _didNfcTagsListChange: !service";
      v29 = v27;
      v30 = 2;
LABEL_31:
      _os_log_impl(&dword_2336E3000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v23 = MatchingService;
  v24 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  IOObjectRelease(v23);
  if (v24)
  {
    v27 = logObjectForModule();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v43 = v24;
      v28 = "NFC transport plugin: _didNfcTagsListChange: IOServiceOpen: 0x%x";
LABEL_30:
      v29 = v27;
      v30 = 8;
      goto LABEL_31;
    }

LABEL_32:

    goto LABEL_23;
  }

  *(&inputStruct + 1) = 1313227604;
  *&v36 = v9;
  LOBYTE(inputStruct) = 1;
  v25 = IOConnectCallStructMethod(connect, 3u, &inputStruct, 0x58uLL, 0, 0);
  IOServiceClose(connect);
  if (v25)
  {
    v27 = logObjectForModule();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v43 = v25;
      v28 = "NFC transport plugin: _didNfcTagsListChange: 0x%x";
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_23:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_closeReaderSession
{
  readerSession = self->_readerSession;
  if (readerSession)
  {
    v26 = 0;
    [(NFAccessoryReaderSession *)readerSession disconnectTag:&v26];
    v4 = v26;
    [(NFAccessoryReaderSession *)self->_readerSession stopPolling:0];
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v5 = self->_readerSession;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__AccessoryTransportPluginNFC__closeReaderSession__block_invoke;
    v17[3] = &unk_2789EC010;
    objc_copyWeak(&v18, &location);
    v17[4] = buf;
    [(NFAccessoryReaderSession *)v5 endSessionWithCompletion:v17];
    v6 = *(v21 + 5);
    v7 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v6, v7);
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_2336E3000, v8, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _closeReaderSession: set _readerSession = nil", v16, 2u);
    }

    v10 = self->_readerSession;
    self->_readerSession = 0;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v4 = 0;
  }

  if (self->_connectedTag)
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 1;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v13 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      v13 = *gLogObjects;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v13, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _closeReaderSession: forcing _connectedTag = nil", buf, 2u);
    }

    connectedTag = self->_connectedTag;
    self->_connectedTag = 0;
  }

  polledTags = self->_polledTags;
  self->_polledTags = 0;
}

void __50__AccessoryTransportPluginNFC__closeReaderSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2336E3000, v5, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _closeReaderSession: set _connectedTag = nil", v9, 2u);
  }

  v6 = WeakRetained[13];
  WeakRetained[13] = 0;

  v7 = WeakRetained[14];
  WeakRetained[14] = 0;

  v8 = WeakRetained[15];
  WeakRetained[15] = 0;

  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
}

- (BOOL)_handleSessionOpen:(BOOL)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (!a3)
  {
    [(AccessoryTransportPluginNFC *)self _closeReaderSession];
LABEL_84:
    v38 = 1;
    goto LABEL_85;
  }

  if (self->_connectedTag)
  {
    v41 = logObjectForModule();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v41, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleSessionOpen: _connectedTag", buf, 2u);
    }

    v14 = 0;
    v12 = 0;
    goto LABEL_97;
  }

  v11 = [(NSMutableDictionary *)self->_connectionUuidForEndpointUuid valueForKey:v9];
  v12 = v11;
  if (!v11 || ([v11 isEqualToString:v10] & 1) == 0)
  {
    v41 = logObjectForModule();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v42 = "NFC transport plugin: _handleSessionOpen: !uuid || !equal";
LABEL_93:
      _os_log_impl(&dword_2336E3000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
    }

LABEL_94:
    v14 = 0;
    goto LABEL_97;
  }

  v13 = [(NSMutableDictionary *)self->_tagForConnectionUuid valueForKey:v10];
  if (!v13)
  {
    v41 = logObjectForModule();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v42 = "NFC transport plugin: _handleSessionOpen: !knownTag";
      goto LABEL_93;
    }

    goto LABEL_94;
  }

  v14 = v13;
  if (!self->_polledTags)
  {
    if ([(AccessoryTransportPluginNFC *)self _tagsHavePowerBits:48 uuid:0]&& ![(AccessoryTransportPluginNFC *)self _getpowerPauseStatus])
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v15 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v15 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2336E3000, v15, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleSessionOpen: powerPause:0", buf, 2u);
      }

      [(AccessoryTransportPluginNFC *)self _requestPowerPause];
      usleep(0x30D40u);
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v17 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(AccessoryTransportPluginNFC *)self _getpowerPauseStatus];
        *buf = 67109120;
        v48 = v19;
        _os_log_impl(&dword_2336E3000, v17, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleSessionOpen: powerPause:0->%d", buf, 8u);
      }
    }

    v20 = [(NSMutableDictionary *)self->_tagForConnectionUuid valueForKey:v10];
    v21 = [v20 silentType];
    if (gLogObjects)
    {
      v22 = gNumLogObjects <= 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = !v22;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (v23)
        {
          v28 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v28 = MEMORY[0x277D86220];
          v35 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2336E3000, v28, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _pollTags:NFACTagTechnologyS2", buf, 2u);
        }

        v31 = self;
        v32 = 64;
        goto LABEL_78;
      }

      if (v21 == 3)
      {
        if (v23)
        {
          v25 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v25 = MEMORY[0x277D86220];
          v33 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2336E3000, v25, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _pollTags:NFACTagTechnologyS3", buf, 2u);
        }

        v31 = self;
        v32 = 128;
        goto LABEL_78;
      }
    }

    else
    {
      if (!v21)
      {
        if (v23)
        {
          v27 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v27 = MEMORY[0x277D86220];
          v34 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2336E3000, v27, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _pollTags", buf, 2u);
        }

        v32 = [v20 technology];
        v31 = self;
        goto LABEL_78;
      }

      if (v21 == 1)
      {
        if (v23)
        {
          v24 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v24 = MEMORY[0x277D86220];
          v30 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2336E3000, v24, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _pollTags:NFACTagTechnologyS1", buf, 2u);
        }

        v31 = self;
        v32 = 32;
LABEL_78:
        [(AccessoryTransportPluginNFC *)v31 _pollTags:v32];
LABEL_79:

        if (self->_polledTags)
        {
          goto LABEL_80;
        }

        v41 = logObjectForModule();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2336E3000, v41, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleSessionOpen: !_polledTags", buf, 2u);
        }

LABEL_97:

        goto LABEL_98;
      }
    }

    if (v23)
    {
      v26 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v26 = MEMORY[0x277D86220];
      v29 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v26, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: skip _pollTags", buf, 2u);
    }

    goto LABEL_79;
  }

LABEL_80:
  v36 = [v14 tagID];
  v37 = [(AccessoryTransportPluginNFC *)self _connectToTagId:v36];

  if (v37 && self->_connectedTag && self->_connectedTagId)
  {
    objc_storeStrong(&self->_connectedTagEndpointUuid, a4);

    goto LABEL_84;
  }

LABEL_98:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v43 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v43 = MEMORY[0x277D86220];
    v44 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v45 = self->_connectedTag != 0;
    v46 = self->_connectedTagId != 0;
    *buf = 67109632;
    v48 = 0;
    v49 = 1024;
    v50 = v45;
    v51 = 1024;
    v52 = v46;
    _os_log_impl(&dword_2336E3000, v43, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _connectToTagId failed: success:%d, _connectedTag:%d, _connectedTagId:%d", buf, 0x14u);
  }

  v38 = 0;
LABEL_85:

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

- (BOOL)_hasWalletOnClearCase2020:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) tagID];
        v12 = [(AccessoryTransportPluginNFC *)self _getAccessoryType:v11];

        v7 |= v12 == 67;
        v8 |= (v12 - 87) < 2;
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
    v13 = v8 & v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

- (BOOL)_checkProductTypeCompatibility:(unsigned __int8)a3
{
  v3 = a3;
  v4 = systemInfo_copyProductType();
  if (!v4)
  {
    [AccessoryTransportPluginNFC _checkProductTypeCompatibility:];
    return 1;
  }

  v5 = v4;
  result = 0;
  if ((v3 - 86) <= 0x3F)
  {
    if (((1 << (v3 - 86)) & 0x8C008C0010008C08) != 0)
    {
      return result;
    }

    if (v3 == 86)
    {
      goto LABEL_9;
    }
  }

  v7 = v3 - 22;
  if ((v3 - 22) > 0x3F)
  {
    return 1;
  }

  if (((1 << v7) & 0x4080480000000000) == 0)
  {
    if (((1 << v7) & 0x8100800000000001) != 0)
    {
      return result;
    }

    if (((1 << v7) & 0x2040200000000000) == 0)
    {
      return 1;
    }

LABEL_9:
    if (CFStringCompare(v5, @"iPhone13,1", 0) == kCFCompareEqualTo || CFStringCompare(v5, @"iPhone13,2", 0) == kCFCompareEqualTo || CFStringCompare(v5, @"iPhone13,3", 0) == kCFCompareEqualTo)
    {
      return 1;
    }

    v8 = @"iPhone13,4";
    return CFStringCompare(v5, v8, 0) == kCFCompareEqualTo;
  }

  if (CFStringCompare(v5, @"iPhone14,2", 0) == kCFCompareEqualTo || CFStringCompare(v5, @"iPhone14,3", 0) == kCFCompareEqualTo || CFStringCompare(v5, @"iPhone14,4", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v8 = @"iPhone14,5";
  return CFStringCompare(v5, v8, 0) == kCFCompareEqualTo;
}

- (int)_animationDelayMs:(unsigned __int8)a3
{
  v3 = a3 - 22;
  if ((a3 - 22) > 0x3F)
  {
    goto LABEL_2;
  }

  if (((1 << v3) & 0x60C0680000000000) != 0)
  {
    return 600;
  }

  if (((1 << v3) & 0x8100800000000000) == 0 && a3 != 22)
  {
LABEL_2:
    v4 = a3 - 89;
    if ((a3 - 89) > 0x3C || ((1 << v4) & 0x1181) == 0 && ((1 << v4) & 0x118002000000) == 0 && ((1 << v4) & 0x1180000000000000) == 0)
    {
      if ((a3 - 87) >= 2)
      {
        return 0;
      }

      return 600;
    }
  }

  return 170;
}

- (BOOL)_checkLRC:(id)a3
{
  v3 = a3;
  v4 = v3;
  v18 = 0;
  if (v3 && [v3 length] == 4)
  {
    OUTLINED_FUNCTION_6(4, v5, v6, v7, v8, v9, v10, v11, v16, v17, v18);
    v12 = 0;
    v13 = 19;
    do
    {
      v13 += *(&v18 + v12++);
    }

    while (v12 != 3);
    v14 = HIBYTE(v18) == -v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_requiresLegacyAuth:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length] == 4)
  {
    OUTLINED_FUNCTION_6(4, v5, v6, v7, v8, v9, v10, v11, v14, v15, 0);
    v12 = (v16 != 66) & (v17 >> 4);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)_requiresMfi40Auth:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length] == 4)
  {
    OUTLINED_FUNCTION_6(4, v5, v6, v7, v8, v9, v10, v11, v21, v22, 0);
    v12 = v23 < 0;
  }

  else
  {
    v12 = 0;
  }

  if (acc_userDefaults_BOOLForKey(@"ForceMFi4AuthOverNFC"))
  {
    v13 = gLogObjects;
    v14 = gNumLogObjects;
    if (gLogObjects)
    {
      v15 = gNumLogObjects < 1;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v25 = v13;
        v26 = 1024;
        LODWORD(v27) = v14;
        OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }

      v18 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    else
    {
      v18 = *gLogObjects;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v25 = "[AccessoryTransportPluginNFC _requiresMfi40Auth:]";
      v26 = 2112;
      v27 = @"ForceMFi4AuthOverNFC";
      v28 = 1024;
      v29 = v12;
      v30 = 1024;
      v31 = 1;
      _os_log_impl(&dword_2336E3000, v18, OS_LOG_TYPE_DEFAULT, "%s: %@ requiresAuth %d -> %d", buf, 0x22u);
    }

    LOBYTE(v12) = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_decodeTagIdentifier:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v74 = 0;
  if (v4 && [v4 length] == 4)
  {
    v6 = objc_opt_new();
    v7 = v6;
    if (v6)
    {
      [v6 setObject:v5 forKey:*MEMORY[0x277CFD320]];
      [v5 getBytes:&v74 length:4];
      v8 = [(AccessoryTransportPluginNFC *)self _getAccessoryType:v5];
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[AccessoryTransportPluginNFC _checkProductTypeCompatibility:](self, "_checkProductTypeCompatibility:", v8)}];
        [v7 setValue:v10 forKey:*MEMORY[0x277CFD2F8]];

        v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[AccessoryTransportPluginNFC _animationDelayMs:](self, "_animationDelayMs:", v9)}];
        [v7 setValue:v11 forKey:*MEMORY[0x277CFD338]];

        v12 = [MEMORY[0x277CCABB0] numberWithChar:v9];
        [v7 setValue:v12 forKey:*MEMORY[0x277CFD330]];

        v13 = [MEMORY[0x277CCABB0] numberWithInt:{-[AccessoryTransportPluginNFC _getAccessoryFamily:](self, "_getAccessoryFamily:", v5)}];
        v14 = *MEMORY[0x277CFD300];
        OUTLINED_FUNCTION_5();

        v15 = BYTE1(v74);
        LODWORD(v16) = BYTE1(v74) & 1;
        v17 = 0;
        v18 = 0;
        v19 = 16;
        v20 = &colorWashTable0x53;
        switch(v74)
        {
          case 'A':
            OUTLINED_FUNCTION_2();
            v19 = 2;
            v20 = &colorWashTable0x41;
            goto LABEL_31;
          case 'B':
          case 'D':
          case 'E':
          case 'F':
          case 'G':
          case 'H':
          case 'I':
          case 'J':
          case 'K':
          case 'O':
          case 'P':
          case 'Q':
          case 'R':
            goto LABEL_79;
          case 'C':
            OUTLINED_FUNCTION_2();
            if (v16)
            {
              v20 = &colorWashTable0x43;
            }

            else
            {
              v20 = 0;
            }

            v19 = 2 * v16;
            goto LABEL_31;
          case 'L':
            OUTLINED_FUNCTION_2();
            v19 = 7;
            v20 = &colorWashTable0x4c;
            goto LABEL_31;
          case 'M':
            OUTLINED_FUNCTION_2();
            v19 = 11;
            v20 = &colorWashTable0x4d;
            goto LABEL_31;
          case 'N':
            OUTLINED_FUNCTION_2();
            v19 = 6;
            v20 = &colorWashTable0x4e;
            goto LABEL_31;
          case 'S':
            goto LABEL_31;
          case 'T':
            OUTLINED_FUNCTION_2();
            v19 = 32;
            v20 = &colorWashTable0x54;
            goto LABEL_31;
          case 'U':
            OUTLINED_FUNCTION_2();
            v19 = 13;
            v20 = &colorWashTable0x55;
            goto LABEL_31;
          case 'V':
            v18 = 1;
            v17 = &colorWashTableSecondary0x56;
            v19 = 6;
            v20 = &colorWashTable0x56;
            goto LABEL_31;
          case 'W':
            OUTLINED_FUNCTION_2();
            v19 = 19;
            v20 = &colorWashTable0x57;
            goto LABEL_31;
          case 'X':
            OUTLINED_FUNCTION_2();
            v19 = 6;
            v20 = &colorWashTable0x58;
            goto LABEL_31;
          default:
            switch(v74)
            {
              case 0x60u:
                OUTLINED_FUNCTION_2();
                v19 = 7;
                v20 = &colorWashTable0x60;
                break;
              case 0x61u:
                OUTLINED_FUNCTION_2();
                v19 = 10;
                v20 = &colorWashTable0x61;
                break;
              case 0x72u:
                OUTLINED_FUNCTION_2();
                v19 = 2;
                v20 = &colorWashTable0x72;
                break;
              case 0x80u:
                OUTLINED_FUNCTION_2();
                v19 = 6;
                v20 = &colorWashTable0x80;
                break;
              case 0x81u:
                OUTLINED_FUNCTION_2();
                v19 = 13;
                v20 = &colorWashTable0x81;
                break;
              case 0x91u:
                OUTLINED_FUNCTION_2();
                v19 = 13;
                v20 = &colorWashTable0x91;
                break;
              default:
                goto LABEL_79;
            }

LABEL_31:
            if (v16)
            {
              v21 = BYTE2(v74) & 0x3F;
              v22 = [MEMORY[0x277CCABB0] numberWithChar:v21];
              [v7 setValue:v22 forKey:*MEMORY[0x277CFD340]];

              if (v21)
              {
                if (v19 > v21)
                {
                  v71 = v17;
                  *&v23 = -1;
                  *(&v23 + 1) = -1;
                  v72 = v23;
                  v73 = v23;
                  v24 = +[ACCUserDefaults sharedDefaults];
                  v25 = [v24 BOOLForKey:?];

                  v26 = gLogObjects;
                  v27 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 1)
                  {
                    v28 = *gLogObjects;
                  }

                  else
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134218240;
                      *&buf[4] = v26;
                      *&buf[12] = 1024;
                      *&buf[14] = v27;
                      OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v29, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                    }

                    v28 = MEMORY[0x277D86220];
                    v30 = MEMORY[0x277D86220];
                  }

                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *&buf[4] = v25;
                    _os_log_impl(&dword_2336E3000, v28, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: allow override: %d", buf, 8u);
                  }

                  if (v25 && (+[ACCUserDefaults sharedDefaults](ACCUserDefaults, "sharedDefaults"), v31 = objc_claimAutoreleasedReturnValue(), [v31 stringForKey:@"NFCColorOverride"], v32 = objc_claimAutoreleasedReturnValue(), v31, v32) && (v33 = parseColorString(v32, &v72), v32, v33))
                  {
                    v34 = gLogObjects;
                    v35 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 1)
                    {
                      v36 = *gLogObjects;
                    }

                    else
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134218240;
                        *&buf[4] = v34;
                        *&buf[12] = 1024;
                        *&buf[14] = v35;
                        OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                      }

                      v36 = MEMORY[0x277D86220];
                      v39 = MEMORY[0x277D86220];
                    }

                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218496;
                      *&buf[4] = v72;
                      *&buf[12] = 2048;
                      *&buf[14] = *(&v72 + 1);
                      *&buf[22] = 2048;
                      *&buf[24] = v73;
                      _os_log_impl(&dword_2336E3000, v36, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: override %f %f %f", buf, 0x20u);
                    }

                    v37 = &v72;
                  }

                  else
                  {
                    v37 = &v20[32 * v21];
                  }

                  v40 = [MEMORY[0x277CBEA90] dataWithBytes:v37 length:32];
                  [v7 setValue:v40 forKey:*MEMORY[0x277CFD2E8]];
                  if (v18)
                  {
                    *&v41 = -1;
                    *(&v41 + 1) = -1;
                    *buf = v41;
                    *&buf[16] = v41;
                    v42 = +[ACCUserDefaults sharedDefaults];
                    v43 = [v42 BOOLForKey:@"AllowNFCColorOverride"];

                    v44 = gLogObjects;
                    v45 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 1)
                    {
                      v46 = *gLogObjects;
                    }

                    else
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        *v75 = 134218240;
                        v76 = v44;
                        v77 = 1024;
                        LODWORD(v78) = v45;
                        OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v75);
                      }

                      v46 = MEMORY[0x277D86220];
                      v48 = MEMORY[0x277D86220];
                    }

                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                    {
                      *v75 = 67109120;
                      LODWORD(v76) = v43;
                      _os_log_impl(&dword_2336E3000, v46, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: allow override: %d", v75, 8u);
                    }

                    if (v43 && (+[ACCUserDefaults sharedDefaults](ACCUserDefaults, "sharedDefaults"), v49 = objc_claimAutoreleasedReturnValue(), [v49 stringForKey:@"NFCSecondaryColorOverride"], v50 = objc_claimAutoreleasedReturnValue(), v49, v50) && (v51 = parseColorString(v50, buf), v50, v51))
                    {
                      v52 = gLogObjects;
                      v53 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 1)
                      {
                        v54 = *gLogObjects;
                      }

                      else
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          *v75 = 134218240;
                          v76 = v52;
                          v77 = 1024;
                          LODWORD(v78) = v53;
                          OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v57, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v75);
                        }

                        v54 = MEMORY[0x277D86220];
                        v58 = MEMORY[0x277D86220];
                      }

                      v56 = 0x277CBE000uLL;
                      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                      {
                        *v75 = 134218496;
                        v76 = *buf;
                        v77 = 2048;
                        v78 = *&buf[8];
                        v79 = 2048;
                        v80 = *&buf[16];
                        _os_log_impl(&dword_2336E3000, v54, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: secondary override %f %f %f", v75, 0x20u);
                      }

                      v55 = buf;
                    }

                    else
                    {
                      v55 = &v71[32 * v21];
                      v56 = 0x277CBE000;
                    }

                    v59 = [*(v56 + 2704) dataWithBytes:v55 length:32];
                    v60 = *MEMORY[0x277CFD2F0];
                    OUTLINED_FUNCTION_5();
                  }
                }
              }
            }

LABEL_79:
            if ((v15 & 2) != 0)
            {
              v61 = [OUTLINED_FUNCTION_7() numberWithBool:?];
              v62 = *MEMORY[0x277CFD308];
              OUTLINED_FUNCTION_5();

              if ((v15 & 4) == 0)
              {
LABEL_81:
                if ((v15 & 0x10) == 0)
                {
                  goto LABEL_82;
                }

                goto LABEL_86;
              }
            }

            else if ((v15 & 4) == 0)
            {
              goto LABEL_81;
            }

            v63 = [OUTLINED_FUNCTION_7() numberWithBool:?];
            v64 = *MEMORY[0x277CFD328];
            OUTLINED_FUNCTION_5();

            if ((v15 & 0x10) == 0)
            {
LABEL_82:
              if ((v15 & 0x20) == 0)
              {
                break;
              }

              goto LABEL_87;
            }

LABEL_86:
            v65 = [OUTLINED_FUNCTION_7() numberWithBool:?];
            v66 = *MEMORY[0x277CFD2E0];
            OUTLINED_FUNCTION_5();

            if ((v15 & 0x20) == 0)
            {
              break;
            }

LABEL_87:
            v67 = [OUTLINED_FUNCTION_7() numberWithBool:?];
            v68 = *MEMORY[0x277CFD2D8];
            OUTLINED_FUNCTION_5();

            break;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v69 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_connectToTagId:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  connectedTagId = self->_polledTags;
  v5 = [(NSArray *)connectedTagId countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v5)
  {
    v11 = 0;
    v8 = 0;
LABEL_26:
    v24 = 0;
LABEL_30:

    v14 = v8;
    goto LABEL_31;
  }

  v7 = v5;
  v8 = 0;
  v9 = *v37;
  *&v6 = 134218240;
  v29 = v6;
  obj = connectedTagId;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v37 != v9)
    {
      objc_enumerationMutation(obj);
    }

    v11 = *(*(&v36 + 1) + 8 * v10);
    readerSession = self->_readerSession;
    v35 = v8;
    v13 = [(NFAccessoryReaderSession *)readerSession connectTag:v11 error:&v35, v29];
    v14 = v35;

    if ((v13 & 1) == 0)
    {
      v19 = gLogObjects;
      v20 = gNumLogObjects;
      v17 = MEMORY[0x277D86220];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = v29;
          v42 = v19;
          v43 = 1024;
          v44 = v20;
          _os_log_error_impl(&dword_2336E3000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v21 = v17;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v14;
        _os_log_impl(&dword_2336E3000, v17, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: connectTag failed: %@", buf, 0xCu);
      }

      v8 = v14;
      goto LABEL_21;
    }

    if (!v31)
    {
      v23 = v11;
      goto LABEL_28;
    }

    v15 = self->_readerSession;
    v34 = v14;
    v16 = [(NFAccessoryReaderSession *)v15 readTypeIdentifier:&v34];
    v17 = v34;

    if (!v16)
    {
      v22 = self->_readerSession;
      v33 = v17;
      [(NFAccessoryReaderSession *)v22 disconnectTag:&v33];
      v8 = v33;
      goto LABEL_21;
    }

    if (([v16 isEqualToData:v31]& 1) != 0)
    {
      break;
    }

    v18 = self->_readerSession;
    v32 = v17;
    [(NFAccessoryReaderSession *)v18 disconnectTag:&v32];
    v8 = v32;

    v17 = v16;
LABEL_21:

    if (v7 == ++v10)
    {
      connectedTagId = obj;
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      v11 = 0;
      goto LABEL_26;
    }
  }

  v25 = v11;

  v14 = v17;
LABEL_28:

  if (v11)
  {
    objc_storeStrong(&self->_connectedTag, v11);
    v26 = v31;
    connectedTagId = self->_connectedTagId;
    self->_connectedTagId = v26;
    v24 = 1;
    v8 = v14;
    goto LABEL_30;
  }

  v24 = 0;
LABEL_31:

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

void __49__AccessoryTransportPluginNFC__handleIOHIDEvent___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  IntegerValue = IOHIDEventGetIntegerValue();
  v4 = (IntegerValue >> 10) & 1;
  if (*(*(a1 + 32) + 152) == v4)
  {
    goto LABEL_18;
  }

  if (v4)
  {
    goto LABEL_5;
  }

  memset(v20, 170, 16);
  clock_gettime(_CLOCK_REALTIME, v20);
  v5 = *(a1 + 32);
  if (*(v5 + 184) != 1)
  {
    goto LABEL_5;
  }

  v6 = (v5 + 160);
  if (*v20 < *v6)
  {
    goto LABEL_5;
  }

  if (*v20 == *v6)
  {
    v19 = *&v20[8];
LABEL_23:
    v7 = v19 - v6[1] < 350000000;
    goto LABEL_6;
  }

  if (*v20 == *v6 + 1)
  {
    v19 = *&v20[8] + 1000000000;
    goto LABEL_23;
  }

LABEL_5:
  v7 = 0;
LABEL_6:
  v8 = HIDWORD(gLogObjects);
  v9 = gNumLogObjects;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *&v20[8] = v8;
      *&v20[12] = 1024;
      *&v20[14] = v9;
      OUTLINED_FUNCTION_1(&dword_2336E3000, MEMORY[0x277D86220], v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v12, v13, v14, v15, 0);
    }

    v17 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *gLogObjects;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 67109632;
    *&v20[4] = (IntegerValue >> 10) & 1;
    *&v20[8] = 1024;
    *&v20[10] = IntegerValue;
    *&v20[14] = 1024;
    *&v20[16] = v7;
    _os_log_impl(&dword_2336E3000, v17, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleIOHIDEvent: %d, %x, ignore=%d", v20, 0x14u);
  }

  if (!v7)
  {
    *(*(a1 + 32) + 152) = v4;
  }

LABEL_18:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccessoryPower:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  connect = 0;
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  if (!IOServiceOpen(ServiceWithPrimaryPort, *MEMORY[0x277D85F48], 0, &connect) && connect)
  {
    if (v3)
    {
      v5 = IOAccessoryManagerAllowFeatures();
    }

    else
    {
      v5 = IOAccessoryManagerRevokeFeatures();
    }

    v6 = v5;
    if (v5)
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v15 = v7;
          *&v15[8] = 1024;
          v16 = v8;
          OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v10, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v9 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v15 = v3;
        *&v15[4] = 1024;
        *&v15[6] = v6;
        _os_log_error_impl(&dword_2336E3000, v9, OS_LOG_TYPE_ERROR, "NFC transport plugin: Set Feature Mask %d fail kernStatus:%02X", buf, 0xEu);
      }
    }

    IOServiceClose(connect);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendOutgoingData:(uint64_t)a1 forEndpointWithUUID:(int)a2 connectionUUID:.cold.1(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3[0] = 67109632;
  v3[1] = 3;
  v4 = 2048;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_2336E3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging_signposts() / init_logging()!\n module %d, gLogSignpostObjects: %p, gNumLogSignpostObjects: %d", v3, 0x18u);
  v2 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_handleNearFieldAccessoryEventNotification:.cold.6()
{
  dlerror();
  v0 = abort_report_np();
  return [(AccessoryTransportPluginNFC *)v0 _getNfcStateMachineState];
}

- (void)_getNfcStateMachineState
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_8(v1))
  {
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_checkProductTypeCompatibility:.cold.1()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_8(v1))
  {
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

@end