@interface CMIOExtensionDevice
+ (CMIOExtensionDevice)deviceWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID legacyDeviceID:(NSString *)legacyDeviceID source:(id)source;
+ (CMIOExtensionDevice)deviceWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID source:(id)source;
+ (id)internalProperties;
+ (id)internalWritableProperties;
- (BOOL)addStream:(CMIOExtensionStream *)stream error:(NSError *)outError;
- (BOOL)didRegister:(id *)a3;
- (BOOL)removeStream:(CMIOExtensionStream *)stream error:(NSError *)outError;
- (CMIOExtensionDevice)initWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID legacyDeviceID:(NSString *)legacyDeviceID source:(id)source;
- (CMIOExtensionDevice)initWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID source:(id)source;
- (NSArray)streams;
- (id)_clientQueue_internalPropertyStatesForProperties:(id)a3;
- (id)_clientQueue_setAndRemoveInternalPropertyValuesForClient:(id)a3 propertyValues:(id)a4 error:(id *)a5;
- (id)description;
- (void)dealloc;
- (void)didUnregister;
- (void)notifyPropertiesChanged:(NSDictionary *)propertyStates;
@end

@implementation CMIOExtensionDevice

+ (id)internalProperties
{
  if (internalProperties_onceToken_246 != -1)
  {
    +[CMIOExtensionDevice internalProperties];
  }

  return internalProperties_gInternalDeviceProperties;
}

uint64_t __41__CMIOExtensionDevice_internalProperties__block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{0x284358D98, 0x284358DB8, 0x284358DD8, 0x284358DF8, 0x284358E18, 0x284358E58, 0}];
  internalProperties_gInternalDeviceProperties = result;
  return result;
}

+ (id)internalWritableProperties
{
  if (internalWritableProperties_onceToken != -1)
  {
    +[CMIOExtensionDevice internalWritableProperties];
  }

  return internalWritableProperties_gInternalDeviceProperties;
}

uint64_t __49__CMIOExtensionDevice_internalWritableProperties__block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{0x284358E58, 0}];
  internalWritableProperties_gInternalDeviceProperties = result;
  return result;
}

+ (CMIOExtensionDevice)deviceWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID legacyDeviceID:(NSString *)legacyDeviceID source:(id)source
{
  v6 = [objc_alloc(objc_opt_class()) initWithLocalizedName:localizedName deviceID:deviceID legacyDeviceID:legacyDeviceID source:source];

  return v6;
}

+ (CMIOExtensionDevice)deviceWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID source:(id)source
{
  v5 = [objc_alloc(objc_opt_class()) initWithLocalizedName:localizedName deviceID:deviceID source:source];

  return v5;
}

- (CMIOExtensionDevice)initWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID legacyDeviceID:(NSString *)legacyDeviceID source:(id)source
{
  v12.receiver = self;
  v12.super_class = CMIOExtensionDevice;
  v10 = [(CMIOExtensionDevice *)&v12 init];
  if (v10)
  {
    v10->_localizedName = [(NSString *)localizedName copy];
    v10->_deviceID = [(NSUUID *)deviceID copy];
    v10->_legacyDeviceID = [(NSString *)legacyDeviceID copy];
    objc_storeWeak(&v10->_source, source);
    v10->_streamsLock._os_unfair_lock_opaque = 0;
    v10->_streams = objc_opt_new();
    v10->_changedPropertiesLock._os_unfair_lock_opaque = 0;
    v10->_changedProperties = objc_opt_new();
    v10->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionDevice: name %@, ID %@>", v10->_localizedName, v10->_deviceID];
  }

  return v10;
}

