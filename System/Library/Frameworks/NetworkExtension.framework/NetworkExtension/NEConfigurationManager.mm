@interface NEConfigurationManager
+ (id)sharedManager;
+ (id)sharedManagerForAllUsers;
+ (void)disableConfiguration:(uint64_t)configuration onDemandOnly:(void *)only;
+ (void)updateFlags:(void *)flags withConfiguration:;
- (NEConfigurationManager)init;
- (NEConfigurationManager)initWithPluginType:(id)type;
- (_BYTE)removeConfigurationFromDisk:(const __SCPreferences *)disk updateSCPreferences:;
- (char)initWithUserUUID:(char *)d;
- (id)copyAppGroupMapDidChange:(BOOL *)change;
- (id)copyCurrentIndexWithConfigurationIDsExpunged:(id)expunged;
- (id)debugDescription;
- (id)errorWithCode:(void *)code specifics:;
- (id)filterIndexWithFilter:(void *)filter;
- (id)getCurrentUserUUIDForConfigurationID:(id)d fromIndex:(id)index;
- (id)incomingMessageHandler;
- (id)initSynchronous;
- (id)makeMutableCopyOfIndex:(id)index;
- (id)saveConfigurationToDisk:(const __SCPreferences *)disk updateSCPreferences:(void *)preferences currentSignature:(void *)signature userUUID:(int)d notifyNow:(char)now isUpgrade:;
- (uint64_t)configurationHasChanged:(void *)changed;
- (void)addGroups:(id)groups forApp:(id)app;
- (void)clearLoadedConfigurationsWithIDs:(void *)ds;
- (void)copyChangedConfigurationIDs:(void *)ds;
- (void)copyIdentities:(id)identities fromDomain:(int64_t)domain withCompletionQueue:(id)queue handler:(id)handler;
- (void)dealloc;
- (void)didLoadConfiguration:(void *)configuration;
- (void)executeCallbackOnQueue:(void *)queue callback:;
- (void)fetchClientListenerWithBundleID:(id)d completionQueue:(id)queue handler:(id)handler;
- (void)fetchUpgradeInfoForPluginType:(id)type completionQueue:(id)queue handler:(id)handler;
- (void)getCurrentIndexWithCompletionHandler:(_BYTE *)handler;
- (void)handleApplicationsRemoved:(id)removed completionQueue:(id)queue withCompletionHandler:(id)handler;
- (void)handleFileRemovedWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)loadConfigurationAndUserWithID:(id)d withCompletionQueue:(id)queue handler:(id)handler;
- (void)loadConfigurationWithID:(id)d withCompletionQueue:(id)queue handler:(id)handler;
- (void)loadConfigurations:(id)configurations withFilter:(id)filter completionQueue:(id)queue completionHandler:(id)handler;
- (void)loadConfigurationsInternal:(void *)internal withCompletionHandler:;
- (void)loadConfigurationsWithCompletionQueue:(id)queue handler:(id)handler;
- (void)loadIndexWithFilter:(id)filter completionQueue:(id)queue handler:(id)handler;
- (void)notifyChanges;
- (void)postChangeNotificationWithGeneration:(uint64_t)generation andFlags:(int)flags onlyIfChanged:;
- (void)postGeneration;
- (void)registerForChangeNotifications;
- (void)removeConfiguration:(id)configuration withCompletionQueue:(id)queue handler:(id)handler;
- (void)removeConfigurationFromDisk:(id)disk completionQueue:(id)queue completionHandler:(id)handler;
- (void)removeGroupsForApp:(uint64_t)app;
- (void)repopulateNetworkPrivacyConfigurationResetAll:(BOOL)all;
- (void)saveConfiguration:(id)configuration withCompletionQueue:(id)queue handler:(id)handler;
- (void)saveConfigurationToDisk:(id)disk currentSignature:(id)signature userUUID:(id)d isUpgrade:(BOOL)upgrade completionQueue:(id)queue completionHandler:(id)handler;
- (void)sendRequest:(void *)request responseHandler:;
- (void)setAppGroupMap:(uint64_t)map;
- (void)setChangedQueue:(id)queue andHandler:(id)handler;
- (void)setIncomingMessageHandler:(id)handler;
- (void)showLocalNetworkAlertForApp:(id)app pid:(int)pid uuid:(id)uuid query:(id)query hasEntitlement:(BOOL)entitlement completionQueue:(id)queue handler:(id)handler;
- (void)syncConfigurationsWithSC:(id)c completionQueue:(id)queue completionHandler:(id)handler;
- (void)triggerLocalAuthenticationForConfigurationWithID:(id)d withCompletionQueue:(id)queue handler:(id)handler;
@end

@implementation NEConfigurationManager

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  [v3 appendString:@"{"];
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    appGroupMap = self->_appGroupMap;
  }

  else
  {
    appGroupMap = 0;
  }

  [v3 appendPrettyObject:appGroupMap withName:@"app-group-map" andIndent:0 options:0];
  os_unfair_lock_unlock(&self->_lock);
  [v3 appendString:@"\n}"];

  return v3;
}

- (void)addGroups:(id)groups forApp:(id)app
{
  v26 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  appCopy = app;
  os_unfair_lock_lock(&self->_lock);
  if (!self || !self->_appGroupMap)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NEConfigurationManager *)self setAppGroupMap:v8];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = groupsCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        if (self)
        {
          appGroupMap = self->_appGroupMap;
        }

        else
        {
          appGroupMap = 0;
        }

        v16 = [(NSMutableDictionary *)appGroupMap objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v13), v21];
        v17 = v16;
        if (!v16 || ([v16 isEqualToString:appCopy] & 1) == 0)
        {
          [(NEConfigurationManager *)self setAppGroupsChanged:1];
        }

        if (self)
        {
          v18 = self->_appGroupMap;
        }

        else
        {
          v18 = 0;
        }

        [(NSMutableDictionary *)v18 setObject:appCopy forKeyedSubscript:v14];

        ++v13;
      }

      while (v11 != v13);
      v19 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v11 = v19;
    }

    while (v19);
  }

  os_unfair_lock_unlock(&self->_lock);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)setAppGroupMap:(uint64_t)map
{
  if (map)
  {
    objc_storeStrong((map + 128), a2);
  }
}

- (id)copyAppGroupMapDidChange:(BOOL *)change
{
  os_unfair_lock_lock(&self->_lock);
  if (!self || !self->_appGroupMap)
  {
    v5 = 0;
    if (!change)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:self->_appGroupMap];
  if (change)
  {
LABEL_4:
    *change = [(NEConfigurationManager *)self appGroupsChanged];
  }

LABEL_5:
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)getCurrentUserUUIDForConfigurationID:(id)d fromIndex:(id)index
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  indexCopy = index;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [indexCopy objectForKeyedSubscript:{@"UserMap", 0}];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [indexCopy objectForKeyedSubscript:@"UserMap"];
        v14 = [v13 objectForKeyedSubscript:v12];

        if (isa_nsarray(v14) && ([v14 containsObject:dCopy] & 1) != 0)
        {
          v15 = v12;

          goto LABEL_12;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)fetchUpgradeInfoForPluginType:(id)type completionQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  typeCopy = type;
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v11, "config-operation", 9);
  uTF8String = [typeCopy UTF8String];

  xpc_dictionary_set_string(v11, "config-plugin-type", uTF8String);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__NEConfigurationManager_fetchUpgradeInfoForPluginType_completionQueue_handler___block_invoke;
  v15[3] = &unk_1E7F07350;
  v15[4] = self;
  v16 = queueCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = queueCopy;
  [(NEConfigurationManager *)self sendRequest:v11 responseHandler:v15];
}

void __80__NEConfigurationManager_fetchUpgradeInfoForPluginType_completionQueue_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = v5;
  if (v5 && MEMORY[0x1BFAFC5E0](v5) == MEMORY[0x1E69E9E80])
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__NEConfigurationManager_fetchUpgradeInfoForPluginType_completionQueue_handler___block_invoke_2;
  v12[3] = &unk_1E7F0B588;
  v10 = *(a1 + 48);
  v13 = v7;
  v14 = v10;
  v11 = v7;
  [(NEConfigurationManager *)v8 executeCallbackOnQueue:v9 callback:v12];
}

- (void)sendRequest:(void *)request responseHandler:
{
  xdict = a2;
  if (self)
  {
    requestCopy = request;
    pluginType = [self pluginType];

    if (pluginType)
    {
      pluginType2 = [self pluginType];
      xpc_dictionary_set_string(xdict, "config-plugin-type", [pluginType2 UTF8String]);
    }

    [objc_getProperty(self v7];
  }
}

- (void)executeCallbackOnQueue:(void *)queue callback:
{
  queue = a2;
  queueCopy = queue;
  v6 = queueCopy;
  if (self)
  {
    if (*(self + 24) == 1)
    {
      queueCopy[2](queueCopy);
    }

    else
    {
      dispatch_async(queue, queueCopy);
    }
  }
}

- (void)fetchClientListenerWithBundleID:(id)d completionQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  dCopy = d;
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v11, "config-operation", 8);
  uTF8String = [dCopy UTF8String];

  xpc_dictionary_set_string(v11, "client-name", uTF8String);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__NEConfigurationManager_fetchClientListenerWithBundleID_completionQueue_handler___block_invoke;
  v15[3] = &unk_1E7F07AA0;
  v16 = queueCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = queueCopy;
  [(NEConfigurationManager *)self sendRequest:v11 responseHandler:v15];
}

void __82__NEConfigurationManager_fetchClientListenerWithBundleID_completionQueue_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__NEConfigurationManager_fetchClientListenerWithBundleID_completionQueue_handler___block_invoke_2;
  v9[3] = &unk_1E7F0B588;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)repopulateNetworkPrivacyConfigurationResetAll:(BOOL)all
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, "config-operation", 17);
  xpc_dictionary_set_BOOL(xdict, "reset-all", all);
  [(NEConfigurationManager *)self sendRequest:0 responseHandler:?];
}

- (void)showLocalNetworkAlertForApp:(id)app pid:(int)pid uuid:(id)uuid query:(id)query hasEntitlement:(BOOL)entitlement completionQueue:(id)queue handler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  queryCopy = query;
  queueCopy = queue;
  handlerCopy = handler;
  appCopy = app;
  v20 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v20, "config-operation", 16);
  uTF8String = [appCopy UTF8String];

  if (uTF8String)
  {
    xpc_dictionary_set_string(v20, "bundle-id", uTF8String);
    if (!pid)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v27 = ne_log_obj();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *uuid = 0;
    _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "Failed to extract bundle ID string", uuid, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__NEConfigurationManager_showLocalNetworkAlertForApp_pid_uuid_query_hasEntitlement_completionQueue_handler___block_invoke;
  block[3] = &unk_1E7F0B600;
  v35 = handlerCopy;
  dispatch_async(queueCopy, block);

  if (pid)
  {
LABEL_3:
    xpc_dictionary_set_int64(v20, "pid", pid);
  }

LABEL_4:
  if (uuidCopy)
  {
    *uuid = 0uLL;
    [uuidCopy getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v20, "uuid", uuid);
  }

  if (!queryCopy)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *uuid = 0;
      v24 = "No query string provided";
      v25 = v23;
      v26 = 2;
      goto LABEL_18;
    }

LABEL_15:

    goto LABEL_16;
  }

  uTF8String2 = [queryCopy UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v20, "query", uTF8String2);
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *uuid = 138412290;
      *&uuid[4] = queryCopy;
      v24 = "Set query string: %@";
      v25 = v23;
      v26 = 12;
LABEL_18:
      _os_log_debug_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEBUG, v24, uuid, v26);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_16:
  xpc_dictionary_set_BOOL(v20, "has-entitlement", entitlement);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __108__NEConfigurationManager_showLocalNetworkAlertForApp_pid_uuid_query_hasEntitlement_completionQueue_handler___block_invoke_258;
  v31[3] = &unk_1E7F07AA0;
  v32 = queueCopy;
  v33 = handlerCopy;
  v28 = handlerCopy;
  v29 = queueCopy;
  [(NEConfigurationManager *)self sendRequest:v20 responseHandler:v31];

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __108__NEConfigurationManager_showLocalNetworkAlertForApp_pid_uuid_query_hasEntitlement_completionQueue_handler___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = 0;
    _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Calling handler with failure: %u", v5, 8u);
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __108__NEConfigurationManager_showLocalNetworkAlertForApp_pid_uuid_query_hasEntitlement_completionQueue_handler___block_invoke_258(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v17 = a3;
    v18 = 2112;
    v19 = v6;
    _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "Got response, result_code: %llu, response_data: %@", buf, 0x16u);
  }

  if (a3 == 36)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "Alert was blocked, defaulting to no";
      goto LABEL_13;
    }

LABEL_14:
    LOBYTE(value) = 0;
LABEL_15:

    goto LABEL_16;
  }

  if (a3 == 16)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "App wasn't foreground, didn't show alert";
LABEL_13:
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (!a3 && v6 && MEMORY[0x1BFAFC5E0](v6) == MEMORY[0x1E69E9E58])
  {
    value = xpc_BOOL_get_value(v6);
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v17) = value;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_INFO, "App got response: %u", buf, 8u);
    }

    goto LABEL_15;
  }

  LOBYTE(value) = 0;
LABEL_16:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__NEConfigurationManager_showLocalNetworkAlertForApp_pid_uuid_query_hasEntitlement_completionQueue_handler___block_invoke_259;
  v13[3] = &unk_1E7F0AB40;
  v15 = value;
  v11 = *(a1 + 32);
  v14 = *(a1 + 40);
  dispatch_async(v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __108__NEConfigurationManager_showLocalNetworkAlertForApp_pid_uuid_query_hasEntitlement_completionQueue_handler___block_invoke_259(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_INFO, "Calling handler with newly allowed state: %u", v7, 8u);
  }

  v4 = *(a1 + 40);
  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)triggerLocalAuthenticationForConfigurationWithID:(id)d withCompletionQueue:(id)queue handler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  handlerCopy = handler;
  dCopy = d;
  v11 = xpc_dictionary_create(0, 0, 0);
  memset(uu, 0, sizeof(uu));
  xpc_dictionary_set_int64(v11, "config-operation", 7);
  uuid_clear(uu);
  [dCopy getUUIDBytes:uu];

  xpc_dictionary_set_uuid(v11, "config-identifier", uu);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__NEConfigurationManager_triggerLocalAuthenticationForConfigurationWithID_withCompletionQueue_handler___block_invoke;
  v15[3] = &unk_1E7F07AA0;
  v16 = queueCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NEConfigurationManager *)self sendRequest:v11 responseHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyIdentities:(id)identities fromDomain:(int64_t)domain withCompletionQueue:(id)queue handler:(id)handler
{
  identitiesCopy = identities;
  queueCopy = queue;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (domain)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__NEConfigurationManager_copyIdentities_fromDomain_withCompletionQueue_handler___block_invoke_2;
    block[3] = &unk_1E7F0B588;
    v17 = handlerCopy;
    v16 = identitiesCopy;
    dispatch_async(queueCopy, block);

    v14 = v17;
  }

  else
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v14, "config-operation", 5);
    if (identitiesCopy)
    {
      xpc_dictionary_set_data(v14, "identity-reference", [identitiesCopy bytes], objc_msgSend(identitiesCopy, "length"));
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__NEConfigurationManager_copyIdentities_fromDomain_withCompletionQueue_handler___block_invoke;
    v18[3] = &unk_1E7F07350;
    v18[4] = self;
    v19 = queueCopy;
    v20 = v13;
    [(NEConfigurationManager *)self sendRequest:v14 responseHandler:v18];
  }
}

void __80__NEConfigurationManager_copyIdentities_fromDomain_withCompletionQueue_handler___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    *buf = 138413058;
    v19 = v9;
    v20 = 1024;
    v21 = a2;
    v22 = 2048;
    v23 = a3;
    v24 = 2048;
    v25 = v7;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@ Loaded identities from nehelper, ipc_success = %d, result_code = %lld, response_data = %p", buf, 0x26u);
  }

  if (v7 && MEMORY[0x1BFAFC5E0](v7) == MEMORY[0x1E69E9E50])
  {
    v10 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v10 = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__NEConfigurationManager_copyIdentities_fromDomain_withCompletionQueue_handler___block_invoke_248;
  v15[3] = &unk_1E7F0B588;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v16 = v10;
  v17 = v12;
  v13 = v10;
  dispatch_async(v11, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void __80__NEConfigurationManager_copyIdentities_fromDomain_withCompletionQueue_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [NEIdentityKeychainItem copyIdentities:*(a1 + 32) fromDomain:1];
  (*(v1 + 16))(v1, v2);
}

- (void)handleApplicationsRemoved:(id)removed completionQueue:(id)queue withCompletionHandler:(id)handler
{
  removedCopy = removed;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (self)
  {
    outerQueue = self->_outerQueue;
  }

  else
  {
    outerQueue = 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__NEConfigurationManager_handleApplicationsRemoved_completionQueue_withCompletionHandler___block_invoke;
  v16[3] = &unk_1E7F0A2F0;
  v16[4] = self;
  v17 = removedCopy;
  v18 = queueCopy;
  v19 = handlerCopy;
  v13 = queueCopy;
  v14 = removedCopy;
  v15 = v11;
  dispatch_async(outerQueue, v16);
}

void __90__NEConfigurationManager_handleApplicationsRemoved_completionQueue_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = getWriterSemaphore();
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__NEConfigurationManager_handleApplicationsRemoved_completionQueue_withCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E7F0ACD0;
  v5[4] = v3;
  v6 = v2;
  v9 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v4 = v2;
  [(NEConfigurationManager *)v3 loadConfigurationsInternal:v5 withCompletionHandler:?];
}

void __90__NEConfigurationManager_handleApplicationsRemoved_completionQueue_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    goto LABEL_83;
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 88, 1);
  }

  v72 = [Property allValues];
  v6 = SCPreferencesCreate(*MEMORY[0x1E695E480], @"NEConfigurationManager remove prefs", 0);
  v7 = ne_log_obj();
  v8 = v7;
  prefs = v6;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v67 = SCError();
      *buf = 136315394;
      v86 = SCErrorString(v67);
      v87 = 1024;
      LODWORD(v88) = SCError();
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "SCPreferencesCreate failed while handling application removal: %s (%d)", buf, 0x12u);
    }

    goto LABEL_81;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v86 = "[NEConfigurationManager handleApplicationsRemoved:completionQueue:withCompletionHandler:]_block_invoke";
    v87 = 1024;
    LODWORD(v88) = 2594;
    _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "%s:%d: Locking SCPreferences", buf, 0x12u);
  }

  if (!SCPreferencesLock(v6, 1u))
  {
    v65 = ne_log_obj();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v68 = SCError();
      v69 = SCErrorString(v68);
      v70 = SCError();
      *buf = 136315394;
      v86 = v69;
      v87 = 1024;
      LODWORD(v88) = v70;
      _os_log_error_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_ERROR, "SCPreferencesLock failed while handling application removal: %s (%d)", buf, 0x12u);
    }

    CFRelease(prefs);
LABEL_81:
    dispatch_semaphore_signal(*(a1 + 40));
    (*(*(a1 + 64) + 16))();
    goto LABEL_82;
  }

  v71 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v72;
  v9 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
  if (!v9)
  {
    goto LABEL_72;
  }

  v10 = v9;
  v11 = *v82;
  v80 = a1;
  v73 = *v82;
  do
  {
    v12 = 0;
    v76 = v10;
    do
    {
      if (*v82 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v81 + 1) + 8 * v12);
      v14 = [v13 pluginType];
      v15 = [v13 payloadInfo];
      if (v15)
      {
        goto LABEL_32;
      }

      v16 = [v13 application];
      if (v16)
      {
        v15 = v16;
        v17 = *(a1 + 48);
        v18 = [v13 application];
        if ([v17 containsObject:v18])
        {

          goto LABEL_22;
        }

        if (v14)
        {
          v19 = [*(a1 + 48) containsObject:v14];

          if ((v19 & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_22:
          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [v13 name];
            *buf = 138412290;
            v86 = v21;
            _os_log_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_INFO, "Removing configuration %@ because the corresponding VPN application has been removed", buf, 0xCu);
          }

          if (v14)
          {
            [(NEConfigurationManager *)*(a1 + 32) removeGroupsForApp:v14];
          }

          v22 = [v13 applicationIdentifier];

          if (v22)
          {
            v23 = *(a1 + 32);
            v24 = [v13 applicationIdentifier];
            [(NEConfigurationManager *)v23 removeGroupsForApp:v24];
          }

          v25 = *(a1 + 32);
          v26 = [v13 identifier];
          v15 = [(NEConfigurationManager *)v25 removeConfigurationFromDisk:v26 updateSCPreferences:prefs];

          if (v15)
          {
            v18 = ne_log_obj();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v61 = [v13 name];
              *buf = 136315650;
              v86 = "[NEConfigurationManager handleApplicationsRemoved:completionQueue:withCompletionHandler:]_block_invoke";
              v87 = 2112;
              v88 = v61;
              v89 = 2112;
              v90 = v15;
              _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%s: failed to remove configuration %@: %@", buf, 0x20u);
            }

            goto LABEL_31;
          }
        }

        else
        {
LABEL_31:
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v14 && [*(a1 + 48) containsObject:v14])
      {
        goto LABEL_22;
      }

LABEL_33:
      v27 = [v13 appVPN];
      v28 = [v13 contentFilter];
      v29 = [v28 perApp];

      v79 = v14;
      if (v29)
      {
        v30 = [v13 contentFilter];
      }

      else
      {
        v31 = [v13 dnsProxy];
        v32 = [v31 perApp];

        if (v32)
        {
          v30 = [v13 dnsProxy];
        }

        else
        {
          v33 = [v13 relay];
          v34 = [v33 perApp];

          if (!v34)
          {
            v36 = 0;
            if (!v27)
            {
              v39 = 0;
              goto LABEL_66;
            }

            goto LABEL_40;
          }

          v30 = [v13 relay];
        }
      }

      v35 = v30;
      v36 = [v30 perApp];

      if (!v27)
      {
        if (!v36)
        {
          v39 = 0;
          goto LABEL_66;
        }

        v37 = 1;
        v38 = v36;
        goto LABEL_43;
      }

LABEL_40:
      v37 = 0;
      v38 = v27;
LABEL_43:
      v39 = [v38 appRules];
      if (v39)
      {
        v40 = [v13 externalIdentifier];

        if (v40)
        {
          v75 = v37;
          v78 = [v39 mutableCopy];
          v41 = [v39 count];
          if (v41 >= 1)
          {
            v42 = v41 + 1;
            while (1)
            {
              v43 = v42 - 2;
              v44 = [v39 objectAtIndexedSubscript:v42 - 2];
              v45 = *(a1 + 48);
              v46 = [v44 matchSigningIdentifier];
              LODWORD(v45) = [v45 containsObject:v46];

              if (v45)
              {
                break;
              }

              --v42;
              a1 = v80;
              if (v42 <= 1)
              {
                goto LABEL_54;
              }
            }

            v47 = ne_log_obj();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              v48 = [v44 matchSigningIdentifier];
              v49 = [v13 name];
              *buf = 138412546;
              v86 = v48;
              v87 = 2112;
              v88 = v49;
              _os_log_impl(&dword_1BA83C000, v47, OS_LOG_TYPE_INFO, "Removing app rule %@ from configuration %@ because the corresponding application has been removed", buf, 0x16u);
            }

            [v78 removeObjectAtIndex:v43];
            a1 = v80;
          }

LABEL_54:
          v50 = v78;
          v51 = [v78 count];
          v11 = v73;
          v10 = v76;
          if (v51 != [v39 count])
          {
            v53 = v27;
            if (!v75 || (v53 = v36) != 0)
            {
              [v53 setAppRules:v78];
            }

            v54 = *(a1 + 32);
            if (v54)
            {
              v55 = objc_getProperty(*(a1 + 32), v52, 80, 1);
            }

            else
            {
              v55 = 0;
            }

            v56 = v55;
            v57 = [v13 identifier];
            v58 = [v56 objectForKeyedSubscript:v57];

            v59 = [(NEConfigurationManager *)v54 saveConfigurationToDisk:v13 updateSCPreferences:prefs currentSignature:v58 userUUID:0 notifyNow:1 isUpgrade:0];

            v10 = v76;
            if (v59)
            {
              v60 = ne_log_obj();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                v62 = [v13 name];
                *buf = 136315650;
                v86 = "[NEConfigurationManager handleApplicationsRemoved:completionQueue:withCompletionHandler:]_block_invoke";
                v87 = 2112;
                v88 = v62;
                v89 = 2112;
                v90 = v59;
                _os_log_error_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_ERROR, "%s: failed to save %@: %@", buf, 0x20u);
              }
            }

            a1 = v80;
            v50 = v78;
          }
        }
      }

