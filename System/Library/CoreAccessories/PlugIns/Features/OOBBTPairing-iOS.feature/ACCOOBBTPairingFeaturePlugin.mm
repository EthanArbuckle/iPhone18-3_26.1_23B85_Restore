@interface ACCOOBBTPairingFeaturePlugin
- (NSString)description;
- (NSString)pluginName;
- (id)oobBtAccessoryForConnectionID:(unsigned int)d;
- (void)initPlugin;
- (void)linkKey:(id)key deviceMacAddr:(id)addr accessory:(id)accessory;
- (void)oobBtPairing:(id)pairing accessoryAttached:(id)attached accInfoDict:(id)dict;
- (void)oobBtPairing:(id)pairing accessoryDetached:(id)detached;
- (void)oobBtPairing:(id)pairing accessoryInfo:(id)info oobBtPairingUID:(id)d accessoryMacAddr:(id)addr deviceClass:(unsigned int)class;
- (void)oobBtPairing:(id)pairing completion:(id)completion oobBtPairingUID:(id)d accessoryMacAddr:(id)addr result:(unsigned __int8)result;
- (void)oobBtPairing:(id)pairing legacyConnectionIDForAccessoryUID:(id)d connectionID:(unsigned int)iD;
- (void)startOOBBTPairing:(id)pairing;
- (void)startPlugin;
- (void)stopOOBBTPairing:(id)pairing;
- (void)stopPlugin;
@end

@implementation ACCOOBBTPairingFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  pluginName = [(ACCOOBBTPairingFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCOOBBTPairingFeaturePlugin *)self isRunning];
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

  oobBtPairingProvider = self->_oobBtPairingProvider;
  self->_oobBtPairingProvider = 0;

  oobBtPairingAccessoryList = self->_oobBtPairingAccessoryList;
  self->_oobBtPairingAccessoryList = 0;

  [(ACCOOBBTPairingFeaturePlugin *)self setIsRunning:0];
  v6 = MEMORY[0x277CE84E8];

  [v6 resetServerState];
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
      [ACCOOBBTPairingAccessory init];
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
    _os_log_impl(&dword_23361B000, v5, OS_LOG_TYPE_DEFAULT, "Starting OOBBT Pairing feature plugin...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v24 = 0;
    _os_log_impl(&dword_23361B000, v6, OS_LOG_TYPE_INFO, "Create/Get shared ACCiAP2ShimServer...", v24, 2u);
  }

  mEMORY[0x277CE84E8] = [MEMORY[0x277CE84E8] sharedInstance];
  iap2server = self->_iap2server;
  self->_iap2server = mEMORY[0x277CE84E8];

  [(ACCiAP2ShimServer *)self->_iap2server startServer];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&dword_23361B000, v10, OS_LOG_TYPE_INFO, "Create ACCOOBBTPairingProvider...", v23, 2u);
  }

  v12 = dispatch_queue_create("com.apple.coreaccessories.plugin.oobBtPairing", 0);
  oobBtPairingQueue = self->_oobBtPairingQueue;
  self->_oobBtPairingQueue = v12;

  v14 = [objc_alloc(MEMORY[0x277CE84D8]) initWithDelegate:self];
  oobBtPairingProvider = self->_oobBtPairingProvider;
  self->_oobBtPairingProvider = v14;

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  oobBtPairingAccessoryList = self->_oobBtPairingAccessoryList;
  self->_oobBtPairingAccessoryList = v16;

  v18 = [[ACCOOBBTPairingShim alloc] initWithDelegate:self];
  oobBtPairingShim = self->_oobBtPairingShim;
  self->_oobBtPairingShim = v18;

  [(ACCiAP2ShimServer *)self->_iap2server addDelegate:self->_oobBtPairingShim];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v20 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&dword_23361B000, v20, OS_LOG_TYPE_INFO, "Starting OOBBT Pairing feature plugin... finished, set isRunning", v22, 2u);
  }

  [(ACCOOBBTPairingFeaturePlugin *)self setIsRunning:1];
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
      [ACCOOBBTPairingAccessory init];
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
    _os_log_impl(&dword_23361B000, v5, OS_LOG_TYPE_DEFAULT, "Stopping OOBBT Pairing feature plugin...", buf, 2u);
  }

  [(ACCOOBBTPairingFeaturePlugin *)self setIsRunning:0];
  [(ACCiAP2ShimServer *)self->_iap2server removeDelegate:self->_oobBtPairingShim];
  oobBtPairingShim = self->_oobBtPairingShim;
  self->_oobBtPairingShim = 0;

  dispatch_sync(self->_oobBtPairingQueue, &__block_literal_global);
  oobBtPairingProvider = self->_oobBtPairingProvider;
  self->_oobBtPairingProvider = 0;

  oobBtPairingQueue = self->_oobBtPairingQueue;
  self->_oobBtPairingQueue = 0;

  oobBtPairingAccessoryList = self->_oobBtPairingAccessoryList;
  self->_oobBtPairingAccessoryList = 0;

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
      [ACCOOBBTPairingAccessory init];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_23361B000, v11, OS_LOG_TYPE_INFO, "Stopping OBBT Pairing feature plugin... finished", v13, 2u);
  }
}

