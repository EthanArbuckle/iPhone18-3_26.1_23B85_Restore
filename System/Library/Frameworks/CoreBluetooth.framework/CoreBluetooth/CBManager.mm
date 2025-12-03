@interface CBManager
+ (BOOL)checkIfExtension;
+ (CBManagerAuthorization)authorization;
+ (id)getTCCServer;
+ (int)preflightCheckForTCC;
+ (unsigned)retrieveCurrentProcessSessionCount;
- (CBPairingAgent)sharedPairingAgent;
- (id)createCnxWithInfo:(id)info;
- (id)getCnxInstanceForIdentifier:(id)identifier;
- (id)getCurrentQueue;
- (id)initInternal;
- (void)_handleAdvertisingAddressChanged:(id)changed;
- (void)checkBTTCCAuth;
- (void)checkForTCC;
- (void)dealloc;
- (void)doneWithTCC;
- (void)extractLocalDeviceStatesDictionary:(id)dictionary;
- (void)queryBluetoothStatus:(id)status completion:(id)completion;
- (void)removeCnxInstanceForIdentifier:(id)identifier;
- (void)retrieveBundle:(id)bundle sessionCountWithCompletion:(id)completion;
- (void)retrieveSupportedResources:(id)resources subKey:(id)key completion:(id)completion;
- (void)triggerBTErrorReport:(int64_t)report;
- (void)xpcConnectionDidReset;
@end

@implementation CBManager

- (CBPairingAgent)sharedPairingAgent
{
  pairingAgent = self->_pairingAgent;
  if (pairingAgent)
  {
  }

  else
  {
    v5 = [[CBPairingAgent alloc] initWithParentManager:self];
    v6 = self->_pairingAgent;
    self->_pairingAgent = v5;

    pairingAgent = self->_pairingAgent;
  }

  return pairingAgent;
}

- (void)dealloc
{
  pthread_mutex_lock(&_sessionCounterLock);
  --_sessionCounter;
  pthread_mutex_unlock(&_sessionCounterLock);
  [(CBXpcConnection *)self->_connection disconnect];
  v3.receiver = self;
  v3.super_class = CBManager;
  [(CBManager *)&v3 dealloc];
}

- (id)initInternal
{
  v7.receiver = self;
  v7.super_class = CBManager;
  v2 = [(CBManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    localAddressString = v2->_localAddressString;
    v2->_localAddressString = 0;

    localName = v3->_localName;
    v3->_localName = 0;

    pthread_mutex_lock(&_sessionCounterLock);
    ++_sessionCounter;
    pthread_mutex_unlock(&_sessionCounterLock);
  }

  return v3;
}

+ (BOOL)checkIfExtension
{
  bundleRecordForCurrentProcess = [MEMORY[0x1E6963628] bundleRecordForCurrentProcess];
  if (bundleRecordForCurrentProcess && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v3 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C0AC1000, v3, OS_LOG_TYPE_DEFAULT, "Session is an extension", v5, 2u);
    }

    return 1;
  }

  else
  {

    return 0;
  }
}

- (void)checkBTTCCAuth
{
  v12 = *MEMORY[0x1E69E9840];
  if (!+[CBManager tccAvailable])
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v5 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "TCC not available, calling doneWithTCC without setting tccComplete.", v7, 2u);
    }

    goto LABEL_14;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v3 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v7[0] = 67109632;
    v7[1] = +[CBManager tccAvailable];
    v8 = 1024;
    tccRequired = [(CBManager *)self tccRequired];
    v10 = 1024;
    tccComplete = [(CBManager *)self tccComplete];
    _os_log_impl(&dword_1C0AC1000, v4, OS_LOG_TYPE_DEFAULT, "TCC available %d, req %d complete %d", v7, 0x14u);
  }

  if ([(CBManager *)self tccComplete])
  {
LABEL_14:
    [(CBManager *)self doneWithTCC];
    goto LABEL_15;
  }

  if (![(CBManager *)self tccRequired])
  {
    [(CBManager *)self setTccApproved:1];
    goto LABEL_14;
  }

  [(CBManager *)self checkForTCC];