LABEL_66:

      ++v12;
    }

    while (v12 != v10);
    v63 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
    v10 = v63;
  }

  while (v63);
LABEL_72:

  v64 = ne_log_obj();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v86 = "[NEConfigurationManager handleApplicationsRemoved:completionQueue:withCompletionHandler:]_block_invoke";
    v87 = 1024;
    LODWORD(v88) = 2668;
    _os_log_debug_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_DEBUG, "%s:%d: Unlocking SCPreferences", buf, 0x12u);
  }

  SCPreferencesUnlock(prefs);
  CFRelease(prefs);
  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_async(*(a1 + 56), *(a1 + 64));
  v4 = v71;
LABEL_82:

LABEL_83:
  v66 = *MEMORY[0x1E69E9840];
}

- (void)loadConfigurationsInternal:(void *)internal withCompletionHandler:
{
  v5 = a2;
  internalCopy = internal;
  if (self)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__NEConfigurationManager_loadConfigurationsInternal_withCompletionHandler___block_invoke;
    v7[3] = &unk_1E7F0A1B0;
    v7[4] = self;
    v8 = v5;
    v9 = internalCopy;
    [(NEConfigurationManager *)self getCurrentIndexWithCompletionHandler:v7];
  }
}

void __75__NEConfigurationManager_loadConfigurationsInternal_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4 || (v12 = a1[4]) == 0 || !objc_getProperty(v12, v3, 56, 1))
  {
    v5 = a1[4];
    if (v5 && objc_getProperty(v5, v3, 80, 1))
    {
      v7 = a1[4];
      if (v7)
      {
        Property = objc_getProperty(a1[4], v6, 80, 1);
      }

      else
      {
        Property = 0;
      }

      v9 = [Property allKeys];
      [(NEConfigurationManager *)v7 clearLoadedConfigurationsWithIDs:v9];
    }

    if (v4)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v22 = a1[4];
        *buf = 138412546;
        v26 = v22;
        v27 = 2112;
        v28 = v4;
        _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "%@ Failed to load configurations: %@", buf, 0x16u);
      }
    }

    goto LABEL_11;
  }

  v13 = a1[4];
  if (!v13)
  {

LABEL_11:
    (*(a1[6] + 2))();
    goto LABEL_12;
  }

  if (v13[20])
  {
    goto LABEL_11;
  }

  if (v13[23])
  {
    goto LABEL_11;
  }

  v14 = [(NEConfigurationManager *)v13 copyChangedConfigurationIDs:?];
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = xpc_dictionary_create(0, 0, 0);
  v17 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEFAULT, "Sending load command to nehelper", buf, 2u);
  }

  [v17 encodeObject:v15 forKey:@"config-identifiers"];
  [v17 finishEncoding];
  v19 = [v17 encodedData];
  v20 = xpc_data_create([v19 bytes], objc_msgSend(v19, "length"));
  [(NEConfigurationManager *)a1[4] clearLoadedConfigurationsWithIDs:v15];
  xpc_dictionary_set_int64(v16, "config-operation", 2);
  xpc_dictionary_set_value(v16, "config-ids-data", v20);
  v21 = a1[4];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__NEConfigurationManager_loadConfigurationsInternal_withCompletionHandler___block_invoke_202;
  v23[3] = &unk_1E7F07AA0;
  v23[4] = v21;
  v24 = a1[6];
  [(NEConfigurationManager *)v21 sendRequest:v16 responseHandler:v23];

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)getCurrentIndexWithCompletionHandler:(_BYTE *)handler
{
  v3 = a2;
  v4 = v3;
  if (handler)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v11 = __63__NEConfigurationManager_getCurrentIndexWithCompletionHandler___block_invoke;
    v12 = &unk_1E7F0B588;
    handlerCopy = handler;
    v14 = v3;
    v5 = v10;
    v7 = v5;
    if (handler[24] == 1)
    {
      if (handler[25])
      {
        v11(v5);
      }

      else
      {
        Property = objc_getProperty(handler, v6, 40, 1);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __39__NEConfigurationManager_executeBlock___block_invoke;
        block[3] = &unk_1E7F0B588;
        block[4] = handler;
        v16 = v7;
        dispatch_sync(Property, block);
      }
    }

    else
    {
      v8 = objc_getProperty(handler, v6, 40, 1);
      dispatch_async(v8, v7);
    }
  }
}

void __63__NEConfigurationManager_getCurrentIndexWithCompletionHandler___block_invoke(uint64_t a1)
{
  v152 = *MEMORY[0x1E69E9840];
  [(NEConfigurationManager *)*(a1 + 32) registerForChangeNotifications];
  v120 = a1;
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_28;
  }

  v4 = objc_getProperty(v3, v2, 56, 1);
  if (!v4)
  {
    goto LABEL_25;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 28);

    if (v7 == -1)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  state64[0] = 0;
  v8 = *(v120 + 32);
  if (v8)
  {
    v9 = *(v8 + 28);
  }

  else
  {
    v9 = 0;
  }

  state = notify_get_state(v9, state64);
  v11 = state;
  if (state == 9)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v120 + 32);
      if (v17)
      {
        LODWORD(v17) = *(v17 + 28);
      }

      *buf = 136315394;
      v149 = "com.apple.neconfigurationchanged";
      v150 = 1024;
      *v151 = v17;
      v16 = "Failed to get the current %s (token %u) notification state because the server is not found";
      goto LABEL_22;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (state == 1)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(v120 + 32);
      if (v15)
      {
        LODWORD(v15) = *(v15 + 28);
      }

      *buf = 136315394;
      v149 = "com.apple.neconfigurationchanged";
      v150 = 1024;
      *v151 = v15;
      v16 = "Failed to get the current %s (token %u) notification state because the notification does not exist";
LABEL_22:
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (state)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v117 = *(v120 + 32);
      if (v117)
      {
        LODWORD(v117) = *(v117 + 28);
      }

      *buf = 136315650;
      v149 = "com.apple.neconfigurationchanged";
      v150 = 1024;
      *v151 = v117;
      *&v151[4] = 1024;
      *&v151[6] = v11;
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "Failed to get the current %s (token %u) notification state: %u", buf, 0x18u);
    }

    goto LABEL_24;
  }

  v12 = state64[0] & 0x7FFFFFFFFFFFFLL;
  v13 = *(v120 + 32);
  if (v13)
  {
    v13 = *(v13 + 104);
  }

  if (v13 == v12)
  {
    (*(*(v120 + 40) + 16))();
    goto LABEL_135;
  }

  v48 = ne_log_obj();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = *(v120 + 32);
    if (v49)
    {
      v49 = *(v49 + 104);
    }

    *buf = 134218240;
    v149 = v49;
    v150 = 2048;
    *v151 = v12;
    _os_log_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_INFO, "current generation (%lld) does not equal posted generation (%llu), fetching a new index", buf, 0x16u);
  }

  if (!v12)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v50 = *(v120 + 32);
    if (v50)
    {
      LODWORD(v50) = *(v50 + 28);
    }

    *buf = 134218240;
    v149 = state64[0];
    v150 = 1024;
    *v151 = v50;
    v16 = "current generation is 0, notification state == %llu, token == %u";
    goto LABEL_22;
  }

LABEL_25:
  v18 = *(v120 + 32);
  if (!v18 || (objc_setProperty_atomic(v18, v5, 0, 56), (v19 = *(v120 + 32)) == 0) || (*(v19 + 21) & 1) != 0)
  {
LABEL_28:
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v20, "config-operation", 1);
    v21 = *(v120 + 32);
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __63__NEConfigurationManager_getCurrentIndexWithCompletionHandler___block_invoke_123;
    v130[3] = &unk_1E7F07AA0;
    v130[4] = v21;
    v131 = *(v120 + 40);
    [(NEConfigurationManager *)v21 sendRequest:v20 responseHandler:v130];

    goto LABEL_135;
  }

  self = *(v120 + 32);
  v22 = [MEMORY[0x1E696AC08] defaultManager];
  v23 = [v22 isReadableFileAtPath:@"/Library/Preferences/com.apple.networkextension.plist"];

  if (v23)
  {
    v141 = 0;
    obj = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:@"/Library/Preferences/com.apple.networkextension.plist" options:0 error:&v141];
    v127 = v141;
    *(self + 20) = 1;
    if (obj)
    {
      v24 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:obj error:0];
      [v24 setClass:objc_opt_class() forClassName:@"NEVPNAppRule"];
      [v24 setClass:objc_opt_class() forClassName:@"NEVPNProtocolPlugin"];
      v121 = [v24 decodeInt64ForKey:@"Generation"];
      v123 = [v24 decodeInt64ForKey:@"Version"];
      v25 = MEMORY[0x1E695DFD8];
      v26 = objc_opt_class();
      v27 = objc_opt_class();
      v28 = objc_opt_class();
      v29 = objc_opt_class();
      v30 = [v25 setWithObjects:{v26, v27, v28, v29, objc_opt_class(), 0}];
      v31 = [v24 decodeObjectOfClasses:v30 forKey:@"Index"];

      if (!v31 || v123)
      {
        goto LABEL_73;
      }

      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v137 objects:buf count:16];
      if (v33)
      {
        v34 = 0;
        v35 = 0;
        v36 = *v138;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v138 != v36)
            {
              objc_enumerationMutation(v32);
            }

            v38 = *(*(&v137 + 1) + 8 * i);
            if (!v34)
            {
              v34 = [v32 objectForKeyedSubscript:*(*(&v137 + 1) + 8 * i)];
            }

            v39 = [v34 allKeys];
            if (!v35)
            {
              v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            [v35 setObject:v39 forKeyedSubscript:v38];
          }

          v33 = [v32 countByEnumeratingWithState:&v137 objects:buf count:16];
        }

        while (v33);

        if (!v34 || !v35)
        {
          v31 = v32;
          goto LABEL_72;
        }

        v146[0] = @"ConfigurationProperties";
        v146[1] = @"UserMap";
        v147[0] = v34;
        v147[1] = v35;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:v146 count:2];
      }

      else
      {
        v35 = 0;
        v34 = 0;
        v31 = v32;
      }

LABEL_72:
LABEL_73:
      v47 = v31;
      if (v123)
      {
        v46 = [v24 decodeObjectOfClass:objc_opt_class() forKey:@"SCPreferencesSignature2"];
      }

      else
      {
        v51 = MEMORY[0x1E695DFD8];
        v52 = objc_opt_class();
        v53 = objc_opt_class();
        v54 = [v51 setWithObjects:{v52, v53, objc_opt_class(), 0}];
        v55 = [v24 decodeObjectOfClasses:v54 forKey:@"SCPreferencesSignature"];

        memset(v136, 0, sizeof(v136));
        v56 = v55;
        if ([v56 countByEnumeratingWithState:v136 objects:state64 count:16])
        {
          v46 = [v56 objectForKeyedSubscript:**(&v136[0] + 1)];
        }

        else
        {
          v46 = 0;
        }
      }

      goto LABEL_80;
    }

    v44 = ne_log_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v149 = self;
      v150 = 2112;
      *v151 = @"/Library/Preferences/com.apple.networkextension.plist";
      _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "%@ Failed to read data from %@", buf, 0x16u);
    }

    v45 = [(NEConfigurationManager *)self errorWithCode:0 specifics:?];

    v24 = 0;
    v127 = v45;
  }

  else
  {
    v40 = geteuid() == 0;
    v41 = [MEMORY[0x1E696AC08] defaultManager];
    v42 = [v41 fileExistsAtPath:@"/Library/Preferences/com.apple.networkextension.plist"];

    if (v40)
    {
      if (!v42)
      {
        v24 = 0;
        v121 = 0;
        v46 = 0;
        v47 = 0;
        v127 = 0;
LABEL_80:
        objc_setProperty_atomic(self, v43, v24, 96);
        *(self + 13) = v121;
        objc_setProperty_atomic(self, v57, v46, 120);
        goto LABEL_81;
      }

      v127 = [(NEConfigurationManager *)self errorWithCode:0 specifics:?];
    }

    else
    {
      if (v42)
      {
        [(NEConfigurationManager *)self errorWithCode:0 specifics:?];
      }

      else
      {
        [(NEConfigurationManager *)self errorWithCode:0 specifics:?];
      }
      v127 = ;
    }

    v24 = 0;
  }

  v46 = 0;
  v47 = 0;
LABEL_81:
  v58 = v127;
  newValue = v47;

  v59 = v127;
  if ((*(self + 20) & 1) == 0)
  {
    v108 = v59;

    v109 = *(v120 + 32);
    if (v109 && (*(v109 + 23) & 1) != 0)
    {
      goto LABEL_134;
    }

    goto LABEL_28;
  }

  v118 = v59;
  if (v59)
  {
    v61 = ne_log_obj();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v149 = v118;
      _os_log_error_impl(&dword_1BA83C000, v61, OS_LOG_TYPE_ERROR, "Failed to read the index: %@", buf, 0xCu);
    }
  }

  if (!newValue)
  {
    v110 = ne_log_obj();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v149 = self;
      _os_log_impl(&dword_1BA83C000, v110, OS_LOG_TYPE_DEFAULT, "%@ No configurations exist", buf, 0xCu);
    }

    objc_setProperty_atomic(self, v111, 0, 96);
    goto LABEL_134;
  }

  objc_setProperty_atomic(self, v60, newValue, 56);
  v62 = [self userUUID];
  v63 = v62 == 0;

  if (!v63)
  {
    v143 = @"user-uuid";
    v65 = [self userUUID];
    v144 = v65;
    v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
    v67 = [(NEConfigurationManager *)self filterIndexWithFilter:v66];
    objc_setProperty_atomic(self, v68, v67, 56);
  }

  [(NEConfigurationManager *)self notifyChanges];
  if (objc_getProperty(self, v69, 80, 1))
  {
    v71 = [objc_getProperty(self v70];
    [(NEConfigurationManager *)self clearLoadedConfigurationsWithIDs:v71];
  }

  if (!objc_getProperty(self, v70, 56, 1))
  {
    goto LABEL_131;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  obja = [objc_getProperty(self v72];
  v73 = [obja countByEnumeratingWithState:&v132 objects:v142 count:16];
  if (!v73)
  {
    v122 = 0;
    v74 = 0;

    goto LABEL_127;
  }

  v122 = 0;
  v74 = 0;
  v128 = *v133;
  do
  {
    for (j = 0; j != v73; ++j)
    {
      if (*v133 != v128)
      {
        objc_enumerationMutation(obja);
      }

      v76 = *(*(&v132 + 1) + 8 * j);
      v77 = ne_log_obj();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v149 = v76;
        _os_log_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_INFO, "Decoding %@", buf, 0xCu);
      }

      v78 = v76;
      v80 = objc_getProperty(self, v79, 96, 1);
      v81 = objc_opt_class();
      v82 = [v78 UUIDString];
      v83 = [v80 decodeObjectOfClass:v81 forKey:v82];

      if (v83)
      {
        v84 = [v83 VPN];
        v85 = [v84 protocol];
        v86 = [v85 type] == 3;

        if (!v86)
        {
          [(NEConfigurationManager *)self didLoadConfiguration:v83];
          v87 = [v83 applicationIdentifier];
          v88 = v87 == 0;

          if (!v88)
          {
            v90 = [objc_getProperty(self v89];
            v91 = [v90 objectForKeyedSubscript:v78];

            v92 = [v91 objectForKeyedSubscript:@"ApplicationID"];
            if (!isa_nsstring(v92))
            {
              goto LABEL_107;
            }

            v93 = [v83 applicationIdentifier];
            v94 = [v91 objectForKeyedSubscript:@"ApplicationID"];
            v95 = [v93 isEqualToString:v94];

            if ((v95 & 1) == 0)
            {
              v92 = [v91 mutableCopy];
              v96 = [v83 applicationIdentifier];
              [v92 setObject:v96 forKeyedSubscript:@"ApplicationID"];

              if (!v122)
              {
                v98 = [objc_getProperty(self v97];
                v122 = [v98 mutableCopy];
              }

              v99 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v92];
              [v122 setObject:v99 forKeyedSubscript:v78];

LABEL_107:
            }
          }
        }
      }

      else
      {
        v100 = ne_log_obj();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v149 = v78;
          _os_log_fault_impl(&dword_1BA83C000, v100, OS_LOG_TYPE_FAULT, "Failed to decode %@", buf, 0xCu);
        }

        v101 = v74;
        if (!v74)
        {
          v101 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v74 = v101;
        [v101 addObject:v78];
        v83 = 0;
      }
    }

    v73 = [obja countByEnumeratingWithState:&v132 objects:v142 count:16];
  }

  while (v73);

  if (v122)
  {
    v103 = [objc_getProperty(self v102];
    v104 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v122];
    [v103 setObject:v104 forKeyedSubscript:@"ConfigurationProperties"];

    v105 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v103];
    objc_setProperty_atomic(self, v106, v105, 56);
  }

  if (v74)
  {
    objb = [self copyCurrentIndexWithConfigurationIDsExpunged:v74];
    objc_setProperty_atomic(self, v107, objb, 56);
  }

LABEL_127:
  v112 = [objc_getProperty(self v102];
  os_unfair_lock_lock(self + 4);
  if (v112)
  {
    v113 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v112];
  }

  else
  {
    v113 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v114 = v113;
  [(NEConfigurationManager *)self setAppGroupMap:v113];

  [self setAppGroupsChanged:0];
  os_unfair_lock_unlock(self + 4);

LABEL_131:
  objc_setProperty_atomic(self, v72, 0, 96);
  v115 = ne_log_obj();
  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v115, OS_LOG_TYPE_DEFAULT, "Reload from disk complete", buf, 2u);
  }

LABEL_134:
  (*(*(v120 + 40) + 16))();
LABEL_135:
  v116 = *MEMORY[0x1E69E9840];
}

uint64_t __39__NEConfigurationManager_executeBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 25) = 1;
  }

  v3 = *(a1 + 40);
  result = (*(*(a1 + 40) + 16))();
  v5 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 25) = 0;
  }

  return result;
}

