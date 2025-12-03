@interface ACCBLEPairingFeaturePlugin
- (BOOL)_isSupportedType:(unsigned __int8)type supportedListData:(id)data;
- (NSString)description;
- (NSString)pluginName;
- (id)bleAccessoryForConnectionID:(unsigned int)d;
- (void)blePairing:(id)pairing accessoryAttached:(id)attached blePairingUUID:(id)d accInfoDict:(id)dict supportedPairTypes:(id)types;
- (void)blePairing:(id)pairing accessoryDetached:(id)detached blePairingUUID:(id)d;
- (void)blePairingDataUpdate:(id)update pairType:(int)type pairData:(id)data accessory:(id)accessory blePairingUUID:(id)d;
- (void)blePairingInfoUpdate:(id)update pairType:(int)type pairInfoList:(id)list accessory:(id)accessory blePairingUUID:(id)d;
- (void)blePairingStateUpdate:(id)update validMask:(unsigned int)mask btRadioOn:(BOOL)on pairingState:(int)state pairingModeOn:(BOOL)modeOn accessory:(id)accessory blePairingUUID:(id)d;
- (void)deviceSend:(id)send pairType:(int)type pairingData:(id)data;
- (void)deviceStartBLEUpdates:(id)updates pairType:(int)type btRadio:(BOOL)radio pairInfo:(BOOL)info;
- (void)deviceStateUpdate:(id)update btRadio:(unsigned __int8)radio pairStatus:(int)status pairModeOn:(BOOL)on forceUpdates:(BOOL)updates;
- (void)deviceStopBLEUpdates:(id)updates;
- (void)deviceUpdate:(id)update pairType:(int)type pairInfo:(id)info;
- (void)initPlugin;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCBLEPairingFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  pluginName = [(ACCBLEPairingFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCBLEPairingFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (isRunning)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", pluginName, v5, v7];

  return v8;
}

- (void)initPlugin
{
  init_logging();
  iap2server = self->_iap2server;
  self->_iap2server = 0;

  blePairingProvider = self->_blePairingProvider;
  self->_blePairingProvider = 0;

  blePairingAccessoryList = self->_blePairingAccessoryList;
  self->_blePairingAccessoryList = 0;

  [(ACCBLEPairingFeaturePlugin *)self setIsRunning:0];
  v6 = MEMORY[0x277CE84E8];

  [v6 resetServerState];
}

- (void)startPlugin
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2335AD000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopPlugin
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
      [ACCBLEPairingFeaturePlugin startPlugin];
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
    _os_log_impl(&dword_2335AD000, v5, OS_LOG_TYPE_DEFAULT, "Stopping BLE Pairing feature plugin...", buf, 2u);
  }

  [(ACCBLEPairingFeaturePlugin *)self setIsRunning:0];
  [(ACCiAP2ShimServer *)self->_iap2server removeDelegate:self->_blePairingShim];
  blePairingShim = self->_blePairingShim;
  self->_blePairingShim = 0;

  dispatch_sync(self->_blePairingQueue, &__block_literal_global);
  blePairingProvider = self->_blePairingProvider;
  self->_blePairingProvider = 0;

  blePairingQueue = self->_blePairingQueue;
  self->_blePairingQueue = 0;

  blePairingAccessoryList = self->_blePairingAccessoryList;
  self->_blePairingAccessoryList = 0;

  [(ACCiAP2ShimServer *)self->_iap2server stopServer];
  iap2server = self->_iap2server;
  self->_iap2server = 0;

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_2335AD000, v11, OS_LOG_TYPE_DEFAULT, "Stopping BLE Pairing feature plugin... finished", v13, 2u);
  }
}