LABEL_15:
  v6 = *MEMORY[0x1E69E9840];
}

void __33__CBManager_preflightCheckForTCC__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = a2;
    authorization_right = tcc_authorization_record_get_authorization_right();
    authorization_reason = tcc_authorization_record_get_authorization_reason();

    if (authorization_right == 2)
    {
      v7 = 0;
    }

    else if (authorization_right)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
      if (authorization_reason == 12)
      {
        if (*(a1 + 40))
        {
          v7 = 2;
        }

        else
        {
          v7 = 1;
        }
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = v7;
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v8 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(*(*(a1 + 32) + 8) + 24);
      v12[0] = 67109888;
      v12[1] = v9;
      v13 = 2048;
      v14 = authorization_right;
      v15 = 2048;
      v16 = authorization_reason;
      v17 = 1024;
      v18 = v10;
      _os_log_impl(&dword_1C0AC1000, v8, OS_LOG_TYPE_DEFAULT, "preflight ext:%d userAuth:%llu reason:%llu response:%d", v12, 0x22u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doneWithTCC
{
  [(CBManager *)self setTccComplete:1];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(CBManager *)self sendMsg:4 args:v3];
}

+ (CBManagerAuthorization)authorization
{
  v2 = xpc_copy_entitlement_for_self();
  v3 = v2;
  if (v2 && MEMORY[0x1C68DFDD0](v2) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v3))
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
    {
      +[CBManager authorization];
    }

    goto LABEL_27;
  }

  if (_os_feature_enabled_impl())
  {
    v4 = xpc_copy_entitlement_for_self();
    v5 = v4;
    if (v4 && MEMORY[0x1C68DFDD0](v4) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v5))
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        +[CBManager authorization];
      }

      goto LABEL_27;
    }
  }

  if (!+[CBManager tccAvailable])
  {
    goto LABEL_27;
  }

  v6 = +[CBManager preflightCheckForTCC];
  switch(v6)
  {
    case 2:
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        +[CBManager authorization];
      }

      v10 = *MEMORY[0x1E69D5510];
      v11 = (TCCAccessRestricted() != 0);

      return v11;
    case 1:
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        +[CBManager authorization];
      }

      v8 = *MEMORY[0x1E69D5510];
      if (TCCAccessRestricted())
      {
        v9 = CBManagerAuthorizationRestricted;
      }

      else
      {
        v9 = CBManagerAuthorizationDenied;
      }

      return v9;
    case 0:
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        +[CBManager authorization];
      }

      return 3;
    default:
LABEL_27:

      return 0;
  }
}

+ (int)preflightCheckForTCC
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 2;
  v2 = +[CBManager checkIfExtension];
  v3 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  tcc_message_options_set_cache_policy();
  v4 = tcc_credential_singleton_for_self();
  v5 = *MEMORY[0x1E69D5510];
  v6 = tcc_service_singleton_for_CF_name();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__CBManager_preflightCheckForTCC__block_invoke;
  v10[3] = &unk_1E8120BB0;
  v10[4] = &v12;
  v11 = v2;
  v7 = MEMORY[0x1C68DF720](v10);
  v8 = +[CBManager getTCCServer];
  tcc_server_message_request_authorization();

  LODWORD(v8) = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

+ (id)getTCCServer
{
  pthread_mutex_lock(&gLock);
  if (!getTCCServer_tccServer)
  {
    v2 = tcc_server_create();
    v3 = getTCCServer_tccServer;
    getTCCServer_tccServer = v2;
  }

  pthread_mutex_unlock(&gLock);
  v4 = getTCCServer_tccServer;

  return v4;
}

- (void)extractLocalDeviceStatesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgAddressString"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgName"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgState"];
  if (v5)
  {
    objc_storeStrong(&self->_localAddressString, v5);
  }

  if (v6)
  {
    [(CBManager *)self willChangeValueForKey:@"localName"];
    objc_storeStrong(&self->_localName, v6);
    [(CBManager *)self didChangeValueForKey:@"localName"];
  }

  if (+[CBManager authorization]== CBManagerAuthorizationNotDetermined)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v8 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
    {
      [CBManager extractLocalDeviceStatesDictionary:v8];
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  if (v7)
  {
LABEL_10:
    -[CBManager setState:](self, "setState:", [v7 integerValue]);
  }

LABEL_11:
  [(CBManager *)self handleLocalDeviceStateUpdatedMsg:dictionaryCopy];
}