- (void)registerForChangeNotifications
{
  v13 = *MEMORY[0x1E69E9840];
  if (val && *(val + 7) == -1)
  {
    out_token = -1;
    objc_initWeak(&location, val);
    v3 = objc_getProperty(val, v2, 40, 1);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __56__NEConfigurationManager_registerForChangeNotifications__block_invoke;
    handler[3] = &unk_1E7F0AA30;
    objc_copyWeak(&v8, &location);
    v4 = notify_register_dispatch("com.apple.neconfigurationchanged", &out_token, v3, handler);

    if (v4)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v12 = v4;
        _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "notify_register_dispatch failed: %d", buf, 8u);
      }
    }

    else
    {
      *(val + 7) = out_token;
    }

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __63__NEConfigurationManager_getCurrentIndexWithCompletionHandler___block_invoke_123(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  xdata = a4;
  if (xdata && MEMORY[0x1BFAFC5E0](xdata) == MEMORY[0x1E69E9E70])
  {
    v7 = MEMORY[0x1E695DEF0];
    bytes_ptr = xpc_data_get_bytes_ptr(xdata);
    v9 = [v7 dataWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(xdata) freeWhenDone:0];
    v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v9 error:0];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v10 decodeObjectOfClasses:v16 forKey:@"config-index"];

    v18 = [v10 decodeInt64ForKey:@"config-generation"];
    if (isa_nsdictionary(v17))
    {
      v20 = *(a1 + 32);
      if (v20)
      {
        objc_setProperty_atomic(v20, v19, v17, 56);
      }
    }

    v21 = *(a1 + 32);
    if (v21)
    {
      *(v21 + 104) = v18;
    }
  }

  if (a2)
  {
    v22 = a3;
  }

  else
  {
    v22 = 11;
  }

  if (v22)
  {
    v23 = [(NEConfigurationManager *)*(a1 + 32) errorWithCode:v22 specifics:0];
  }

  else
  {
    v23 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (id)errorWithCode:(void *)code specifics:
{
  v13[1] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  if (self)
  {
    v6 = @"configuration is corrupted";
    switch(a2)
    {
      case 1:
        break;
      case 2:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"configuration is invalid: %@", codeCopy];
        goto LABEL_12;
      case 3:
        v6 = @"configuration type is wrong";
        break;
      case 4:
        v6 = @"configuration owner application is wrong";
        break;
      case 5:
        v6 = @"configuration is stale";
        break;
      case 6:
        v6 = @"failed to write configuration to disk";
        break;
      case 7:
        v6 = @"configuration does not exist";
        break;
      case 8:
        v6 = @"invalid configuration operation request";
        break;
      case 9:
        v6 = @"configuration is unchanged";
        break;
      case 10:
        v6 = @"permission denied";
        break;
      case 11:
        v6 = @"IPC failed";
        break;
      case 12:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to make changes in SCPreferences: %@", codeCopy];
        v6 = LABEL_12:;
        break;
      case 13:
        v6 = @"failed to copy keychain items";
        break;
      case 14:
        v6 = @"failed into import certificates into keychain";
        break;
      case 15:
        v6 = @"unknown certificate format";
        break;
      case 16:
        v6 = @"failed to import certificate";
        break;
      case 17:
        v6 = @"internal failure with certificate installation";
        break;
      case 18:
        v6 = @"file not found";
        break;
      case 20:
        v6 = @"total NetworkExtension configuration size limit exceeded";
        break;
      case 21:
        v6 = @"MDM required";
        break;
      default:
        v6 = @"<unknown>";
        break;
    }

    v7 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 errorWithDomain:@"NEConfigurationErrorDomain" code:a2 userInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)filterIndexWithFilter:(void *)filter
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!filter || !objc_getProperty(filter, v3, 56, 1))
  {
    v49 = 0;
    goto LABEL_57;
  }

  if (!v4 || ([v4 objectForKeyedSubscript:@"user-uuid"], v6 = objc_claimAutoreleasedReturnValue(), v7 = isa_nsuuid(v6), v6, !v7))
  {
    v8 = [objc_getProperty(filter v5];
    [v8 removeObjectForKey:@"AppGroupMap"];
    v49 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v8];
    goto LABEL_56;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = [v4 objectForKeyedSubscript:@"plugin-types"];
  v59 = [v4 objectForKeyedSubscript:@"application-id"];
  v10 = [objc_getProperty(filter v9];
  v11 = [v4 objectForKeyedSubscript:@"user-uuid"];
  v12 = [v10 objectForKeyedSubscript:v11];
  [v8 addObjectsFromArray:v12];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  self = filter;
  v14 = [objc_getProperty(filter v13];
  v15 = NEGetNullUUID();
  v16 = [v14 objectForKeyedSubscript:v15];

  v17 = [v16 countByEnumeratingWithState:&v69 objects:v79 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v70;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v70 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v69 + 1) + 8 * i);
        if (([v8 containsObject:v21] & 1) == 0)
        {
          [v8 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v69 objects:v79 count:16];
    }

    while (v18);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v23 = [objc_getProperty(self v22];
  v24 = NEGetRootUUID();
  v25 = [v23 objectForKeyedSubscript:v24];

  v26 = [v25 countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v66;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v66 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v65 + 1) + 8 * j);
        if (([v8 containsObject:v30] & 1) == 0)
        {
          [v8 addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v65 objects:v78 count:16];
    }

    while (v27);
  }

  if (!v8)
  {
    v49 = 0;
    goto LABEL_55;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v31 = v8;
  v32 = [v31 countByEnumeratingWithState:&v61 objects:v77 count:16];
  if (!v32)
  {
    v49 = 0;
LABEL_53:

    goto LABEL_55;
  }

  v34 = v32;
  v55 = v4;
  v58 = 0;
  v35 = @"ConfigurationProperties";
  v36 = *v62;
  v37 = self;
  do
  {
    v38 = 0;
    v57 = v34;
    do
    {
      if (*v62 != v36)
      {
        objc_enumerationMutation(v31);
      }

      v39 = *(*(&v61 + 1) + 8 * v38);
      v40 = [objc_getProperty(v37 v33];
      v41 = [v40 objectForKeyedSubscript:v39];

      if (isa_nsdictionary(v41))
      {
        v42 = v35;
        v43 = v31;
        if ((isa_nsarray(v60) & 1) != 0 || isa_nsstring(v59))
        {
          v44 = [v41 objectForKeyedSubscript:{@"PluginType", v55}];
          v45 = [v41 objectForKeyedSubscript:@"ApplicationID"];
          if (isa_nsarray(v60) && isa_nsstring(v44))
          {
            v46 = [v60 containsObject:v44];
          }

          else
          {
            v46 = 0;
          }

          if (isa_nsstring(v59) && isa_nsstring(v45))
          {
            v47 = [v59 isEqualToString:v45] | v46;

            if ((v47 & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          else
          {

            if (!v46)
            {
LABEL_44:
              v31 = v43;
              v35 = v42;
              v37 = self;
              v34 = v57;
              goto LABEL_45;
            }
          }
        }

        v48 = v58;
        if (!v58)
        {
          v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v58 = v48;
        [v48 setObject:v41 forKeyedSubscript:{v39, v55}];
        goto LABEL_44;
      }

LABEL_45:

      ++v38;
    }

    while (v34 != v38);
    v34 = [v31 countByEnumeratingWithState:&v61 objects:v77 count:16];
  }

  while (v34);

  v49 = v58;
  if (v58)
  {
    v75[0] = @"UserMap";
    v4 = v55;
    v50 = [v55 objectForKeyedSubscript:@"user-uuid"];
    v73 = v50;
    allKeys = [v58 allKeys];
    v74 = allKeys;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v75[1] = v35;
    v76[0] = v52;
    v76[1] = v58;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];

    v31 = v58;
    goto LABEL_53;
  }

  v4 = v55;
LABEL_55:

LABEL_56:
LABEL_57:

  v53 = *MEMORY[0x1E69E9840];

  return v49;
}

- (void)notifyChanges
{
  if (self)
  {
    v3 = objc_getProperty(self, a2, 64, 1);
    if (v3)
    {
      v5 = v3;
      Property = objc_getProperty(self, v4, 72, 1);

      if (Property)
      {
        v8 = [(NEConfigurationManager *)self copyChangedConfigurationIDs:?];
        if (v8)
        {
          v9 = objc_getProperty(self, v7, 40, 1);
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __39__NEConfigurationManager_notifyChanges__block_invoke;
          v10[3] = &unk_1E7F0A0E8;
          v10[4] = self;
          v11 = v8;
          dispatch_async(v9, v10);
        }
      }
    }
  }
}

- (void)clearLoadedConfigurationsWithIDs:(void *)ds
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (ds)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = ne_log_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v19 = v10;
            _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "Clearing %@ from the loaded configurations", buf, 0xCu);
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }

    [objc_getProperty(ds v6];
    [objc_getProperty(ds v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)didLoadConfiguration:(void *)configuration
{
  v28 = *MEMORY[0x1E69E9840];
  if (!configuration)
  {
    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = a2;
  v25 = [objc_getProperty(configuration v4];
  identifier = [v3 identifier];
  v6 = [v25 objectForKeyedSubscript:identifier];
  v7 = [v6 objectForKeyedSubscript:@"Signature"];
  v8 = v3;
  v9 = v7;
  v10 = ne_log_obj();
  identifier4 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [v8 identifier];
      *buf = 138412290;
      v27 = identifier2;
      _os_log_impl(&dword_1BA83C000, identifier4, OS_LOG_TYPE_DEFAULT, "Adding %@ to the loaded configurations", buf, 0xCu);
    }

    if (!objc_getProperty(configuration, v13, 80, 1))
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
      objc_setProperty_atomic(configuration, v16, v15, 80);

      v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
      objc_setProperty_atomic(configuration, v18, v17, 88);
    }

    v19 = objc_getProperty(configuration, v14, 80, 1);
    identifier3 = [v8 identifier];
    [v19 setObject:v9 forKeyedSubscript:identifier3];

    identifier5 = objc_getProperty(configuration, v21, 88, 1);
    identifier4 = [v8 identifier];
    [identifier5 setObject:v8 forKeyedSubscript:identifier4];
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    identifier5 = [v8 identifier];
    *buf = 138412290;
    v27 = identifier5;
    _os_log_fault_impl(&dword_1BA83C000, identifier4, OS_LOG_TYPE_FAULT, "Missing a signature for %@", buf, 0xCu);
  }

LABEL_10:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)copyChangedConfigurationIDs:(void *)ds
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ds)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = v4;
    if (v3)
    {
      [v4 addObjectsFromArray:v3];
    }

    else
    {
      if (objc_getProperty(ds, v5, 56, 1))
      {
        v8 = [objc_getProperty(ds v7];
        allKeys = [v8 allKeys];
        [v6 addObjectsFromArray:allKeys];
      }

      if (objc_getProperty(ds, v7, 80, 1))
      {
        v11 = [objc_getProperty(ds v10];
        [v6 addObjectsFromArray:v11];
      }
    }

    if (v6)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v6;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v23;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v22 + 1) + 8 * i);
            if ([(NEConfigurationManager *)ds configurationHasChanged:v18])
            {
              if (!v15)
              {
                v19 = objc_alloc(MEMORY[0x1E695DF70]);
                v15 = [v19 initWithCapacity:{0, v22}];
              }

              [v15 addObject:{v18, v22}];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);

        if (v15)
        {
          ds = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
LABEL_25:

          goto LABEL_26;
        }

LABEL_24:
        ds = 0;
        goto LABEL_25;
      }
    }

    v15 = 0;
    goto LABEL_24;
  }

LABEL_26:

  v20 = *MEMORY[0x1E69E9840];
  return ds;
}

void __39__NEConfigurationManager_notifyChanges__block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_getProperty(v3, a2, 64, 1);
    if (v4)
    {
      v15 = v4;
      v6 = *(a1 + 32);
      if (v6)
      {
        Property = objc_getProperty(v6, v5, 72, 1);

        if (Property)
        {
          v9 = *(a1 + 32);
          if (v9)
          {
            v9 = objc_getProperty(v9, v8, 72, 1);
          }

          v11 = v9;
          v12 = *(a1 + 32);
          if (v12)
          {
            v13 = objc_getProperty(v12, v10, 64, 1);
          }

          else
          {
            v13 = 0;
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __39__NEConfigurationManager_notifyChanges__block_invoke_2;
          block[3] = &unk_1E7F0B588;
          v18 = v11;
          v17 = *(a1 + 40);
          v14 = v11;
          dispatch_async(v13, block);
        }
      }

      else
      {
      }
    }
  }
}

- (uint64_t)configurationHasChanged:(void *)changed
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!changed)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if (objc_getProperty(changed, v3, 56, 1))
  {
    v6 = [objc_getProperty(changed v5];
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = [v7 objectForKeyedSubscript:@"Signature"];
  }

  else
  {
    v8 = 0;
  }

  if (objc_getProperty(changed, v5, 80, 1))
  {
    v10 = [objc_getProperty(changed v9];
  }

  else
  {
    v10 = 0;
  }

  if (!(v8 | v10))
  {
    goto LABEL_11;
  }

  if (!v8)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v4;
      v13 = "Configuration %@ was removed";
LABEL_19:
      _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_INFO, v13, &v17, 0xCu);
    }

LABEL_20:

    v11 = 1;
    goto LABEL_21;
  }

  if (([v8 isEqualToData:v10] & 1) == 0)
  {
    v12 = ne_log_obj();
    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v14)
      {
        v17 = 138412290;
        v18 = v4;
        v13 = "Configuration %@ has changed";
        goto LABEL_19;
      }
    }

    else if (v14)
    {
      v17 = 138412290;
      v18 = v4;
      v13 = "Configuration %@ has not been loaded yet";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

LABEL_11:
  v11 = 0;
LABEL_21:

LABEL_22:
  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void __56__NEConfigurationManager_registerForChangeNotifications__block_invoke(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "com.apple.neconfigurationchanged";
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "Received a %s notification with token %d", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_getProperty(WeakRetained, v6, 72, 1);
    if (v8)
    {
      v10 = v8;
      Property = objc_getProperty(v7, v9, 64, 1);

      if (Property)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __56__NEConfigurationManager_registerForChangeNotifications__block_invoke_136;
        v13[3] = &unk_1E7F0B4A8;
        v14 = v7;
        [(NEConfigurationManager *)v14 getCurrentIndexWithCompletionHandler:v13];
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __56__NEConfigurationManager_registerForChangeNotifications__block_invoke_136(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      if ((v3[20] & 1) == 0)
      {
        [(NEConfigurationManager *)v3 notifyChanges];
      }
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void __75__NEConfigurationManager_loadConfigurationsInternal_withCompletionHandler___block_invoke_202(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (v7 && MEMORY[0x1BFAFC5E0](v7) == MEMORY[0x1E69E9E70])
  {
    v10 = objc_alloc(MEMORY[0x1E696ACD0]);
    v11 = MEMORY[0x1E695DEF0];
    bytes_ptr = xpc_data_get_bytes_ptr(v8);
    v13 = [v11 dataWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(v8) freeWhenDone:0];
    v9 = [v10 initForReadingFromData:v13 error:0];

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v9 decodeObjectOfClasses:v16 forKey:@"config-objects"];

    if (isa_nsarray(v17))
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v27;
        do
        {
          v22 = 0;
          do
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(NEConfigurationManager *)*(a1 + 32) didLoadConfiguration:?];
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v20);
      }
    }
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "No response data", buf, 2u);
    }
  }

  if (a2)
  {
    if (!a3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "IPC with nehelper failed", buf, 2u);
    }

    a3 = 11;
  }

  v24 = ne_log_obj();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v31 = a3;
    _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "load failed with error: %lld", buf, 0xCu);
  }

  a3 = [(NEConfigurationManager *)*(a1 + 32) errorWithCode:a3 specifics:0];
LABEL_24:
  (*(*(a1 + 40) + 16))();

  v25 = *MEMORY[0x1E69E9840];
}

- (void)removeGroupsForApp:(uint64_t)app
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (app)
  {
    os_unfair_lock_lock((app + 16));
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = *(app + 128);
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [*(app + 128) objectForKeyedSubscript:{v10, v14}];
          v12 = [v11 isEqualToString:v3];

          if (v12)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      [app setAppGroupsChanged:1];
      [*(app + 128) removeObjectsForKeys:v4];
    }

    os_unfair_lock_unlock((app + 16));
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (_BYTE)removeConfigurationFromDisk:(const __SCPreferences *)disk updateSCPreferences:
{
  v93 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (self)
  {
    v85 = 0;
    v84 = 0;
    if ((self[23] & 1) == 0)
    {
      self = [(NEConfigurationManager *)self errorWithCode:0 specifics:?];
      goto LABEL_55;
    }

    Property = objc_getProperty(self, v5, 56, 1);
    v8 = [(NEConfigurationManager *)self makeMutableCopyOfIndex:?];
    v9 = [v8 objectForKeyedSubscript:@"ConfigurationProperties"];
    v10 = [v9 objectForKeyedSubscript:v6];
    v11 = isa_nsdictionary(v10);

    if ((v11 & 1) == 0)
    {
      self = [(NEConfigurationManager *)self errorWithCode:0 specifics:?];
LABEL_54:

      goto LABEL_55;
    }

    prefs = disk;
    selfCopy = self;
    v12 = [v8 objectForKeyedSubscript:@"ConfigurationProperties"];
    [v12 removeObjectForKey:v6];

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v13 = [v8 objectForKeyedSubscript:@"UserMap"];
    v14 = [v13 countByEnumeratingWithState:&v80 objects:v88 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v81;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v81 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v80 + 1) + 8 * i);
          v19 = [v8 objectForKeyedSubscript:@"UserMap"];
          v20 = [v19 objectForKeyedSubscript:v18];

          [v20 removeObject:v6];
        }

        v15 = [v13 countByEnumeratingWithState:&v80 objects:v88 count:16];
      }

      while (v15);
    }

    v21 = selfCopy;
    v22 = [selfCopy copyAppGroupMapDidChange:&v84];
    if (v22 && v84 == 1)
    {
      [v8 setObject:v22 forKeyedSubscript:@"AppGroupMap"];
      os_unfair_lock_lock((selfCopy + 16));
      [selfCopy setAppGroupsChanged:0];
      os_unfair_lock_unlock((selfCopy + 16));
    }

    v23 = *(selfCopy + 104);
    if (v23 <= 0x7FFFFFFFFFFFELL)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 1;
    }

    v25 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    v72 = v24;
    [v25 encodeInt64:v24 forKey:@"Generation"];
    [v25 encodeInt64:1 forKey:@"Version"];
    v74 = v25;
    [v25 encodeObject:v8 forKey:@"Index"];
    if (objc_getProperty(selfCopy, v26, 56, 1))
    {
      v28 = [objc_getProperty(selfCopy v27];
      v29 = v28;
      if (v28)
      {
        [v28 clearSystemKeychain];
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v30 = [v8 objectForKeyedSubscript:@"ConfigurationProperties"];
      v31 = [v30 countByEnumeratingWithState:&v76 objects:v87 count:16];
      if (v31)
      {
        v33 = v31;
        v34 = *v77;
        do
        {
          v35 = 0;
          v36 = v29;
          do
          {
            if (*v77 != v34)
            {
              objc_enumerationMutation(v30);
            }

            v29 = [objc_getProperty(v21 v32];

            if (v29)
            {
              identifier = [v29 identifier];
              uUIDString = [identifier UUIDString];
              [v74 encodeObject:v29 forKey:uUIDString];

              v21 = selfCopy;
              [NEConfigurationManager updateFlags:v29 withConfiguration:?];
            }

            ++v35;
            v36 = v29;
          }

          while (v33 != v35);
          v33 = [v30 countByEnumeratingWithState:&v76 objects:v87 count:16];
        }

        while (v33);
      }
    }

    if (!prefs)
    {
      goto LABEL_42;
    }

    v39 = v6;
    objc_opt_self();
    uUIDString2 = [v39 UUIDString];

    v41 = SCNetworkServiceCopy(prefs, uUIDString2);
    if (!v41)
    {
      goto LABEL_42;
    }

    CFRelease(v41);
    v42 = v39;
    objc_opt_self();
    v43 = SCNetworkServiceCopy(prefs, [v42 UUIDString]);
    if (v43)
    {
      v44 = v43;
      if (!SCNetworkServiceRemove(v43))
      {
        v59 = ne_log_obj();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          uUIDString3 = [v42 UUIDString];
          v67 = SCError();
          v68 = SCErrorString(v67);
          *buf = 138412546;
          v90 = uUIDString3;
          v91 = 2080;
          v92 = v68;
          _os_log_error_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_ERROR, "SCNetworkServiceRemove failed for configuration %@: %s", buf, 0x16u);
        }

        CFRelease(v44);
        v60 = MEMORY[0x1E696AEC0];
        v61 = SCError();
        v62 = [v60 stringWithCString:SCErrorString(v61) encoding:4];
        self = [(NEConfigurationManager *)v21 errorWithCode:v62 specifics:?];

LABEL_53:
        goto LABEL_54;
      }

      CFRelease(v44);
    }

    v45 = prefs;
    if (SCPreferencesCommitChanges(prefs))
    {
      if (!SCPreferencesApplyChanges(prefs))
      {
        v47 = ne_log_obj();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          uUIDString4 = [v42 UUIDString];
          v70 = SCError();
          v71 = SCErrorString(v70);
          *buf = 138412546;
          v90 = uUIDString4;
          v91 = 2080;
          v92 = v71;
          _os_log_error_impl(&dword_1BA83C000, v47, OS_LOG_TYPE_ERROR, "SCPreferencesApplyChanges failed while removing configuration %@: %s", buf, 0x16u);
        }

        v45 = prefs;
      }

      if (objc_getProperty(v21, v46, 120, 1))
      {
        Signature = SCPreferencesGetSignature(v45);
        objc_setProperty_atomic(v21, v49, Signature, 120);
      }

LABEL_42:
      [v74 encodeObject:objc_getProperty(v21 forKey:{v27, 120, 1), @"SCPreferencesSignature2"}];
      [v74 finishEncoding];
      encodedData = [v74 encodedData];
      v51 = [encodedData writeToFile:@"/Library/Preferences/com.apple.networkextension.plist" atomically:1];

      if (v51)
      {
        v21[13] = v72;
        v52 = [v8 copy];
        objc_setProperty_atomic(v21, v53, v52, 56);

        v86 = v6;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
        [(NEConfigurationManager *)v21 clearLoadedConfigurationsWithIDs:v54];

        [(NEConfigurationManager *)v21 postChangeNotificationWithGeneration:v72 andFlags:v85 onlyIfChanged:0];
        self = 0;
        goto LABEL_55;
      }

      self = [(NEConfigurationManager *)v21 errorWithCode:0 specifics:?];

      goto LABEL_54;
    }

    v55 = MEMORY[0x1E696AEC0];
    v56 = SCError();
    v57 = [v55 stringWithCString:SCErrorString(v56) encoding:4];
    v58 = ne_log_obj();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      uUIDString5 = [v42 UUIDString];
      *buf = 138412546;
      v90 = uUIDString5;
      v91 = 2112;
      v92 = v57;
      _os_log_error_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_ERROR, "SCPreferencesCommitChanges failed while removing configuration %@: %@", buf, 0x16u);
    }

    self = [(NEConfigurationManager *)selfCopy errorWithCode:v57 specifics:?];

    goto LABEL_53;
  }

LABEL_55:

  v63 = *MEMORY[0x1E69E9840];

  return self;
}