- (void)blePairing:(id)pairing accessoryAttached:(id)attached blePairingUUID:(id)d accInfoDict:(id)dict supportedPairTypes:(id)types
{
  v46 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  attachedCopy = attached;
  dCopy = d;
  dictCopy = dict;
  typesCopy = types;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 1;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *gLogObjects;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    blePairingShim = self->_blePairingShim;
    iap2server = self->_iap2server;
    blePairingProvider = self->_blePairingProvider;
    *buf = 138413570;
    v35 = pairingCopy;
    v36 = 2112;
    v37 = attachedCopy;
    v38 = 2112;
    v39 = dCopy;
    v40 = 2112;
    v41 = blePairingProvider;
    v42 = 2112;
    v43 = blePairingShim;
    v44 = 2112;
    v45 = iap2server;
    _os_log_impl(&dword_2335AD000, v19, OS_LOG_TYPE_INFO, "blePairing: %@ accessoryAttached: %@, blePairingUUID=%@, _blePairingProvider=%@ _blePairingShim=%@ _iap2server=%@", buf, 0x3Eu);
  }

  if (dictCopy)
  {
    v23 = [dictCopy objectForKey:*MEMORY[0x277CE8070]];
  }

  else
  {
    v23 = 0;
  }

  if ([v23 isEqualToString:@"A1603"] && !-[ACCBLEPairingFeaturePlugin _isSupportedType:supportedListData:](self, "_isSupportedType:supportedListData:", 1, typesCopy))
  {
    blePairingQueue = self->_blePairingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__ACCBLEPairingFeaturePlugin_blePairing_accessoryAttached_blePairingUUID_accInfoDict_supportedPairTypes___block_invoke;
    block[3] = &unk_2789E0FF8;
    v29 = attachedCopy;
    v30 = dictCopy;
    v31 = dCopy;
    v32 = typesCopy;
    selfCopy = self;
    dispatch_async(blePairingQueue, block);

    v24 = v29;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v24 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v35 = pairingCopy;
      v36 = 2112;
      v37 = attachedCopy;
      v38 = 2112;
      v39 = dCopy;
      _os_log_impl(&dword_2335AD000, v24, OS_LOG_TYPE_INFO, "blePairing: %@ accessoryAttached: %@, blePairingUUID=%@, detected non-supported, don't use shim plugin", buf, 0x20u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __105__ACCBLEPairingFeaturePlugin_blePairing_accessoryAttached_blePairingUUID_accInfoDict_supportedPairTypes___block_invoke(void *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CE84E0]) initWithUID:a1[4] keyTag:@"BLEPairing" features:0];
  v3 = a1[5];
  if (v3)
  {
    v4 = [v3 objectForKey:*MEMORY[0x277CE8070]];
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    v6 = [v5 objectForKey:*MEMORY[0x277CE8068]];
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  if (v7)
  {
    v8 = [v7 objectForKey:*MEMORY[0x277CE8078]];
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[5];
  if (v9)
  {
    v10 = [v9 objectForKey:*MEMORY[0x277CE8080]];
  }

  else
  {
    v10 = 0;
  }

  v11 = a1[5];
  if (v11)
  {
    v12 = [v11 objectForKey:*MEMORY[0x277CE8058]];
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[5];
  if (v13)
  {
    v14 = [v13 objectForKey:*MEMORY[0x277CE8060]];
  }

  else
  {
    v14 = 0;
  }

  if (v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = &stru_2848E3990;
  }

  [v2 setName:v15];
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v16 = &stru_2848E3990;
  }

  [v2 setModel:v16];
  if (v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = &stru_2848E3990;
  }

  [v2 setManufacturer:v17];
  if (v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = &stru_2848E3990;
  }

  [v2 setSerialNumber:v18];
  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = &stru_2848E3990;
  }

  [v2 setFirmwareVersion:{v19, v12}];
  if (v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = &stru_2848E3990;
  }

  [v2 setHardwareVersion:v20];
  [v2 addFeature:4];
  v21 = objc_alloc_init(ACCBLEPairingAccessory);
  [(ACCBLEPairingAccessory *)v21 setIap2ShimAccessory:v2];
  [(ACCBLEPairingAccessory *)v21 setBlePairingUUID:a1[6]];
  [(ACCBLEPairingAccessory *)v21 setSupportedPairTypes:a1[7]];
  v39 = v10;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v22 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  v24 = v4;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __105__ACCBLEPairingFeaturePlugin_blePairing_accessoryAttached_blePairingUUID_accInfoDict_supportedPairTypes___block_invoke_cold_2(v2, v22);
  }

  v25 = *(a1[8] + 48);
  v26 = [v2 connectionIDObj];
  [v25 setObject:v21 forKey:v26];

  [*(a1[8] + 16) addAccessory:v2];
  if (a1[6] && *(a1[8] + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v27 = [v2 accessoryInfoDict];
    v28 = [v27 mutableCopy];

    v29 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v28 setObject:v29 forKey:*MEMORY[0x277CE80B8]];

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v30 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v30 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v36 = a1[6];
      v37 = a1[7];
      *buf = 138413058;
      v41 = v21;
      v42 = 2112;
      v43 = v36;
      v44 = 2112;
      v45 = v28;
      v46 = 2112;
      v47 = v37;
      _os_log_debug_impl(&dword_2335AD000, v30, OS_LOG_TYPE_DEBUG, "accessoryAttached: call shim accessoryAttached: bleAccessory=%@ blePairingUUID=%@ pAccDict=%@ supportedPairTypes=%@", buf, 0x2Au);
    }

    [*(a1[8] + 40) accessoryAttached:v21 blePairingUUID:a1[6] accInfoDict:v28 supportedPairTypes:a1[7]];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v28 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v28 = MEMORY[0x277D86220];
      v31 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v32 = a1[6];
      v33 = *(a1[8] + 40);
      *buf = 138412546;
      v41 = v32;
      v42 = 2112;
      v43 = v33;
      _os_log_impl(&dword_2335AD000, v28, OS_LOG_TYPE_INFO, "Invalid blePairingUUID(%@) or _blePairingShim(%@)", buf, 0x16u);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)blePairing:(id)pairing accessoryDetached:(id)detached blePairingUUID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  detachedCopy = detached;
  dCopy = d;
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
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    blePairingShim = self->_blePairingShim;
    iap2server = self->_iap2server;
    blePairingProvider = self->_blePairingProvider;
    *buf = 138413570;
    v25 = pairingCopy;
    v26 = 2112;
    v27 = detachedCopy;
    v28 = 2112;
    v29 = dCopy;
    v30 = 2112;
    v31 = blePairingProvider;
    v32 = 2112;
    v33 = blePairingShim;
    v34 = 2112;
    v35 = iap2server;
    _os_log_impl(&dword_2335AD000, v13, OS_LOG_TYPE_INFO, "blePairing: %@ accessoryDetached: %@, blePairingUUID=%@, _blePairingProvider=%@ _blePairingShim=%@ _iap2server=%@", buf, 0x3Eu);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ACCBLEPairingFeaturePlugin_blePairing_accessoryDetached_blePairingUUID___block_invoke;
  block[3] = &unk_2789E1020;
  block[4] = self;
  v22 = detachedCopy;
  v23 = dCopy;
  v18 = dCopy;
  v19 = detachedCopy;
  dispatch_async(blePairingQueue, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __74__ACCBLEPairingFeaturePlugin_blePairing_accessoryDetached_blePairingUUID___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 16) findAccessoryForAccessoryUID:a1[5] andKeyTag:@"BLEPairing"];
  if (v2 && a1[6] && *(a1[4] + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1[4] + 16) removeAccessory:v2];
    v3 = *(a1[4] + 48);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v2, "connectionID")}];
    v5 = [v3 objectForKey:v4];

    [*(a1[4] + 40) accessoryDetached:v5 blePairingUUID:a1[6]];
    v6 = *(a1[4] + 48);
    v7 = [v2 connectionIDObj];
    [v6 removeObjectForKey:v7];
  }

  else
  {
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
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v5 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = a1[6];
      v11 = *(a1[4] + 40);
      v13 = 138412802;
      v14 = v2;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2335AD000, v5, OS_LOG_TYPE_INFO, "Invalid accessory(%@) or blePairingUUID(%@) or _blePairingShim(%@)", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)blePairingStateUpdate:(id)update validMask:(unsigned int)mask btRadioOn:(BOOL)on pairingState:(int)state pairingModeOn:(BOOL)modeOn accessory:(id)accessory blePairingUUID:(id)d
{
  modeOnCopy = modeOn;
  onCopy = on;
  v52 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  accessoryCopy = accessory;
  dCopy = d;
  if (gLogObjects)
  {
    v18 = gNumLogObjects < 1;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v20 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  else
  {
    v20 = *gLogObjects;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138414338;
    v35 = updateCopy;
    v36 = 1024;
    maskCopy = mask;
    v38 = 1024;
    v39 = onCopy;
    v40 = 1024;
    stateCopy = state;
    v42 = 1024;
    v43 = modeOnCopy;
    v44 = 2112;
    v45 = accessoryCopy;
    v46 = 2112;
    v47 = dCopy;
    v48 = 2112;
    v49 = blePairingProvider;
    v50 = 2112;
    v51 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v20, OS_LOG_TYPE_INFO, "blePairingStateUpdate: %@ validMask: %d btRadioOn: %d pairingState: %d pairingModeOn: %d accessory: %@ blePairingUUID: %@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x4Cu);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__ACCBLEPairingFeaturePlugin_blePairingStateUpdate_validMask_btRadioOn_pairingState_pairingModeOn_accessory_blePairingUUID___block_invoke;
  block[3] = &unk_2789E1048;
  block[4] = self;
  v28 = accessoryCopy;
  v29 = dCopy;
  v32 = onCopy;
  maskCopy2 = mask;
  stateCopy2 = state;
  v33 = modeOnCopy;
  v24 = dCopy;
  v25 = accessoryCopy;
  dispatch_async(blePairingQueue, block);

  v26 = *MEMORY[0x277D85DE8];
}

void __124__ACCBLEPairingFeaturePlugin_blePairingStateUpdate_validMask_btRadioOn_pairingState_pairingModeOn_accessory_blePairingUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) findAccessoryForAccessoryUID:*(a1 + 40) andKeyTag:@"BLEPairing"];
  if (v2 && *(a1 + 48) && *(*(a1 + 32) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = [v2 connectionIDObj];
    v5 = [v3 objectForKey:v4];

    [*(*(a1 + 32) + 40) stateUpdate:v5 blePairingUUID:*(a1 + 48) validMask:*(a1 + 56) btRadioOn:*(a1 + 64) pairingState:*(a1 + 60) pairingModeOn:*(a1 + 65)];
  }

  else
  {
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
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v5 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      v9 = *(*(a1 + 32) + 40);
      v11 = 138412802;
      v12 = v2;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2335AD000, v5, OS_LOG_TYPE_INFO, "Invalid accessory(%@) or blePairingUUID(%@) or _blePairingShim(%@)", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)blePairingInfoUpdate:(id)update pairType:(int)type pairInfoList:(id)list accessory:(id)accessory blePairingUUID:(id)d
{
  v45 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  listCopy = list;
  accessoryCopy = accessory;
  dCopy = d;
  if (gLogObjects)
  {
    v16 = gNumLogObjects < 1;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v18 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  else
  {
    v18 = *gLogObjects;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413826;
    v32 = updateCopy;
    v33 = 1024;
    typeCopy = type;
    v35 = 2112;
    v36 = listCopy;
    v37 = 2112;
    v38 = accessoryCopy;
    v39 = 2112;
    v40 = dCopy;
    v41 = 2112;
    v42 = blePairingProvider;
    v43 = 2112;
    v44 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v18, OS_LOG_TYPE_INFO, "blePairingInfoUpdate: %@ pairType: %d pairInfoList: %@ accessory: %@ blePairingUUID: %@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x44u);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__ACCBLEPairingFeaturePlugin_blePairingInfoUpdate_pairType_pairInfoList_accessory_blePairingUUID___block_invoke;
  block[3] = &unk_2789E1070;
  block[4] = self;
  v27 = accessoryCopy;
  typeCopy2 = type;
  v28 = dCopy;
  v29 = listCopy;
  v22 = listCopy;
  v23 = dCopy;
  v24 = accessoryCopy;
  dispatch_async(blePairingQueue, block);

  v25 = *MEMORY[0x277D85DE8];
}

void __98__ACCBLEPairingFeaturePlugin_blePairingInfoUpdate_pairType_pairInfoList_accessory_blePairingUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) findAccessoryForAccessoryUID:*(a1 + 40) andKeyTag:@"BLEPairing"];
  if (v2 && *(a1 + 48) && *(*(a1 + 32) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = [v2 connectionIDObj];
    v5 = [v3 objectForKey:v4];

    [*(*(a1 + 32) + 40) stateUpdate:v5 blePairingUUID:*(a1 + 48) pairType:*(a1 + 64) pairInfoList:*(a1 + 56)];
  }

  else
  {
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
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v5 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      v9 = *(*(a1 + 32) + 40);
      v11 = 138412802;
      v12 = v2;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2335AD000, v5, OS_LOG_TYPE_INFO, "Invalid accessory(%@) or blePairingUUID(%@) or _blePairingShim(%@)", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)blePairingDataUpdate:(id)update pairType:(int)type pairData:(id)data accessory:(id)accessory blePairingUUID:(id)d
{
  v45 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dataCopy = data;
  accessoryCopy = accessory;
  dCopy = d;
  if (gLogObjects)
  {
    v16 = gNumLogObjects < 1;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v18 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  else
  {
    v18 = *gLogObjects;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413826;
    v32 = updateCopy;
    v33 = 1024;
    typeCopy = type;
    v35 = 2112;
    v36 = dataCopy;
    v37 = 2112;
    v38 = accessoryCopy;
    v39 = 2112;
    v40 = dCopy;
    v41 = 2112;
    v42 = blePairingProvider;
    v43 = 2112;
    v44 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v18, OS_LOG_TYPE_INFO, "blePairingDataUpdate: %@ pairType: %d pairData: %@ accessory: %@ blePairingUUID: %@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x44u);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__ACCBLEPairingFeaturePlugin_blePairingDataUpdate_pairType_pairData_accessory_blePairingUUID___block_invoke;
  block[3] = &unk_2789E1070;
  block[4] = self;
  v27 = accessoryCopy;
  typeCopy2 = type;
  v28 = dCopy;
  v29 = dataCopy;
  v22 = dataCopy;
  v23 = dCopy;
  v24 = accessoryCopy;
  dispatch_async(blePairingQueue, block);

  v25 = *MEMORY[0x277D85DE8];
}

void __94__ACCBLEPairingFeaturePlugin_blePairingDataUpdate_pairType_pairData_accessory_blePairingUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) findAccessoryForAccessoryUID:*(a1 + 40) andKeyTag:@"BLEPairing"];
  if (v2 && *(a1 + 48) && *(*(a1 + 32) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = [v2 connectionIDObj];
    v5 = [v3 objectForKey:v4];

    [*(*(a1 + 32) + 40) dataUpdate:v5 blePairingUUID:*(a1 + 48) pairType:*(a1 + 64) pairData:*(a1 + 56)];
  }

  else
  {
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
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v5 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      v9 = *(*(a1 + 32) + 40);
      v11 = 138412802;
      v12 = v2;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2335AD000, v5, OS_LOG_TYPE_INFO, "Invalid accessory(%@) or blePairingUUID(%@) or _blePairingShim(%@)", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)bleAccessoryForConnectionID:(unsigned int)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ACCBLEPairingFeaturePlugin_bleAccessoryForConnectionID___block_invoke;
  block[3] = &unk_2789E1098;
  block[4] = self;
  block[5] = &v8;
  dCopy = d;
  dispatch_sync(blePairingQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __58__ACCBLEPairingFeaturePlugin_bleAccessoryForConnectionID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 48)];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)deviceStartBLEUpdates:(id)updates pairType:(int)type btRadio:(BOOL)radio pairInfo:(BOOL)info
{
  infoCopy = info;
  radioCopy = radio;
  v36 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
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
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413570;
    v25 = updatesCopy;
    v26 = 1024;
    typeCopy = type;
    v28 = 1024;
    v29 = radioCopy;
    v30 = 1024;
    v31 = infoCopy;
    v32 = 2112;
    v33 = blePairingProvider;
    v34 = 2112;
    v35 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v13, OS_LOG_TYPE_INFO, "blePairing deviceStartBLEUpdates: %@ pairType:%d btRadio:%d pairInfoUpdateOn:%d, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x32u);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__ACCBLEPairingFeaturePlugin_deviceStartBLEUpdates_pairType_btRadio_pairInfo___block_invoke;
  block[3] = &unk_2789E10C0;
  block[4] = self;
  v20 = updatesCopy;
  typeCopy2 = type;
  v22 = radioCopy;
  v23 = infoCopy;
  v17 = updatesCopy;
  dispatch_async(blePairingQueue, block);

  v18 = *MEMORY[0x277D85DE8];
}

void __78__ACCBLEPairingFeaturePlugin_deviceStartBLEUpdates_pairType_btRadio_pairInfo___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v13 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v13 accessoryUID];
    v4 = [*(a1 + 40) blePairingUUID];
    [v2 startBLEUpdates:v3 blePairingUUID:v4 pairType:*(a1 + 48) bRadioUpdatesOn:*(a1 + 52) bPairInfoUpdatesOn:*(a1 + 53)];

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
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
        [ACCBLEPairingFeaturePlugin startPlugin];
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
      v9 = [*(a1 + 40) iap2ShimAccessory];
      v10 = [v9 accessoryUID];
      v11 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2335AD000, v8, OS_LOG_TYPE_DEFAULT, "blePairing deviceStartBLEUpdates: %@, skip processing, _blePairingProvider(%@) nil", buf, 0x16u);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)deviceStateUpdate:(id)update btRadio:(unsigned __int8)radio pairStatus:(int)status pairModeOn:(BOOL)on forceUpdates:(BOOL)updates
{
  updatesCopy = updates;
  onCopy = on;
  radioCopy = radio;
  v40 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *gLogObjects;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413826;
    v27 = updateCopy;
    v28 = 1024;
    v29 = radioCopy;
    v30 = 1024;
    statusCopy = status;
    v32 = 1024;
    v33 = onCopy;
    v34 = 1024;
    v35 = updatesCopy;
    v36 = 2112;
    v37 = blePairingProvider;
    v38 = 2112;
    v39 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v15, OS_LOG_TYPE_INFO, "blePairing deviceStateUpdate: %@ btRadio:%d pairStatus:%d pairModeOn:%d forceUpdates:%d, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x38u);
  }

  blePairingQueue = self->_blePairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__ACCBLEPairingFeaturePlugin_deviceStateUpdate_btRadio_pairStatus_pairModeOn_forceUpdates___block_invoke;
  block[3] = &unk_2789E10C0;
  block[4] = self;
  v22 = updateCopy;
  v24 = radioCopy;
  statusCopy2 = status;
  v25 = onCopy;
  v19 = updateCopy;
  dispatch_async(blePairingQueue, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __91__ACCBLEPairingFeaturePlugin_deviceStateUpdate_btRadio_pairStatus_pairModeOn_forceUpdates___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v13 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v13 accessoryUID];
    v4 = [*(a1 + 40) blePairingUUID];
    [v2 deviceStateUpdate:v3 blePairingUUID:v4 bRadioOn:*(a1 + 52) != 0 pairState:*(a1 + 48) bPairModeOn:*(a1 + 53)];

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
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
        [ACCBLEPairingFeaturePlugin startPlugin];
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
      v9 = [*(a1 + 40) iap2ShimAccessory];
      v10 = [v9 accessoryUID];
      v11 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2335AD000, v8, OS_LOG_TYPE_DEFAULT, "blePairing deviceStateUpdate: %@, skip processing, _blePairingProvider(%@) nil or doesn't support selector", buf, 0x16u);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)deviceSend:(id)send pairType:(int)type pairingData:(id)data
{
  v33 = *MEMORY[0x277D85DE8];
  sendCopy = send;
  dataCopy = data;
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
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413314;
    v24 = sendCopy;
    v25 = 1024;
    typeCopy = type;
    v27 = 2112;
    v28 = dataCopy;
    v29 = 2112;
    v30 = blePairingProvider;
    v31 = 2112;
    v32 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v12, OS_LOG_TYPE_INFO, "blePairing deviceSend: %@ pairType:%d pairingData:%@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x30u);
  }

  blePairingQueue = self->_blePairingQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__ACCBLEPairingFeaturePlugin_deviceSend_pairType_pairingData___block_invoke;
  v19[3] = &unk_2789E10E8;
  v19[4] = self;
  v20 = sendCopy;
  typeCopy2 = type;
  v21 = dataCopy;
  v16 = dataCopy;
  v17 = sendCopy;
  dispatch_async(blePairingQueue, v19);

  v18 = *MEMORY[0x277D85DE8];
}