- (CMIOExtensionDevice)initWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID source:(id)source
{
  v9 = cmio_VDCAssistantDeviceUIDForUSBAssistantNSUUID(deviceID);

  return [(CMIOExtensionDevice *)self initWithLocalizedName:localizedName deviceID:deviceID legacyDeviceID:v9 source:source];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionDevice;
  [(CMIOExtensionDevice *)&v3 dealloc];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (id)_clientQueue_internalPropertyStatesForProperties:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  if (a3)
  {
    if ([a3 containsObject:0x284358D98])
    {
      v6 = [[CMIOExtensionPropertyState alloc] initWithValue:self->_localizedName attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
      [v5 setObject:v6 forKey:0x284358D98];
    }

    if (([a3 containsObject:0x284358DB8] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = [[CMIOExtensionPropertyState alloc] initWithValue:self->_localizedName attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
    [v5 setObject:v7 forKey:0x284358D98];
  }

  v8 = [[CMIOExtensionPropertyState alloc] initWithValue:[(NSUUID *)self->_deviceID UUIDString] attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
  [v5 setObject:v8 forKey:0x284358DB8];

  if (!a3)
  {
    v10 = [[CMIOExtensionPropertyState alloc] initWithValue:self->_legacyDeviceID attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
    [v5 setObject:v10 forKey:0x284358DD8];

    goto LABEL_13;
  }

LABEL_8:
  if ([a3 containsObject:0x284358DD8])
  {
    v9 = [[CMIOExtensionPropertyState alloc] initWithValue:self->_legacyDeviceID attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
    [v5 setObject:v9 forKey:0x284358DD8];
  }

  if ([a3 containsObject:0x284358DF8])
  {
LABEL_13:
    v11 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [(CMIOExtensionDevice *)self streams];
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v11 addObject:{objc_msgSend(objc_msgSend(*(*(&v24 + 1) + 8 * v16++), "streamID"), "UUIDString")}];
        }

        while (v14 != v16);
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v17 = [[CMIOExtensionPropertyState alloc] initWithValue:v11 attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];

    [v5 setObject:v17 forKey:0x284358DF8];
    if (!a3)
    {
      goto LABEL_22;
    }
  }

  if (![a3 containsObject:0x284358E18])
  {
    goto LABEL_23;
  }

LABEL_22:
  v18 = [CMIOExtensionPropertyState alloc];
  v19 = -[CMIOExtensionPropertyState initWithValue:attributes:](v18, "initWithValue:attributes:", [MEMORY[0x277CCABB0] numberWithBool:self->_runningSomewhere], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
  [v5 setObject:v19 forKey:0x284358E18];

  if (a3)
  {
LABEL_23:
    if (![a3 containsObject:0x284358E58])
    {
      goto LABEL_25;
    }
  }

  v20 = [CMIOExtensionPropertyState alloc];
  v21 = -[CMIOExtensionPropertyState initWithValue:](v20, "initWithValue:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_deviceControlPID]);
  [v5 setObject:v21 forKey:0x284358E58];

LABEL_25:
  if ([v5 count])
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_clientQueue_setAndRemoveInternalPropertyValuesForClient:(id)a3 propertyValues:(id)a4 error:(id *)a5
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v8 = [CMIOExtensionDevice internalWritableProperties:a3];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__CMIOExtensionDevice__clientQueue_setAndRemoveInternalPropertyValuesForClient_propertyValues_error___block_invoke;
  v16[3] = &unk_27885B8C0;
  v16[4] = v8;
  v16[5] = &v17;
  [a4 enumerateKeysAndObjectsUsingBlock:v16];
  if (v18[3])
  {
    v9 = a4;
  }

  else
  {
    v9 = [a4 mutableCopy];
    v10 = objc_opt_new();
    v11 = [a4 objectForKey:0x284358E58];
    v12 = v11;
    if (v11)
    {
      if ([v11 intValue] < 1)
      {
        v13 = -1;
      }

      else
      {
        v13 = [a3 pid];
      }

      self->_deviceControlPID = v13;
      [v9 removeObjectForKey:0x284358E58];
      v14 = [[CMIOExtensionPropertyState alloc] initWithValue:v12];
      [v10 setObject:v14 forKey:0x284358E58];
    }

    [(CMIOExtensionDevice *)self notifyPropertiesChanged:v10];
  }

  _Block_object_dispose(&v17, 8);
  return v9;
}

uint64_t __101__CMIOExtensionDevice__clientQueue_setAndRemoveInternalPropertyValuesForClient_propertyValues_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (BOOL)didRegister:(id *)a3
{
  v38 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_streamsLock);
  v5 = [(NSMutableArray *)self->_streams copy];
  os_unfair_lock_unlock(&self->_streamsLock);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v32 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v31 + 1) + 8 * v10);
      v30 = 0;
      if (([+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")] & 1) == 0)
      {
        break;
      }

      [v6 addObject:v11];
      if (v8 == ++v10)
      {
        v8 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = CMIOLog();
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionDevice didRegister:];
      if (!a3)
      {
LABEL_21:
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = [v6 countByEnumeratingWithState:&v22 objects:v35 count:16];
        if (v12)
        {
          v18 = *v23;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v23 != v18)
              {
                objc_enumerationMutation(v6);
              }

              [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
            }

            v12 = [v6 countByEnumeratingWithState:&v22 objects:v35 count:16];
          }

          while (v12);
        }

        goto LABEL_28;
      }
    }

    else if (!a3)
    {
      goto LABEL_21;
    }

    *a3 = v30;
    goto LABEL_21;
  }

LABEL_9:
  LOBYTE(v12) = 1;
  self->_isRegistered = 1;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [v5 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v26 + 1) + 8 * j) setParent:self];
      }

      v14 = [v5 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v14);
    LOBYTE(v12) = 1;
  }