- (id)saveConfigurationToDisk:(const __SCPreferences *)disk updateSCPreferences:(void *)preferences currentSignature:(void *)signature userUUID:(int)d notifyNow:(char)now isUpgrade:
{
  v459 = *MEMORY[0x1E69E9840];
  v12 = a2;
  preferencesCopy = preferences;
  signatureCopy = signature;
  v403 = v12;
  v405 = signatureCopy;
  if (!self)
  {
    v47 = 0;
    goto LABEL_116;
  }

  v15 = signatureCopy;
  dCopy = d;
  pluginType = [v12 pluginType];
  v435 = 0;
  v17 = v12;
  objc_opt_self();
  alwaysOnVPN = [v17 alwaysOnVPN];
  selfCopy = self;
  v411 = v17;
  v404 = pluginType;
  if (!alwaysOnVPN || ([v17 alwaysOnVPN], v12 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v12, "isEnabled") & 1) == 0))
  {
    v19 = [v17 VPN];
    v20 = v17;
    v21 = v19;
    if (v19)
    {
      v22 = [v20 VPN];
      if ([v22 isEnabled])
      {
        isEnabled = 1;
LABEL_43:

LABEL_44:
        v17 = v411;
        if (!alwaysOnVPN)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      obj = v22;
      v23 = preferencesCopy;
    }

    else
    {
      v23 = preferencesCopy;
    }

    appVPN = [v411 appVPN];
    if (appVPN)
    {
      pluginType = [v411 appVPN];
      if ([pluginType isEnabled])
      {
        isEnabled = 1;
        v22 = obj;
LABEL_41:

LABEL_42:
        pluginType = v404;
        v15 = v405;
        preferencesCopy = v23;
        if (!v21)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }
    }

    contentFilter = [v411 contentFilter];
    if (contentFilter)
    {
      contentFilter2 = [v411 contentFilter];
      if ([contentFilter2 isEnabled])
      {
        isEnabled = 1;
LABEL_39:

LABEL_40:
        v22 = obj;
        if (!appVPN)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v415 = contentFilter2;
    }

    dnsProxy = [v411 dnsProxy];
    if (dnsProxy)
    {
      dnsProxy2 = [v411 dnsProxy];
      if ([dnsProxy2 isEnabled])
      {
        isEnabled = 1;
        contentFilter2 = v415;
LABEL_37:

LABEL_38:
        self = selfCopy;
        if (!contentFilter)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    dnsSettings = [v411 dnsSettings];
    if (dnsSettings)
    {
      dnsSettings2 = [v411 dnsSettings];
      if ([dnsSettings2 isEnabled])
      {
        isEnabled = 1;
        v27 = dnsSettings;
        contentFilter2 = v415;
LABEL_35:

LABEL_36:
        if (!dnsProxy)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    appPush = [v411 appPush];
    if (appPush)
    {
      appPush2 = [v411 appPush];
      if ([appPush2 isEnabled])
      {
        isEnabled = 1;
        contentFilter2 = v415;
        goto LABEL_33;
      }

      v400 = pluginType;
      v374 = v23;
    }

    else
    {
      v400 = pluginType;
      v374 = v23;
    }

    relay = [v411 relay];
    if (relay)
    {
      v30 = relay;
      relay2 = [v411 relay];
      isEnabled = [relay2 isEnabled];
    }

    else
    {
      isEnabled = 0;
    }

    v23 = v374;
    pluginType = v400;
    contentFilter2 = v415;
    if (!appPush)
    {
LABEL_34:
      v27 = dnsSettings;
      if (!dnsSettings)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

LABEL_33:

    goto LABEL_34;
  }

  isEnabled = 1;
LABEL_45:

LABEL_46:
  v434 = 0;
  if ((*(self + 23) & 1) == 0)
  {
    v47 = [(NEConfigurationManager *)self errorWithCode:0 specifics:?];
    v48 = 0;
    encodedData = 0;
    v35 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    goto LABEL_115;
  }

  v33 = objc_getProperty(self, v32, 88, 1);
  identifier = [v17 identifier];
  v35 = [v33 objectForKeyedSubscript:identifier];

  if (!v35 || v35 == v17)
  {
    goto LABEL_103;
  }

  v36 = v35;
  obj = v17;
  v37 = [v36 VPN];
  if (v37)
  {
    v38 = v37;
    v39 = [obj VPN];
    if (!v39)
    {

      v17 = v411;
      goto LABEL_56;
    }

    v40 = v39;
    v375 = preferencesCopy;
    v370 = v35;
    v41 = [v36 VPN];
    protocol = [v41 protocol];
    if (protocol)
    {
      v43 = protocol;
      v44 = [v36 VPN];
      contentFilter2 = [v44 protocol];
      type = [contentFilter2 type];
      v45 = [obj VPN];
      protocol2 = [v45 protocol];
      type2 = [protocol2 type];

      self = selfCopy;
      pluginType = v404;
      v35 = v370;
      v17 = v411;
      preferencesCopy = v375;
      if (type == type2)
      {
        goto LABEL_58;
      }

LABEL_56:
      appVPN4 = [v36 VPN];
      goto LABEL_61;
    }

    pluginType = v404;
    v17 = v411;
  }

LABEL_58:
  appVPN2 = [v36 appVPN];
  if (appVPN2)
  {
    v58 = appVPN2;
    appVPN3 = [obj appVPN];

    if (!appVPN3)
    {
      appVPN4 = [v36 appVPN];
LABEL_61:
      v60 = appVPN4;
      protocol3 = [appVPN4 protocol];

      if (protocol3)
      {
        passwordKeychainItem = [protocol3 passwordKeychainItem];

        if (passwordKeychainItem)
        {
          passwordKeychainItem2 = [protocol3 passwordKeychainItem];
          [passwordKeychainItem2 setIdentifier:0];
        }

        type3 = [protocol3 type];
        if (type3 != 1 && type3 != 2)
        {
          if (type3 != 5)
          {
LABEL_75:

            goto LABEL_100;
          }

          Property = [protocol3 ppkConfiguration];
          v67 = Property;
          if (Property)
          {
            Property = objc_getProperty(Property, v66, 32, 1);
          }

          contentFilter2 = Property;

          if (contentFilter2)
          {
            ppkConfiguration = [protocol3 ppkConfiguration];
            v70 = ppkConfiguration;
            if (ppkConfiguration)
            {
              ppkConfiguration = objc_getProperty(ppkConfiguration, v69, 32, 1);
            }

            contentFilter2 = ppkConfiguration;
            [contentFilter2 setIdentifier:0];
          }
        }

        sharedSecretKeychainItem = [protocol3 sharedSecretKeychainItem];

        if (sharedSecretKeychainItem)
        {
          sharedSecretKeychainItem2 = [protocol3 sharedSecretKeychainItem];
          [sharedSecretKeychainItem2 setIdentifier:0];
        }

        goto LABEL_75;
      }
    }
  }

  alwaysOnVPN2 = [v36 alwaysOnVPN];
  if (!alwaysOnVPN2 || (v74 = alwaysOnVPN2, [obj alwaysOnVPN], v75 = objc_claimAutoreleasedReturnValue(), v75, v74, v75))
  {

    goto LABEL_103;
  }

  v444 = 0u;
  v445 = 0u;
  v442 = 0u;
  v443 = 0u;
  alwaysOnVPN3 = [v36 alwaysOnVPN];
  interfaceProtocolMapping = [alwaysOnVPN3 interfaceProtocolMapping];

  v78 = [interfaceProtocolMapping countByEnumeratingWithState:&v442 objects:v446 count:16];
  if (!v78)
  {
    goto LABEL_99;
  }

  v79 = v78;
  v371 = v35;
  v376 = preferencesCopy;
  v80 = 0;
  v81 = *v443;
  do
  {
    v82 = 0;
    v83 = v80;
    do
    {
      if (*v443 != v81)
      {
        objc_enumerationMutation(interfaceProtocolMapping);
      }

      v84 = *(*(&v442 + 1) + 8 * v82);
      contentFilter2 = [v36 alwaysOnVPN];
      interfaceProtocolMapping2 = [contentFilter2 interfaceProtocolMapping];
      v80 = [interfaceProtocolMapping2 objectForKeyedSubscript:v84];

      if ([v80 type] != 5)
      {
        sharedSecretKeychainItem4 = ne_log_obj();
        if (os_log_type_enabled(sharedSecretKeychainItem4, OS_LOG_TYPE_ERROR))
        {
          type4 = [v80 type];
          *buf = 136315394;
          *&buf[4] = "[NEConfigurationManager resetKeychainItemsAfterProtocolChange:newConfiguration:]";
          *&buf[12] = 1024;
          *&buf[14] = type4;
          _os_log_error_impl(&dword_1BA83C000, sharedSecretKeychainItem4, OS_LOG_TYPE_ERROR, "%s: unsupported protocol type %d for Always-on VPN", buf, 0x12u);
        }

        goto LABEL_95;
      }

      ppkConfiguration2 = [v80 ppkConfiguration];
      v88 = ppkConfiguration2;
      if (ppkConfiguration2)
      {
        ppkConfiguration2 = objc_getProperty(ppkConfiguration2, v87, 32, 1);
      }

      contentFilter2 = ppkConfiguration2;

      if (contentFilter2)
      {
        ppkConfiguration3 = [v80 ppkConfiguration];
        v91 = ppkConfiguration3;
        if (ppkConfiguration3)
        {
          ppkConfiguration3 = objc_getProperty(ppkConfiguration3, v90, 32, 1);
        }

        contentFilter2 = ppkConfiguration3;
        [contentFilter2 setIdentifier:0];
      }

      sharedSecretKeychainItem3 = [v80 sharedSecretKeychainItem];

      if (sharedSecretKeychainItem3)
      {
        sharedSecretKeychainItem4 = [v80 sharedSecretKeychainItem];
        [sharedSecretKeychainItem4 setIdentifier:0];
LABEL_95:
      }

      ++v82;
      v83 = v80;
    }

    while (v79 != v82);
    v79 = [interfaceProtocolMapping countByEnumeratingWithState:&v442 objects:v446 count:16];
  }

  while (v79);

  preferencesCopy = v376;
  pluginType = v404;
  v15 = v405;
  self = selfCopy;
  v35 = v371;
LABEL_99:

  v17 = v411;
LABEL_100:

  v95 = ne_log_obj();
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
  {
    *v446 = 136315138;
    selfCopy10 = "[NEConfigurationManager saveConfigurationToDisk:updateSCPreferences:currentSignature:userUUID:notifyNow:isUpgrade:]";
    _os_log_debug_impl(&dword_1BA83C000, v95, OS_LOG_TYPE_DEBUG, "%s clean up system keychain for reset protocol", v446, 0xCu);
  }

  [(NEConfiguration *)v36 syncWithKeychainInDomain:?];
LABEL_103:
  if (v17)
  {
    [(NEConfiguration *)v17 syncWithKeychainInDomain:?];
  }

  generateSignature = [v17 generateSignature];
  v397 = [self copyAppGroupMapDidChange:&v434];
  v97 = objc_getProperty(self, v96, 56, 1);
  v407 = [(NEConfigurationManager *)self makeMutableCopyOfIndex:v97];
  v98 = [v407 objectForKeyedSubscript:@"ConfigurationProperties"];
  identifier2 = [v17 identifier];
  v54 = [v98 objectForKeyedSubscript:identifier2];

  if (!v54)
  {
    v369 = 0;
    if (!preferencesCopy)
    {
      goto LABEL_120;
    }

    v47 = [(NEConfigurationManager *)self errorWithCode:0 specifics:?];
    encodedData = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v54 = 0;
    goto LABEL_114;
  }

  if (!preferencesCopy || ([v54 objectForKeyedSubscript:@"Signature"], v100 = objc_claimAutoreleasedReturnValue(), v101 = objc_msgSend(preferencesCopy, "isEqualToData:", v100), v100, (v101 & 1) == 0))
  {
    v47 = [(NEConfigurationManager *)self errorWithCode:0 specifics:?];
    encodedData = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
LABEL_114:
    v48 = v397;
    v53 = generateSignature;
    v55 = v407;
    goto LABEL_115;
  }

  v102 = v54;
  v103 = v35;
  v369 = v102;
  v104 = [v102 objectForKeyedSubscript:@"Signature"];
  v105 = [generateSignature isEqualToData:v104];
  v106 = v434;

  if (v105 && (v106 & 1) == 0)
  {
    v47 = [(NEConfigurationManager *)self errorWithCode:0 specifics:?];
    encodedData = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v35 = v103;
    goto LABEL_402;
  }

  v35 = v103;
  if ((now & 1) == 0)
  {
    if (pluginType)
    {
      v285 = [v369 objectForKeyedSubscript:@"PluginType"];
      if (!v285 || (v286 = v285, [v369 objectForKeyedSubscript:@"PluginType"], v287 = objc_claimAutoreleasedReturnValue(), v288 = objc_msgSend(pluginType, "isEqualToString:", v287), v287, v286, (v288 & 1) == 0))
      {
        selfCopy3 = self;
        v326 = 3;
        goto LABEL_401;
      }
    }

    applicationIdentifier = [v411 applicationIdentifier];
    if (!applicationIdentifier)
    {
      goto LABEL_120;
    }

    v290 = applicationIdentifier;
    v291 = [v369 objectForKeyedSubscript:@"ApplicationID"];
    if (v291)
    {
      contentFilter2 = [v411 applicationIdentifier];
      v292 = [v369 objectForKeyedSubscript:@"ApplicationID"];
      if ([contentFilter2 isEqualToString:v292])
      {

        goto LABEL_120;
      }

      obj = v292;
      if (!pluginType)
      {
        goto LABEL_398;
      }
    }

    else if (!pluginType)
    {
      goto LABEL_399;
    }

    v425 = v291;
    v378 = preferencesCopy;
    v327 = [v369 objectForKeyedSubscript:@"PluginType"];
    if (v327)
    {
      v328 = v327;
      v418 = contentFilter2;
      v329 = [v369 objectForKeyedSubscript:@"PluginType"];
      v330 = [pluginType isEqualToString:v329];

      if (v425)
      {
      }

      v35 = v103;
      preferencesCopy = v378;
      if (v330)
      {
        goto LABEL_120;
      }

      goto LABEL_400;
    }

    if (!v291)
    {
LABEL_399:

LABEL_400:
      selfCopy3 = self;
      v326 = 4;
LABEL_401:
      v47 = [(NEConfigurationManager *)selfCopy3 errorWithCode:v326 specifics:0];
      encodedData = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
LABEL_402:
      v48 = v397;
      v53 = generateSignature;
      v55 = v407;
      v54 = v369;
      goto LABEL_115;
    }

LABEL_398:

    goto LABEL_399;
  }

LABEL_120:
  v109 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v109 setObject:generateSignature forKeyedSubscript:@"Signature"];
  if (pluginType)
  {
    [v109 setObject:pluginType forKeyedSubscript:@"PluginType"];
  }

  v110 = v411;
  applicationIdentifier2 = [v411 applicationIdentifier];

  if (applicationIdentifier2)
  {
    applicationIdentifier3 = [v411 applicationIdentifier];
    [v109 setObject:applicationIdentifier3 forKeyedSubscript:@"ApplicationID"];
  }

  v372 = v35;
  v377 = preferencesCopy;
  v113 = [v407 objectForKeyedSubscript:@"ConfigurationProperties"];
  identifier3 = [v411 identifier];
  v401 = v109;
  [v113 setObject:v109 forKeyedSubscript:identifier3];

  if (v434 == 1 && v397)
  {
    [v407 setObject:v397 forKeyedSubscript:@"AppGroupMap"];
    os_unfair_lock_lock((self + 16));
    [self setAppGroupsChanged:0];
    os_unfair_lock_unlock((self + 16));
  }

  if (v15 && ![(NEConfiguration *)v411 isSupportedBySC]|| (NEGetNullUUID(), v115 = objc_claimAutoreleasedReturnValue(), v15, (v15 = v115) != 0))
  {
    v116 = [v407 objectForKeyedSubscript:@"UserMap"];
    v117 = [v116 objectForKeyedSubscript:v15];
    v118 = isa_nsarray(v117);

    if ((v118 & 1) == 0)
    {
      v119 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v120 = [v407 objectForKeyedSubscript:@"UserMap"];
      [v120 setObject:v119 forKeyedSubscript:v15];
    }

    v121 = [v407 objectForKeyedSubscript:@"UserMap"];
    v405 = v15;
    v122 = [v121 objectForKeyedSubscript:v15];

    identifier4 = [v411 identifier];
    v124 = [v122 containsObject:identifier4];

    if ((v124 & 1) == 0)
    {
      identifier5 = [v411 identifier];
      [v122 addObject:identifier5];
    }
  }

  else
  {
    v405 = 0;
  }

  v126 = *(self + 104);
  if (v126 <= 0x7FFFFFFFFFFFELL)
  {
    v127 = v126 + 1;
  }

  else
  {
    v127 = 1;
  }

  v128 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v128 encodeInt64:v127 forKey:@"Generation"];
  [v128 encodeInt64:1 forKey:@"Version"];
  v410 = v128;
  v414 = v50;
  if (objc_getProperty(self, v129, 56, 1))
  {
    v357 = v127;
    [objc_getProperty(self v130];
    v430 = 0u;
    v431 = 0u;
    v432 = 0u;
    obja = v433 = 0u;
    v131 = [obja countByEnumeratingWithState:&v430 objects:v441 count:16];
    if (!v131)
    {
      v373 = 0;
      goto LABEL_347;
    }

    v132 = v131;
    v133 = 0;
    v373 = 0;
    v424 = *v431;
    while (1)
    {
      v134 = 0;
      v417 = v132;
      do
      {
        if (*v431 != v424)
        {
          objc_enumerationMutation(obja);
        }

        v135 = *(*(&v430 + 1) + 8 * v134);
        identifier6 = [v110 identifier];
        v137 = [v135 isEqual:identifier6];

        if ((v137 & 1) == 0)
        {
          v138 = [objc_getProperty(self v138];
          if (!v138)
          {
            goto LABEL_175;
          }

          if ((isEnabled & 1) == 0)
          {
            isEnabled = 0;
            goto LABEL_174;
          }

          selfCopy5 = self;
          v141 = v110;
          v142 = v138;
          objc_opt_self();
          v422 = v142;
          alwaysOnVPN4 = [v142 alwaysOnVPN];

          if (alwaysOnVPN4)
          {
            contentFilter3 = [v141 contentFilter];

            if (contentFilter3)
            {
              v145 = 0;
            }

            else
            {
              v145 = -1;
            }

LABEL_155:

            self = selfCopy5;
            if (v145 != -1)
            {
              if (v145 == 1)
              {
                goto LABEL_157;
              }

              isEnabled = 1;
              v50 = v414;
              v132 = v417;
LABEL_174:
              [v50 addObject:v138];
              uUIDString = [v135 UUIDString];
              [v128 encodeObject:v138 forKey:uUIDString];

              [NEConfigurationManager updateFlags:v138 withConfiguration:?];
LABEL_175:

              goto LABEL_176;
            }

            v132 = v417;
LABEL_162:
            [NEConfigurationManager disableConfiguration:v141 onDemandOnly:?];
            generateSignature2 = [v141 generateSignature];
            [v401 setObject:generateSignature2 forKeyedSubscript:@"Signature"];
            isEnabled = 0;
            v50 = v414;
LABEL_173:

            goto LABEL_174;
          }

          alwaysOnVPN5 = [v141 alwaysOnVPN];

          if (alwaysOnVPN5)
          {
            contentFilter4 = [v142 contentFilter];
            v145 = contentFilter4 == 0;

            goto LABEL_155;
          }

          grade = [v141 grade];
          v132 = v417;
          if (grade == [v142 grade])
          {
            v153 = [v141 VPN];
            if (v153)
            {
              v154 = v153;
              v155 = [v141 VPN];
              if ([v155 isEnabled] && (objc_msgSend(v142, "VPN"), (v156 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v157 = v156;
                v358 = [v422 VPN];
                isEnabled2 = [v358 isEnabled];

                self = selfCopy;
                v128 = v410;
                if (isEnabled2)
                {
                  goto LABEL_334;
                }
              }

              else
              {

                v128 = v410;
              }
            }
          }

          grade2 = [v141 grade];
          if (grade2 != [v422 grade])
          {
            goto LABEL_192;
          }

          contentFilter5 = [v141 contentFilter];
          if (!contentFilter5)
          {
            goto LABEL_192;
          }

          v161 = contentFilter5;
          contentFilter6 = [v141 contentFilter];
          if ([contentFilter6 isEnabled])
          {
            contentFilter7 = [v422 contentFilter];
            if (contentFilter7)
            {
              v380 = contentFilter7;
              contentFilter8 = [v422 contentFilter];
              if ([contentFilter8 isEnabled])
              {
                contentFilter9 = [v141 contentFilter];
                grade3 = [contentFilter9 grade];
                contentFilter10 = [v422 contentFilter];
                grade4 = [contentFilter10 grade];

                if (grade3 != grade4)
                {
                  v128 = v410;
                  goto LABEL_192;
                }

                externalIdentifier = [v422 externalIdentifier];

                self = selfCopy;
                if (externalIdentifier)
                {
                  v166 = v133 + 1;
                  externalIdentifier2 = [v141 externalIdentifier];
                  v128 = v410;
                  if (externalIdentifier2)
                  {

                    ++v133;
                    if (v166 >= 7)
                    {
                      v168 = ne_log_obj();
                      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
                      {
                        name = [v141 name];
                        *v455 = 136315394;
                        v456 = "+[NEConfigurationManager configuration:overlapsWithOtherConfiguration:sameTypeCount:perAppCount:]";
                        v457 = 2112;
                        v458 = name;
                        _os_log_impl(&dword_1BA83C000, v168, OS_LOG_TYPE_DEFAULT, "%s: Exceeded perApp Content Filter limit, %@ superceded", v455, 0x16u);
                      }

                      goto LABEL_223;
                    }
                  }

                  else
                  {
                    ++v133;
                  }

LABEL_192:
                  appVPN5 = [v141 appVPN];
                  v171 = v422;
                  if (appVPN5)
                  {
                    appRules = appVPN5;
                    appVPN6 = [v141 appVPN];
                    if (![appVPN6 isEnabled] || (objc_msgSend(v422, "appVPN"), (v174 = objc_claimAutoreleasedReturnValue()) == 0))
                    {

                      v128 = v410;
                      goto LABEL_213;
                    }

                    v175 = v174;
                    [v422 appVPN];
                    v176 = v360 = appRules;
                    isEnabled3 = [v176 isEnabled];

                    v128 = v410;
                    if (isEnabled3)
                    {
                      v453 = 0u;
                      v454 = 0u;
                      memset(buf, 0, sizeof(buf));
                      appVPN7 = [v141 appVPN];
                      appRules = [appVPN7 appRules];

                      v346 = [appRules countByEnumeratingWithState:buf objects:v446 count:16];
                      if (v346)
                      {
                        v178 = **&buf[16];
                        v361 = appRules;
                        v342 = **&buf[16];
                        do
                        {
                          v179 = 0;
                          do
                          {
                            if (**&buf[16] != v178)
                            {
                              v180 = v179;
                              objc_enumerationMutation(appRules);
                              v179 = v180;
                            }

                            v350 = v179;
                            v181 = *(*&buf[8] + 8 * v179);
                            v436 = 0u;
                            v437 = 0u;
                            v438 = 0u;
                            v439 = 0u;
                            appVPN8 = [v171 appVPN];
                            appRules2 = [appVPN8 appRules];

                            v382 = appRules2;
                            v184 = [appRules2 countByEnumeratingWithState:&v436 objects:&v442 count:16];
                            if (v184)
                            {
                              v185 = v184;
                              v186 = *v437;
                              while (2)
                              {
                                for (i = 0; i != v185; ++i)
                                {
                                  if (*v437 != v186)
                                  {
                                    objc_enumerationMutation(v382);
                                  }

                                  if ([v181 overlapsWithRule:*(*(&v436 + 1) + 8 * i)])
                                  {

                                    self = selfCopy;
                                    v110 = v411;
                                    goto LABEL_333;
                                  }
                                }

                                v185 = [v382 countByEnumeratingWithState:&v436 objects:&v442 count:16];
                                if (v185)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            v179 = v350 + 1;
                            v128 = v410;
                            v171 = v422;
                            appRules = v361;
                            v178 = v342;
                          }

                          while (v350 + 1 != v346);
                          v346 = [v361 countByEnumeratingWithState:buf objects:v446 count:16];
                        }

                        while (v346);
                      }

LABEL_213:
                    }
                  }

                  dnsProxy3 = [v141 dnsProxy];
                  if (!dnsProxy3)
                  {
                    goto LABEL_225;
                  }

                  v189 = dnsProxy3;
                  dnsProxy4 = [v141 dnsProxy];
                  if (![dnsProxy4 isEnabled] || (objc_msgSend(v422, "dnsProxy"), (v191 = objc_claimAutoreleasedReturnValue()) == 0))
                  {

                    v128 = v410;
                    goto LABEL_225;
                  }

                  v192 = v191;
                  dnsProxy5 = [v422 dnsProxy];
                  isEnabled4 = [dnsProxy5 isEnabled];

                  v110 = v411;
                  v128 = v410;
                  if (!isEnabled4)
                  {
                    goto LABEL_225;
                  }

                  externalIdentifier3 = [v141 externalIdentifier];

                  externalIdentifier4 = [v422 externalIdentifier];

                  if (externalIdentifier3)
                  {
                    v128 = v410;
                    if (!externalIdentifier4)
                    {
                      v168 = ne_log_obj();
                      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
                      {
                        name2 = [v141 name];
                        *v455 = 136315394;
                        v456 = "+[NEConfigurationManager configuration:overlapsWithOtherConfiguration:sameTypeCount:perAppCount:]";
                        v457 = 2112;
                        v458 = name2;
                        _os_log_impl(&dword_1BA83C000, v168, OS_LOG_TYPE_DEFAULT, "%s: Concurrent perApp and system DNS Proxy not allowed, %@ superceded", v455, 0x16u);
                      }

                      self = selfCopy;
LABEL_223:

LABEL_325:
                      v128 = v410;
                      goto LABEL_162;
                    }

LABEL_225:
                    dnsSettings3 = [v141 dnsSettings];
                    if (dnsSettings3)
                    {
                      dnsSettings7 = dnsSettings3;
                      dnsSettings4 = [v141 dnsSettings];
                      if (![dnsSettings4 isEnabled])
                      {
                        goto LABEL_241;
                      }

                      dnsSettings5 = [v422 dnsSettings];
                      if (!dnsSettings5)
                      {
                        goto LABEL_240;
                      }

                      v201 = dnsSettings5;
                      dnsSettings6 = [v422 dnsSettings];
                      isEnabled5 = [dnsSettings6 isEnabled];

                      v110 = v411;
                      v128 = v410;
                      if (isEnabled5)
                      {
                        dnsSettings7 = [v141 dnsSettings];
                        dnsSettings4 = [dnsSettings7 settings];
                        dnsSettings8 = [v422 dnsSettings];
                        settings = [dnsSettings8 settings];
                        if (dnsSettings4)
                        {
                          matchDomains = [dnsSettings4 matchDomains];
                          v351 = [matchDomains count];

                          matchDomains2 = [settings matchDomains];
                          v204 = [matchDomains2 count];

                          v363 = v204;
                          if (!(v351 | v204))
                          {
LABEL_324:

                            grade5 = [v422 grade];
                            self = selfCopy;
                            if (grade5 >= [v141 grade])
                            {
                              goto LABEL_334;
                            }

                            goto LABEL_325;
                          }

                          if (v351 && v204)
                          {
                            v205 = 0;
                            v339 = dnsSettings7;
                            v343 = dnsSettings4;
                            while (2)
                            {
                              matchDomains3 = [dnsSettings4 matchDomains];
                              v338 = v205;
                              v207 = [matchDomains3 objectAtIndexedSubscript:v205];

                              v208 = 0;
                              do
                              {
                                matchDomains4 = [settings matchDomains];
                                v210 = [matchDomains4 objectAtIndexedSubscript:v208];

                                if ([v207 hasSuffix:v210] & 1) != 0 || (objc_msgSend(v210, "hasSuffix:", v207))
                                {

                                  v110 = v411;
                                  dnsSettings7 = v339;
                                  dnsSettings4 = v343;
                                  goto LABEL_324;
                                }

                                ++v208;
                              }

                              while (v363 != v208);

                              v205 = v338 + 1;
                              dnsSettings7 = v339;
                              dnsSettings4 = v343;
                              if (v338 + 1 != v351)
                              {
                                continue;
                              }

                              break;
                            }
                          }
                        }

LABEL_240:
                        v128 = v410;
LABEL_241:
                      }
                    }

                    externalIdentifier5 = [v141 externalIdentifier];
                    if (!externalIdentifier5)
                    {
                      dnsProxy6 = [v141 dnsProxy];
                      if (!dnsProxy6)
                      {
                        goto LABEL_250;
                      }

                      externalIdentifier5 = dnsProxy6;
                      dnsProxy7 = [v141 dnsProxy];
                      if ([dnsProxy7 isEnabled])
                      {
                        dnsSettings9 = [v422 dnsSettings];
                        if (dnsSettings9)
                        {
                          v215 = dnsSettings9;
                          dnsSettings10 = [v422 dnsSettings];
                          isEnabled6 = [dnsSettings10 isEnabled];

                          v110 = v411;
                          v128 = v410;
                          if (isEnabled6)
                          {
                            goto LABEL_311;
                          }

LABEL_250:
                          externalIdentifier6 = [v422 externalIdentifier];
                          if (!externalIdentifier6)
                          {
                            dnsProxy8 = [v422 dnsProxy];
                            if (!dnsProxy8)
                            {
                              goto LABEL_258;
                            }

                            externalIdentifier6 = dnsProxy8;
                            dnsProxy9 = [v422 dnsProxy];
                            if ([dnsProxy9 isEnabled])
                            {
                              dnsSettings11 = [v141 dnsSettings];
                              if (dnsSettings11)
                              {
                                v221 = dnsSettings11;
                                dnsSettings12 = [v141 dnsSettings];
                                isEnabled7 = [dnsSettings12 isEnabled];

                                v110 = v411;
                                v128 = v410;
                                if (isEnabled7)
                                {
                                  goto LABEL_311;
                                }

LABEL_258:
                                appPush3 = [v141 appPush];
                                if (!appPush3)
                                {
                                  goto LABEL_267;
                                }

                                v224 = appPush3;
                                appPush4 = [v141 appPush];
                                if ([appPush4 isEnabled])
                                {
                                  appPush5 = [v422 appPush];
                                  if (appPush5)
                                  {
                                    v388 = appPush5;
                                    appPush6 = [v422 appPush];
                                    if ([appPush6 isEnabled])
                                    {
                                      appPush7 = [v141 appPush];
                                      pluginType2 = [appPush7 pluginType];
                                      appPush8 = [v422 appPush];
                                      pluginType3 = [appPush8 pluginType];
                                      v348 = [pluginType2 isEqualToString:pluginType3];

                                      v128 = v410;
                                      if (v348)
                                      {
                                        appPush9 = [v141 appPush];
                                        appPush10 = [v422 appPush];
                                        v230 = [appPush9 overlapsWithConfiguration:appPush10];

                                        v128 = v410;
                                        if (v230)
                                        {
                                          goto LABEL_319;
                                        }
                                      }

LABEL_267:
                                      relay3 = [v141 relay];
                                      if (relay3)
                                      {
                                        v232 = relay3;
                                        relay4 = [v141 relay];
                                        if ([relay4 isEnabled] && (objc_msgSend(v422, "relay"), (v234 = objc_claimAutoreleasedReturnValue()) != 0))
                                        {
                                          v235 = v234;
                                          relay5 = [v422 relay];
                                          isEnabled8 = [relay5 isEnabled];

                                          v128 = v410;
                                          if (isEnabled8)
                                          {
                                            relay6 = [v141 relay];
                                            relay7 = [v422 relay];
                                            v239 = [relay6 overlapsWithRelayConfiguration:relay7];

                                            v128 = v410;
                                            if (v239)
                                            {
                                              grade6 = [v422 grade];
                                              self = selfCopy;
                                              v110 = v411;
                                              if (grade6 < [v141 grade])
                                              {
                                                goto LABEL_325;
                                              }

                                              payloadInfo = [v422 payloadInfo];
                                              if ([payloadInfo profileSource]== 2)
                                              {
                                                payloadInfo2 = [v141 payloadInfo];
                                                profileSource = [payloadInfo2 profileSource];

                                                if (profileSource == 2)
                                                {
LABEL_334:
                                                  selfCopy5 = self;

LABEL_157:
                                                  v50 = v414;
                                                  [NEConfigurationManager disableConfiguration:v422 onDemandOnly:?];
                                                  v148 = [obja objectForKeyedSubscript:v135];
                                                  generateSignature2 = [v148 mutableCopy];

                                                  generateSignature3 = [v422 generateSignature];
                                                  [generateSignature2 setObject:generateSignature3 forKeyedSubscript:@"Signature"];

                                                  v151 = [v407 objectForKeyedSubscript:@"ConfigurationProperties"];
                                                  [v151 setObject:generateSignature2 forKeyedSubscript:v135];

                                                  if (disk)
                                                  {
                                                    v128 = v410;
                                                    if ([(NEConfiguration *)v422 isSupportedBySC])
                                                    {
                                                      if (([(NEConfiguration *)v422 applyChangesToSCServiceInPreferences:disk]& 1) == 0)
                                                      {
                                                        v317 = MEMORY[0x1E696AEC0];
                                                        v318 = SCError();
                                                        v319 = [v317 stringWithCString:SCErrorString(v318) encoding:4];
                                                        v47 = [(NEConfigurationManager *)selfCopy5 errorWithCode:v319 specifics:?];

                                                        encodedData = 0;
                                                        preferencesCopy = v377;
                                                        v35 = v372;
                                                        goto LABEL_378;
                                                      }

                                                      v373 = 1;
                                                    }

                                                    isEnabled = 1;
                                                  }

                                                  else
                                                  {
                                                    isEnabled = 1;
                                                    v128 = v410;
                                                  }

                                                  self = selfCopy5;
                                                  v132 = v417;
                                                  goto LABEL_173;
                                                }

                                                goto LABEL_325;
                                              }

                                              v361 = payloadInfo;
LABEL_333:

                                              goto LABEL_334;
                                            }
                                          }
                                        }

                                        else
                                        {

                                          v128 = v410;
                                        }
                                      }

                                      grade7 = [v141 grade];
                                      if (grade7 != [v422 grade])
                                      {
                                        goto LABEL_314;
                                      }

                                      relay8 = [v141 relay];
                                      if (!relay8)
                                      {
                                        goto LABEL_287;
                                      }

                                      v245 = relay8;
                                      relay9 = [v141 relay];
                                      if ([relay9 isEnabled])
                                      {
                                        v247 = [v422 VPN];
                                        if (v247)
                                        {
                                          v391 = v247;
                                          v248 = [v422 VPN];
                                          if ([v248 isEnabled])
                                          {
                                            relay10 = [v141 relay];
                                            v249 = [v422 VPN];
                                            v353 = [relay10 overlapsWithVPNConfiguration:v249];

                                            v110 = v411;
                                            v128 = v410;
                                            if (v353)
                                            {
                                              goto LABEL_311;
                                            }

LABEL_287:
                                            v250 = [v141 VPN];
                                            if (v250)
                                            {
                                              v251 = v250;
                                              v252 = [v141 VPN];
                                              if ([v252 isEnabled])
                                              {
                                                relay11 = [v422 relay];
                                                if (relay11)
                                                {
                                                  v392 = relay11;
                                                  relay12 = [v422 relay];
                                                  if ([relay12 isEnabled])
                                                  {
                                                    relay13 = [v422 relay];
                                                    v255 = [v141 VPN];
                                                    v354 = [relay13 overlapsWithVPNConfiguration:v255];

                                                    v110 = v411;
                                                    v128 = v410;
                                                    if (v354)
                                                    {
                                                      goto LABEL_311;
                                                    }

                                                    goto LABEL_298;
                                                  }

                                                  v128 = v410;
                                                }
                                              }
                                            }

LABEL_298:
                                            relay14 = [v141 relay];
                                            if (relay14)
                                            {
                                              v261 = relay14;
                                              relay15 = [v141 relay];
                                              if ([relay15 isEnabled])
                                              {
                                                appVPN9 = [v422 appVPN];
                                                if (appVPN9)
                                                {
                                                  v393 = appVPN9;
                                                  appVPN10 = [v422 appVPN];
                                                  if ([appVPN10 isEnabled])
                                                  {
                                                    relay16 = [v141 relay];
                                                    appVPN11 = [v422 appVPN];
                                                    v355 = [relay16 overlapsWithAppVPNConfiguration:appVPN11];

                                                    v110 = v411;
                                                    v128 = v410;
                                                    if (v355)
                                                    {
                                                      goto LABEL_311;
                                                    }

                                                    goto LABEL_306;
                                                  }

                                                  v128 = v410;
                                                }
                                              }
                                            }

LABEL_306:
                                            appVPN12 = [v141 appVPN];
                                            if (appVPN12)
                                            {
                                              v267 = appVPN12;
                                              appVPN13 = [v141 appVPN];
                                              if ([appVPN13 isEnabled])
                                              {
                                                relay17 = [v422 relay];
                                                if (relay17)
                                                {
                                                  v394 = relay17;
                                                  relay18 = [v422 relay];
                                                  if ([relay18 isEnabled])
                                                  {
                                                    relay19 = [v422 relay];
                                                    appVPN14 = [v141 appVPN];
                                                    v356 = [relay19 overlapsWithAppVPNConfiguration:appVPN14];

                                                    v110 = v411;
                                                    v128 = v410;
                                                    if (v356)
                                                    {
LABEL_311:
                                                      self = selfCopy;
                                                      goto LABEL_334;
                                                    }

                                                    goto LABEL_314;
                                                  }

                                                  v128 = v410;
                                                }
                                              }
                                            }

LABEL_314:
                                            hotspot = [v141 hotspot];
                                            if (hotspot)
                                            {
                                              v273 = hotspot;
                                              hotspot2 = [v141 hotspot];
                                              if ([hotspot2 isEnabled] && (objc_msgSend(v422, "hotspot"), (v275 = objc_claimAutoreleasedReturnValue()) != 0))
                                              {
                                                v276 = v275;
                                                hotspot3 = [v422 hotspot];
                                                isEnabled9 = [hotspot3 isEnabled];

                                                v128 = v410;
                                                if (isEnabled9)
                                                {
                                                  hotspot4 = [v141 hotspot];
                                                  hotspot5 = [v422 hotspot];
                                                  v280 = [hotspot4 overlapsWithConfiguration:hotspot5];

                                                  v128 = v410;
                                                  if (v280)
                                                  {
LABEL_319:
                                                    self = selfCopy;
                                                    v110 = v411;
                                                    goto LABEL_334;
                                                  }
                                                }
                                              }

                                              else
                                              {

                                                v128 = v410;
                                              }
                                            }

                                            isEnabled = 1;
                                            self = selfCopy;
                                            v110 = v411;
                                            v50 = v414;
                                            goto LABEL_174;
                                          }

                                          v128 = v410;
                                        }
                                      }

                                      goto LABEL_287;
                                    }
                                  }
                                }

                                goto LABEL_267;
                              }
                            }

                            v128 = v410;
                          }

                          goto LABEL_258;
                        }
                      }

                      v128 = v410;
                    }

                    goto LABEL_250;
                  }

                  v361 = ne_log_obj();
                  v256 = os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT);
                  if (externalIdentifier4)
                  {
                    self = selfCopy;
                    if (!v256)
                    {
                      goto LABEL_333;
                    }

                    name3 = [v141 name];
                    *v455 = 136315394;
                    v456 = "+[NEConfigurationManager configuration:overlapsWithOtherConfiguration:sameTypeCount:perAppCount:]";
                    v457 = 2112;
                    v458 = name3;
                    v258 = v361;
                    v259 = "%s: Concurrent perApp and system DNS Proxy not allowed, %@ supercedes";
                  }

                  else
                  {
                    self = selfCopy;
                    if (!v256)
                    {
                      goto LABEL_333;
                    }

                    name3 = [v141 name];
                    *v455 = 136315394;
                    v456 = "+[NEConfigurationManager configuration:overlapsWithOtherConfiguration:sameTypeCount:perAppCount:]";
                    v457 = 2112;
                    v458 = name3;
                    v258 = v361;
                    v259 = "%s: Only one system DNS Proxy is allowed, %@ supercedes";
                  }
                }

                else
                {
                  externalIdentifier7 = [v141 externalIdentifier];

                  v128 = v410;
                  if (externalIdentifier7)
                  {
                    goto LABEL_192;
                  }

                  v283 = ne_log_obj();
                  v361 = v283;
                  if (!os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_333;
                  }

                  name3 = [v141 name];
                  *v455 = 136315394;
                  v456 = "+[NEConfigurationManager configuration:overlapsWithOtherConfiguration:sameTypeCount:perAppCount:]";
                  v457 = 2112;
                  v458 = name3;
                  v258 = v283;
                  v259 = "%s: Only one system Content Filter is allowed, %@ supercedes";
                }

                _os_log_impl(&dword_1BA83C000, v258, OS_LOG_TYPE_DEFAULT, v259, v455, 0x16u);

                goto LABEL_333;
              }
            }
          }

          goto LABEL_192;
        }

LABEL_176:
        ++v134;
      }

      while (v134 != v132);
      v284 = [obja countByEnumeratingWithState:&v430 objects:v441 count:16];
      v132 = v284;
      if (!v284)
      {
LABEL_347:

        v127 = v357;
        goto LABEL_348;
      }
    }
  }

  v373 = 0;
LABEL_348:
  [v50 addObject:v110];
  identifier7 = [v110 identifier];
  uUIDString2 = [identifier7 UUIDString];
  [v128 encodeObject:v110 forKey:uUIDString2];

  [NEConfigurationManager updateFlags:v110 withConfiguration:?];
  [v128 encodeObject:v407 forKey:@"Index"];
  isSupportedBySC = [(NEConfiguration *)v110 isSupportedBySC];
  diskCopy2 = disk;
  if (!disk || (preferencesCopy = v377, v35 = v372, !isSupportedBySC))
  {
LABEL_352:
    if (disk && (v373 & 1) != 0)
    {
      if (!SCPreferencesCommitChanges(disk))
      {
        v321 = MEMORY[0x1E696AEC0];
        v322 = SCError();
        v323 = [v321 stringWithCString:SCErrorString(v322) encoding:4];
        v324 = ne_log_obj();
        if (os_log_type_enabled(v324, OS_LOG_TYPE_ERROR))
        {
          name4 = [v110 name];
          *v446 = 138412802;
          selfCopy10 = self;
          v448 = 2112;
          v449 = name4;
          v450 = 2112;
          v451 = v323;
          _os_log_error_impl(&dword_1BA83C000, v324, OS_LOG_TYPE_ERROR, "%@: SCPreferencesCommitChanges failed with configuration %@: %@", v446, 0x20u);
        }

        v47 = [(NEConfigurationManager *)self errorWithCode:v323 specifics:?];

        encodedData = 0;
        goto LABEL_386;
      }

      if (!SCPreferencesApplyChanges(disk))
      {
        v299 = ne_log_obj();
        if (os_log_type_enabled(v299, OS_LOG_TYPE_ERROR))
        {
          name5 = [v110 name];
          v336 = SCError();
          v337 = SCErrorString(v336);
          *v446 = 138412802;
          selfCopy10 = self;
          v448 = 2112;
          v449 = name5;
          v450 = 2080;
          v451 = v337;
          _os_log_error_impl(&dword_1BA83C000, v299, OS_LOG_TYPE_ERROR, "%@: SCPreferencesApplyChanges failed with configuration %@: %s", v446, 0x20u);
        }

        diskCopy2 = disk;
      }

      if (objc_getProperty(self, v298, 120, 1))
      {
        Signature = SCPreferencesGetSignature(diskCopy2);
        objc_setProperty_atomic(self, v301, Signature, 120);
      }
    }

    [v128 encodeObject:objc_getProperty(self forKey:{v296, 120, 1), @"SCPreferencesSignature2"}];
    [v128 finishEncoding];
    encodedData = [v128 encodedData];
    if ([encodedData length] <= 0x200000)
    {
      if ([encodedData writeToFile:@"/Library/Preferences/com.apple.networkextension.plist" atomically:1])
      {
        objc_setProperty_atomic(self, v305, 0, 80);
        objc_setProperty_atomic(self, v306, 0, 88);
        *(self + 104) = v127;
        v55 = v407;
        v307 = [v407 copy];
        objc_setProperty_atomic(self, v308, v307, 56);

        v428 = 0u;
        v429 = 0u;
        v426 = 0u;
        v427 = 0u;
        v309 = v50;
        v310 = [v309 countByEnumeratingWithState:&v426 objects:v440 count:16];
        v54 = v369;
        if (v310)
        {
          v311 = v310;
          v312 = *v427;
          do
          {
            for (j = 0; j != v311; ++j)
            {
              if (*v427 != v312)
              {
                objc_enumerationMutation(v309);
              }

              [(NEConfigurationManager *)self didLoadConfiguration:?];
            }

            v311 = [v309 countByEnumeratingWithState:&v426 objects:v440 count:16];
          }

          while (v311);
        }

        v414 = v309;

        if (dCopy)
        {
          [(NEConfigurationManager *)self postChangeNotificationWithGeneration:v127 andFlags:v435 onlyIfChanged:0];
        }

        v47 = 0;
        preferencesCopy = v377;
        v35 = v372;
        v48 = v397;
        v53 = generateSignature;
        goto LABEL_387;
      }

      v320 = ne_log_obj();
      if (os_log_type_enabled(v320, OS_LOG_TYPE_ERROR))
      {
        name6 = [v110 name];
        *v446 = 138412802;
        selfCopy10 = self;
        v448 = 2112;
        v449 = name6;
        v450 = 2080;
        v451 = "/Library/Preferences/com.apple.networkextension.plist";
        _os_log_error_impl(&dword_1BA83C000, v320, OS_LOG_TYPE_ERROR, "%@: Cannot save configuration %@, failed to write to %s", v446, 0x20u);
      }

      selfCopy11 = self;
      v304 = 6;
    }

    else
    {
      v302 = ne_log_obj();
      if (os_log_type_enabled(v302, OS_LOG_TYPE_ERROR))
      {
        name7 = [v110 name];
        v332 = [encodedData length];
        *v446 = 138412802;
        selfCopy10 = self;
        v448 = 2112;
        v449 = name7;
        v450 = 2048;
        v451 = v332;
        _os_log_error_impl(&dword_1BA83C000, v302, OS_LOG_TYPE_ERROR, "%@: Cannot save configuration %@, the total size of the NetworkExtension configuration is too large (%lu bytes)", v446, 0x20u);
      }

      selfCopy11 = self;
      v304 = 20;
    }

    v47 = [(NEConfigurationManager *)selfCopy11 errorWithCode:v304 specifics:0];
LABEL_386:
    preferencesCopy = v377;
    v54 = v369;
    v35 = v372;
    v48 = v397;
    v53 = generateSignature;
    v55 = v407;
LABEL_387:
    v51 = v401;
    v52 = v410;
    v50 = v414;
    goto LABEL_115;
  }

  if (([(NEConfiguration *)v110 applyChangesToSCServiceInPreferences:disk]& 1) != 0)
  {
    v373 = 1;
    goto LABEL_352;
  }

  v314 = MEMORY[0x1E696AEC0];
  v315 = SCError();
  v316 = [v314 stringWithCString:SCErrorString(v315) encoding:4];
  v47 = [(NEConfigurationManager *)self errorWithCode:v316 specifics:?];

  encodedData = 0;
LABEL_378:
  v48 = v397;
  v53 = generateSignature;
  v52 = v128;
  v55 = v407;
  v54 = v369;
  v51 = v401;
LABEL_115:

LABEL_116:
  v107 = *MEMORY[0x1E69E9840];

  return v47;
}

- (id)makeMutableCopyOfIndex:(id)index
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!index)
  {
    goto LABEL_19;
  }

  if ((isa_nsdictionary(v3) & 1) == 0)
  {
    index = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = 0;
    v5 = 0;
LABEL_7:
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    goto LABEL_8;
  }

  v5 = [v4 objectForKeyedSubscript:@"ConfigurationProperties"];
  v6 = [v4 objectForKeyedSubscript:@"UserMap"];
  index = [v4 mutableCopy];
  if (!v5 || !isa_nsdictionary(v5))
  {
    goto LABEL_7;
  }

  v7 = [v5 mutableCopy];
LABEL_8:
  v8 = v7;
  [index setObject:v7 forKeyedSubscript:@"ConfigurationProperties"];

  v9 = isa_nsdictionary(v6);
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v9)
  {
    v21 = v6;
    v22 = v5;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v11 objectForKeyedSubscript:{v16, v21, v22, v23}];
          v18 = [v17 mutableCopy];
          [v10 setObject:v18 forKeyedSubscript:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    [index setObject:v10 forKeyedSubscript:@"UserMap"];
    v6 = v21;
    v5 = v22;
  }

  else
  {
    [index setObject:v10 forKeyedSubscript:@"UserMap"];
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];

  return index;
}

+ (void)disableConfiguration:(uint64_t)configuration onDemandOnly:(void *)only
{
  onlyCopy = only;
  objc_opt_self();
  v2 = [onlyCopy VPN];

  if (v2)
  {
    v3 = [onlyCopy VPN];
    [v3 setEnabled:0];
  }

  appVPN = [onlyCopy appVPN];

  if (appVPN)
  {
    appVPN2 = [onlyCopy appVPN];
    [appVPN2 setEnabled:0];
  }

  alwaysOnVPN = [onlyCopy alwaysOnVPN];

  if (alwaysOnVPN)
  {
    alwaysOnVPN2 = [onlyCopy alwaysOnVPN];
    [alwaysOnVPN2 setEnabled:0];
  }

  contentFilter = [onlyCopy contentFilter];

  if (contentFilter)
  {
    contentFilter2 = [onlyCopy contentFilter];
    [contentFilter2 setEnabled:0];
  }

  dnsProxy = [onlyCopy dnsProxy];

  if (dnsProxy)
  {
    dnsProxy2 = [onlyCopy dnsProxy];
    [dnsProxy2 setEnabled:0];
  }

  dnsSettings = [onlyCopy dnsSettings];

  if (dnsSettings)
  {
    dnsSettings2 = [onlyCopy dnsSettings];
    [dnsSettings2 setEnabled:0];
  }

  appPush = [onlyCopy appPush];

  if (appPush)
  {
    appPush2 = [onlyCopy appPush];
    [appPush2 setEnabled:0];
  }

  relay = [onlyCopy relay];

  if (relay)
  {
    relay2 = [onlyCopy relay];
    [relay2 setEnabled:0];
  }
}

+ (void)updateFlags:(void *)flags withConfiguration:
{
  flagsCopy = flags;
  objc_opt_self();
  v4 = [flagsCopy VPN];
  if (v4)
  {
    v5 = v4;
    v6 = [flagsCopy VPN];
    isEnabled = [v6 isEnabled];

    if (isEnabled)
    {
      *a2 |= 0x8000000000000uLL;
      v8 = [flagsCopy VPN];
      isOnDemandEnabled = [v8 isOnDemandEnabled];
      v10 = flagsCopy;
      if ((isOnDemandEnabled & 1) == 0)
      {
        v6 = [flagsCopy VPN];
        if (([v6 isDisconnectOnDemandEnabled] & 1) == 0)
        {

LABEL_13:
          v18 = [flagsCopy VPN];
          protocol = [v18 protocol];
          includeAllNetworks = [protocol includeAllNetworks];

          if (includeAllNetworks)
          {
            *a2 |= 0x80000000000000uLL;
          }

          goto LABEL_15;
        }

        v10 = flagsCopy;
      }

      v11 = [v10 VPN];
      onDemandRules = [v11 onDemandRules];

      if ((isOnDemandEnabled & 1) == 0)
      {
      }

      if (onDemandRules)
      {
        *a2 |= 0x8000000000000000;
        v13 = [flagsCopy VPN];
        isOnDemandEnabled2 = [v13 isOnDemandEnabled];

        if (isOnDemandEnabled2)
        {
          v15 = [flagsCopy VPN];
          onDemandRules2 = [v15 onDemandRules];
          v17 = [onDemandRules2 indexOfObjectPassingTest:&__block_literal_global_103];

          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            *a2 |= 0x40000000000000uLL;
          }
        }
      }

      goto LABEL_13;
    }
  }

LABEL_15:
  appVPN = [flagsCopy appVPN];
  v22 = flagsCopy;
  if (appVPN)
  {
    appVPN2 = [flagsCopy appVPN];
    if (([appVPN2 isEnabled] & 1) == 0)
    {

LABEL_25:
      v22 = flagsCopy;
      goto LABEL_26;
    }

    grade = [flagsCopy grade];

    v22 = flagsCopy;
    if (grade != 3)
    {
      appVPN3 = [flagsCopy appVPN];
      if ([appVPN3 isOnDemandEnabled])
      {
      }

      else
      {
        appVPN4 = [flagsCopy appVPN];
        isDisconnectOnDemandEnabled = [appVPN4 isDisconnectOnDemandEnabled];

        if ((isDisconnectOnDemandEnabled & 1) == 0)
        {
          v28 = *a2;
          goto LABEL_24;
        }
      }

      v28 = *a2 | 0x8000000000000000;
LABEL_24:
      *a2 = v28 | 0x4000000000000000;
      goto LABEL_25;
    }
  }

LABEL_26:
  alwaysOnVPN = [v22 alwaysOnVPN];
  if (alwaysOnVPN)
  {
    v30 = alwaysOnVPN;
    alwaysOnVPN2 = [flagsCopy alwaysOnVPN];
    isEnabled2 = [alwaysOnVPN2 isEnabled];

    if (isEnabled2)
    {
      *a2 |= 0x2000000000000000uLL;
    }
  }

  dnsProxy = [flagsCopy dnsProxy];
  if (dnsProxy)
  {
    v34 = dnsProxy;
    dnsProxy2 = [flagsCopy dnsProxy];
    isEnabled3 = [dnsProxy2 isEnabled];

    if (isEnabled3)
    {
      *a2 |= 0x800000000000000uLL;
    }
  }

  contentFilter = [flagsCopy contentFilter];
  if (contentFilter)
  {
    v38 = contentFilter;
    contentFilter2 = [flagsCopy contentFilter];
    isEnabled4 = [contentFilter2 isEnabled];

    if (isEnabled4)
    {
      *a2 |= 0x1000000000000000uLL;
    }
  }

  dnsSettings = [flagsCopy dnsSettings];
  if (dnsSettings)
  {
    v42 = dnsSettings;
    dnsSettings2 = [flagsCopy dnsSettings];
    isEnabled5 = [dnsSettings2 isEnabled];

    if (isEnabled5)
    {
      *a2 |= 0x200000000000000uLL;
    }
  }

  pathController = [flagsCopy pathController];
  if (pathController)
  {
    v46 = pathController;
    pathController2 = [flagsCopy pathController];
    if ([pathController2 isEnabled])
    {
      pathController3 = [flagsCopy pathController];
      hasNonDefaultRules = [pathController3 hasNonDefaultRules];

      if (hasNonDefaultRules)
      {
        *a2 |= 0x400000000000000uLL;
      }
    }

    else
    {
    }
  }

  appPush = [flagsCopy appPush];
  if (appPush)
  {
    v51 = appPush;
    appPush2 = [flagsCopy appPush];
    isEnabled6 = [appPush2 isEnabled];

    if (isEnabled6)
    {
      *a2 |= 0x100000000000000uLL;
    }
  }

  relay = [flagsCopy relay];
  if (relay)
  {
    v55 = relay;
    relay2 = [flagsCopy relay];
    isEnabled7 = [relay2 isEnabled];

    if (isEnabled7)
    {
      *a2 |= 0x20000000000000uLL;
    }
  }

  urlFilter = [flagsCopy urlFilter];
  if (urlFilter)
  {
    v59 = urlFilter;
    urlFilter2 = [flagsCopy urlFilter];
    isEnabled8 = [urlFilter2 isEnabled];

    if (isEnabled8)
    {
      *a2 |= 0x10000000000000uLL;
    }
  }
}

- (void)postChangeNotificationWithGeneration:(uint64_t)generation andFlags:(int)flags onlyIfChanged:
{
  v38 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_14;
  }

  [(NEConfigurationManager *)self registerForChangeNotifications];
  v8 = self[7];
  if (v8 == -1)
  {
    goto LABEL_14;
  }

  if (flags)
  {
    state64 = 0;
    if (!notify_get_state(v8, &state64) && (generation & 0xFFF8000000000000 | a2) == state64)
    {
      v9 = ne_log_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        goto LABEL_14;
      }

      *buf = 134217984;
      v33 = state64;
      v10 = "Not posting a change notification because the current notify state is equal to the new notify state (%llx)";
      v11 = v9;
      v12 = 12;
LABEL_8:
      _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      goto LABEL_13;
    }

    v8 = self[7];
  }

  v13 = notify_set_state(v8, generation & 0xFFF8000000000000 | a2);
  if (v13)
  {
    v14 = v13;
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v30 = self[7];
      *buf = 136315650;
      v33 = "com.apple.neconfigurationchanged";
      v34 = 1024;
      v35 = v30;
      v36 = 1024;
      v37 = v14;
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "Failed to set the %s (token %u) notification state: %u", buf, 0x18u);
    }

    goto LABEL_13;
  }

  v16 = notify_post("com.apple.neconfigurationchanged");
  v17 = ne_log_obj();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v33 = "com.apple.neconfigurationchanged";
      _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, "Failed to post the %s notification", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = a2;
    _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEFAULT, "Successfully posted generation %lld", buf, 0xCu);
  }

  if ((generation & 0x8000000000000) != 0)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEFAULT, "VPN configuration is enabled", buf, 2u);
    }

    if ((generation & 0x8000000000000000) == 0)
    {
LABEL_23:
      if ((generation & 0x80000000000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_40;
    }
  }

  else if ((generation & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

  v20 = ne_log_obj();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_DEFAULT, "On Demand configuration is enabled", buf, 2u);
  }

  if ((generation & 0x80000000000000) == 0)
  {
LABEL_24:
    if ((generation & 0x4000000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_40:
  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEFAULT, "VPN IncludeAllNetworks configuration is enabled", buf, 2u);
  }

  if ((generation & 0x4000000000000000) == 0)
  {
LABEL_25:
    if ((generation & 0x2000000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

LABEL_43:
  v22 = ne_log_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_DEFAULT, "App VPN configuration is enabled", buf, 2u);
  }

  if ((generation & 0x2000000000000000) == 0)
  {
LABEL_26:
    if ((generation & 0x800000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_46:
  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEFAULT, "Always On VPN is enabled", buf, 2u);
  }

  if ((generation & 0x800000000000000) == 0)
  {
LABEL_27:
    if ((generation & 0x200000000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_49:
  v24 = ne_log_obj();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEFAULT, "DNS proxy is enabled", buf, 2u);
  }

  if ((generation & 0x200000000000000) == 0)
  {
LABEL_28:
    if ((generation & 0x1000000000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_52:
  v25 = ne_log_obj();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEFAULT, "DNS settings are enabled", buf, 2u);
  }

  if ((generation & 0x1000000000000000) == 0)
  {
LABEL_29:
    if ((generation & 0x10000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

LABEL_55:
  v26 = ne_log_obj();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_DEFAULT, "Content Filter is enabled", buf, 2u);
  }

  if ((generation & 0x10000000000000) == 0)
  {
LABEL_30:
    if ((generation & 0x400000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_58:
  v27 = ne_log_obj();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEFAULT, "URL Filter is enabled", buf, 2u);
  }

  if ((generation & 0x400000000000000) == 0)
  {
LABEL_31:
    if ((generation & 0x100000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_61:
  v28 = ne_log_obj();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_DEFAULT, "Path Controller is enabled", buf, 2u);
  }

  if ((generation & 0x100000000000000) == 0)
  {
LABEL_32:
    if ((generation & 0x20000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_67;
  }

LABEL_64:
  v29 = ne_log_obj();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_DEFAULT, "App push is enabled", buf, 2u);
  }

  if ((generation & 0x20000000000000) != 0)
  {
LABEL_67:
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = "Relay configuration is enabled";
    v11 = v9;
    v12 = 2;
    goto LABEL_8;
  }

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __56__NEConfigurationManager_updateFlags_withConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)handleFileRemovedWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (self)
  {
    Property = objc_getProperty(self, v7, 40, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__NEConfigurationManager_handleFileRemovedWithCompletionQueue_completionHandler___block_invoke;
  block[3] = &unk_1E7F0AAA0;
  block[4] = self;
  v13 = queueCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = queueCopy;
  dispatch_async(Property, block);
}

void __81__NEConfigurationManager_handleFileRemovedWithCompletionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 104);
  }

  else
  {
    v3 = 0;
  }

  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "handleFileRemoved\n", v6, 2u);
  }

  if (v3 <= 0x7FFFFFFFFFFFELL)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = 1;
  }

  [(NEConfigurationManager *)*(a1 + 32) postChangeNotificationWithGeneration:v5 andFlags:0 onlyIfChanged:0];
  dispatch_async(*(a1 + 40), *(a1 + 48));
}

- (void)setChangedQueue:(id)queue andHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (self)
  {
    Property = objc_getProperty(self, v7, 40, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__NEConfigurationManager_setChangedQueue_andHandler___block_invoke;
  block[3] = &unk_1E7F0AAA0;
  block[4] = self;
  v13 = queueCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = queueCopy;
  dispatch_sync(Property, block);
}

void __53__NEConfigurationManager_setChangedQueue_andHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, *(a1 + 40), 64);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 48);

      objc_setProperty_atomic_copy(v5, v4, v6, 72);
    }
  }
}