- (id)getCurrentQueue
{
  queue = self->_queue;
  if (queue)
  {
    v3 = queue;
  }

  else
  {
    v5 = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
    v3 = v5;
  }

  return v3;
}

- (void)_handleAdvertisingAddressChanged:(id)changed
{
  changedCopy = changed;
  v5 = [changedCopy objectForKeyedSubscript:@"kCBConnectableAdvertisingAddress"];
  v6 = [changedCopy objectForKeyedSubscript:@"kCBConnectableAdvertisingAddressType"];
  integerValue = [v6 integerValue];

  v8 = [changedCopy objectForKeyedSubscript:@"kCBNonConnectableAdvertisingAddress"];
  v9 = [changedCopy objectForKeyedSubscript:@"kCBNonConnectableAdvertisingAddressType"];
  integerValue2 = [v9 integerValue];

  v11 = [changedCopy objectForKeyedSubscript:@"kCBNonConnectableSecondaryAdvertisingAddress"];
  v12 = [changedCopy objectForKeyedSubscript:@"kCBNonConnectableSecondaryAdvertisingAddressType"];

  integerValue3 = [v12 integerValue];
  [(CBManager *)self willChangeValueForKey:@"advertisingAddress"];
  advertisingAddress = self->_advertisingAddress;
  self->_advertisingAddress = v5;
  v15 = v5;

  nonConnectableAdvertisingAddress = self->_nonConnectableAdvertisingAddress;
  self->_advertisingAddressType = integerValue;
  self->_nonConnectableAdvertisingAddress = v8;
  v17 = v8;

  nonConnectableSecondaryAdvertisingAddress = self->_nonConnectableSecondaryAdvertisingAddress;
  self->_nonConnectableAdvertisingAddressType = integerValue2;
  self->_nonConnectableSecondaryAdvertisingAddress = v11;

  self->_nonConnectableSecondaryAdvertisingAddressType = integerValue3;

  [(CBManager *)self didChangeValueForKey:@"advertisingAddress"];
}

- (id)createCnxWithInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgWhbRemoteDeviceUUID"];
  v7 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgWhbRemoteControllerId"];

  v8 = [(CBManager *)self getCnxInstanceForIdentifier:v5];
  if (!v8)
  {
    v8 = objc_alloc_init(CBConnection);
    [(CBConnection *)v8 setDispatchQueue:self->_queue];
    v9 = objc_alloc_init(CBDevice);
    v10 = v9;
    if (v6)
    {
      [(CBDevice *)v9 setIdentifier:v6];
    }

    else
    {
      uUIDString = [v5 UUIDString];
      [(CBDevice *)v10 setIdentifier:uUIDString];
    }

    [(CBConnection *)v8 setPeerDevice:v10];
    peerDevice = [(CBConnection *)v8 peerDevice];
    identifier = [peerDevice identifier];

    v14 = objc_alloc_init(CBDevice);
    [(CBDevice *)v14 setIdentifier:v7];
    [(CBConnection *)v8 setRemoteDevice:v14];
    [(NSMutableDictionary *)self->_cnxDict setObject:v8 forKey:v5];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __31__CBManager_createCnxWithInfo___block_invoke;
    v27[3] = &unk_1E811D130;
    v15 = v5;
    v28 = v15;
    [(CBConnection *)v8 setInvalidationHandler:v27];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __31__CBManager_createCnxWithInfo___block_invoke_59;
    v24[3] = &unk_1E8120B60;
    v24[4] = self;
    v16 = v15;
    v25 = v16;
    v17 = identifier;
    v26 = v17;
    [(CBConnection *)v8 setErrorHandler:v24];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __31__CBManager_createCnxWithInfo___block_invoke_61;
    v21[3] = &unk_1E811D018;
    v21[4] = self;
    v22 = v16;
    v23 = v17;
    v18 = v17;
    [(CBConnection *)v8 setInterruptionHandler:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __31__CBManager_createCnxWithInfo___block_invoke_62;
    v20[3] = &unk_1E811D158;
    v20[4] = self;
    [(CBConnection *)v8 setXpcForwardMessageReceiveHandler:v20];
  }

  return v8;
}

