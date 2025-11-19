@interface ASDTAudioDeviceFactory
+ (id)factoryWithUID:(id)a3 fromList:(id)a4;
+ (id)forDeviceConfig:(id)a3 withManager:(id)a4;
+ (id)ioServiceDependenciesForConfig:(id)a3;
+ (void)addDependenciesFromConfig:(id)a3 toArray:(id)a4;
+ (void)addDependenciesFromConfigArray:(id)a3 toArray:(id)a4;
- (ASDAudioDevice)underlyingDevice;
- (ASDTDeviceManager)manager;
- (BOOL)buildDevice;
- (BOOL)checkIOServiceDependencies;
- (BOOL)checkUnderlyingDeviceDependency;
- (id).cxx_construct;
- (id)initForDeviceConfig:(id)a3 withManager:(id)a4;
- (int)initializeDevice;
- (void)buildDevice;
- (void)cleanup;
- (void)dealloc;
- (void)interestNotification:(int)a3 forDevice:(id)a4;
- (void)ioServiceAvailable:(id)a3 withManager:(id)a4;
- (void)publishDevice;
- (void)setInitTime:(ASDTTime *)a3;
@end

@implementation ASDTAudioDeviceFactory

+ (id)forDeviceConfig:(id)a3 withManager:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 asdtFactorySubclass];
  if (([(objc_class *)v7 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v8 = [[v7 alloc] initForDeviceConfig:v5 withManager:v6];
  }

  else
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v5 objectForKeyedSubscript:@"FactorySubclass"];
      v11 = [v5 objectForKeyedSubscript:@"Subclass"];
      [(ASDTAudioDeviceFactory *)v10 forDeviceConfig:v11 withManager:v14, v9];
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)initForDeviceConfig:(id)a3 withManager:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 asdtDeviceUID];
  v10 = v9;
  if (!v8 || !v7 || !v9)
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASDTAudioDeviceFactory initForDeviceConfig:v11 withManager:?];
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ASDTAudioDeviceFactory.mm" lineNumber:68 description:@"Bad arguments."];
  }

  v24.receiver = self;
  v24.super_class = ASDTAudioDeviceFactory;
  v13 = [(ASDTAudioDeviceFactory *)&v24 init];
  v14 = v13;
  if (v13)
  {
    ASDTTime::machAbsoluteTime(v13, buf);
    *&v14->_initTime.nsec = *buf;
    *&v14->_initTime.hostFrac = *&buf[16];
    [(ASDTAudioDeviceFactory *)v14 setDeviceUID:v10];
    [(ASDTAudioDeviceFactory *)v14 setConfig:v7];
    [(ASDTAudioDeviceFactory *)v14 setManager:v8];
    v15 = [(ASDTAudioDeviceFactory *)v14 config];
    v16 = [v15 asdtUnderlyingDeviceUID];
    [(ASDTAudioDeviceFactory *)v14 setUnderlyingDeviceUID:v16];

    v17 = [v8 underlyingDeviceUIDs];
    -[ASDTAudioDeviceFactory setDeviceIsUnderlying:](v14, "setDeviceIsUnderlying:", [v17 containsObject:v10]);

    v18 = [(ASDTAudioDeviceFactory *)v14 underlyingDeviceUID];
    LOBYTE(v16) = v18 == 0;

    if ((v16 & 1) == 0)
    {
      v19 = ASDTBaseLogType();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(ASDTAudioDeviceFactory *)v14 deviceUID];
        v21 = [(ASDTAudioDeviceFactory *)v14 underlyingDeviceUID];
        *buf = 138412546;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&dword_241659000, v19, OS_LOG_TYPE_DEFAULT, "%@: Requires underling device with UID: %@", buf, 0x16u);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) ioServiceManager];
        [v7 removeDelegate:self];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9.receiver = self;
  v9.super_class = ASDTAudioDeviceFactory;
  [(ASDTAudioDeviceFactory *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)cleanup
{
  v14 = *MEMORY[0x277D85DE8];
  [(ASDTAudioDeviceFactory *)self setManager:0];
  [(ASDTAudioDeviceFactory *)self setDevice:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) ioServiceManager];
        [v7 removeDelegate:self];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [(ASDTAudioDeviceFactory *)self setIoServiceDependencies:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkIOServiceDependencies
{
  v55 = *MEMORY[0x277D85DE8];
  if (![(ASDTAudioDeviceFactory *)self ioServiceDependenciesDiscovered])
  {
    v3 = objc_opt_class();
    v4 = [(ASDTAudioDeviceFactory *)self config];
    v5 = [v3 ioServiceDependenciesForConfig:v4];
    [(ASDTAudioDeviceFactory *)self setIoServiceDependencies:v5];

    [(ASDTAudioDeviceFactory *)self setIoServiceDependenciesDiscovered:1];
    v6 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
    v7 = [v6 count];

    if (v7)
    {
      v8 = MEMORY[0x277CBEB58];
      v9 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
      v10 = [v8 setWithCapacity:{objc_msgSend(v9, "count")}];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v11 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
      v12 = [v11 countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v12)
      {
        v13 = *v45;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v45 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = [*(*(&v44 + 1) + 8 * i) description];
            [v10 addObject:v15];
          }

          v12 = [v11 countByEnumeratingWithState:&v44 objects:v54 count:16];
        }

        while (v12);
      }

      v16 = ASDTBaseLogType();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(ASDTAudioDeviceFactory *)self deviceUID];
        *buf = 138412546;
        v51 = v17;
        v52 = 2112;
        v53 = v10;
        _os_log_impl(&dword_241659000, v16, OS_LOG_TYPE_DEFAULT, "%@: Dependent on IOServices: %@", buf, 0x16u);
      }
    }
  }

  v18 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
  v19 = [v18 count] == 0;

  if (v19)
  {
    v33 = 1;
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
    v21 = [v20 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v21)
    {
      v22 = *v41;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v40 + 1) + 8 * j);
          v25 = [v24 ioServiceManager];
          v26 = v25 == 0;

          if (v26)
          {
            [v24 addManagerDelegate:self];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v21);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
    v28 = [v27 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v28)
    {
      v29 = *v37;
      while (2)
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = [*(*(&v36 + 1) + 8 * k) ioService];
          v32 = v31 == 0;

          if (v32)
          {
            v33 = 0;
            goto LABEL_33;
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    v33 = 1;
LABEL_33:
  }

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)ioServiceAvailable:(id)a3 withManager:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v11++) ioServiceAvailable:v6 withManager:v7];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ([(ASDTAudioDeviceFactory *)self checkDependencies])
  {
    v12 = [(ASDTAudioDeviceFactory *)self manager];
    [v12 resourcesAvailableForDevice:self];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkUnderlyingDeviceDependency
{
  v3 = [(ASDTAudioDeviceFactory *)self underlyingDeviceUID];

  if (!v3)
  {
    return 1;
  }

  if (![(ASDTAudioDeviceFactory *)self didRegisterInterestInUnderlyingDevice])
  {
    [(ASDTAudioDeviceFactory *)self setDidRegisterInterestInUnderlyingDevice:1];
    v4 = [(ASDTAudioDeviceFactory *)self manager];
    v5 = [(ASDTAudioDeviceFactory *)self underlyingDeviceUID];
    [v4 registerObject:self withInterests:1 forUID:v5];
  }

  v6 = [(ASDTAudioDeviceFactory *)self underlyingDevice];
  v7 = v6 != 0;

  return v7;
}

- (void)interestNotification:(int)a3 forDevice:(id)a4
{
  v9 = a4;
  v5 = [(ASDTAudioDeviceFactory *)self underlyingDeviceUID];
  v6 = [v9 deviceUID];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [(ASDTAudioDeviceFactory *)self setUnderlyingDevice:v9];
    if ([(ASDTAudioDeviceFactory *)self checkDependencies])
    {
      v8 = [(ASDTAudioDeviceFactory *)self manager];
      [v8 resourcesAvailableForDevice:self];
    }
  }
}