- (void)removeConfiguration:(id)configuration withCompletionQueue:(id)queue handler:(id)handler
{
  configurationCopy = configuration;
  queueCopy = queue;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__NEConfigurationManager_removeConfiguration_withCompletionQueue_handler___block_invoke;
  v14[3] = &unk_1E7F072B0;
  v14[4] = self;
  v15 = configurationCopy;
  v16 = queueCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = queueCopy;
  v13 = configurationCopy;
  [(NEConfigurationManager *)self getCurrentIndexWithCompletionHandler:v14];
}

void __74__NEConfigurationManager_removeConfiguration_withCompletionQueue_handler___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = [*(a1 + 40) name];
      *buf = 138412802;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v3;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@: Failed to get the configuration index while removing configuration %@: %@", buf, 0x20u);
    }

    v5 = *(a1 + 32);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __74__NEConfigurationManager_removeConfiguration_withCompletionQueue_handler___block_invoke_246;
    v23[3] = &unk_1E7F0B588;
    v6 = *(a1 + 48);
    v25 = *(a1 + 56);
    v24 = v3;
    [(NEConfigurationManager *)v5 executeCallbackOnQueue:v6 callback:v23];
  }

  else
  {
    *uuid = 0;
    v37 = 0;
    v7 = xpc_dictionary_create(0, 0, 0);
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) name];
      *buf = 138412546;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: Removing configuration %@", buf, 0x16u);
    }

    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) identifier];
    v35 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    [(NEConfigurationManager *)v11 clearLoadedConfigurationsWithIDs:v13];

    v14 = [*(a1 + 40) identifier];
    [v14 getUUIDBytes:uuid];

    xpc_dictionary_set_int64(v7, "config-operation", 4);
    xpc_dictionary_set_uuid(v7, "config-identifier", uuid);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __74__NEConfigurationManager_removeConfiguration_withCompletionQueue_handler___block_invoke_244;
    v26[3] = &unk_1E7F07328;
    v22 = *(a1 + 32);
    v15 = *(&v22 + 1);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    v27 = v22;
    v28 = v18;
    [(NEConfigurationManager *)v22 sendRequest:v7 responseHandler:v26];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __74__NEConfigurationManager_removeConfiguration_withCompletionQueue_handler___block_invoke_244(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a2)
  {
    v8 = a3;
  }

  else
  {
    v8 = 11;
  }

  if (v8 && ([(NEConfigurationManager *)*(a1 + 32) errorWithCode:v8 specifics:0], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v22 = [*(a1 + 40) name];
      *buf = 138412802;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v10;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%@: Failed to remove configuration %@: %@", buf, 0x20u);
    }
  }

  else
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) name];
      *buf = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEFAULT, "%@: Successfully removed configuration %@", buf, 0x16u);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      [(NEConfiguration *)v15 clearKeychainInDomain:?];
    }

    v10 = 0;
  }

  v16 = *(a1 + 32);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __74__NEConfigurationManager_removeConfiguration_withCompletionQueue_handler___block_invoke_245;
  v23[3] = &unk_1E7F0B588;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v24 = v10;
  v25 = v18;
  v19 = v10;
  [(NEConfigurationManager *)v16 executeCallbackOnQueue:v17 callback:v23];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)saveConfiguration:(id)configuration withCompletionQueue:(id)queue handler:(id)handler
{
  v105 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  if (([configurationCopy checkValidityAndCollectErrors:v12] & 1) == 0)
  {
    v49 = [v12 componentsJoinedByString:@"\n"];
    v50 = [(NEConfigurationManager *)self errorWithCode:v49 specifics:?];

    v51 = ne_log_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      name = [configurationCopy name];
      *buf = 138412802;
      selfCopy = self;
      v101 = 2112;
      v102 = name;
      v103 = 2112;
      v104 = v50;
      _os_log_error_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_ERROR, "%@ Failed to save configuration %@ because it is invalid: %@", buf, 0x20u);
    }

    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke;
    v95[3] = &unk_1E7F0B588;
    v96 = v50;
    v97 = handlerCopy;
    v52 = v50;
    [(NEConfigurationManager *)self executeCallbackOnQueue:queueCopy callback:v95];

    goto LABEL_52;
  }

  externalIdentifier = [configurationCopy externalIdentifier];
  if (externalIdentifier)
  {
  }

  else
  {
    contentFilter = [configurationCopy contentFilter];
    if (!contentFilter)
    {
      dnsProxy = [configurationCopy dnsProxy];
      if (!dnsProxy)
      {
        goto LABEL_44;
      }
    }

    payloadInfo = [configurationCopy payloadInfo];

    if (contentFilter)
    {

      if (!payloadInfo)
      {
        goto LABEL_44;
      }
    }

    else
    {

      if (!payloadInfo)
      {
        goto LABEL_44;
      }
    }
  }

  if (self)
  {
    Property = objc_getProperty(self, v14, 88, 1);
  }

  else
  {
    Property = 0;
  }

  [Property allKeys];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v16 = v94 = 0u;
  v77 = [v16 countByEnumeratingWithState:&v91 objects:v98 count:16];
  if (!v77)
  {
LABEL_43:

LABEL_44:
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_2_224;
    v78[3] = &unk_1E7F072B0;
    v78[4] = self;
    v79 = configurationCopy;
    v80 = queueCopy;
    v81 = handlerCopy;
    [(NEConfigurationManager *)self getCurrentIndexWithCompletionHandler:v78];

    goto LABEL_52;
  }

  v72 = v12;
  v73 = handlerCopy;
  v18 = 0;
  v76 = *v92;
  v74 = queueCopy;
  v75 = configurationCopy;