void __31__CBManager_createCnxWithInfo___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v2 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C0AC1000, v2, OS_LOG_TYPE_DEFAULT, "WHB cnx instance for localId %@ invalidated", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __31__CBManager_createCnxWithInfo___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    __31__CBManager_createCnxWithInfo___block_invoke_59_cold_2();
  }

  [*(a1 + 32) removeCnxInstanceForIdentifier:*(a1 + 40)];
  [*(a1 + 32) removeWhbRemoteId:*(a1 + 48)];
}

uint64_t __31__CBManager_createCnxWithInfo___block_invoke_61(uint64_t a1)
{
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    __31__CBManager_createCnxWithInfo___block_invoke_61_cold_2();
  }

  [*(a1 + 32) removeCnxInstanceForIdentifier:*(a1 + 40)];
  return [*(a1 + 32) removeWhbRemoteId:*(a1 + 48)];
}

- (id)getCnxInstanceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cnxDict = self->_cnxDict;
  if (!cnxDict)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_cnxDict;
    self->_cnxDict = v6;

    cnxDict = self->_cnxDict;
  }

  v8 = [(NSMutableDictionary *)cnxDict objectForKey:identifierCopy];

  return v8;
}

- (void)removeCnxInstanceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_cnxDict objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_cnxDict removeObjectForKey:identifierCopy];
  }
}

- (void)retrieveSupportedResources:(id)resources subKey:(id)key completion:(id)completion
{
  v24[2] = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  keyCopy = key;
  completionCopy = completion;
  if (resourcesCopy)
  {
    if ([resourcesCopy length])
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CBManager retrieveSupportedResources:a2 subKey:self completion:?];
    if ([0 length])
    {
LABEL_3:
      if (completionCopy)
      {
        goto LABEL_4;
      }

LABEL_14:
      [CBManager retrieveSupportedResources:a2 subKey:self completion:?];
      v12 = &off_1C0B82000;
      if (resourcesCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }
  }

  [CBManager retrieveSupportedResources:a2 subKey:self completion:?];
  if (!completionCopy)
  {
    goto LABEL_14;
  }

LABEL_4:
  v12 = &off_1C0B82000;
  if (resourcesCopy)
  {
LABEL_5:
    v13 = [resourcesCopy length];
    if (completionCopy && v13)
    {
      goto LABEL_8;
    }
  }

LABEL_7:
  getEventQueue = [(CBXpcConnection *)self->_connection getEventQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = *(v12 + 305);
  block[2] = __58__CBManager_retrieveSupportedResources_subKey_completion___block_invoke;
  block[3] = &unk_1E8120B88;
  v22 = completionCopy;
  dispatch_async(getEventQueue, block);

LABEL_8:
  if (keyCopy)
  {
    v15 = keyCopy;
  }

  else
  {
    v15 = &stru_1F40009C8;
  }

  v23[0] = @"kCBMsgArgResourceKey";
  v23[1] = @"kCBMsgArgResourceSubKey";
  v24[0] = resourcesCopy;
  v24[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = *(v12 + 305);
  v19[2] = __58__CBManager_retrieveSupportedResources_subKey_completion___block_invoke_95;
  v19[3] = &unk_1E811CFC8;
  v20 = completionCopy;
  v17 = completionCopy;
  [(CBManager *)self sendMsg:34 args:v16 withReply:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __58__CBManager_retrieveSupportedResources_subKey_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithInfo:&unk_1F4021090];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void __58__CBManager_retrieveSupportedResources_subKey_completion___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 objectForKeyedSubscript:@"kCBMsgArgResourceTotalCount"];
  v7 = [v6 objectForKeyedSubscript:@"kCBMsgArgResourceRemainingCount"];

  (*(*(a1 + 32) + 16))();
}

- (void)retrieveBundle:(id)bundle sessionCountWithCompletion:(id)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v14 = @"kCBMsgArgApplicationID";
  v15[0] = bundle;
  v7 = MEMORY[0x1E695DF20];
  bundleCopy = bundle;
  v9 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__CBManager_retrieveBundle_sessionCountWithCompletion___block_invoke;
  v12[3] = &unk_1E811CFC8;
  v13 = completionCopy;
  v10 = completionCopy;
  [(CBManager *)self sendMsg:37 args:v9 withReply:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __55__CBManager_retrieveBundle_sessionCountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      __55__CBManager_retrieveBundle_sessionCountWithCompletion___block_invoke_cold_2();
    }

    v7 = &unk_1F4020FC0;
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"kCBMsgArgCount"];
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 unsignedIntValue]);
}