- (BOOL)buildDevice
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(ASDTAudioDeviceFactory *)self checkDependencies];
  if (v3)
  {
    v4 = [(ASDTAudioDeviceFactory *)self config];
    v5 = [(ASDTAudioDeviceFactory *)self manager];
    v6 = [(ASDTAudioDeviceFactory *)self manager];
    v7 = [v6 plugin];
    v8 = [ASDTAudioDevice deviceForConfig:v4 withDeviceManager:v5 andPlugin:v7];
    [(ASDTAudioDeviceFactory *)self setDevice:v8];

    v9 = [(ASDTAudioDeviceFactory *)self device];

    if (v9)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v10 = ASDTBaseLogType();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [(ASDTAudioDeviceFactory *)self deviceUID];
        [(ASDTAudioDeviceFactory *)v11 buildDevice];
      }

      LOBYTE(v3) = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)initializeDevice
{
  v3 = [(ASDTAudioDeviceFactory *)self device];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(ASDTAudioDeviceFactory *)self device];
  v6 = [v5 completeInitialization];
  v7 = [(ASDTAudioDeviceFactory *)self manager];
  v8 = [v7 serialQueue];
  v9 = v8;
  if (!v6 && v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__ASDTAudioDeviceFactory_initializeDevice__block_invoke;
    v11[3] = &unk_278CE6740;
    v12 = v7;
    v13 = v5;
    dispatch_sync(v9, v11);
  }

  return v6;
}