LABEL_8:
  v19 = 0;
  while (1)
  {
    v20 = v18;
    if (*v92 != v76)
    {
      objc_enumerationMutation(v16);
    }

    v21 = *(*(&v91 + 1) + 8 * v19);
    if (self)
    {
      v22 = objc_getProperty(self, v17, 88, 1);
    }

    else
    {
      v22 = 0;
    }

    v18 = [v22 objectForKeyedSubscript:v21];

    if (!v18)
    {
      goto LABEL_27;
    }

    v23 = v16;
    selfCopy2 = self;
    contentFilter2 = [configurationCopy contentFilter];

    if (contentFilter2)
    {
      contentFilter3 = [v18 contentFilter];
      goto LABEL_18;
    }

    dnsProxy2 = [configurationCopy dnsProxy];

    if (dnsProxy2)
    {
      break;
    }

LABEL_22:
    payloadInfo2 = [v18 payloadInfo];
    if (([payloadInfo2 isSetAside] & 1) == 0)
    {
      identifier = [v18 identifier];
      identifier2 = [configurationCopy identifier];
      if (![identifier isEqual:identifier2])
      {
        externalIdentifier2 = [v18 externalIdentifier];
        externalIdentifier3 = [configurationCopy externalIdentifier];
        v35 = [externalIdentifier2 isEqual:externalIdentifier3];

        configurationCopy = v75;
        self = selfCopy2;
        v16 = v23;
        if (v35)
        {
          v53 = ne_log_obj();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v66 = objc_opt_class();
            v67 = v66;
            externalIdentifier4 = [v18 externalIdentifier];
            name2 = [v18 name];
            *buf = 138412802;
            selfCopy = v66;
            v101 = 2112;
            v102 = externalIdentifier4;
            v103 = 2112;
            v104 = name2;
            _os_log_error_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_ERROR, "%@ saveConfiguration: failed to save - perApp UUID %@ already assigned to another configuration - %@", buf, 0x20u);

            configurationCopy = v75;
          }

          v54 = [(NEConfigurationManager *)selfCopy2 errorWithCode:@"Duplicate perApp UUID" specifics:?];
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_223;
          v82[3] = &unk_1E7F0B588;
          handlerCopy = v73;
          v83 = v54;
          v84 = v73;
          v55 = v54;
          v56 = selfCopy2;
          queueCopy = v74;
          [(NEConfigurationManager *)v56 executeCallbackOnQueue:v74 callback:v82];

          v57 = v84;
          goto LABEL_51;
        }

        goto LABEL_27;
      }
    }

    self = selfCopy2;
    v16 = v23;
LABEL_27:
    if (v77 == ++v19)
    {
      v48 = [v16 countByEnumeratingWithState:&v91 objects:v98 count:16];
      v77 = v48;
      if (!v48)
      {

        handlerCopy = v73;
        queueCopy = v74;
        v12 = v72;
        goto LABEL_43;
      }

      goto LABEL_8;
    }
  }

  contentFilter3 = [v18 dnsProxy];
LABEL_18:
  v28 = contentFilter3;

  if (!v28)
  {
    goto LABEL_22;
  }

  externalIdentifier5 = [v18 externalIdentifier];
  if (externalIdentifier5 || ([configurationCopy externalIdentifier], (externalIdentifier5 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_22;
  }

  identifier3 = [v18 identifier];
  identifier4 = [configurationCopy identifier];
  if ([identifier3 isEqual:identifier4])
  {

    goto LABEL_22;
  }

  payloadInfo3 = [v18 payloadInfo];

  if (!payloadInfo3)
  {
    goto LABEL_22;
  }

  contentFilter4 = [configurationCopy contentFilter];
  if (contentFilter4)
  {
    v40 = "Content Filter";
  }

  else
  {
    v40 = "DNS proxy";
  }

  payloadInfo4 = [v18 payloadInfo];
  profileIdentifier = [payloadInfo4 profileIdentifier];
  payloadInfo5 = [configurationCopy payloadInfo];
  profileIdentifier2 = [payloadInfo5 profileIdentifier];
  v45 = [profileIdentifier isEqualToString:profileIdentifier2];

  if (v45)
  {
    if (selfCopy2)
    {
      v47 = objc_getProperty(selfCopy2, v46, 40, 1);
    }

    else
    {
      v47 = 0;
    }

    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    configurationCopy = v75;
    v85[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_2;
    v85[3] = &unk_1E7F07300;
    v85[4] = selfCopy2;
    v87 = v40;
    v86 = v18;
    [(NEConfigurationManager *)selfCopy2 removeConfiguration:v86 withCompletionQueue:v47 handler:v85];

    goto LABEL_22;
  }

  v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"multiple system-wide %s configurations are not allowed", v40];
  v62 = ne_log_obj();
  v16 = v23;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    v70 = objc_opt_class();
    *buf = 138412546;
    selfCopy = v70;
    v101 = 2112;
    v102 = v55;
    v71 = v70;
    _os_log_error_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_ERROR, "%@ saveConfiguration: %@", buf, 0x16u);
  }

  v63 = [(NEConfigurationManager *)selfCopy2 errorWithCode:v55 specifics:?];
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_219;
  v88[3] = &unk_1E7F0B588;
  handlerCopy = v73;
  v64 = v73;
  v89 = v63;
  v90 = v64;
  v57 = v63;
  v65 = selfCopy2;
  queueCopy = v74;
  [(NEConfigurationManager *)v65 executeCallbackOnQueue:v74 callback:v88];

  configurationCopy = v75;
LABEL_51:
  v12 = v72;

LABEL_52:
  v58 = *MEMORY[0x1E69E9840];
}

