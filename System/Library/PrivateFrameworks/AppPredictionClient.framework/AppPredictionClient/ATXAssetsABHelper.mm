@interface ATXAssetsABHelper
+ (BOOL)isDefaultGroupIdentifier:(id)identifier;
+ (id)decDeviceId;
+ (unint64_t)cachedSaltedIndex:(unint64_t)index;
+ (unint64_t)saltedIndex:(unint64_t)index;
+ (unsigned)indexForDevice;
+ (void)initialize;
+ (void)setIndexProviderForDevice:(id)device;
+ (void)setStaticIndexForDevice:(unsigned __int8)device;
- (ATXAssetsABHelper)initWithAssetContents:(id)contents;
- (ATXAssetsABHelper)initWithAssetContents:(id)contents specifiedABGroup:(id)group indexForDevice:(unsigned __int8)device;
- (ATXAssetsABHelper)initWithAssetsForResource:(id)resource ofType:(id)type specifiedABGroup:(id)group;
@end

@implementation ATXAssetsABHelper

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    +[ATXAssetsABHelper setDefaultDeviceIndexPolicy];
  }
}

+ (unsigned)indexForDevice
{
  pthread_mutex_lock(&getIndexForDeviceLock);
  if (getIndexForDevice)
  {
    v2 = (*(getIndexForDevice + 16))();
  }

  else
  {
    v2 = -1;
  }

  pthread_mutex_unlock(&getIndexForDeviceLock);
  return v2;
}

- (ATXAssetsABHelper)initWithAssetContents:(id)contents
{
  contentsCopy = contents;
  v5 = [(ATXAssetsABHelper *)self initWithAssetContents:contentsCopy indexForDevice:+[ATXAssetsABHelper indexForDevice]];

  return v5;
}

- (ATXAssetsABHelper)initWithAssetContents:(id)contents specifiedABGroup:(id)group indexForDevice:(unsigned __int8)device
{
  deviceCopy = device;
  contentsCopy = contents;
  v75 = *MEMORY[0x1E69E9840];
  contentsCopy2 = contents;
  groupCopy = group;
  v67.receiver = self;
  v67.super_class = ATXAssetsABHelper;
  v11 = [(ATXAssetsABHelper *)&v67 init];
  if (v11)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v12 = contentsCopy2;
    v13 = [v12 countByEnumeratingWithState:&v63 objects:v74 count:16];
    v59 = v12;
    if (v13)
    {
      v14 = v13;
      v55 = contentsCopy;
      v56 = contentsCopy2;
      v15 = 0;
      v62 = 0;
      v16 = *v64;
      v57 = deviceCopy;
      v17 = MEMORY[0x1E69E9C10];
      v18 = v12;
      v58 = v11;
LABEL_4:
      v19 = 0;
      while (1)
      {
        if (*v64 != v16)
        {
          objc_enumerationMutation(v18);
        }

        v20 = *(*(&v63 + 1) + 8 * v19);
        if (groupCopy && [groupCopy isEqualToString:*(*(&v63 + 1) + 8 * v19)])
        {
          v21 = v20;

          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v71 = v21;
            _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_INFO, "Found specifiedABGroup of %@", buf, 0xCu);
          }

          v15 = v21;
          goto LABEL_30;
        }

        if ([objc_opt_class() isDefaultGroupIdentifier:v20])
        {
          if (v62)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:v11 file:@"ATXAssetsABHelper.m" lineNumber:99 description:{@"Detected more than one Default* ABGroup. Second was %@", v20}];

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v71 = v20;
              v72 = 2112;
              v73 = v62;
              _os_log_error_impl(&dword_1BF549000, v17, OS_LOG_TYPE_ERROR, "Detected more than one Default* ABGroup, skipping %@ and keeping %@", buf, 0x16u);
            }
          }

          else
          {
            v62 = v20;
          }

          goto LABEL_30;
        }

        v23 = [v18 objectForKeyedSubscript:v20];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_30;
        }

        v24 = v23;
        v25 = [v24 objectForKeyedSubscript:@"Activation"];
        if (!v25)
        {
          goto LABEL_28;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E696AAA8] currentHandler];
          v38 = v37 = v15;
          [v38 handleFailureInMethod:a2 object:v11 file:@"ATXAssetsABHelper.m" lineNumber:118 description:{@"ABGroup %@ contains unsupported activation criterion: %@", v20, v24}];

          v15 = v37;
          v18 = v59;
LABEL_28:

LABEL_29:
          v17 = MEMORY[0x1E69E9C10];
          goto LABEL_30;
        }

        v60 = v15;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          [ATXAssetsABHelper initWithAssetContents:v68 specifiedABGroup:v20 indexForDevice:&v69];
        }

        v26 = v25;
        v27 = [v26 objectForKeyedSubscript:@"SaltedIndexCriterion"];

        if (v27)
        {
          break;
        }

        v39 = [v26 objectForKeyedSubscript:@"UUIDLastByteRange"];

        if (v39)
        {
          v40 = [v26 objectForKeyedSubscript:@"UUIDLastByteRange"];
          v41 = NSRangeFromString(v40);

          v18 = v59;
          v36 = v57 < v41.location || v57 - v41.location >= v41.length;
LABEL_36:
          v42 = !v36;
          v11 = v58;
          goto LABEL_40;
        }

        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = v58;
        [currentHandler2 handleFailureInMethod:a2 object:v58 file:@"ATXAssetsABHelper.m" lineNumber:138 description:{@"ABGroup %@ contains no supported activation criteria: %@", v20, v24}];

        v42 = 0;
LABEL_40:

        if (groupCopy)
        {
          v15 = v60;
          goto LABEL_29;
        }

        v17 = MEMORY[0x1E69E9C10];
        if (v42)
        {
          v45 = v62;
          v48 = v20;

          contentsCopy = v55;
          contentsCopy2 = v56;
          v15 = v60;
          if (v48)
          {
            goto LABEL_57;
          }

          if (v62)
          {
            goto LABEL_56;
          }

          goto LABEL_63;
        }

        v15 = v60;
LABEL_30:
        if (v14 == ++v19)
        {
          v44 = [v18 countByEnumeratingWithState:&v63 objects:v74 count:16];
          v14 = v44;
          if (v44)
          {
            goto LABEL_4;
          }

          if (groupCopy)
          {
            v45 = v62;
            if (v15)
            {
              objc_storeStrong(&v11->_groupIdentifier, v15);
              v46 = [v18 objectForKeyedSubscript:v11->_groupIdentifier];
              abGroupContents = v11->_abGroupContents;
              v11->_abGroupContents = v46;

              v48 = 0;
              contentsCopy2 = v56;
              goto LABEL_66;
            }

            contentsCopy = v55;
            contentsCopy2 = v56;
            goto LABEL_53;
          }

          v45 = v62;
          contentsCopy = v55;
          contentsCopy2 = v56;
          if (v62)
          {
            goto LABEL_56;
          }

          goto LABEL_63;
        }
      }

      v28 = [v26 objectForKeyedSubscript:@"SaltedIndexCriterion"];
      v29 = [v28 objectForKeyedSubscript:@"range"];
      v30 = NSRangeFromString(v29);

      v31 = [v26 objectForKeyedSubscript:@"SaltedIndexCriterion"];
      v32 = [v31 objectForKeyedSubscript:@"salt"];
      unsignedIntegerValue = [v32 unsignedIntegerValue];

      v34 = unsignedIntegerValue;
      v18 = v59;
      v35 = [ATXAssetsABHelper cachedSaltedIndex:v34];
      v36 = v35 < v30.location || v35 - v30.location >= v30.length;
      goto LABEL_36;
    }

    v45 = 0;
    v15 = 0;
    if (!groupCopy)
    {
      goto LABEL_63;
    }

LABEL_53:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [ATXAssetsABHelper initWithAssetContents:groupCopy specifiedABGroup:? indexForDevice:?];
    }

    v15 = 0;
    if (v45)
    {
LABEL_56:
      v48 = v45;
      v45 = v48;
LABEL_57:
      objc_storeStrong(&v11->_groupIdentifier, v48);
      v49 = [v59 objectForKeyedSubscript:v11->_groupIdentifier];
      v50 = v11->_abGroupContents;
      v11->_abGroupContents = v49;

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(ATXAssetsABHelper *)&v11->_abGroupContents initWithAssetContents:a2 specifiedABGroup:v11 indexForDevice:v48];
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        groupIdentifier = v11->_groupIdentifier;
        *buf = 138412290;
        v71 = groupIdentifier;
        _os_log_impl(&dword_1BF549000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "ABGroup identifier: %@", buf, 0xCu);
      }
    }

    else
    {
LABEL_63:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [ATXAssetsABHelper initWithAssetContents:specifiedABGroup:indexForDevice:];
      }

      v52 = v11->_groupIdentifier;
      v11->_groupIdentifier = 0;

      objc_storeStrong(&v11->_abGroupContents, contentsCopy);
      v45 = 0;
      v48 = 0;
    }

LABEL_66:
    v53 = v11;
  }

  return v11;
}