uint64_t __42__ASDTAudioDeviceFactory_initializeDevice__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) userIsActive];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 userActiveChanged:1];
  }

  return result;
}

- (void)publishDevice
{
  if (![(ASDTAudioDeviceFactory *)self deviceIsUnderlying])
  {
    v3 = [(ASDTAudioDeviceFactory *)self manager];
    [v3 publishDevice:self];
  }
}

+ (void)addDependenciesFromConfig:(id)a3 toArray:(id)a4
{
  v8 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v8 asdtSubclass];
    if ([v6 conformsToProtocol:&unk_285364B48])
    {
      v7 = [v6 ioServiceDependenciesForConfig:v8];
      if ([v7 count])
      {
        [v5 addObjectsFromArray:v7];
      }
    }
  }
}

+ (void)addDependenciesFromConfigArray:(id)a3 toArray:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [a1 addDependenciesFromConfig:*(*(&v13 + 1) + 8 * v11++) toArray:{v7, v13}];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)ioServiceDependenciesForConfig:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  [a1 addDependenciesFromConfig:v4 toArray:v5];
  v6 = [v4 asdtControls];
  [a1 addDependenciesFromConfigArray:v6 toArray:v5];

  v7 = [v4 asdtCustomProperties];
  [a1 addDependenciesFromConfigArray:v7 toArray:v5];

  v8 = [v4 asdtPMDevices];
  [a1 addDependenciesFromConfigArray:v8 toArray:v5];

  v9 = [v4 asdtStreams];
  [a1 addDependenciesFromConfigArray:v9 toArray:v5];

  if ([v5 count])
  {
    v10 = [v5 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)factoryWithUID:(id)a3 fromList:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 deviceUID];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)setInitTime:(ASDTTime *)a3
{
  v3 = *&a3->nsec;
  *&self->_initTime.hostFrac = *&a3->hostFrac;
  *&self->_initTime.nsec = v3;
}

- (ASDTDeviceManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (ASDAudioDevice)underlyingDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingDevice);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0x10000;
  return self;
}

+ (void)forDeviceConfig:(uint8_t *)buf withManager:(os_log_t)log .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "Invalid subclass name: %@ (or %@Factory)", buf, 0x16u);
}

- (void)buildDevice
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "Failed to create device '%@'.", buf, 0xCu);
}

@end