void __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v10 = a1 + 40;
      v8 = *(a1 + 40);
      v9 = *(v10 + 8);
      v11 = v7;
      v12 = [v8 name];
      v13 = 138413058;
      v14 = v7;
      v15 = 2080;
      v16 = v9;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v3;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@ saveConfiguration: failed to remove old %s config: %@: %@", &v13, 0x2Au);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_2_224(uint64_t a1, void *a2)
{
  v118 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 32);
      v35 = [*(a1 + 40) name];
      *buf = 138412802;
      v113 = v34;
      v114 = 2112;
      v115 = v35;
      v116 = 2112;
      v117 = v4;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@: Failed to get the configuration index while saving configuration %@: %@", buf, 0x20u);
    }

    v6 = *(a1 + 32);
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_242;
    v91[3] = &unk_1E7F0B588;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v92 = v4;
    v93 = v8;
    v9 = v4;
    [(NEConfigurationManager *)v6 executeCallbackOnQueue:v7 callback:v91];

    v10 = v93;
    goto LABEL_55;
  }

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) identifier];
  LODWORD(v11) = [(NEConfigurationManager *)v11 configurationHasChanged:v12];

  if (v11)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v60 = *(a1 + 32);
      v61 = [*(a1 + 40) name];
      *buf = 138412546;
      v113 = v60;
      v114 = 2112;
      v115 = v61;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%@ Failed to save configuration %@ because the local copy is stale", buf, 0x16u);
    }

    v15 = [(NEConfigurationManager *)*(a1 + 32) errorWithCode:0 specifics:?];
    v16 = *(a1 + 32);
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_225;
    v105[3] = &unk_1E7F0B588;
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v106 = v15;
    v107 = v18;
    v9 = v15;
    [(NEConfigurationManager *)v16 executeCallbackOnQueue:v17 callback:v105];

    v10 = v107;
    goto LABEL_55;
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v13, 80, 1);
  }

  v20 = *(a1 + 40);
  v21 = Property;
  v22 = [v20 identifier];
  v9 = [v21 objectForKeyedSubscript:v22];

  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    v25 = [*(a1 + 40) name];
    *buf = 138412802;
    v113 = v24;
    v114 = 2112;
    v115 = v25;
    v116 = 2112;
    v117 = v9;
    _os_log_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEFAULT, "%@ Saving configuration %@ with existing signature %@", buf, 0x20u);
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    [(NEConfiguration *)v26 syncWithKeychainInDomain:?];
    v26 = *(a1 + 40);
  }

  v27 = [v26 generateSignature];
  v10 = v27;
  if (!v9 || ![v27 isEqualToData:v9])
  {
    goto LABEL_40;
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    v29 = [*(a1 + 40) VPN];
    if (!v29)
    {
      goto LABEL_21;
    }

    v30 = v29;
    v31 = [v28 VPN];
    v32 = [v31 protocol];

    if (v32)
    {
      v33 = [v28 VPN];
    }

    else
    {
LABEL_21:
      v36 = [v28 appVPN];
      if (!v36)
      {
        goto LABEL_26;
      }

      v37 = v36;
      v38 = [v28 appVPN];
      v39 = [v38 protocol];

      if (!v39)
      {
LABEL_26:
        v43 = [v28 alwaysOnVPN];

        if (v43)
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v44 = [v28 alwaysOnVPN];
          v45 = [v44 interfaceProtocolMapping];

          obj = v45;
          v46 = [v45 countByEnumeratingWithState:&v108 objects:buf count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v109;
            while (2)
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v109 != v48)
                {
                  objc_enumerationMutation(obj);
                }

                v50 = *(*(&v108 + 1) + 8 * i);
                v51 = [v28 alwaysOnVPN];
                v52 = [v51 interfaceProtocolMapping];
                v53 = [v52 objectForKeyedSubscript:v50];

                LOBYTE(v51) = [v53 needToUpdateKeychain];
                if (v51)
                {

                  goto LABEL_40;
                }
              }

              v47 = [obj countByEnumeratingWithState:&v108 objects:buf count:16];
              if (v47)
              {
                continue;
              }

              break;
            }
          }
        }

        goto LABEL_36;
      }

      v33 = [v28 appVPN];
    }

    v40 = v33;
    v41 = [v33 protocol];
    v42 = [v41 needToUpdateKeychain];

    if (v42)
    {
LABEL_40:
      v62 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
      [v62 encodeObject:*(a1 + 40) forKey:@"config-object"];
      [v62 finishEncoding];
      v63 = [v62 encodedData];
      if ([v63 length] <= 0x80000)
      {
        if ([v63 length] <= 0x80000)
        {
          v69 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_int64(v69, "config-operation", 3);
          xpc_dictionary_set_data(v69, "config-data", [v63 bytes], objc_msgSend(v63, "length"));
          if (v9)
          {
            xpc_dictionary_set_data(v69, "config-signature", [v9 bytes], objc_msgSend(v9, "length"));
          }

          v76 = *(a1 + 40);
          if (v76)
          {
            v77 = *(v76 + 176);
            if (v77)
            {
              xpc_dictionary_set_int64(v69, "permission-type", v77);
            }
          }

          v94[0] = MEMORY[0x1E69E9820];
          v94[1] = 3221225472;
          v94[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_2_238;
          v94[3] = &unk_1E7F07328;
          *obja = *(a1 + 32);
          v78 = obja[1];
          v79 = *(a1 + 48);
          v80 = *(a1 + 56);
          *&v81 = v79;
          *(&v81 + 1) = v80;
          v95 = *obja;
          v96 = v81;
          [(NEConfigurationManager *)obja[0] sendRequest:v69 responseHandler:v94];

          v70 = *(&v95 + 1);
        }

        else
        {
          v71 = ne_log_obj();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v86 = *(a1 + 32);
            v87 = [*(a1 + 40) identifier];
            v88 = [v63 length];
            *buf = 138412802;
            v113 = v86;
            v114 = 2112;
            v115 = v87;
            v116 = 2048;
            v117 = v88;
            _os_log_error_impl(&dword_1BA83C000, v71, OS_LOG_TYPE_ERROR, "%@ Configuration %@ is too large (%lu)", buf, 0x20u);
          }

          v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The configuration is too large (%lu bytes). The maximum size is %d bytes", objc_msgSend(v63, "length"), 0x80000];
          v73 = *(a1 + 32);
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_234;
          v97[3] = &unk_1E7F0AAA0;
          v74 = *(a1 + 48);
          v75 = *(a1 + 56);
          v98 = v72;
          v99 = v75;
          v97[4] = *(a1 + 32);
          v69 = v72;
          [(NEConfigurationManager *)v73 executeCallbackOnQueue:v74 callback:v97];

          v70 = v99;
        }
      }

      else
      {
        v64 = ne_log_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v83 = *(a1 + 32);
          v84 = [*(a1 + 40) identifier];
          v85 = [v63 length];
          *buf = 138412802;
          v113 = v83;
          v114 = 2112;
          v115 = v84;
          v116 = 2048;
          v117 = v85;
          _os_log_error_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_ERROR, "%@ Configuration %@ is too large (%lu)", buf, 0x20u);
        }

        v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The configuration is too large (%lu bytes). The maximum size is %d bytes", objc_msgSend(v63, "length"), 0x80000];
        v66 = *(a1 + 32);
        v100[0] = MEMORY[0x1E69E9820];
        v100[1] = 3221225472;
        v100[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_233;
        v100[3] = &unk_1E7F0AAA0;
        v67 = *(a1 + 48);
        v68 = *(a1 + 56);
        v101 = v65;
        v102 = v68;
        v100[4] = *(a1 + 32);
        v69 = v65;
        [(NEConfigurationManager *)v66 executeCallbackOnQueue:v67 callback:v100];

        v70 = v102;
      }

      goto LABEL_55;
    }
  }

LABEL_36:
  v54 = ne_log_obj();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = *(a1 + 32);
    v56 = [*(a1 + 40) name];
    *buf = 138412546;
    v113 = v55;
    v114 = 2112;
    v115 = v56;
    _os_log_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_DEFAULT, "%@ Configuration %@ is unchanged", buf, 0x16u);
  }

  v57 = *(a1 + 32);
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_226;
  v103[3] = &unk_1E7F0B588;
  v58 = *(a1 + 48);
  v59 = *(a1 + 56);
  v103[4] = *(a1 + 32);
  v104 = v59;
  [(NEConfigurationManager *)v57 executeCallbackOnQueue:v58 callback:v103];

LABEL_55:
  v82 = *MEMORY[0x1E69E9840];
}

void __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_226(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [(NEConfigurationManager *)*(a1 + 32) errorWithCode:0 specifics:?];
  (*(v1 + 16))(v1, v2);
}

void __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_233(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [(NEConfigurationManager *)*(a1 + 32) errorWithCode:*(a1 + 40) specifics:?];
  (*(v1 + 16))(v1, v2);
}

void __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_234(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [(NEConfigurationManager *)*(a1 + 32) errorWithCode:*(a1 + 40) specifics:?];
  (*(v1 + 16))(v1, v2);
}

void __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_2_238(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a2)
  {
    v8 = a3;
  }

  else
  {
    v8 = 11;
  }

  if (v8 && ([(NEConfigurationManager *)*(a1 + 32) errorWithCode:v8 specifics:0], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      v28 = [*(a1 + 40) name];
      *buf = 138412802;
      v38 = v27;
      v39 = 2112;
      v40 = v28;
      v41 = 2112;
      v42 = v10;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%@ Failed to save configuration %@: %@", buf, 0x20u);
    }

    v12 = *(a1 + 32);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_239;
    v33[3] = &unk_1E7F0B588;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v34 = v10;
    v35 = v14;
    v15 = v10;
    [(NEConfigurationManager *)v12 executeCallbackOnQueue:v13 callback:v33];
  }

  else
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = [*(a1 + 40) name];
      *buf = 138412546;
      v38 = v17;
      v39 = 2112;
      v40 = v18;
      _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEFAULT, "%@ Successfully saved configuration %@", buf, 0x16u);
    }

    v19 = *(a1 + 32);
    v20 = [*(a1 + 40) identifier];
    v36 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_240;
    v30[3] = &unk_1E7F072B0;
    v29 = *(a1 + 32);
    v22 = *(&v29 + 1);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    *&v25 = v23;
    *(&v25 + 1) = v24;
    v31 = v29;
    v32 = v25;
    [(NEConfigurationManager *)v19 loadConfigurationsInternal:v21 withCompletionHandler:v30];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_240(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) name];
      v10 = [*(a1 + 40) identifier];
      *buf = 138413058;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v3;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@ Failed to load %@ (%@) after saving it: %@", buf, 0x2Au);
    }
  }

  v5 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__NEConfigurationManager_saveConfiguration_withCompletionQueue_handler___block_invoke_241;
  v11[3] = &unk_1E7F0B600;
  v6 = *(a1 + 48);
  v12 = *(a1 + 56);
  [(NEConfigurationManager *)v5 executeCallbackOnQueue:v6 callback:v11];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)loadConfigurationsWithCompletionQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "Loading all configurations", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__NEConfigurationManager_loadConfigurationsWithCompletionQueue_handler___block_invoke;
  v11[3] = &unk_1E7F0A1B0;
  v11[4] = self;
  v12 = queueCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  [(NEConfigurationManager *)self loadConfigurationsInternal:v11 withCompletionHandler:?];
}

void __72__NEConfigurationManager_loadConfigurationsWithCompletionQueue_handler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (!v5 || !objc_getProperty(v5, v3, 88, 1))
  {
    goto LABEL_7;
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 88, 1);
  }

  v8 = [Property allValues];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v8];
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__NEConfigurationManager_loadConfigurationsWithCompletionQueue_handler___block_invoke_2;
  v16[3] = &unk_1E7F0AAA0;
  v13 = *(a1 + 48);
  v18 = v4;
  v19 = v13;
  v17 = v10;
  v14 = v4;
  v15 = v10;
  [(NEConfigurationManager *)v11 executeCallbackOnQueue:v12 callback:v16];
}

- (void)loadConfigurationAndUserWithID:(id)d withCompletionQueue:(id)queue handler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  if (dCopy)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = dCopy;
      _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_INFO, "Loading configuration with identifier %@", buf, 0xCu);
    }

    v25 = dCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __85__NEConfigurationManager_loadConfigurationAndUserWithID_withCompletionQueue_handler___block_invoke;
    v21[3] = &unk_1E7F072B0;
    v21[4] = self;
    v22 = dCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v13 = handlerCopy;
    [(NEConfigurationManager *)self loadConfigurationsInternal:v12 withCompletionHandler:v21];

    v14 = v22;
  }

  else
  {
    v15 = [(NEConfigurationManager *)self errorWithCode:0 specifics:?];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__NEConfigurationManager_loadConfigurationAndUserWithID_withCompletionQueue_handler___block_invoke_2;
    v18[3] = &unk_1E7F0B588;
    v19 = v15;
    v20 = handlerCopy;
    v16 = handlerCopy;
    v12 = v15;
    [(NEConfigurationManager *)self executeCallbackOnQueue:queueCopy callback:v18];

    v14 = v20;
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __85__NEConfigurationManager_loadConfigurationAndUserWithID_withCompletionQueue_handler___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (objc_getProperty(v5, v3, 88, 1))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v6, 88, 1);
      }

      v8 = [Property objectForKeyedSubscript:*(a1 + 40)];
      if (v8)
      {
        v37 = a1;
        v38 = v4;
        v9 = *(a1 + 32);
        v11 = v8;
        if (v9)
        {
          v12 = [objc_getProperty(v9 v10];
          v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v14 = v12;
          v15 = [v14 countByEnumeratingWithState:&v44 objects:buf count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v45;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v45 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v44 + 1) + 8 * i);
                v20 = [v14 objectForKeyedSubscript:{v19, v37, v38}];
                v21 = [v11 identifier];
                v22 = [v20 containsObject:v21];

                if (v22)
                {
                  [v13 addObject:v19];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v44 objects:buf count:16];
            }

            while (v16);
          }

          if ([v13 count])
          {
            v23 = v13;
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        a1 = v37;
        v4 = v38;
        goto LABEL_28;
      }
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = objc_getProperty(v5, v6, 56, 1);
    }
  }

  v25 = [v5 objectForKeyedSubscript:@"ConfigurationProperties"];
  v26 = [v25 objectForKeyedSubscript:*(a1 + 40)];
  v27 = [v26 objectForKeyedSubscript:@"Signature"];

  if (v27)
  {
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      v36 = *(a1 + 40);
      *buf = 138412546;
      v49 = v36;
      v50 = 2112;
      v51 = v4;
      _os_log_fault_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_FAULT, "Failed to load configuration with identifier %@: %@", buf, 0x16u);
    }
  }

  v11 = 0;
  v24 = 0;
LABEL_28:

  v29 = *(a1 + 32);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __85__NEConfigurationManager_loadConfigurationAndUserWithID_withCompletionQueue_handler___block_invoke_210;
  v39[3] = &unk_1E7F0A2F0;
  v30 = *(a1 + 48);
  v31 = *(a1 + 56);
  v40 = v11;
  v41 = v24;
  v42 = v4;
  v43 = v31;
  v32 = v4;
  v33 = v24;
  v34 = v11;
  [(NEConfigurationManager *)v29 executeCallbackOnQueue:v30 callback:v39];

  v35 = *MEMORY[0x1E69E9840];
}

- (void)loadConfigurationWithID:(id)d withCompletionQueue:(id)queue handler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  if (dCopy)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = dCopy;
      _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_INFO, "Loading configuration with identifier %@", buf, 0xCu);
    }

    v25 = dCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__NEConfigurationManager_loadConfigurationWithID_withCompletionQueue_handler___block_invoke;
    v21[3] = &unk_1E7F072B0;
    v21[4] = self;
    v22 = dCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v13 = handlerCopy;
    [(NEConfigurationManager *)self loadConfigurationsInternal:v12 withCompletionHandler:v21];

    v14 = v22;
  }

  else
  {
    v15 = [(NEConfigurationManager *)self errorWithCode:0 specifics:?];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__NEConfigurationManager_loadConfigurationWithID_withCompletionQueue_handler___block_invoke_2;
    v18[3] = &unk_1E7F0B588;
    v19 = v15;
    v20 = handlerCopy;
    v16 = handlerCopy;
    v12 = v15;
    [(NEConfigurationManager *)self executeCallbackOnQueue:queueCopy callback:v18];

    v14 = v20;
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __78__NEConfigurationManager_loadConfigurationWithID_withCompletionQueue_handler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 32);
  if (!v5)
  {
LABEL_8:
    v9 = [v5 objectForKeyedSubscript:@"ConfigurationProperties"];
    v10 = [v9 objectForKeyedSubscript:*(a1 + 40)];
    v11 = [v10 objectForKeyedSubscript:@"Signature"];

    if (v11)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v19 = *(a1 + 40);
        *buf = 138412546;
        v25 = v19;
        v26 = 2112;
        v27 = v4;
        _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "Failed to load configuration with identifier %@: %@", buf, 0x16u);
      }
    }

    v8 = 0;
    goto LABEL_13;
  }

  if (!objc_getProperty(v5, v3, 88, 1))
  {
    goto LABEL_6;
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 88, 1);
  }

  v8 = [Property objectForKeyedSubscript:*(a1 + 40)];
  if (!v8)
  {
LABEL_6:
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = objc_getProperty(v5, v6, 56, 1);
    }

    goto LABEL_8;
  }

LABEL_13:
  v13 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__NEConfigurationManager_loadConfigurationWithID_withCompletionQueue_handler___block_invoke_209;
  v20[3] = &unk_1E7F0AAA0;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v22 = v4;
  v23 = v15;
  v21 = v8;
  v16 = v4;
  v17 = v8;
  [(NEConfigurationManager *)v13 executeCallbackOnQueue:v14 callback:v20];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)loadConfigurations:(id)configurations withFilter:(id)filter completionQueue:(id)queue completionHandler:(id)handler
{
  configurationsCopy = configurations;
  filterCopy = filter;
  queueCopy = queue;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__NEConfigurationManager_loadConfigurations_withFilter_completionQueue_completionHandler___block_invoke;
  v18[3] = &unk_1E7F0ACD0;
  v18[4] = self;
  v19 = filterCopy;
  v20 = configurationsCopy;
  v21 = queueCopy;
  v22 = handlerCopy;
  v14 = handlerCopy;
  v15 = queueCopy;
  v16 = configurationsCopy;
  v17 = filterCopy;
  [(NEConfigurationManager *)self loadConfigurationsInternal:v16 withCompletionHandler:v18];
}

void __90__NEConfigurationManager_loadConfigurations_withFilter_completionQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 32);
  if (!v5)
  {
    v6 = 0;
LABEL_33:
    v38 = 0;
    v19 = 0;
    goto LABEL_34;
  }

  v6 = v5[13];
  if (!objc_getProperty(v5, v3, 88, 1))
  {
    goto LABEL_33;
  }

  v7 = [(NEConfigurationManager *)*(a1 + 32) filterIndexWithFilter:?];
  if (!v7)
  {
    goto LABEL_33;
  }

  v8 = v7;
  v9 = [*(a1 + 40) objectForKeyedSubscript:@"filtering-only"];
  v10 = [v9 BOOLValue];

  v11 = *(a1 + 48);
  v45 = v8;
  v12 = [v8 objectForKeyedSubscript:@"ConfigurationProperties"];
  v13 = [v12 allKeys];

  if (!v11)
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v14, 88, 1);
    }

    v11 = [Property allKeys];
  }

  v46 = v6;
  v47 = v4;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (!v17)
  {
    v19 = 0;
    goto LABEL_31;
  }

  v18 = v17;
  v19 = 0;
  v20 = *v56;
  v48 = v13;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v56 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v55 + 1) + 8 * i);
      if ([v13 containsObject:v22])
      {
        v24 = *(a1 + 32);
        if (v24)
        {
          v24 = objc_getProperty(v24, v23, 88, 1);
        }

        v25 = [v24 objectForKeyedSubscript:v22];
        v26 = v25;
        if (!v25)
        {
          goto LABEL_26;
        }

        if (v10)
        {
          v27 = v16;
          v28 = v19;
          v29 = a1;
          v30 = v10;
          v31 = [v25 contentFilter];
          if (!v31)
          {
            goto LABEL_21;
          }

          v32 = v31;
          v33 = [v26 VPN];
          if (v33)
          {

LABEL_21:
            v10 = v30;
            a1 = v29;
            v19 = v28;
            v16 = v27;
            v13 = v48;
LABEL_26:

            continue;
          }

          v34 = [v26 appVPN];

          v10 = v30;
          a1 = v29;
          v19 = v28;
          v16 = v27;
          v13 = v48;
          if (v34)
          {
            goto LABEL_26;
          }
        }

        if (!v19)
        {
          v35 = objc_alloc(MEMORY[0x1E695DF70]);
          v36 = [*(a1 + 48) count];
          v37 = v35;
          v13 = v48;
          v19 = [v37 initWithCapacity:v36];
        }

        [v19 addObject:v26];
        goto LABEL_26;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v55 objects:v59 count:16];
  }

  while (v18);
LABEL_31:

  v6 = v46;
  v4 = v47;
  v38 = v45;
LABEL_34:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__NEConfigurationManager_loadConfigurations_withFilter_completionQueue_completionHandler___block_invoke_2;
  block[3] = &unk_1E7F072D8;
  v39 = *(a1 + 56);
  v40 = *(a1 + 64);
  v50 = v19;
  v51 = v4;
  v53 = v40;
  v54 = v6;
  v52 = v38;
  v41 = v38;
  v42 = v4;
  v43 = v19;
  dispatch_async(v39, block);

  v44 = *MEMORY[0x1E69E9840];
}

- (void)loadIndexWithFilter:(id)filter completionQueue:(id)queue handler:(id)handler
{
  filterCopy = filter;
  queueCopy = queue;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__NEConfigurationManager_loadIndexWithFilter_completionQueue_handler___block_invoke;
  v14[3] = &unk_1E7F072B0;
  v14[4] = self;
  v15 = filterCopy;
  v16 = queueCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = queueCopy;
  v13 = filterCopy;
  [(NEConfigurationManager *)self getCurrentIndexWithCompletionHandler:v14];
}

void __70__NEConfigurationManager_loadIndexWithFilter_completionQueue_handler___block_invoke(uint64_t a1)
{
  v2 = [(NEConfigurationManager *)*(a1 + 32) filterIndexWithFilter:?];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 104);
  }

  else
  {
    v4 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__NEConfigurationManager_loadIndexWithFilter_completionQueue_handler___block_invoke_2;
  block[3] = &unk_1E7F0AB90;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v2;
  v10 = v6;
  v11 = v4;
  v7 = v2;
  dispatch_async(v5, block);
}

- (void)syncConfigurationsWithSC:(id)c completionQueue:(id)queue completionHandler:(id)handler
{
  cCopy = c;
  queueCopy = queue;
  handlerCopy = handler;
  if (cCopy && MEMORY[0x1BFAFC5E0](cCopy) == MEMORY[0x1E69E9E50] && xpc_array_get_count(cCopy))
  {
    if (self)
    {
      outerQueue = self->_outerQueue;
    }

    else
    {
      outerQueue = 0;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__NEConfigurationManager_syncConfigurationsWithSC_completionQueue_completionHandler___block_invoke_2;
    v15[3] = &unk_1E7F0A2F0;
    v15[4] = self;
    v16 = cCopy;
    v17 = queueCopy;
    v18 = handlerCopy;
    v14 = handlerCopy;
    dispatch_async(outerQueue, v15);

    v12 = v16;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__NEConfigurationManager_syncConfigurationsWithSC_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_1E7F0B600;
    v20 = handlerCopy;
    v11 = handlerCopy;
    dispatch_async(queueCopy, block);
    v12 = v20;
  }
}

void __85__NEConfigurationManager_syncConfigurationsWithSC_completionQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = getWriterSemaphore();
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__NEConfigurationManager_syncConfigurationsWithSC_completionQueue_completionHandler___block_invoke_3;
  v5[3] = &unk_1E7F0ACD0;
  v5[4] = v3;
  v6 = *(a1 + 40);
  v7 = v2;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v4 = v2;
  [(NEConfigurationManager *)v3 loadConfigurationsInternal:v5 withCompletionHandler:?];
}

void __85__NEConfigurationManager_syncConfigurationsWithSC_completionQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v64 = a2;
  if (v64)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[NEConfigurationManager syncConfigurationsWithSC:completionQueue:completionHandler:]_block_invoke_3";
      *&buf[12] = 2112;
      *&buf[14] = v64;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "%s failed to load configurations: %@", buf, 0x16u);
    }

LABEL_4:

LABEL_5:
    v4 = 0;
    newValue = 0;
    v66 = 0;
    goto LABEL_6;
  }

  prefs = SCPreferencesCreate(*MEMORY[0x1E695E480], @"NEConfigurationManager prefs sync", 0);
  v9 = ne_log_obj();
  v3 = v9;
  if (!prefs)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v60 = SCError();
      *buf = 136315138;
      *&buf[4] = SCErrorString(v60);
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "SCPreferencesCreate failed: %s", buf, 0xCu);
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[NEConfigurationManager syncConfigurationsWithSC:completionQueue:completionHandler:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 1922;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%s:%d: Locking SCPreferences", buf, 0x12u);
  }

  if (!SCPreferencesLock(prefs, 1u))
  {
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v61 = SCError();
      v62 = SCErrorString(v61);
      *buf = 136315138;
      *&buf[4] = v62;
      _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "SCPreferencesLock failed: %s", buf, 0xCu);
    }

    CFRelease(prefs);
    goto LABEL_5;
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v10, 120, 1);
  }

  v66 = Property;
  newValue = SCPreferencesGetSignature(prefs);
  if (v66 && ([v66 isEqualToData:newValue] & 1) != 0)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_INFO, "SCPreferences signature matches saved signature, change origin was NetworkExtension", buf, 2u);
    }

    goto LABEL_67;
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = newValue;
    *&buf[12] = 2112;
    *&buf[14] = v66;
    _os_log_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_INFO, "SCPreferences signature (%@) does not match saved signature (%@), checking updated configurations", buf, 0x16u);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    objc_setProperty_atomic(v15, v14, newValue, 120);
    v16 = *(a1 + 32);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a1 + 40);
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __85__NEConfigurationManager_syncConfigurationsWithSC_completionQueue_completionHandler___block_invoke_195;
  applier[3] = &unk_1E7F07288;
  applier[4] = v16;
  v75 = 0;
  v76 = &v78;
  v77 = prefs;
  xpc_array_apply(v17, applier);
  v19 = v79;
  v20 = *(a1 + 32);
  if (*(v79 + 24) == 1)
  {
    if (v20)
    {
      *v82 = 0;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v21 = objc_getProperty(v20, v18, 88, 1);
      v23 = [v21 countByEnumeratingWithState:&v83 objects:buf count:16];
      if (v23)
      {
        v24 = *v84;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v84 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [objc_getProperty(v20 v22];
            [NEConfigurationManager updateFlags:v82 withConfiguration:v26];
          }

          v23 = [v21 countByEnumeratingWithState:&v83 objects:buf count:16];
        }

        while (v23);
        v27 = *v82;
      }

      else
      {
        v27 = 0;
      }

      [(NEConfigurationManager *)v20 postChangeNotificationWithGeneration:v27 andFlags:0 onlyIfChanged:?];
      v19 = v79;
    }

    if (v19[3])
    {
      goto LABEL_66;
    }

    v20 = *(a1 + 32);
  }

  if (v20)
  {
    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_INFO, "Updating the saved SCPreferences signature", buf, 2u);
    }

    if (*(v20 + 23))
    {
      v30 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
      v31 = v30;
      if (*(v20 + 104) >= 1)
      {
        [NSObject encodeInt64:v30 forKey:"encodeInt64:forKey:"];
      }

      [v31 encodeInt64:1 forKey:@"Version", prefs];
      if (objc_getProperty(v20, v32, 56, 1))
      {
        [v31 encodeObject:objc_getProperty(v20 forKey:v33, 56, 1), @"Index"];
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v35 = [objc_getProperty(v20 v34];
        v37 = [v35 countByEnumeratingWithState:&v83 objects:buf count:16];
        if (v37)
        {
          v38 = *v84;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v84 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = [objc_getProperty(v20 v36];
              v41 = v40;
              if (v40)
              {
                v42 = [v40 identifier];
                v43 = [v42 UUIDString];
                [v31 encodeObject:v41 forKey:v43];
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v83 objects:buf count:16];
          }

          while (v37);
        }
      }

      [v31 encodeObject:objc_getProperty(v20 forKey:v33, 120, 1), @"SCPreferencesSignature2"];
      [v31 finishEncoding];
      v44 = [v31 encodedData];
      v45 = [v44 writeToFile:@"/Library/Preferences/com.apple.networkextension.plist" atomically:1];

      if ((v45 & 1) == 0)
      {
        v46 = ne_log_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *v82 = 0;
          _os_log_error_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_ERROR, "Failed to write the new file while updating the SCPreferences signature", v82, 2u);
        }
      }
    }

    else
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "Some non-nehelper process is trying to save the SCPreferences signature", buf, 2u);
      }
    }
  }