- (ATXAssetsABHelper)initWithAssetsForResource:(id)resource ofType:(id)type specifiedABGroup:(id)group
{
  groupCopy = group;
  v9 = [ATXAssets2 rawDictionaryForResource:resource ofType:type];
  if (v9)
  {
    self = [(ATXAssetsABHelper *)self initWithAssetContents:v9 specifiedABGroup:groupCopy indexForDevice:+[ATXAssetsABHelper indexForDevice]];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (unint64_t)cachedSaltedIndex:(unint64_t)index
{
  result = cachedSaltedIndex__index;
  if (cachedSaltedIndex__index >= 0x3E8)
  {
    cachedSaltedIndex__index = [ATXAssetsABHelper saltedIndex:index];
    v4 = [ATXAggregateKeys keyWithSubkey:@"ab.salted_index"];
    [ATXAssetsAggregateLogger logKey:v4 replaceScalarValueWith:cachedSaltedIndex__index];

    return cachedSaltedIndex__index;
  }

  return result;
}

+ (unint64_t)saltedIndex:(unint64_t)index
{
  v4 = +[ATXAssetsABHelper decDeviceId];
  v5 = v4;
  if (v4)
  {
    v13 = 0;
    v14 = 0;
    v6 = &v13;
    [v4 getUUIDBytes:&v13];
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = 0xFF51AFD7ED558CCDLL * (*v6 ^ index ^ ((*v6 ^ index) >> 33));
      v7 += (0xC4CEB9FE1A85EC53 * (v10 ^ (v10 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v10 ^ (v10 >> 33))) >> 33);
      v6 = &v14;
      v8 = 0;
    }

    while ((v9 & 1) != 0);
    v11 = v7 % 0x3E8;
  }

  else
  {
    v11 = 1000;
  }

  return v11;
}

+ (void)setStaticIndexForDevice:(unsigned __int8)device
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__ATXAssetsABHelper_setStaticIndexForDevice___block_invoke;
  v3[3] = &__block_descriptor_33_e5_C8__0l;
  deviceCopy = device;
  [ATXAssetsABHelper setIndexProviderForDevice:v3];
}

+ (id)decDeviceId
{
  v2 = _deviceId;
  if (!_deviceId)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    if ([processName isEqualToString:@"duetexpertd"])
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v6 = [standardUserDefaults objectForKey:@"com.apple.proactive.abGroupDeviceId"];

      if (v6)
      {
        [standardUserDefaults removeObjectForKey:@"com.apple.proactive.abGroupDeviceId"];
      }
    }

    v7 = objc_alloc(MEMORY[0x1E69C5CF0]);
    v8 = [ATXAssetsPaths decDirectoryFile:@"com.apple.proactive.abGroupDeviceId"];
    v9 = [v7 initWithBasePath:v8];

    uUID = [v9 UUID];
    v11 = uUID;
    if (uUID)
    {
      uUID2 = uUID;
    }

    else
    {
      uUID2 = [MEMORY[0x1E696AFB0] UUID];
    }

    v13 = _deviceId;
    _deviceId = uUID2;

    v2 = _deviceId;
  }

  return v2;
}

+ (BOOL)isDefaultGroupIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 1;
  }

  lowercaseString = [identifier lowercaseString];
  v4 = [lowercaseString hasPrefix:@"default"];

  return v4;
}

uint64_t __48__ATXAssetsABHelper_setDefaultDeviceIndexPolicy__block_invoke()
{
  v0 = +[ATXAssetsABHelper decDeviceId];
  v1 = v0;
  if (v0)
  {
    v9 = 0;
    v10 = 0;
    v2 = &v9;
    [v0 getUUIDBytes:&v9];
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = 0xFF51AFD7ED558CCDLL * (*v2 ^ (*v2 >> 33));
      v3 += (0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) >> 33);
      v2 = &v10;
      v4 = 0;
    }

    while ((v5 & 1) != 0);
  }

  else
  {
    LOBYTE(v3) = -1;
  }

  v7 = [ATXAggregateKeys keyWithSubkey:@"ab.index.vendor"];
  [ATXAssetsAggregateLogger logKey:v7 replaceScalarValueWith:v3];

  return v3;
}

+ (void)setIndexProviderForDevice:(id)device
{
  deviceCopy = device;
  pthread_mutex_lock(&getIndexForDeviceLock);
  v4 = MEMORY[0x1BFB5BA40](deviceCopy);

  v5 = getIndexForDevice;
  getIndexForDevice = v4;

  pthread_mutex_unlock(&getIndexForDeviceLock);
}

- (void)initWithAssetContents:(uint8_t *)buf specifiedABGroup:(uint64_t)a2 indexForDevice:(void *)a3 .cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_1BF549000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ABGroup key: %@", buf, 0xCu);
}

- (void)initWithAssetContents:(uint64_t)a1 specifiedABGroup:indexForDevice:.cold.2(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&dword_1BF549000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Asset does not contain the specifiedABGroup of %@", &v1, 0xCu);
}

- (void)initWithAssetContents:(uint64_t)a3 specifiedABGroup:(uint64_t)a4 indexForDevice:.cold.3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"ATXAssetsABHelper.m" lineNumber:176 description:{@"Content of ABGroup %@ in asset is not an NSDictionary: %@", a4, *a1}];
}

@end