- (void)oobBtPairing:(id)pairing accessoryAttached:(id)attached accInfoDict:(id)dict
{
  v35 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  attachedCopy = attached;
  dictCopy = dict;
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
      [ACCOOBBTPairingAccessory init];
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
    oobBtPairingShim = self->_oobBtPairingShim;
    iap2server = self->_iap2server;
    oobBtPairingProvider = self->_oobBtPairingProvider;
    *buf = 138413314;
    v26 = pairingCopy;
    v27 = 2112;
    v28 = attachedCopy;
    v29 = 2112;
    v30 = oobBtPairingProvider;
    v31 = 2112;
    v32 = oobBtPairingShim;
    v33 = 2112;
    v34 = iap2server;
    _os_log_impl(&dword_23361B000, v13, OS_LOG_TYPE_INFO, "oobBtPairing: %@ accessoryAttached: %@, _oobBtPairingProvider=%@ _oobBtPairingShim=%@ _iap2server=%@", buf, 0x34u);
  }

  oobBtPairingQueue = self->_oobBtPairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ACCOOBBTPairingFeaturePlugin_oobBtPairing_accessoryAttached_accInfoDict___block_invoke;
  block[3] = &unk_2789E5A00;
  v22 = dictCopy;
  v23 = attachedCopy;
  selfCopy = self;
  v18 = attachedCopy;
  v19 = dictCopy;
  dispatch_async(oobBtPairingQueue, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __75__ACCOOBBTPairingFeaturePlugin_oobBtPairing_accessoryAttached_accInfoDict___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277CE8498]];
  v37 = [*(a1 + 32) objectForKey:*MEMORY[0x277CE8490]];
  v3 = [*(a1 + 32) objectForKey:*MEMORY[0x277CE84A0]];
  v36 = [*(a1 + 32) objectForKey:*MEMORY[0x277CE84A8]];
  v4 = [*(a1 + 32) objectForKey:*MEMORY[0x277CE8480]];
  v5 = [*(a1 + 32) objectForKey:*MEMORY[0x277CE8488]];
  v6 = [*(a1 + 32) objectForKey:*MEMORY[0x277CE84C8]];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCACA8] stringWithCString:MEMORY[0x277CE84F0] encoding:4];
  v40 = [v7 objectForKey:v8];

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCACA8] stringWithCString:MEMORY[0x277CE84F8] encoding:4];
  v11 = [v9 objectForKey:v10];

  v39 = [*(a1 + 32) objectForKey:*MEMORY[0x277CE84B0]];
  v41 = [*(a1 + 32) objectForKey:*MEMORY[0x277CE8478]];
  v12 = [objc_alloc(MEMORY[0x277CE84E0]) initWithUID:*(a1 + 40) keyTag:@"OOBBTPairing" features:0];
  v13 = v12;
  if (v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = &stru_2848EC168;
  }

  [(ACCOOBBTPairingAccessory *)v12 setName:v14];
  if (v2)
  {
    v15 = v2;
  }

  else
  {
    v15 = &stru_2848EC168;
  }

  [(ACCOOBBTPairingAccessory *)v13 setModel:v15];
  if (v37)
  {
    v16 = v37;
  }

  else
  {
    v16 = &stru_2848EC168;
  }

  [(ACCOOBBTPairingAccessory *)v13 setManufacturer:v16];
  if (v36)
  {
    v17 = v36;
  }

  else
  {
    v17 = &stru_2848EC168;
  }

  [(ACCOOBBTPairingAccessory *)v13 setSerialNumber:v17];
  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v18 = &stru_2848EC168;
  }

  [(ACCOOBBTPairingAccessory *)v13 setFirmwareVersion:v18];
  if (v5)
  {
    v19 = v5;
  }

  else
  {
    v19 = &stru_2848EC168;
  }

  [(ACCOOBBTPairingAccessory *)v13 setHardwareVersion:v19];
  if (v6)
  {
    -[ACCOOBBTPairingAccessory setConnectionID:](v13, "setConnectionID:", [v6 unsignedLongValue]);
  }

  [(ACCOOBBTPairingAccessory *)v13 setDontPublish:1];
  if ([v41 BOOLValue])
  {
    v20 = 23;
  }

  else
  {
    v20 = 15;
  }

  [(ACCOOBBTPairingAccessory *)v13 addFeature:v20];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v21 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v21 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __75__ACCOOBBTPairingFeaturePlugin_oobBtPairing_accessoryAttached_accInfoDict___block_invoke_cold_2(v13, v21);
  }

  v23 = objc_alloc_init(ACCOOBBTPairingAccessory);
  [(ACCOOBBTPairingAccessory *)v23 setCertData:v40];
  v38 = v11;
  [(ACCOOBBTPairingAccessory *)v23 setCertSerial:v11];
  [(ACCOOBBTPairingAccessory *)v23 setIap2ShimAccessory:v13];
  -[ACCOOBBTPairingAccessory setCarPlaySupported:](v23, "setCarPlaySupported:", [v39 charValue] != 0);
  -[ACCOOBBTPairingAccessory setOobPairing2Supported:](v23, "setOobPairing2Supported:", [v41 charValue] != 0);
  [(ACCOOBBTPairingAccessory *)v13 setContext:v23];
  [*(*(a1 + 48) + 16) addAccessory:v13];
  if (!*(*(a1 + 48) + 40) || (objc_opt_respondsToSelector() & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v25 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingAccessory init];
      }

      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v27 = *(*(a1 + 48) + 40);
      *buf = 138412290;
      v43 = v27;
      _os_log_impl(&dword_23361B000, v25, OS_LOG_TYPE_INFO, "Invalid _oobBtPairingShim(%@)", buf, 0xCu);
    }

    if (!v6)
    {
      goto LABEL_53;
    }