LABEL_66:

  _Block_object_dispose(&v78, 8);
LABEL_67:
  v47 = ne_log_obj();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[NEConfigurationManager syncConfigurationsWithSC:completionQueue:completionHandler:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 2008;
    _os_log_debug_impl(&dword_1BA83C000, v47, OS_LOG_TYPE_DEBUG, "%s:%d: Unlocking SCPreferences", buf, 0x12u);
  }

  SCPreferencesUnlock(prefs);
  CFRelease(prefs);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v49 = *(a1 + 32);
  if (v49)
  {
    v49 = objc_getProperty(v49, v48, 88, 1);
  }

  v50 = v49;
  v4 = 0;
  v52 = [v50 countByEnumeratingWithState:&v70 objects:v87 count:16];
  if (v52)
  {
    v53 = *v71;
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v71 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v70 + 1) + 8 * k);
        v56 = *(a1 + 32);
        if (v56)
        {
          v56 = objc_getProperty(v56, v51, 88, 1);
        }

        v57 = [v56 objectForKeyedSubscript:{v55, prefs}];
        if ([(NEConfiguration *)v57 isSupportedBySC])
        {
          if (!v4)
          {
            v4 = xpc_array_create(0, 0);
          }

          *buf = 0;
          *&buf[8] = 0;
          v58 = [v57 identifier];
          [v58 getUUIDBytes:buf];

          v59 = xpc_uuid_create(buf);
          xpc_array_append_value(v4, v59);
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v70 objects:v87 count:16];
    }

    while (v52);
  }

LABEL_6:
  dispatch_semaphore_signal(*(a1 + 48));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__NEConfigurationManager_syncConfigurationsWithSC_completionQueue_completionHandler___block_invoke_197;
  block[3] = &unk_1E7F0B588;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v68 = v4;
  v69 = v6;
  v7 = v4;
  dispatch_async(v5, block);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __85__NEConfigurationManager_syncConfigurationsWithSC_completionQueue_completionHandler___block_invoke_195(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 alloc];
  bytes = xpc_uuid_get_bytes(v5);

  v8 = [v6 initWithUUIDBytes:bytes];
  v9 = *(a1 + 56);
  v10 = [v8 UUIDString];
  v11 = SCNetworkServiceCopy(v9, v10);

  TypeID = SCNetworkServiceGetTypeID();
  if (v11 && CFGetTypeID(v11) == TypeID && _SCNetworkServiceIsVPN())
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v13, 80, 1);
    }

    v16 = [Property objectForKeyedSubscript:v8];
    if (v16)
    {
      v17 = *(a1 + 32);
      if (v17)
      {
        v17 = objc_getProperty(v17, v15, 88, 1);
      }

      v18 = [v17 objectForKeyedSubscript:v8];
      v19 = [v18 copy];

      if (!v19)
      {
        goto LABEL_41;
      }

      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [(NEConfiguration *)v19 name];
        v40 = 138412290;
        Name = v21;
        _os_log_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_INFO, "Updating configuration %@ from the corresponding SCNetworkService", &v40, 0xCu);
      }

      v22 = [(NEConfiguration *)v19 updateFromSCService:v11];
    }

    else
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v40 = 138412290;
        Name = SCNetworkServiceGetName(v11);
        v29 = Name;
        _os_log_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_INFO, "Creating a new configuration corresponding to SCNetworkService %@", &v40, 0xCu);
      }

      v19 = [NEConfiguration alloc];
      if (v19)
      {
        v30 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:SCNetworkServiceGetServiceID(v11)];
        v31 = [(NEConfiguration *)&v19->super.isa initWithIdentifier:v30];
        v32 = v31;
        if (v31 && ![(NEConfiguration *)v31 updateFromSCService:v11])
        {
          v19 = 0;
        }

        else
        {
          v19 = v32;
        }
      }

      v22 = v19 != 0;
      if (!v19)
      {
        goto LABEL_41;
      }
    }

    if (v22)
    {
      v33 = [(NEConfigurationManager *)*(a1 + 32) saveConfigurationToDisk:v19 updateSCPreferences:0 currentSignature:v16 userUUID:*(a1 + 40) notifyNow:0 isUpgrade:0];
      v34 = v33;
      if (v33)
      {
        if ([(NEConfiguration *)v33 code]!= 9)
        {
          v35 = ne_log_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v39 = [(NEConfiguration *)v19 name];
            v40 = 138412546;
            Name = v39;
            v42 = 2112;
            v43 = v34;
            _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "Failed to save configuration %@: %@", &v40, 0x16u);
          }
        }
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  v23 = *(a1 + 32);
  if (v23)
  {
    v23 = objc_getProperty(v23, v13, 88, 1);
  }

  v24 = [v23 objectForKeyedSubscript:v8];
  v16 = v24;
  if (v24 && [(NEConfiguration *)v24 isSupportedBySC])
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v16 name];
      v40 = 138412290;
      Name = v26;
      _os_log_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_INFO, "Configuration %@ no longer has a corresponding SCNetworkService, removing it", &v40, 0xCu);
    }

    v19 = [(NEConfigurationManager *)*(a1 + 32) removeConfigurationFromDisk:v8 updateSCPreferences:0];
    if (v19)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v38 = [v16 name];
        v40 = 138412546;
        Name = v38;
        v42 = 2112;
        v43 = v19;
        _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "Failed to remove configuration %@: %@", &v40, 0x16u);
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    goto LABEL_41;
  }

LABEL_42:

  if (v11)
  {
    CFRelease(v11);
  }

  v36 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)removeConfigurationFromDisk:(id)disk completionQueue:(id)queue completionHandler:(id)handler
{
  diskCopy = disk;
  queueCopy = queue;
  handlerCopy = handler;
  if (self)
  {
    outerQueue = self->_outerQueue;
  }

  else
  {
    outerQueue = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__NEConfigurationManager_removeConfigurationFromDisk_completionQueue_completionHandler___block_invoke;
  v15[3] = &unk_1E7F0A2F0;
  v15[4] = self;
  v16 = diskCopy;
  v17 = queueCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = diskCopy;
  dispatch_async(outerQueue, v15);
}

void __88__NEConfigurationManager_removeConfigurationFromDisk_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = getWriterSemaphore();
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__NEConfigurationManager_removeConfigurationFromDisk_completionQueue_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7F0ACD0;
  v6[4] = v3;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v4 = *(a1 + 56);
  v9 = v2;
  v10 = v4;
  v5 = v2;
  [(NEConfigurationManager *)v3 loadConfigurationsInternal:v6 withCompletionHandler:?];
}

void __88__NEConfigurationManager_removeConfigurationFromDisk_completionQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = SCPreferencesCreate(*MEMORY[0x1E695E480], @"NEConfigurationManager remove prefs", 0);
  if (v2)
  {
    v3 = v2;
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v24 = "[NEConfigurationManager removeConfigurationFromDisk:completionQueue:completionHandler:]_block_invoke";
      v25 = 1024;
      LODWORD(v26) = 1818;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%s:%d: Locking SCPreferences", buf, 0x12u);
    }

    if (SCPreferencesLock(v3, 1u))
    {
      goto LABEL_13;
    }

    v5 = SCError();
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s (%d)", SCErrorString(v5), v5];
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "SCPreferencesLock failed while removing a configuration: %@", buf, 0xCu);
    }

    v8 = [(NEConfigurationManager *)*(a1 + 32) errorWithCode:v6 specifics:?];
    CFRelease(v3);
  }

  else
  {
    v9 = SCError();
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s (%d)", SCErrorString(v9), v9];
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "SCPreferencesCreate failed: %@", buf, 0xCu);
    }

    v8 = [(NEConfigurationManager *)*(a1 + 32) errorWithCode:v6 specifics:?];
  }

  if (v8)
  {
LABEL_18:
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) UUIDString];
      *buf = 138412802;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v8;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "%@ Failed to remove configuration %@ from disk: %@", buf, 0x20u);
    }

    goto LABEL_23;
  }

  v3 = 0;
LABEL_13:
  v8 = [(NEConfigurationManager *)*(a1 + 32) removeConfigurationFromDisk:v3 updateSCPreferences:?];
  if (v3)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v24 = "[NEConfigurationManager removeConfigurationFromDisk:completionQueue:completionHandler:]_block_invoke";
      v25 = 1024;
      LODWORD(v26) = 1834;
      _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "%s:%d: Unlocking SCPreferences", buf, 0x12u);
    }

    SCPreferencesUnlock(v3);
    CFRelease(v3);
  }

  if (v8)
  {
    goto LABEL_18;
  }

  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    v16 = [*(a1 + 40) UUIDString];
    *buf = 138412546;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_INFO, "%@ Successfully removed configuration %@ from disk", buf, 0x16u);
  }

  v8 = 0;
LABEL_23:

  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = *(a1 + 64);
    if (v18)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __88__NEConfigurationManager_removeConfigurationFromDisk_completionQueue_completionHandler___block_invoke_190;
      block[3] = &unk_1E7F0B588;
      v22 = v18;
      v21 = v8;
      dispatch_async(v17, block);
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));

  v19 = *MEMORY[0x1E69E9840];
}

- (void)saveConfigurationToDisk:(id)disk currentSignature:(id)signature userUUID:(id)d isUpgrade:(BOOL)upgrade completionQueue:(id)queue completionHandler:(id)handler
{
  diskCopy = disk;
  signatureCopy = signature;
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  if (self)
  {
    outerQueue = self->_outerQueue;
  }

  else
  {
    outerQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__NEConfigurationManager_saveConfigurationToDisk_currentSignature_userUUID_isUpgrade_completionQueue_completionHandler___block_invoke;
  block[3] = &unk_1E7F07260;
  block[4] = self;
  v26 = diskCopy;
  v27 = signatureCopy;
  v28 = dCopy;
  upgradeCopy = upgrade;
  v29 = queueCopy;
  v30 = handlerCopy;
  v20 = handlerCopy;
  v21 = queueCopy;
  v22 = dCopy;
  v23 = signatureCopy;
  v24 = diskCopy;
  dispatch_async(outerQueue, block);
}

void __120__NEConfigurationManager_saveConfigurationToDisk_currentSignature_userUUID_isUpgrade_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = getWriterSemaphore();
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __120__NEConfigurationManager_saveConfigurationToDisk_currentSignature_userUUID_isUpgrade_completionQueue_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7F07238;
  v9 = *(a1 + 32);
  v3 = *(&v9 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v11 = v9;
  v12 = v6;
  v16 = *(a1 + 80);
  v13 = *(a1 + 64);
  v7 = *(a1 + 72);
  v14 = v2;
  v15 = v7;
  v8 = v2;
  [(NEConfigurationManager *)v9 loadConfigurationsInternal:v10 withCompletionHandler:?];
}

void __120__NEConfigurationManager_saveConfigurationToDisk_currentSignature_userUUID_isUpgrade_completionQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = SCPreferencesCreate(*MEMORY[0x1E695E480], @"NEConfigurationManager save prefs", 0);
  if (v2)
  {
    v3 = v2;
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v30 = "[NEConfigurationManager saveConfigurationToDisk:currentSignature:userUUID:isUpgrade:completionQueue:completionHandler:]_block_invoke";
      v31 = 1024;
      LODWORD(v32) = 1648;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%s:%d: Locking SCPreferences", buf, 0x12u);
    }

    if (SCPreferencesLock(v3, 1u))
    {
      goto LABEL_13;
    }

    v5 = SCError();
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s (%d)", SCErrorString(v5), v5];
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "SCPreferencesLock failed while saving a configuration: %@", buf, 0xCu);
    }

    v8 = [(NEConfigurationManager *)*(a1 + 32) errorWithCode:v6 specifics:?];
    CFRelease(v3);
  }

  else
  {
    v9 = SCError();
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s (%d)", SCErrorString(v9), v9];
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "SCPreferencesCreate failed: %@", buf, 0xCu);
    }

    v8 = [(NEConfigurationManager *)*(a1 + 32) errorWithCode:v6 specifics:?];
  }

  if (v8)
  {
    goto LABEL_18;
  }

  v3 = 0;
LABEL_13:
  v8 = [(NEConfigurationManager *)*(a1 + 32) saveConfigurationToDisk:v3 updateSCPreferences:*(a1 + 48) currentSignature:*(a1 + 56) userUUID:1 notifyNow:*(a1 + 88) isUpgrade:?];
  if (v3)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v30 = "[NEConfigurationManager saveConfigurationToDisk:currentSignature:userUUID:isUpgrade:completionQueue:completionHandler:]_block_invoke";
      v31 = 1024;
      LODWORD(v32) = 1665;
      _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "%s:%d: Unlocking SCPreferences", buf, 0x12u);
    }

    SCPreferencesUnlock(v3);
    CFRelease(v3);
  }

  if (!v8)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 32);
      v21 = [*(a1 + 40) identifier];
      v22 = [v21 UUIDString];
      *buf = 138412546;
      v30 = v20;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_INFO, "%@ Successfully saved configuration %@ to disk", buf, 0x16u);
    }

    v8 = 0;
    goto LABEL_27;
  }

LABEL_18:
  v12 = [v8 code];
  v13 = ne_log_obj();
  v14 = v13;
  if (v12 != 9)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v18 = *(a1 + 32);
    v16 = [*(a1 + 40) identifier];
    v17 = [v16 UUIDString];
    v19 = [v8 code];
    *buf = 138412802;
    v30 = v18;
    v31 = 2112;
    v32 = v17;
    v33 = 2048;
    v34 = v19;
    _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%@ Failed to save configuration %@ to disk: %ld", buf, 0x20u);
    goto LABEL_21;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    v16 = [*(a1 + 40) identifier];
    v17 = [v16 UUIDString];
    *buf = 138412546;
    v30 = v15;
    v31 = 2112;
    v32 = v17;
    _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_INFO, "%@ Skipped saving configuration %@ to disk, because it is unchanged", buf, 0x16u);
LABEL_21:
  }

LABEL_27:

  v23 = *(a1 + 64);
  if (v23)
  {
    v24 = *(a1 + 80);
    if (v24)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __120__NEConfigurationManager_saveConfigurationToDisk_currentSignature_userUUID_isUpgrade_completionQueue_completionHandler___block_invoke_186;
      block[3] = &unk_1E7F0B588;
      v28 = v24;
      v27 = v8;
      dispatch_async(v23, block);
    }
  }

  dispatch_semaphore_signal(*(a1 + 72));

  v25 = *MEMORY[0x1E69E9840];
}

- (id)copyCurrentIndexWithConfigurationIDsExpunged:(id)expunged
{
  v54 = *MEMORY[0x1E69E9840];
  expungedCopy = expunged;
  if (self)
  {
    Property = objc_getProperty(self, v4, 56, 1);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
    Property = 0;
  }

  v8 = [(NEConfigurationManager *)selfCopy makeMutableCopyOfIndex:?];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = expungedCopy;
  v9 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
    do
    {
      v12 = 0;
      do
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * v12);
        v14 = [v8 objectForKeyedSubscript:@"ConfigurationProperties"];
        [v14 removeObjectForKey:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v10);
  }

  v15 = [v8 objectForKeyedSubscript:@"UserMap"];
  allKeys = [v15 allKeys];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v34 = allKeys;
  v36 = [v34 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v36)
  {
    v35 = *v44;
    do
    {
      v17 = 0;
      do
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(v34);
        }

        v38 = v17;
        v18 = *(*(&v43 + 1) + 8 * v17);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v19 = obj;
        v20 = [v19 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v40;
          do
          {
            v23 = 0;
            do
            {
              if (*v40 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v39 + 1) + 8 * v23);
              v25 = [v8 objectForKeyedSubscript:@"UserMap"];
              v26 = [v25 objectForKeyedSubscript:v18];
              [v26 removeObject:v24];

              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v39 objects:v51 count:16];
          }

          while (v21);
        }

        v27 = [v8 objectForKeyedSubscript:@"UserMap"];
        v28 = [v27 objectForKeyedSubscript:v18];
        v29 = [v28 count];

        if (!v29)
        {
          v30 = [v8 objectForKeyedSubscript:@"UserMap"];
          [v30 removeObjectForKey:v18];
        }

        v17 = v38 + 1;
      }

      while (v38 + 1 != v36);
      v36 = [v34 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v36);
  }

  v31 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v8];
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)postGeneration
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__NEConfigurationManager_postGeneration__block_invoke;
  v2[3] = &unk_1E7F0B4A8;
  v2[4] = self;
  [(NEConfigurationManager *)self loadConfigurationsInternal:v2 withCompletionHandler:?];
}

void __40__NEConfigurationManager_postGeneration__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[NEConfigurationManager postGeneration]_block_invoke";
      v22 = 2112;
      v23 = v4;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%s: failed to load the configurations: %@", buf, 0x16u);
    }

    goto LABEL_22;
  }

  *buf = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 88, 1);
  }

  v7 = Property;
  v9 = [v7 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = *(a1 + 32);
        if (v13)
        {
          v13 = objc_getProperty(v13, v8, 88, 1);
        }

        v14 = [v13 objectForKeyedSubscript:{v12, v17}];
        [NEConfigurationManager updateFlags:buf withConfiguration:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v9);
    v9 = *buf;

    if ((v9 & 0x3080000000000000) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  NEPolicySetDropPriorityLevel(0, 1);
LABEL_20:
  v15 = *(a1 + 32);
  if (v15)
  {
    [(NEConfigurationManager *)v15 postChangeNotificationWithGeneration:v9 andFlags:1 onlyIfChanged:?];
  }

LABEL_22:

  v16 = *MEMORY[0x1E69E9840];
}

- (id)incomingMessageHandler
{
  if (self)
  {
    self = objc_getProperty(self, a2, 112, 1);
    v2 = vars8;
  }

  return [(NEConfigurationManager *)self incomingMessageHandler];
}

- (void)setIncomingMessageHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    Property = objc_getProperty(self, v4, 112, 1);
  }

  else
  {
    Property = 0;
  }

  [Property setIncomingMessageHandler:handlerCopy];
}

- (void)dealloc
{
  selfCopy = self;
  if (!self || (LODWORD(self) = self->_changedNotifyToken, (self & 0x80000000) == 0))
  {
    notify_cancel(self);
  }

  v3.receiver = selfCopy;
  v3.super_class = NEConfigurationManager;
  [(NEConfigurationManager *)&v3 dealloc];
}

- (id)initSynchronous
{
  v2 = [(NEConfigurationManager *)self init];
  v4 = v2;
  if (v2)
  {
    v2->_isSynchronous = 1;
    [objc_getProperty(v2 v3];
    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (char)initWithUserUUID:(char *)d
{
  v3 = a2;
  if (!d)
  {
    goto LABEL_20;
  }

  v26.receiver = d;
  v26.super_class = NEConfigurationManager;
  d = objc_msgSendSuper2(&v26, sel_init);
  if (!d)
  {
    goto LABEL_20;
  }

  v4 = SecTaskCreateFromSelf(0);
  v5 = [v3 copy];
  v6 = *(d + 17);
  *(d + 17) = v5;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("NEConfigurationManager_inner", v7);
  v9 = *(d + 5);
  *(d + 5) = v8;

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("NEConfigurationManager_outer", v10);
  v12 = *(d + 6);
  *(d + 6) = v11;

  *(d + 7) = -1;
  v13 = *(d + 1);
  *(d + 1) = &stru_1F3880810;

  *(d + 21) = 0;
  v14 = d + 21;
  *(d + 4) = 0;
  if (v4)
  {
    v15 = SecTaskCopyValueForEntitlement(v4, @"com.apple.developer.networking.vpn.api", 0);
    if (!v15)
    {
      v15 = SecTaskCopyValueForEntitlement(v4, @"com.apple.developer.networking.networkextension", 0);
      if (!v15)
      {
        v15 = SecTaskCopyValueForEntitlement(v4, @"com.apple.private.AuthorizationServices", 0);
        if (!v15)
        {
LABEL_9:
          v16 = SecTaskCopyValueForEntitlement(v4, @"com.apple.private.neconfiguration-write-access", 0);
          TypeID = CFBooleanGetTypeID();
          if (v16)
          {
            if (CFGetTypeID(v16) == TypeID && CFBooleanGetValue(v16))
            {
              d[23] = 1;
            }

            CFRelease(v16);
          }

          CFRelease(v4);
          goto LABEL_15;
        }

        v14 = d + 22;
      }
    }

    *v14 = 1;
    CFRelease(v15);
    goto LABEL_9;
  }

LABEL_15:
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = v18;
  if (!*(d + 17))
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"no-app-filter"];
  }

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([preferredLanguages count])
  {
    [v19 setObject:preferredLanguages forKeyedSubscript:@"preferred-languages"];
  }

  v21 = [NEHelper alloc];
  v23 = [(NEHelper *)v21 initWithDelegateClassID:6 queue:objc_getProperty(d additionalProperties:v22, 40, 1), v19];
  objc_setProperty_atomic(d, v24, v23, 112);

LABEL_20:
  return d;
}

- (NEConfigurationManager)initWithPluginType:(id)type
{
  typeCopy = type;
  v6 = [(NEConfigurationManager *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pluginType, type);
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (NEConfigurationManager)init
{
  v3 = geteuid();
  v4 = NECopyUserUUIDSimple(v3);
  if (v4)
  {
    self = [(NEConfigurationManager *)self initWithUserUUID:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)sharedManagerForAllUsers
{
  if (sharedManagerForAllUsers_init_manager != -1)
  {
    dispatch_once(&sharedManagerForAllUsers_init_manager, &__block_literal_global_28);
  }

  v3 = sharedManagerForAllUsers_g_manager;

  return v3;
}

uint64_t __50__NEConfigurationManager_sharedManagerForAllUsers__block_invoke()
{
  sharedManagerForAllUsers_g_manager = [[NEConfigurationManager alloc] initWithUserUUID:?];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedManager
{
  if (sharedManager_init_manager != -1)
  {
    dispatch_once(&sharedManager_init_manager, &__block_literal_global_1129);
  }

  v3 = sharedManager_g_manager;

  return v3;
}

uint64_t __39__NEConfigurationManager_sharedManager__block_invoke()
{
  sharedManager_g_manager = objc_alloc_init(NEConfigurationManager);

  return MEMORY[0x1EEE66BB8]();
}

@end