LABEL_28:

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)didUnregister
{
  v29 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_streamsLock);
  v3 = [(NSMutableArray *)self->_streams copy];
  os_unfair_lock_unlock(&self->_streamsLock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 136315906;
    v14 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v15 = 0;
        if (([+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider sharedProvider] & 1) == 0)
        {
          v10 = CMIOLog();
          if (v10)
          {
            v11 = v10;
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              *buf = v14;
              v21 = v12;
              v22 = 1024;
              v23 = 1546;
              v24 = 2080;
              v25 = "[CMIOExtensionDevice didUnregister]";
              v26 = 2114;
              v27 = v15;
              _os_log_error_impl(&dword_22EA08000, v11, OS_LOG_TYPE_ERROR, "%s:%d:%s unregisterStream error %{public}@", buf, 0x26u);
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v16 objects:v28 count:16];
    }

    while (v6);
  }

  self->_isRegistered = 0;
  v13 = *MEMORY[0x277D85DE8];
}

- (NSArray)streams
{
  os_unfair_lock_lock(&self->_streamsLock);
  v3 = [(NSMutableArray *)self->_streams copy];
  os_unfair_lock_unlock(&self->_streamsLock);

  return v3;
}

- (BOOL)addStream:(CMIOExtensionStream *)stream error:(NSError *)outError
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v27 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v28 = 1024;
      v29 = 1567;
      v30 = 2080;
      v31 = "[CMIOExtensionDevice addStream:error:]";
      v32 = 2112;
      v33 = self;
      v34 = 2112;
      v35 = stream;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  if (!stream || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = CMIOLog();
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionDevice addStream:error:];
      if (!outError)
      {
        goto LABEL_24;
      }
    }

    else if (!outError)
    {
      goto LABEL_24;
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA590];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Invalid stream";
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v25;
    v14 = &v24;
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_streamsLock);
  if (([(NSMutableArray *)self->_streams containsObject:stream]& 1) == 0)
  {
    [(NSMutableArray *)self->_streams addObject:stream];
    os_unfair_lock_unlock(&self->_streamsLock);
    v18 = CMIOLog();
    if (v18)
    {
      v19 = v18;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *buf = 136316162;
        v27 = v20;
        v28 = 1024;
        v29 = 1595;
        v30 = 2080;
        v31 = "[CMIOExtensionDevice addStream:error:]";
        v32 = 2114;
        v33 = self;
        v34 = 2114;
        v35 = stream;
        _os_log_impl(&dword_22EA08000, v19, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{public}@", buf, 0x30u);
      }
    }

    if (self->_isRegistered)
    {
      if (([+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")] & 1) == 0)
      {
        os_unfair_lock_lock(&self->_streamsLock);
        [(NSMutableArray *)self->_streams removeObject:stream];
        os_unfair_lock_unlock(&self->_streamsLock);
        goto LABEL_24;
      }

      [(CMIOExtensionStream *)stream setParent:self];
    }

    result = 1;
    goto LABEL_25;
  }

  os_unfair_lock_unlock(&self->_streamsLock);
  v9 = CMIOLog();
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionDevice addStream:error:];
    if (outError)
    {
      goto LABEL_10;
    }

LABEL_24:
    result = 0;
    goto LABEL_25;
  }

  if (!outError)
  {
    goto LABEL_24;
  }

LABEL_10:
  v10 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA590];
  v22 = *MEMORY[0x277CCA450];
  v23 = @"Stream already included";
  v12 = MEMORY[0x277CBEAC0];
  v13 = &v23;
  v14 = &v22;