LABEL_46:
    v28 = *(*(a1 + 48) + 48);
    v29 = [(ACCOOBBTPairingAccessory *)v13 connectionIDObj];
    [v28 setObject:v23 forKey:v29];

    goto LABEL_62;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v24 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v24 = MEMORY[0x277D86220];
    v30 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v35 = [*(*(a1 + 48) + 24) accessoryInfoDictionaryForLogging:*(a1 + 32)];
    *buf = 138412546;
    v43 = v23;
    v44 = 2112;
    v45 = v35;
    _os_log_debug_impl(&dword_23361B000, v24, OS_LOG_TYPE_DEBUG, "accessoryAttached: call shim accessoryAttached: oobBtAccessory=%@ accInfoDict=%@", buf, 0x16u);
  }

  [*(*(a1 + 48) + 40) accessoryAttached:v23 accInfoDict:*(a1 + 32)];
  if (v6)
  {
    goto LABEL_46;
  }

LABEL_53:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v31 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingAccessory init];
    }

    v31 = MEMORY[0x277D86220];
    v32 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v33 = [*(*(a1 + 48) + 24) accessoryInfoDictionaryForLogging:*(a1 + 32)];
    *buf = 138412546;
    v43 = v13;
    v44 = 2112;
    v45 = v33;
    _os_log_impl(&dword_23361B000, v31, OS_LOG_TYPE_INFO, "accessoryAttached: missing connectionID request and wait, accessory=%@ accInfoDict=%@", buf, 0x16u);
  }

  [*(*(a1 + 48) + 24) requestLegacyConnectionIDForAccessoryUID:*(a1 + 40)];
