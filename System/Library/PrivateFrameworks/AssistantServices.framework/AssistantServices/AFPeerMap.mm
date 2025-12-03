@interface AFPeerMap
- (AFPeerMap)init;
- (id)_getUUIDAndUpdateIDMapsForPeerInfo:(id)info;
- (id)objectForPeerInfo:(id)info;
- (void)_cleanUpUUIDMapsForPeerInfo:(id)info;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)removeObjectForPeerInfo:(id)info;
- (void)setObject:(id)object forPeerInfo:(id)info;
@end

@implementation AFPeerMap

- (void)_cleanUpUUIDMapsForPeerInfo:(id)info
{
  infoCopy = info;
  assistantIdentifier = [infoCopy assistantIdentifier];
  if (assistantIdentifier)
  {
    [(NSMutableDictionary *)self->_uuidsByAssistantIdentifier removeObjectForKey:assistantIdentifier];
  }

  rapportEffectiveIdentifier = [infoCopy rapportEffectiveIdentifier];
  if (rapportEffectiveIdentifier)
  {
    [(NSMutableDictionary *)self->_uuidsByRapportIdentifier removeObjectForKey:rapportEffectiveIdentifier];
  }

  idsDeviceUniqueIdentifier = [infoCopy idsDeviceUniqueIdentifier];
  if (idsDeviceUniqueIdentifier)
  {
    [(NSMutableDictionary *)self->_uuidsByIdsDeviceIdentifier removeObjectForKey:idsDeviceUniqueIdentifier];
  }

  homeKitAccessoryIdentifier = [infoCopy homeKitAccessoryIdentifier];
  if (homeKitAccessoryIdentifier)
  {
    [(NSMutableDictionary *)self->_uuidsByHomeKitIdentifier removeObjectForKey:homeKitAccessoryIdentifier];
  }
}

- (id)_getUUIDAndUpdateIDMapsForPeerInfo:(id)info
{
  v63 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__48702;
  v57 = __Block_byref_object_dispose__48703;
  v58 = 0;
  assistantIdentifier = [infoCopy assistantIdentifier];
  if (assistantIdentifier)
  {
    v6 = [(NSMutableDictionary *)self->_uuidsByAssistantIdentifier objectForKey:assistantIdentifier];
    v7 = v54[5];
    v54[5] = v6;
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v60 = "[AFPeerMap _getUUIDAndUpdateIDMapsForPeerInfo:]";
      v61 = 2112;
      v62 = infoCopy;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s Missing assistantId in %@", buf, 0x16u);
    }
  }

  v9 = v54[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke;
    v52[3] = &unk_1E73496C0;
    v52[4] = &v53;
    v11 = MEMORY[0x193AFB7B0](v52);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_2;
    v50[3] = &unk_1E73497C8;
    v13 = v12;
    v51 = v13;
    v14 = MEMORY[0x193AFB7B0](v50);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_3;
    v47[3] = &unk_1E73496E8;
    v15 = v11;
    v49 = v15;
    v47[4] = self;
    v48 = assistantIdentifier;
    v16 = MEMORY[0x193AFB7B0](v47);
    [v13 addObject:v16];

    rapportEffectiveIdentifier = [infoCopy rapportEffectiveIdentifier];
    if (rapportEffectiveIdentifier)
    {
      v18 = [(NSMutableDictionary *)self->_uuidsByRapportIdentifier objectForKey:rapportEffectiveIdentifier];
      v19 = v54[5];
      v54[5] = v18;
    }

    else
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v60 = "[AFPeerMap _getUUIDAndUpdateIDMapsForPeerInfo:]";
        v61 = 2112;
        v62 = infoCopy;
        _os_log_error_impl(&dword_1912FE000, v20, OS_LOG_TYPE_ERROR, "%s Missing rapportId in %@", buf, 0x16u);
      }
    }

    if (v54[5])
    {
      v14[2](v14);
      v10 = v54[5];
    }

    else
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_3;
      v44[3] = &unk_1E73496E8;
      v21 = v15;
      v46 = v21;
      v44[4] = self;
      v45 = rapportEffectiveIdentifier;
      v22 = MEMORY[0x193AFB7B0](v44);
      [v13 addObject:v22];

      idsDeviceUniqueIdentifier = [infoCopy idsDeviceUniqueIdentifier];
      if (idsDeviceUniqueIdentifier)
      {
        v24 = [(NSMutableDictionary *)self->_uuidsByIdsDeviceIdentifier objectForKey:idsDeviceUniqueIdentifier];
        v25 = v54[5];
        v54[5] = v24;
      }

      if (v54[5])
      {
        v14[2](v14);
        v10 = v54[5];
      }

      else
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_2_4;
        v41[3] = &unk_1E73496E8;
        v37 = v21;
        v43 = v37;
        v41[4] = self;
        v36 = idsDeviceUniqueIdentifier;
        v42 = v36;
        v26 = MEMORY[0x193AFB7B0](v41);
        [v13 addObject:v26];

        homeKitAccessoryIdentifier = [infoCopy homeKitAccessoryIdentifier];
        if (homeKitAccessoryIdentifier)
        {
          v28 = [(NSMutableDictionary *)self->_uuidsByHomeKitIdentifier objectForKey:homeKitAccessoryIdentifier];
          v29 = v54[5];
          v54[5] = v28;
        }

        if (!v54[5])
        {
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_3_5;
          v38[3] = &unk_1E73496E8;
          v40 = v37;
          v38[4] = self;
          v39 = v36;
          v30 = MEMORY[0x193AFB7B0](v38);
          [v13 addObject:v30];

          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
          v33 = v54[5];
          v54[5] = uUIDString;
        }

        v14[2](v14);
        v10 = v54[5];
      }
    }
  }

  _Block_object_dispose(&v53, 8);
  v34 = *MEMORY[0x1E69E9840];

  return v10;
}