LABEL_15:
  v16 = [v10 errorWithDomain:v11 code:-50 userInfo:{objc_msgSend(v12, "dictionaryWithObjects:forKeys:count:", v13, v14, 1, v22, v23, v24, v25)}];
  result = 0;
  *outError = v16;
LABEL_25:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)removeStream:(CMIOExtensionStream *)stream error:(NSError *)outError
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v30 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v31 = 1024;
      v32 = 1613;
      v33 = 2080;
      v34 = "[CMIOExtensionDevice removeStream:error:]";
      v35 = 2112;
      v36 = self;
      v37 = 2112;
      v38 = stream;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  if (!stream || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = CMIOLog();
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionDevice removeStream:error:];
      if (!outError)
      {
        goto LABEL_23;
      }
    }

    else if (!outError)
    {
      goto LABEL_23;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA590];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"Invalid stream";
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v28;
    v20 = &v27;
LABEL_16:
    v21 = [v16 errorWithDomain:v17 code:-50 userInfo:{objc_msgSend(v18, "dictionaryWithObjects:forKeys:count:", v19, v20, 1, v25, v26, v27, v28)}];
    v14 = 0;
    *outError = v21;
    goto LABEL_24;
  }

  os_unfair_lock_lock(&self->_streamsLock);
  if (([(NSMutableArray *)self->_streams containsObject:stream]& 1) == 0)
  {
    os_unfair_lock_unlock(&self->_streamsLock);
    v22 = CMIOLog();
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionDevice removeStream:error:];
      if (outError)
      {
        goto LABEL_20;
      }
    }

    else if (outError)
    {
LABEL_20:
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA590];
      v25 = *MEMORY[0x277CCA450];
      v26 = @"Stream not present";
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v26;
      v20 = &v25;
      goto LABEL_16;
    }

LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  [(NSMutableArray *)self->_streams removeObject:stream];
  os_unfair_lock_unlock(&self->_streamsLock);
  v9 = CMIOLog();
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136316162;
      v30 = v11;
      v31 = 1024;
      v32 = 1641;
      v33 = 2080;
      v34 = "[CMIOExtensionDevice removeStream:error:]";
      v35 = 2114;
      v36 = self;
      v37 = 2114;
      v38 = stream;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{public}@", buf, 0x30u);
    }
  }

  if (self->_isRegistered)
  {
    v12 = +[CMIOExtensionProvider sharedProvider];
    deviceID = self->_deviceID;
    v14 = 1;
    [v12 unregisterStream:stream withDeviceID:deviceID notify:1 error:outError];
  }

  else
  {
    v14 = 1;
  }

LABEL_24:
  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)notifyPropertiesChanged:(NSDictionary *)propertyStates
{
  os_unfair_lock_lock(&self->_changedPropertiesLock);
  [(NSMutableDictionary *)self->_changedProperties addEntriesFromDictionary:propertyStates];
  os_unfair_lock_unlock(&self->_changedPropertiesLock);
  v5 = [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CMIOExtensionDevice_notifyPropertiesChanged___block_invoke;
  block[3] = &unk_27885B8E8;
  block[4] = self;
  dispatch_async(v5, block);
}

void __47__CMIOExtensionDevice_notifyPropertiesChanged___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = [*(*(a1 + 32) + 32) copy];
  [*(*(a1 + 32) + 32) removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  if ([v2 count])
  {
    [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
  }
}

- (void)didRegister:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addStream:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addStream:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeStream:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeStream:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end