LABEL_62:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)oobBtPairing:(id)pairing accessoryDetached:(id)detached
{
  v29 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  detachedCopy = detached;
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
      [ACCOOBBTPairingAccessory init];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    oobBtPairingShim = self->_oobBtPairingShim;
    iap2server = self->_iap2server;
    oobBtPairingProvider = self->_oobBtPairingProvider;
    *buf = 138413314;
    v20 = pairingCopy;
    v21 = 2112;
    v22 = detachedCopy;
    v23 = 2112;
    v24 = oobBtPairingProvider;
    v25 = 2112;
    v26 = oobBtPairingShim;
    v27 = 2112;
    v28 = iap2server;
    _os_log_impl(&dword_23361B000, v10, OS_LOG_TYPE_INFO, "oobBtPairing: %@ accessoryDetached: %@, _oobBtPairingProvider=%@ _oobBtPairingShim=%@ _iap2server=%@", buf, 0x34u);
  }

  oobBtPairingQueue = self->_oobBtPairingQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__ACCOOBBTPairingFeaturePlugin_oobBtPairing_accessoryDetached___block_invoke;
  v17[3] = &unk_2789E5A28;
  v17[4] = self;
  v18 = detachedCopy;
  v15 = detachedCopy;
  dispatch_async(oobBtPairingQueue, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __63__ACCOOBBTPairingFeaturePlugin_oobBtPairing_accessoryDetached___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) findAccessoryForAccessoryUID:*(a1 + 40) andKeyTag:@"OOBBTPairing"];
  if (v2 && *(*(a1 + 32) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(*(a1 + 32) + 16) removeAccessory:v2];
    v3 = *(*(a1 + 32) + 48);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v2, "connectionID")}];
    v5 = [v3 objectForKey:v4];

    [*(*(a1 + 32) + 40) accessoryDetached:v5];
    v6 = *(*(a1 + 32) + 48);
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
        [ACCOOBBTPairingAccessory init];
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
      v10 = *(*(a1 + 32) + 40);
      v12 = 138412546;
      v13 = v2;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_23361B000, v5, OS_LOG_TYPE_INFO, "Invalid accessory(%@) or _oobBtPairingShim(%@)", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)oobBtPairing:(id)pairing accessoryInfo:(id)info oobBtPairingUID:(id)d accessoryMacAddr:(id)addr deviceClass:(unsigned int)class
{
  v45 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  infoCopy = info;
  dCopy = d;
  addrCopy = addr;
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
      [ACCOOBBTPairingAccessory init];
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
    oobBtPairingProvider = self->_oobBtPairingProvider;
    oobBtPairingShim = self->_oobBtPairingShim;
    *buf = 138413826;
    v32 = pairingCopy;
    v33 = 2112;
    v34 = infoCopy;
    v35 = 2112;
    v36 = dCopy;
    v37 = 2112;
    v38 = addrCopy;
    v39 = 1024;
    classCopy = class;
    v41 = 2112;
    v42 = oobBtPairingProvider;
    v43 = 2112;
    v44 = oobBtPairingShim;
    _os_log_impl(&dword_23361B000, v18, OS_LOG_TYPE_INFO, "oobBtPairing: %@ accessoryInfo: %@ oobBtPairingUID: %@ accessoryMacAddr:%@ deviceClass: %d, _oobBtPairingProvider=%@ _oobBtPairingShim=%@", buf, 0x44u);
  }

  oobBtPairingQueue = self->_oobBtPairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__ACCOOBBTPairingFeaturePlugin_oobBtPairing_accessoryInfo_oobBtPairingUID_accessoryMacAddr_deviceClass___block_invoke;
  block[3] = &unk_2789E5A50;
  block[4] = self;
  v27 = infoCopy;
  v28 = dCopy;
  v29 = addrCopy;
  classCopy2 = class;
  v22 = addrCopy;
  v23 = dCopy;
  v24 = infoCopy;
  dispatch_async(oobBtPairingQueue, block);

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __104__ACCOOBBTPairingFeaturePlugin_oobBtPairing_accessoryInfo_oobBtPairingUID_accessoryMacAddr_deviceClass___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) findAccessoryForAccessoryUID:*(a1 + 40) andKeyTag:@"OOBBTPairing"];
  if (v2)
  {
    if (*(a1 + 48))
    {
      if (*(*(a1 + 32) + 40))
      {
        v7 = v2;
        if (objc_opt_respondsToSelector())
        {
          v3 = *(*(a1 + 32) + 48);
          v4 = [v7 connectionIDObj];
          v5 = [v3 objectForKey:v4];

          [*(*(a1 + 32) + 40) accessoryInfo:v5 oobBtPairingUID:*(a1 + 48) accessoryMacAddr:*(a1 + 56) deviceClass:*(a1 + 64)];
        }
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)oobBtPairing:(id)pairing completion:(id)completion oobBtPairingUID:(id)d accessoryMacAddr:(id)addr result:(unsigned __int8)result
{
  resultCopy = result;
  v45 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  completionCopy = completion;
  dCopy = d;
  addrCopy = addr;
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
      [ACCOOBBTPairingAccessory init];
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
    oobBtPairingProvider = self->_oobBtPairingProvider;
    oobBtPairingShim = self->_oobBtPairingShim;
    *buf = 138413826;
    v32 = pairingCopy;
    v33 = 2112;
    v34 = completionCopy;
    v35 = 2112;
    v36 = dCopy;
    v37 = 2112;
    v38 = addrCopy;
    v39 = 1024;
    v40 = resultCopy;
    v41 = 2112;
    v42 = oobBtPairingProvider;
    v43 = 2112;
    v44 = oobBtPairingShim;
    _os_log_impl(&dword_23361B000, v18, OS_LOG_TYPE_DEFAULT, "oobBtPairing: %@ completion: %@ oobBtPairingUID: %@ accessoryMacAddr: %@ result: %d, _oobBtPairingProvider=%@ _oobBtPairingShim=%@", buf, 0x44u);
  }

  oobBtPairingQueue = self->_oobBtPairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__ACCOOBBTPairingFeaturePlugin_oobBtPairing_completion_oobBtPairingUID_accessoryMacAddr_result___block_invoke;
  block[3] = &unk_2789E5A78;
  block[4] = self;
  v27 = completionCopy;
  v28 = dCopy;
  v29 = addrCopy;
  v30 = resultCopy;
  v22 = addrCopy;
  v23 = dCopy;
  v24 = completionCopy;
  dispatch_async(oobBtPairingQueue, block);

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __96__ACCOOBBTPairingFeaturePlugin_oobBtPairing_completion_oobBtPairingUID_accessoryMacAddr_result___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) findAccessoryForAccessoryUID:*(a1 + 40) andKeyTag:@"OOBBTPairing"];
  if (v2)
  {
    if (*(a1 + 48))
    {
      if (*(*(a1 + 32) + 40))
      {
        v12 = v2;
        if (objc_opt_respondsToSelector())
        {
          v3 = *(*(a1 + 32) + 48);
          v4 = [v12 connectionIDObj];
          v5 = [v3 objectForKey:v4];

          v6 = *(a1 + 32);
          v7 = *(v6 + 40);
          v9 = *(a1 + 48);
          v8 = *(a1 + 56);
          if (v8)
          {
            [*(v6 + 40) accessoryPairingCompletion:v5 oobBtPairingUID:*(a1 + 48) accessoryMacAddr:v8 sendStop:0 result:*(a1 + 64)];
          }

          else
          {
            v10 = [v5 currentRemoteMACAddress];
            [v7 accessoryPairingCompletion:v5 oobBtPairingUID:v9 accessoryMacAddr:v10 sendStop:*(a1 + 56) == 0 result:*(a1 + 64)];
          }
        }
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)oobBtPairing:(id)pairing legacyConnectionIDForAccessoryUID:(id)d connectionID:(unsigned int)iD
{
  v31 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  dCopy = d;
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
      [ACCOOBBTPairingAccessory init];
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
    oobBtPairingProvider = self->_oobBtPairingProvider;
    oobBtPairingShim = self->_oobBtPairingShim;
    *buf = 138413314;
    v22 = pairingCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 1024;
    iDCopy = iD;
    v27 = 2112;
    v28 = oobBtPairingProvider;
    v29 = 2112;
    v30 = oobBtPairingShim;
    _os_log_impl(&dword_23361B000, v12, OS_LOG_TYPE_INFO, "oobBtPairing: %@ legacyConnectionIDForAccessoryUID: %@ connectionID: %u, _oobBtPairingProvider=%@ _oobBtPairingShim=%@", buf, 0x30u);
  }

  oobBtPairingQueue = self->_oobBtPairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__ACCOOBBTPairingFeaturePlugin_oobBtPairing_legacyConnectionIDForAccessoryUID_connectionID___block_invoke;
  block[3] = &unk_2789E5AA0;
  block[4] = self;
  v19 = dCopy;
  iDCopy2 = iD;
  v16 = dCopy;
  dispatch_async(oobBtPairingQueue, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __92__ACCOOBBTPairingFeaturePlugin_oobBtPairing_legacyConnectionIDForAccessoryUID_connectionID___block_invoke(uint64_t a1)
{
  v7 = [*(*(a1 + 32) + 16) findAccessoryForAccessoryUID:*(a1 + 40) andKeyTag:@"OOBBTPairing"];
  if (v7)
  {
    if ([v7 connectionID])
    {
      v2 = *(*(a1 + 32) + 48);
      v3 = [v7 connectionIDObj];
      [v2 removeObjectForKey:v3];
    }

    [v7 setConnectionID:*(a1 + 48)];
    if ([v7 connectionID])
    {
      v4 = *(*(a1 + 32) + 48);
      v5 = [v7 context];
      v6 = [v7 connectionIDObj];
      [v4 setObject:v5 forKey:v6];
    }
  }
}

- (id)oobBtAccessoryForConnectionID:(unsigned int)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  oobBtPairingQueue = self->_oobBtPairingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ACCOOBBTPairingFeaturePlugin_oobBtAccessoryForConnectionID___block_invoke;
  block[3] = &unk_2789E5AC8;
  block[4] = self;
  block[5] = &v8;
  dCopy = d;
  dispatch_sync(oobBtPairingQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __62__ACCOOBBTPairingFeaturePlugin_oobBtAccessoryForConnectionID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 48)];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)startOOBBTPairing:(id)pairing
{
  v21 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
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
      [ACCOOBBTPairingAccessory init];
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
    oobBtPairingProvider = self->_oobBtPairingProvider;
    oobBtPairingShim = self->_oobBtPairingShim;
    *buf = 138412802;
    v16 = pairingCopy;
    v17 = 2112;
    v18 = oobBtPairingProvider;
    v19 = 2112;
    v20 = oobBtPairingShim;
    _os_log_impl(&dword_23361B000, v7, OS_LOG_TYPE_INFO, "oobBtPairing startOOBBTPairing: %@, _oobBtPairingProvider=%@ _oobBtPairingShim=%@", buf, 0x20u);
  }

  oobBtPairingQueue = self->_oobBtPairingQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__ACCOOBBTPairingFeaturePlugin_startOOBBTPairing___block_invoke;
  v13[3] = &unk_2789E5A28;
  v13[4] = self;
  v14 = pairingCopy;
  v11 = pairingCopy;
  dispatch_async(oobBtPairingQueue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __50__ACCOOBBTPairingFeaturePlugin_startOOBBTPairing___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v12 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v12 accessoryUID];
    [v2 startOOBBTPairing:v3];

    v4 = *MEMORY[0x277D85DE8];
  }

  else
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
        [ACCOOBBTPairingAccessory init];
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
      v8 = [*(a1 + 40) iap2ShimAccessory];
      v9 = [v8 accessoryUID];
      v10 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_23361B000, v7, OS_LOG_TYPE_DEFAULT, "oobBtPairing startOOBBTPairing: %@, skip processing, _oobBtPairingProvider(%@) nil", buf, 0x16u);
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