+ (unsigned)retrieveCurrentProcessSessionCount
{
  pthread_mutex_lock(&_sessionCounterLock);
  v2 = _sessionCounter;
  pthread_mutex_unlock(&_sessionCounterLock);
  return v2;
}

- (void)xpcConnectionDidReset
{
  [(CBManager *)self setState:1];
  pairingAgent = self->_pairingAgent;

  [(CBPairingAgent *)pairingAgent updateRegistration];
}

- (void)triggerBTErrorReport:(int64_t)report
{
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBManager triggerBTErrorReport:];
  }

  v5 = MEMORY[0x1E695DF90];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:report];
  v7 = [v5 dictionaryWithObjectsAndKeys:{v6, @"kCBMsgArgReasonEnum", 0}];
  [(CBManager *)self sendMsg:33 args:v7];
}

- (void)checkForTCC
{
  v3 = +[CBManager preflightCheckForTCC];
  if (v3 == 2)
  {
    v4 = MEMORY[0x1E695E0F8];

    [(CBManager *)self sendMsg:8 args:v4];
  }

  else
  {
    [(CBManager *)self setTccApproved:v3 == 0];

    [(CBManager *)self doneWithTCC];
  }
}

- (void)queryBluetoothStatus:(id)status completion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (status)
  {
    statusCopy = status;
  }

  else
  {
    statusCopy = MEMORY[0x1E695E0F8];
  }

  v15 = @"kCBMsgArgOptions";
  v16[0] = statusCopy;
  v8 = MEMORY[0x1E695DF20];
  statusCopy2 = status;
  v10 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__CBManager_queryBluetoothStatus_completion___block_invoke;
  v13[3] = &unk_1E811CFC8;
  v14 = completionCopy;
  v11 = completionCopy;
  [(CBManager *)self sendMsg:36 args:v10 withReply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __45__CBManager_queryBluetoothStatus_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v8 objectForKey:{v13, v16}];
        [v7 setObject:v14 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 32) + 16))();
  v15 = *MEMORY[0x1E69E9840];
}

- (void)extractLocalDeviceStatesDictionary:(void *)a1 .cold.2(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = a1;
  +[CBManager authorization];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1C0AC1000, v1, OS_LOG_TYPE_DEBUG, "Authorization state is %ld", v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

- (void)sendMsg:args:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: %@ can only accept this command while in the powered on state", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)closeL2CAPChannelForPeerUUID:withPsm:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_1C0AC1000, v1, OS_LOG_TYPE_DEBUG, "Close L2CAP channel for peerUUID %@ with psm :%u", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

void __31__CBManager_createCnxWithInfo___block_invoke_59_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "CBCentralManager->WHB shim error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)retrieveSupportedResources:(uint64_t)a1 subKey:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBManager.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
}

- (void)retrieveSupportedResources:(uint64_t)a1 subKey:(uint64_t)a2 completion:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBManager.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"[key length] > 0"}];
}

- (void)retrieveSupportedResources:(uint64_t)a1 subKey:(uint64_t)a2 completion:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBManager.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];
}

void __55__CBManager_retrieveBundle_sessionCountWithCompletion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "retrieveBundle:CBSessionCountWithCompletion failed %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end