void __62__ACCBLEPairingFeaturePlugin_deviceSend_pairType_pairingData___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v13 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v13 accessoryUID];
    v4 = [*(a1 + 40) blePairingUUID];
    [v2 devicePairingData:v3 blePairingUUID:v4 pairType:*(a1 + 56) pairData:*(a1 + 48)];

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
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
        [ACCBLEPairingFeaturePlugin startPlugin];
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
      v9 = [*(a1 + 40) iap2ShimAccessory];
      v10 = [v9 accessoryUID];
      v11 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2335AD000, v8, OS_LOG_TYPE_DEFAULT, "blePairing deviceSend: %@, skip processing, _blePairingProvider(%@) nil or doesn't support selector", buf, 0x16u);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)deviceUpdate:(id)update pairType:(int)type pairInfo:(id)info
{
  v33 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  infoCopy = info;
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
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138413314;
    v24 = updateCopy;
    v25 = 1024;
    typeCopy = type;
    v27 = 2112;
    v28 = infoCopy;
    v29 = 2112;
    v30 = blePairingProvider;
    v31 = 2112;
    v32 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v12, OS_LOG_TYPE_INFO, "blePairing deviceUpdate: %@ pairType:%d pairingInfo:%@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x30u);
  }

  blePairingQueue = self->_blePairingQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__ACCBLEPairingFeaturePlugin_deviceUpdate_pairType_pairInfo___block_invoke;
  v19[3] = &unk_2789E10E8;
  v19[4] = self;
  v20 = updateCopy;
  typeCopy2 = type;
  v21 = infoCopy;
  v16 = infoCopy;
  v17 = updateCopy;
  dispatch_async(blePairingQueue, v19);

  v18 = *MEMORY[0x277D85DE8];
}