- (void)linkKey:(id)key deviceMacAddr:(id)addr accessory:(id)accessory
{
  v36 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  addrCopy = addr;
  accessoryCopy = accessory;
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
      [ACCOOBBTPairingAccessory init];
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
    v14 = [keyCopy length];
    oobBtPairingProvider = self->_oobBtPairingProvider;
    oobBtPairingShim = self->_oobBtPairingShim;
    *buf = 134219010;
    v27 = v14;
    v28 = 2112;
    v29 = addrCopy;
    v30 = 2112;
    v31 = accessoryCopy;
    v32 = 2112;
    v33 = oobBtPairingProvider;
    v34 = 2112;
    v35 = oobBtPairingShim;
    _os_log_impl(&dword_23361B000, v13, OS_LOG_TYPE_INFO, "oobBtPairing linkKey: (len=%lu) deviceMacAddr: %@ accessory: %@, _oobBtPairingProvider=%@ _oobBtPairingShim=%@", buf, 0x34u);
  }

  oobBtPairingQueue = self->_oobBtPairingQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __64__ACCOOBBTPairingFeaturePlugin_linkKey_deviceMacAddr_accessory___block_invoke;
  v22[3] = &unk_2789E5AF0;
  v22[4] = self;
  v23 = accessoryCopy;
  v24 = keyCopy;
  v25 = addrCopy;
  v18 = addrCopy;
  v19 = keyCopy;
  v20 = accessoryCopy;
  dispatch_async(oobBtPairingQueue, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void __64__ACCOOBBTPairingFeaturePlugin_linkKey_deviceMacAddr_accessory___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v14 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v14 accessoryUID];
    v4 = [*(a1 + 40) currentOOBBTPairingUID];
    [v2 linkKeyInfo:v3 oobBtPairingUID:v4 linkKey:*(a1 + 48) deviceMacAddr:*(a1 + 56)];

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
        [ACCOOBBTPairingAccessory init];
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
      v9 = [*(a1 + 48) length];
      v10 = *(a1 + 56);
      v11 = *(a1 + 40);
      v12 = *(*(a1 + 32) + 24);
      *buf = 134218754;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_23361B000, v8, OS_LOG_TYPE_DEFAULT, "oobBtPairing linkKey: (len=%lu) deviceMacAddr: %@ accessory: %@, skip processing, _oobBtPairingProvider(%@) nil", buf, 0x2Au);
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)stopOOBBTPairing:(id)pairing
{
  v21 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
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
      [ACCOOBBTPairingAccessory init];
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
    oobBtPairingProvider = self->_oobBtPairingProvider;
    oobBtPairingShim = self->_oobBtPairingShim;
    *buf = 138412802;
    v16 = pairingCopy;
    v17 = 2112;
    v18 = oobBtPairingProvider;
    v19 = 2112;
    v20 = oobBtPairingShim;
    _os_log_impl(&dword_23361B000, v7, OS_LOG_TYPE_INFO, "oobBtPairing stopOOBBTPairing: %@, _oobBtPairingProvider=%@ _oobBtPairingShim=%@", buf, 0x20u);
  }

  oobBtPairingQueue = self->_oobBtPairingQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__ACCOOBBTPairingFeaturePlugin_stopOOBBTPairing___block_invoke;
  v13[3] = &unk_2789E5A28;
  v13[4] = self;
  v14 = pairingCopy;
  v11 = pairingCopy;
  dispatch_async(oobBtPairingQueue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __49__ACCOOBBTPairingFeaturePlugin_stopOOBBTPairing___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v11 = [*(a1 + 40) iap2ShimAccessory];
    v3 = [v11 accessoryUID];
    [v2 stopOOBBTPairing:v3];

    v4 = *MEMORY[0x277D85DE8];
  }

  else
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
        [ACCOOBBTPairingAccessory init];
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
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_23361B000, v7, OS_LOG_TYPE_DEFAULT, "oobBtPairing stopOOBBTPairing: %@, skip processing, _oobBtPairingProvider(%@) nil", buf, 0x16u);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

void __75__ACCOOBBTPairingFeaturePlugin_oobBtPairing_accessoryAttached_accInfoDict___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 connectionIDObj];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_23361B000, a2, OS_LOG_TYPE_DEBUG, "accessoryAttached: accessory=%@ connectionIDObj=%@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end