void __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 length])
  {
    [v6 setObject:*(*(*(a1 + 32) + 8) + 40) forKey:v5];
  }
}

void __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_3(void *a1)
{
  return (*(a1[6] + 16))(a1[6], *(a1[4] + 16), a1[5]);
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_objectsByUUID allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(allValues);
      }

      blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9), &v15);
      if (v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allValues countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectForPeerInfo:(id)info
{
  infoCopy = info;
  v5 = [(AFPeerMap *)self _getUUIDAndUpdateIDMapsForPeerInfo:infoCopy];
  [(NSMutableDictionary *)self->_objectsByUUID removeObjectForKey:v5];
  [(AFPeerMap *)self _cleanUpUUIDMapsForPeerInfo:infoCopy];
}

- (void)setObject:(id)object forPeerInfo:(id)info
{
  objectCopy = object;
  v7 = [(AFPeerMap *)self _getUUIDAndUpdateIDMapsForPeerInfo:info];
  [(NSMutableDictionary *)self->_objectsByUUID setObject:objectCopy forKey:v7];
}

- (id)objectForPeerInfo:(id)info
{
  v4 = [(AFPeerMap *)self _getUUIDAndUpdateIDMapsForPeerInfo:info];
  v5 = [(NSMutableDictionary *)self->_objectsByUUID objectForKey:v4];

  return v5;
}

- (AFPeerMap)init
{
  v14.receiver = self;
  v14.super_class = AFPeerMap;
  v2 = [(AFPeerMap *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objectsByUUID = v2->_objectsByUUID;
    v2->_objectsByUUID = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uuidsByAssistantIdentifier = v2->_uuidsByAssistantIdentifier;
    v2->_uuidsByAssistantIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uuidsByRapportIdentifier = v2->_uuidsByRapportIdentifier;
    v2->_uuidsByRapportIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uuidsByIdsDeviceIdentifier = v2->_uuidsByIdsDeviceIdentifier;
    v2->_uuidsByIdsDeviceIdentifier = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uuidsByHomeKitIdentifier = v2->_uuidsByHomeKitIdentifier;
    v2->_uuidsByHomeKitIdentifier = v11;
  }

  return v2;
}

@end