void __61__ACCBLEPairingFeaturePlugin_deviceUpdate_pairType_pairInfo___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v13 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v13 accessoryUID];
    v4 = [*(a1 + 40) blePairingUUID];
    [v2 deviceUpdatePairingInfo:v3 blePairingUUID:v4 pairType:*(a1 + 56) pairInfo:*(a1 + 48)];

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
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
        [ACCBLEPairingFeaturePlugin startPlugin];
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
      v9 = [*(a1 + 40) iap2ShimAccessory];
      v10 = [v9 accessoryUID];
      v11 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2335AD000, v8, OS_LOG_TYPE_DEFAULT, "blePairing deviceUpdate: %@, skip processing, _blePairingProvider(%@) nil or doesn't support selector", buf, 0x16u);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)deviceStopBLEUpdates:(id)updates
{
  v21 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
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
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    blePairingProvider = self->_blePairingProvider;
    blePairingShim = self->_blePairingShim;
    *buf = 138412802;
    v16 = updatesCopy;
    v17 = 2112;
    v18 = blePairingProvider;
    v19 = 2112;
    v20 = blePairingShim;
    _os_log_impl(&dword_2335AD000, v7, OS_LOG_TYPE_INFO, "blePairing deviceStopBLEUpdates: %@, _blePairingProvider=%@ _blePairingShim=%@", buf, 0x20u);
  }

  blePairingQueue = self->_blePairingQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__ACCBLEPairingFeaturePlugin_deviceStopBLEUpdates___block_invoke;
  v13[3] = &unk_2789E1110;
  v13[4] = self;
  v14 = updatesCopy;
  v11 = updatesCopy;
  dispatch_async(blePairingQueue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __51__ACCBLEPairingFeaturePlugin_deviceStopBLEUpdates___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v13 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v13 accessoryUID];
    v4 = [*(a1 + 40) blePairingUUID];
    [v2 stopBLEUpdates:v3 blePairingUUID:v4];

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
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
        [ACCBLEPairingFeaturePlugin startPlugin];
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
      v9 = [*(a1 + 40) iap2ShimAccessory];
      v10 = [v9 accessoryUID];
      v11 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2335AD000, v8, OS_LOG_TYPE_DEFAULT, "blePairing deviceStopBLEUpdates: %@, skip processing, _blePairingProvider(%@) nil or doesn't support selector", buf, 0x16u);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)_isSupportedType:(unsigned __int8)type supportedListData:(id)data
{
  typeCopy = type;
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy && [dataCopy length] && objc_msgSend(v6, "length"))
  {
    v7 = 0;
    do
    {
      v8 = *([v6 bytes] + v7);
      v9 = v8 == typeCopy;
      if (v8 == typeCopy)
      {
        break;
      }

      ++v7;
    }

    while ([v6 length] > v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __105__ACCBLEPairingFeaturePlugin_blePairing_accessoryAttached_blePairingUUID_accInfoDict_supportedPairTypes___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 connectionIDObj];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_2335AD000, a2, OS_LOG_TYPE_DEBUG, "accessoryAttached: accessory=%@ connectionIDObj=%@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end