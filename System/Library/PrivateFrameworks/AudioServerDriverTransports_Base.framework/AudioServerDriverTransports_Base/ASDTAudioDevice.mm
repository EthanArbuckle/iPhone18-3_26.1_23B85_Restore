@interface ASDTAudioDevice
+ (id)deviceForConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin;
- (ASDTAudioDevice)initWithConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin;
- (ASDTDeviceManager)deviceManager;
- (BOOL)addControls:(id)controls;
- (BOOL)addCustomProperties:(id)properties;
- (BOOL)addPMDevices:(id)devices;
- (BOOL)addStreams:(id)streams;
- (BOOL)changeSamplingRate:(double)rate;
- (BOOL)configurationChangesPending;
- (BOOL)setupSamplingRates:(id)rates;
- (BOOL)updateCustomProperty:(id)property withAddress:(id)address;
- (BOOL)userIsActive;
- (NSDictionary)status;
- (NSSet)relatedDeviceObjectIDs;
- (id).cxx_construct;
- (id)allStreams;
- (id)concurrentQueue;
- (id)customPropertyForAddress:(id)address;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (id)objectsConformingToProtocol:(id)protocol;
- (id)updateIOThreadStateChangeDescription:(id)description;
- (id)willDoReadInputBlock;
- (id)willDoWriteMixBlock;
- (int)completeInitialization;
- (int)performPowerStatePrewarm:(int)prewarm;
- (int)performStartIO;
- (int)performStopIO;
- (int)systemCompletedPowerOn;
- (int)systemSleepPending;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (unsigned)numberOfIOThreadsForUseCaseInDescription:(id)description;
- (void)_updateSafetyOffsets:(double)offsets;
- (void)addControl:(id)control;
- (void)addCustomProperty:(id)property;
- (void)addInputStream:(id)stream;
- (void)addOutputStream:(id)stream;
- (void)ioThreadStateChange:(id)change;
- (void)objectsConformingAddObjects:(id)objects;
- (void)objectsConformingRemoveObjects:(id)objects;
- (void)performIOThreadStateChange:(id)change;
- (void)performStartIO;
- (void)performStopIO;
- (void)removeControl:(id)control;
- (void)removeCustomProperty:(id)property;
- (void)removeInputStream:(id)stream;
- (void)removeOutputStream:(id)stream;
- (void)setInputLatencies:(id)latencies;
- (void)setOutputLatencies:(id)latencies;
- (void)setSamplingRate:(double)rate;
- (void)updateInputLatency;
- (void)updateOutputLatency;
@end

@implementation ASDTAudioDevice

+ (id)deviceForConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin
{
  v15 = *MEMORY[0x277D85DE8];
  configCopy = config;
  managerCopy = manager;
  pluginCopy = plugin;
  asdtSubclass = [configCopy asdtSubclass];
  if (([(objc_class *)asdtSubclass isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v11 = [[asdtSubclass alloc] initWithConfig:configCopy withDeviceManager:managerCopy andPlugin:pluginCopy];
  }

  else
  {
    v12 = ASDTBaseLogType();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [configCopy objectForKeyedSubscript:@"Subclass"];
      objc_claimAutoreleasedReturnValue();
      +[ASDTAudioDevice deviceForConfig:withDeviceManager:andPlugin:];
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (ASDTAudioDevice)initWithConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin
{
  v42 = *MEMORY[0x277D85DE8];
  configCopy = config;
  managerCopy = manager;
  pluginCopy = plugin;
  asdtDeviceUID = [configCopy asdtDeviceUID];
  if (!asdtDeviceUID)
  {
    goto LABEL_20;
  }

  v41.receiver = self;
  v41.super_class = ASDTAudioDevice;
  self = [(ASDAudioDevice *)&v41 initWithDeviceUID:asdtDeviceUID withPlugin:pluginCopy];
  if (self)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    [(ASDTAudioDevice *)self setIoThreads:v12];

    -[ASDAudioDevice setCanBeDefaultInputDevice:](self, "setCanBeDefaultInputDevice:", [configCopy asdtCanBeDefaultInputDevice]);
    -[ASDAudioDevice setCanBeDefaultOutputDevice:](self, "setCanBeDefaultOutputDevice:", [configCopy asdtCanBeDefaultOutputDevice]);
    -[ASDAudioDevice setCanBeDefaultSystemDevice:](self, "setCanBeDefaultSystemDevice:", [configCopy asdtCanBeDefaultSystemDevice]);
    [(ASDTAudioDevice *)self setDeviceManager:managerCopy];
    -[ASDAudioDevice setClockDomain:](self, "setClockDomain:", [configCopy asdtClockDomain]);
    asdtName = [configCopy asdtName];
    [(ASDAudioDevice *)self setDeviceName:asdtName];

    [(ASDAudioDevice *)self setManufacturerName:@"Apple Inc."];
    asdtDeviceModel = [configCopy asdtDeviceModel];
    [(ASDAudioDevice *)self setModelName:asdtDeviceModel];

    -[ASDAudioDevice setTransportType:](self, "setTransportType:", [configCopy asdtTransportType]);
    -[ASDTAudioDevice setPmOrderPowerUp:](self, "setPmOrderPowerUp:", [configCopy asdtPMOrderWithDefaultForPowerUp:1]);
    -[ASDTAudioDevice setPmOrderPowerDown:](self, "setPmOrderPowerDown:", [configCopy asdtPMOrderWithDefaultForPowerUp:0]);
    -[ASDTAudioDevice setPmNoStateChangeOnFailure:](self, "setPmNoStateChangeOnFailure:", [configCopy asdtPMNoStateChangeOnFailure]);
    [(ASDTAudioDevice *)self setPowerState:0];
    asdtRelatedDeviceUIDs = [configCopy asdtRelatedDeviceUIDs];
    [(ASDTAudioDevice *)self setRelatedDeviceUIDs:asdtRelatedDeviceUIDs];

    asdtExclavesSensorName = [configCopy asdtExclavesSensorName];
    [(ASDTAudioDevice *)self setExclavesSensorName:asdtExclavesSensorName];

    modelName = [(ASDAudioDevice *)self modelName];
    LODWORD(asdtExclavesSensorName) = modelName == 0;

    if (asdtExclavesSensorName)
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      [(ASDAudioDevice *)self setModelName:deviceUID];
    }

    deviceName = [(ASDAudioDevice *)self deviceName];
    v20 = deviceName == 0;

    if (v20)
    {
      modelName2 = [(ASDAudioDevice *)self modelName];
      [(ASDAudioDevice *)self setDeviceName:modelName2];
    }

    [(ASDTAudioDevice *)self setWillDoReadInputInPlace:1];
    [(ASDTAudioDevice *)self setWillDoWriteMixInPlace:1];
    if ([(ASDTAudioDevice *)self setupSamplingRates:configCopy])
    {
      asdtCustomProperties = [configCopy asdtCustomProperties];
      v23 = [(ASDTAudioDevice *)self addCustomProperties:asdtCustomProperties];

      if (v23)
      {
        asdtControls = [configCopy asdtControls];
        v25 = [(ASDTAudioDevice *)self addControls:asdtControls];

        if (v25)
        {
          asdtStreams = [configCopy asdtStreams];
          v27 = [(ASDTAudioDevice *)self addStreams:asdtStreams];

          if (v27)
          {
            asdtPMDevices = [configCopy asdtPMDevices];
            v29 = [ASDTPMSequencer pmSequencerWithPMDeviceConfig:asdtPMDevices withParent:self];
            [(ASDTAudioDevice *)self setPmSequencer:v29];

            pmSequencer = [(ASDTAudioDevice *)self pmSequencer];
            v31 = pmSequencer == 0;

            if (v31)
            {
              v38 = ASDTBaseLogType();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                [(ASDAudioDevice *)self deviceUID];
                objc_claimAutoreleasedReturnValue();
                [ASDTAudioDevice initWithConfig:withDeviceManager:andPlugin:];
              }
            }

            else
            {
              if ([(ASDTAudioDevice *)self subclassInitWithConfig:configCopy])
              {
                samplingRates = [(ASDAudioDevice *)self samplingRates];
                v33 = [configCopy asdtInputLatenciesForSamplingRates:samplingRates];
                [(ASDTAudioDevice *)self setInputLatencies:v33];

                v34 = [configCopy asdtOutputLatenciesForSamplingRates:samplingRates];
                [(ASDTAudioDevice *)self setOutputLatencies:v34];

                [(ASDAudioDevice *)self samplingRate];
                v36 = v35;
                [(ASDTAudioDevice *)self _updateSafetyOffsets:?];
                [(ASDAudioDevice *)self _updateTimestampPeriod:v36];

                goto LABEL_14;
              }

              v38 = ASDTBaseLogType();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                [(ASDAudioDevice *)self deviceUID];
                objc_claimAutoreleasedReturnValue();
                [ASDTAudioDevice initWithConfig:withDeviceManager:andPlugin:];
              }
            }
          }
        }
      }
    }

LABEL_20:
    selfCopy = 0;
    goto LABEL_21;
  }

LABEL_14:
  self = self;
  selfCopy = self;
LABEL_21:

  v39 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)setupSamplingRates:(id)rates
{
  ratesCopy = rates;
  v9 = 0.0;
  [objc_opt_class() defaultSamplingRate];
  v8 = 0;
  v5 = [ratesCopy asdtSamplingRate:&v9 andSamplingRates:&v8 withDefault:?];
  v6 = v8;
  if (v5)
  {
    [(ASDTAudioDevice *)self setSamplingRate:v9];
    [(ASDAudioDevice *)self setSamplingRates:v6];
  }

  return v5;
}

- (void)objectsConformingAddObjects:(id)objects
{
  v39 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  std::mutex::lock((self + 472));
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  protocolMap = [(ASDTAudioDevice *)self protocolMap];
  allKeys = [protocolMap allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v25 = *v34;
    do
    {
      v7 = 0;
      v27 = v6;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v9 = objectsCopy;
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
        v28 = v7;
        if (!v10)
        {
          v11 = v9;
LABEL_22:

          goto LABEL_23;
        }

        v11 = 0;
        v12 = *v30;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = NSProtocolFromString(v8);
            v16 = [v14 conformsToProtocol:v15];

            if (v16)
            {
              if (!v11)
              {
                v11 = [MEMORY[0x277CBEB58] set];
              }

              [v11 addObject:v14];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v10);

        if (v11)
        {
          v17 = MEMORY[0x277CBEB58];
          protocolMap2 = [(ASDTAudioDevice *)selfCopy protocolMap];
          v19 = [protocolMap2 objectForKey:v8];
          v20 = [v17 setWithArray:v19];

          [v20 unionSet:v11];
          allObjects = [v20 allObjects];
          if (allObjects)
          {
            protocolMap3 = [(ASDTAudioDevice *)selfCopy protocolMap];
            [protocolMap3 setObject:allObjects forKey:v8];
          }

          goto LABEL_22;
        }

LABEL_23:
        v7 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v6 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  std::mutex::unlock((selfCopy + 472));
  v23 = *MEMORY[0x277D85DE8];
}

- (void)objectsConformingRemoveObjects:(id)objects
{
  v39 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  std::mutex::lock((self + 472));
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  protocolMap = [(ASDTAudioDevice *)self protocolMap];
  allKeys = [protocolMap allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v25 = *v34;
    do
    {
      v7 = 0;
      v27 = v6;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v9 = objectsCopy;
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
        v28 = v7;
        if (!v10)
        {
          v11 = v9;
LABEL_22:

          goto LABEL_23;
        }

        v11 = 0;
        v12 = *v30;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = NSProtocolFromString(v8);
            v16 = [v14 conformsToProtocol:v15];

            if (v16)
            {
              if (!v11)
              {
                v11 = [MEMORY[0x277CBEB58] set];
              }

              [v11 addObject:v14];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v10);

        if (v11)
        {
          v17 = MEMORY[0x277CBEB58];
          protocolMap2 = [(ASDTAudioDevice *)selfCopy protocolMap];
          v19 = [protocolMap2 objectForKey:v8];
          v20 = [v17 setWithArray:v19];

          [v20 minusSet:v11];
          allObjects = [v20 allObjects];
          if (allObjects)
          {
            protocolMap3 = [(ASDTAudioDevice *)selfCopy protocolMap];
            [protocolMap3 setObject:allObjects forKey:v8];
          }

          goto LABEL_22;
        }

LABEL_23:
        v7 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v6 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  std::mutex::unlock((selfCopy + 472));
  v23 = *MEMORY[0x277D85DE8];
}

- (id)objectsConformingToProtocol:(id)protocol
{
  v61 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  std::mutex::lock((self + 472));
  selfCopy = self;
  v39 = NSStringFromProtocol(protocolCopy);
  protocolMap = [(ASDTAudioDevice *)self protocolMap];
  allObjects = [protocolMap objectForKey:v39];

  if (!allObjects)
  {
    allStreams = [(ASDTAudioDevice *)self allStreams];
    controls = [(ASDAudioDevice *)self controls];
    customProperties = [(ASDTAudioDevice *)self customProperties];
    pmSequencer = [(ASDTAudioDevice *)self pmSequencer];
    pmDevicesPowerUp = [pmSequencer pmDevicesPowerUp];

    v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(controls, "count") + objc_msgSend(allStreams, "count") + objc_msgSend(customProperties, "count") + objc_msgSend(pmDevicesPowerUp, "count")}];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v9 = allStreams;
    v10 = [v9 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v10)
    {
      v11 = *v54;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          if ([v13 conformsToProtocol:protocolCopy])
          {
            [v8 addObject:v13];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v10);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v14 = controls;
    v15 = [v14 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v15)
    {
      v16 = *v50;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v50 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v49 + 1) + 8 * j);
          if ([v18 conformsToProtocol:protocolCopy])
          {
            [v8 addObject:v18];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v15);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v19 = customProperties;
    v20 = [v19 countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v20)
    {
      v21 = *v46;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v45 + 1) + 8 * k);
          if ([v23 conformsToProtocol:protocolCopy])
          {
            [v8 addObject:v23];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v20);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v24 = pmDevicesPowerUp;
    v25 = [v24 countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v25)
    {
      v26 = *v42;
      do
      {
        for (m = 0; m != v25; ++m)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v41 + 1) + 8 * m);
          if ([v28 conformsToProtocol:protocolCopy])
          {
            [v8 addObject:v28];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v25);
    }

    allObjects = [v8 allObjects];
    protocolMap2 = [(ASDTAudioDevice *)selfCopy protocolMap];
    v30 = protocolMap2 == 0;

    if (v30)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(ASDTAudioDevice *)selfCopy setProtocolMap:dictionary];
    }

    protocolMap3 = [(ASDTAudioDevice *)selfCopy protocolMap];
    [protocolMap3 setObject:allObjects forKey:v39];
  }

  std::mutex::unlock((selfCopy + 472));
  v33 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (void)addCustomProperty:(id)property
{
  v8[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDTAudioDevice *)&v7 addCustomProperty:propertyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [propertyCopy addedToDevice:self];
  }

  v8[0] = propertyCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingAddObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeCustomProperty:(id)property
{
  v8[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDTAudioDevice *)&v7 removeCustomProperty:propertyCopy];
  v8[0] = propertyCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingRemoveObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)addCustomProperties:(id)properties
{
  v64 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = properties;
  v3 = [obj countByEnumeratingWithState:&v38 objects:v63 count:16];
  if (v3)
  {
    v29 = *v39;
    while (2)
    {
      v27 = v3;
      for (i = 0; i != v27; ++i)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [ASDTCustomProperty customPropertyForConfig:*(*(&v38 + 1) + 8 * i), v27];
        if (!v5)
        {
          customProperties = ASDTBaseLogType();
          if (os_log_type_enabled(customProperties, OS_LOG_TYPE_ERROR))
          {
            [(ASDAudioDevice *)self deviceUID];
            objc_claimAutoreleasedReturnValue();
            [ASDTAudioDevice addCustomProperties:];
          }

LABEL_20:

          v14 = 0;
          goto LABEL_22;
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        customProperties = [(ASDTAudioDevice *)self customProperties];
        v7 = [customProperties countByEnumeratingWithState:&v34 objects:v62 count:16];
        if (v7)
        {
          v8 = *v35;
          while (2)
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v35 != v8)
              {
                objc_enumerationMutation(customProperties);
              }

              v10 = *(*(&v34 + 1) + 8 * j);
              address = [v10 address];
              address2 = [v5 address];
              v13 = [address isEqual:address2];

              if (v13)
              {
                v15 = ASDTBaseLogType();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  deviceUID = [(ASDAudioDevice *)self deviceUID];
                  if ([v10 selector] >> 29 && objc_msgSend(v10, "selector") >> 24 <= 0x7E)
                  {
                    v18 = [v10 selector] >> 24;
                  }

                  else
                  {
                    v18 = 32;
                  }

                  v30 = v18;
                  if (([v10 selector] & 0xE00000) != 0 && (objc_msgSend(v10, "selector") >> 16) <= 0x7Eu)
                  {
                    v19 = ([v10 selector] >> 16);
                  }

                  else
                  {
                    v19 = 32;
                  }

                  LODWORD(v27) = v19;
                  if (([v10 selector] & 0xE000) != 0 && (objc_msgSend(v10, "selector") >> 8) <= 0x7Eu)
                  {
                    v20 = ([v10 selector] >> 8);
                  }

                  else
                  {
                    v20 = 32;
                  }

                  if (([v10 selector] & 0xE0) != 0 && objc_msgSend(v10, "selector") <= 0x7Eu)
                  {
                    selector = [v10 selector];
                  }

                  else
                  {
                    selector = 32;
                  }

                  if ([v10 scope] >> 29 && objc_msgSend(v10, "scope") >> 24 <= 0x7E)
                  {
                    v22 = [v10 scope] >> 24;
                  }

                  else
                  {
                    v22 = 32;
                  }

                  if (([v10 scope] & 0xE00000) != 0 && (objc_msgSend(v10, "scope") >> 16) <= 0x7Eu)
                  {
                    v23 = ([v10 scope] >> 16);
                  }

                  else
                  {
                    v23 = 32;
                  }

                  if (([v10 scope] & 0xE000) != 0 && (objc_msgSend(v10, "scope") >> 8) <= 0x7Eu)
                  {
                    v24 = ([v10 scope] >> 8);
                  }

                  else
                  {
                    v24 = 32;
                  }

                  if (([v10 scope] & 0xE0) != 0 && objc_msgSend(v10, "scope") <= 0x7Eu)
                  {
                    scope = [v10 scope];
                  }

                  else
                  {
                    scope = 32;
                  }

                  element = [v10 element];
                  *buf = 138414594;
                  v43 = deviceUID;
                  v44 = 1024;
                  v45 = v30;
                  v46 = 1024;
                  v47 = v28;
                  v48 = 1024;
                  v49 = v20;
                  v50 = 1024;
                  v51 = selector;
                  v52 = 1024;
                  v53 = v22;
                  v54 = 1024;
                  v55 = v23;
                  v56 = 1024;
                  v57 = v24;
                  v58 = 1024;
                  v59 = scope;
                  v60 = 1024;
                  v61 = element;
                  _os_log_error_impl(&dword_241659000, v15, OS_LOG_TYPE_ERROR, "%@: Device already has property '%c%c%c%c' with scope '%c%c%c%c' and element %u", buf, 0x42u);
                }

                goto LABEL_20;
              }
            }

            v7 = [customProperties countByEnumeratingWithState:&v34 objects:v62 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

        [(ASDTAudioDevice *)self addCustomProperty:v5];
      }

      v3 = [obj countByEnumeratingWithState:&v38 objects:v63 count:16];
      v14 = 1;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)addControl:(id)control
{
  v8[1] = *MEMORY[0x277D85DE8];
  controlCopy = control;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 addControl:controlCopy];
  v8[0] = controlCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingAddObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeControl:(id)control
{
  v8[1] = *MEMORY[0x277D85DE8];
  controlCopy = control;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 removeControl:controlCopy];
  v8[0] = controlCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingRemoveObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)addControls:(id)controls
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  controlsCopy = controls;
  v5 = [controlsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(controlsCopy);
        }

        v8 = [ASDTControlFactory controlForConfig:*(*(&v13 + 1) + 8 * i) withDevice:self, v13];
        if (!v8)
        {
          v10 = ASDTBaseLogType();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [(ASDAudioDevice *)self deviceUID];
            objc_claimAutoreleasedReturnValue();
            [ASDTAudioDevice addControls:];
          }

          v9 = 0;
          goto LABEL_13;
        }

        [(ASDTAudioDevice *)self addControl:v8];
      }

      v5 = [controlsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)addInputStream:(id)stream
{
  v8[1] = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 addInputStream:streamCopy];
  v8[0] = streamCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingAddObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeInputStream:(id)stream
{
  v8[1] = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 removeInputStream:streamCopy];
  v8[0] = streamCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingRemoveObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addOutputStream:(id)stream
{
  v8[1] = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 addOutputStream:streamCopy];
  v8[0] = streamCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingAddObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeOutputStream:(id)stream
{
  v8[1] = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 removeOutputStream:streamCopy];
  v8[0] = streamCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingRemoveObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)addStreams:(id)streams
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  streamsCopy = streams;
  v5 = [streamsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(streamsCopy);
        }

        v8 = [ASDTStream streamForConfig:*(*(&v14 + 1) + 8 * i) withDevice:self, v14];
        v9 = v8;
        if (!v8)
        {
          v11 = ASDTBaseLogType();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [(ASDAudioDevice *)self deviceUID];
            objc_claimAutoreleasedReturnValue();
            [ASDTAudioDevice addStreams:];
          }

          v10 = 0;
          goto LABEL_16;
        }

        if ([v8 direction] == 1768845428)
        {
          [(ASDTAudioDevice *)self addInputStream:v9];
        }

        else
        {
          [(ASDTAudioDevice *)self addOutputStream:v9];
        }
      }

      v5 = [streamsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)addPMDevices:(id)devices
{
  devicesCopy = devices;
  pmSequencer = [(ASDTAudioDevice *)self pmSequencer];
  v6 = [pmSequencer addPMDevicesWithConfig:devicesCopy];

  pmSequencer2 = [(ASDTAudioDevice *)self pmSequencer];
  pmDevicesPowerUp = [pmSequencer2 pmDevicesPowerUp];
  [(ASDTAudioDevice *)self objectsConformingAddObjects:pmDevicesPowerUp];

  return v6;
}

- (void)updateInputLatency
{
  inputLatencies = [(ASDTAudioDevice *)self inputLatencies];

  if (inputLatencies)
  {
    v4 = MEMORY[0x277CCABB0];
    [(ASDAudioDevice *)self samplingRate];
    v7 = [v4 numberWithDouble:?];
    inputLatencies2 = [(ASDTAudioDevice *)self inputLatencies];
    v6 = [inputLatencies2 objectForKey:v7];
    -[ASDAudioDevice setInputLatency:](self, "setInputLatency:", [v6 unsignedIntValue]);
  }
}

- (void)updateOutputLatency
{
  outputLatencies = [(ASDTAudioDevice *)self outputLatencies];

  if (outputLatencies)
  {
    v4 = MEMORY[0x277CCABB0];
    [(ASDAudioDevice *)self samplingRate];
    v7 = [v4 numberWithDouble:?];
    outputLatencies2 = [(ASDTAudioDevice *)self outputLatencies];
    v6 = [outputLatencies2 objectForKey:v7];
    -[ASDAudioDevice setOutputLatency:](self, "setOutputLatency:", [v6 unsignedIntValue]);
  }
}

- (void)setInputLatencies:(id)latencies
{
  objc_storeStrong(self + 69, latencies);

  [(ASDTAudioDevice *)self updateInputLatency];
}

- (void)setOutputLatencies:(id)latencies
{
  objc_storeStrong(self + 70, latencies);

  [(ASDTAudioDevice *)self updateOutputLatency];
}

- (void)_updateSafetyOffsets:(double)offsets
{
  v35 = *MEMORY[0x277D85DE8];
  outputStreams = [(ASDAudioDevice *)self outputStreams];
  v5 = [outputStreams count];

  if (v5)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    outputStreams2 = [(ASDAudioDevice *)self outputStreams];
    v7 = [outputStreams2 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (!v7)
    {
LABEL_17:

      goto LABEL_18;
    }

    v8 = 0;
    v9 = 0;
    v10 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(outputStreams2);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          safetyOffset = [v12 safetyOffset];
          if (safetyOffset <= v9)
          {
            v9 = v9;
          }

          else
          {
            v9 = safetyOffset;
          }

          v8 = 1;
        }
      }

      v7 = [outputStreams2 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);

    if (v8)
    {
      [(ASDAudioDevice *)self setOutputSafetyOffset:v9];
      outputStreams2 = ASDTBaseLogType();
      if (os_log_type_enabled(outputStreams2, OS_LOG_TYPE_DEBUG))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTAudioDevice _updateSafetyOffsets:];
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  inputStreams = [(ASDAudioDevice *)self inputStreams];
  v15 = [inputStreams count] == 0;

  if (!v15)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    inputStreams2 = [(ASDAudioDevice *)self inputStreams];
    v17 = [inputStreams2 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (!v17)
    {
LABEL_34:

      goto LABEL_35;
    }

    v18 = 0;
    v19 = 0;
    v20 = *v26;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(inputStreams2);
        }

        v22 = *(*(&v25 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          safetyOffset2 = [v22 safetyOffset];
          if (safetyOffset2 <= v19)
          {
            v19 = v19;
          }

          else
          {
            v19 = safetyOffset2;
          }

          v18 = 1;
        }
      }

      v17 = [inputStreams2 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);

    if (v18)
    {
      [(ASDAudioDevice *)self setInputSafetyOffset:v19];
      inputStreams2 = ASDTBaseLogType();
      if (os_log_type_enabled(inputStreams2, OS_LOG_TYPE_DEBUG))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTAudioDevice _updateSafetyOffsets:];
      }

      goto LABEL_34;
    }
  }

LABEL_35:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)setSamplingRate:(double)rate
{
  v4.receiver = self;
  v4.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v4 setSamplingRate:rate];
  [(ASDTAudioDevice *)self updateInputLatency];
  [(ASDTAudioDevice *)self updateOutputLatency];
}

- (BOOL)changeSamplingRate:(double)rate
{
  objc_initWeak(&location, self);
  [(ASDAudioDevice *)self samplingRate];
  if (v5 != rate)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__ASDTAudioDevice_changeSamplingRate___block_invoke;
    v7[3] = &unk_278CE66F8;
    objc_copyWeak(v8, &location);
    v8[1] = *&rate;
    [(ASDAudioDevice *)self requestConfigurationChange:v7];
    objc_destroyWeak(v8);
  }

  objc_destroyWeak(&location);
  return 1;
}

void __38__ASDTAudioDevice_changeSamplingRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSamplingRate:v1];
}

- (id)willDoReadInputBlock
{
  hasInput = [(ASDAudioDevice *)self hasInput];
  willDoReadInputInPlace = [(ASDTAudioDevice *)self willDoReadInputInPlace];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__ASDTAudioDevice_willDoReadInputBlock__block_invoke;
  aBlock[3] = &__block_descriptor_34_e14_i28__0I8_12_20l;
  v8 = hasInput;
  v9 = willDoReadInputInPlace;
  v5 = _Block_copy(aBlock);

  return v5;
}

uint64_t __39__ASDTAudioDevice_willDoReadInputBlock__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a3 = *(a1 + 32);
  *a4 = *(a1 + 33);
  return 0;
}

- (id)willDoWriteMixBlock
{
  hasOutput = [(ASDAudioDevice *)self hasOutput];
  willDoWriteMixInPlace = [(ASDTAudioDevice *)self willDoWriteMixInPlace];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__ASDTAudioDevice_willDoWriteMixBlock__block_invoke;
  aBlock[3] = &__block_descriptor_34_e14_i28__0I8_12_20l;
  v8 = hasOutput;
  v9 = willDoWriteMixInPlace;
  v5 = _Block_copy(aBlock);

  return v5;
}

uint64_t __38__ASDTAudioDevice_willDoWriteMixBlock__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a3 = *(a1 + 32);
  *a4 = *(a1 + 33);
  return 0;
}

- (id)allStreams
{
  inputStreams = [(ASDAudioDevice *)self inputStreams];
  outputStreams = [(ASDAudioDevice *)self outputStreams];
  v5 = [inputStreams arrayByAddingObjectsFromArray:outputStreams];

  return v5;
}

- (int)performPowerStatePrewarm:(int)prewarm
{
  v5 = [(ASDTAudioDevice *)self streamPowerStateTransition:?];
  if (prewarm == 1970304877 && ![(ASDAudioDevice *)self isRunning])
  {
    v8.receiver = self;
    v8.super_class = ASDTAudioDevice;
    result = [(ASDAudioDevice *)&v8 performStartIO];
  }

  else
  {
    result = 0;
  }

  if (v5)
  {
    v7 = result == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return v5;
  }

  return result;
}

- (int)performStartIO
{
  v14 = *MEMORY[0x277D85DE8];
  pmSequencer = [(ASDTAudioDevice *)self pmSequencer];
  powerState = [pmSequencer powerState];

  if (powerState != 1936483696)
  {
    configurationChangeDelegate = [(ASDAudioDevice *)self configurationChangeDelegate];
    v8 = [configurationChangeDelegate conformsToProtocol:&unk_28535AA38];

    if (v8)
    {
      configurationChangeDelegate2 = [(ASDAudioDevice *)self configurationChangeDelegate];
      if ([configurationChangeDelegate2 configurationChangeRunningForObject:self])
      {
        v10 = ASDTBaseLogType();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(ASDAudioDevice *)self deviceUID];
          objc_claimAutoreleasedReturnValue();
          [ASDTAudioDevice performStartIO];
        }

        goto LABEL_5;
      }
    }

    pmSequencer2 = [(ASDTAudioDevice *)self pmSequencer];
    v6 = [pmSequencer2 executeSequenceToState:1920298606];

    goto LABEL_13;
  }

  v5 = ASDTBaseLogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ASDAudioDevice *)self deviceUID];
    objc_claimAutoreleasedReturnValue();
    [ASDTAudioDevice performStartIO];
  }

LABEL_5:
  v6 = 1852990585;
LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)performStopIO
{
  v12 = *MEMORY[0x277D85DE8];
  pmSequencer = [(ASDTAudioDevice *)self pmSequencer];
  pmSequencer2 = [(ASDTAudioDevice *)self pmSequencer];
  v5 = [pmSequencer executeSequenceToState:{objc_msgSend(pmSequencer2, "quiescentState")}];

  ioThreads = [(ASDTAudioDevice *)self ioThreads];
  v7 = [ioThreads count];

  if (v7)
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ASDTAudioDevice *)self ioThreads];
      objc_claimAutoreleasedReturnValue();
      [ASDTAudioDevice performStopIO];
    }

    ioThreads2 = [(ASDTAudioDevice *)self ioThreads];
    [ioThreads2 removeAllObjects];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)completeInitialization
{
  pmSequencer = [(ASDTAudioDevice *)self pmSequencer];
  v3 = [pmSequencer executeSequenceToState:1767990132];

  return v3;
}

- (id)updateIOThreadStateChangeDescription:(id)description
{
  v44 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  asdtIOThreadChangeEvent = [descriptionCopy asdtIOThreadChangeEvent];
  asdtIOThreadChangeIsolatedUseCase = [descriptionCopy asdtIOThreadChangeIsolatedUseCase];
  asdtIOThreadChangeContextID = [descriptionCopy asdtIOThreadChangeContextID];
  ioThreads = [(ASDTAudioDevice *)self ioThreads];

  if (!ioThreads)
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASDTAudioDevice updateIOThreadStateChangeDescription:v9];
    }

    ioThreads2 = [(ASDTAudioDevice *)self ioThreads];
    v11 = ioThreads2 == 0;

    if (v11)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ASDTAudioDevice.mm" lineNumber:712 description:@"Failed to allocate self.ioThreads"];
    }
  }

  ioThreads3 = [(ASDTAudioDevice *)self ioThreads];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:asdtIOThreadChangeIsolatedUseCase];
  v14 = [ioThreads3 objectForKey:v13];

  if (asdtIOThreadChangeEvent == 1937010544)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:asdtIOThreadChangeContextID];
    [v14 removeObject:v21];

    if (v14 && ![v14 count])
    {
      ioThreads4 = [(ASDTAudioDevice *)self ioThreads];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:asdtIOThreadChangeIsolatedUseCase];
      [ioThreads4 removeObjectForKey:v23];

      v14 = 0;
    }

    v19 = [v14 count] == 0;
    v20 = "stop";
  }

  else if (asdtIOThreadChangeEvent == 1937011316)
  {
    if (!v14)
    {
      v15 = [MEMORY[0x277CBEB58] setWithCapacity:2];
      ioThreads5 = [(ASDTAudioDevice *)self ioThreads];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:asdtIOThreadChangeIsolatedUseCase];
      [ioThreads5 setObject:v15 forKey:v17];

      v14 = v15;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:asdtIOThreadChangeContextID];
    [v14 addObject:v18];

    v19 = [v14 count] == 1;
    v20 = "start";
  }

  else
  {
    v19 = 0;
    v20 = "unknown";
  }

  v24 = [v14 count];
  v25 = [descriptionCopy mutableCopy];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
  [v25 setObject:v26 forKey:@"useCaseThreadCount"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  [v25 setObject:v27 forKey:@"isFirstOrWasLast"];

  v28 = ASDTBaseLogType();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID = [(ASDAudioDevice *)self deviceUID];
    *buf = 138413314;
    v35 = deviceUID;
    v36 = 1024;
    v37 = asdtIOThreadChangeContextID;
    v38 = 2080;
    v39 = v20;
    v40 = 1024;
    v41 = asdtIOThreadChangeIsolatedUseCase;
    v42 = 1024;
    v43 = v24;
    _os_log_impl(&dword_241659000, v28, OS_LOG_TYPE_DEFAULT, "%@: Thread context %u %s with use case %u, count: %u", buf, 0x28u);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)ioThreadStateChange:(id)change
{
  changeCopy = change;
  ioReferenceQueue = [(ASDAudioDevice *)self ioReferenceQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ASDTAudioDevice_ioThreadStateChange___block_invoke;
  v7[3] = &unk_278CE6740;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_sync(ioReferenceQueue, v7);
}

void __39__ASDTAudioDevice_ioThreadStateChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateIOThreadStateChangeDescription:*(a1 + 40)];
  [*(a1 + 32) performIOThreadStateChange:?];
}

- (void)performIOThreadStateChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allStreams = [(ASDTAudioDevice *)self allStreams];
  v6 = [allStreams countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allStreams);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 ioThreadStateChange:changeCopy];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allStreams countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unsigned)numberOfIOThreadsForUseCaseInDescription:(id)description
{
  descriptionCopy = description;
  LODWORD(self) = -[ASDTAudioDevice numberOfIOThreadsForUseCaseID:](self, "numberOfIOThreadsForUseCaseID:", [descriptionCopy asdtIOThreadChangeIsolatedUseCase]);

  return self;
}

- (int)systemSleepPending
{
  pmSequencer = [(ASDTAudioDevice *)self pmSequencer];
  v3 = [pmSequencer executeSequenceToState:1936483696];

  return v3;
}

- (int)systemCompletedPowerOn
{
  pmSequencer = [(ASDTAudioDevice *)self pmSequencer];
  pmSequencer2 = [(ASDTAudioDevice *)self pmSequencer];
  v5 = [pmSequencer executeSequenceToState:objc_msgSend(pmSequencer2 fromState:{"quiescentState"), 1936483696}];

  return v5;
}

- (BOOL)userIsActive
{
  deviceManager = [(ASDTAudioDevice *)self deviceManager];
  userIsActive = [deviceManager userIsActive];

  return userIsActive;
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  v79 = *MEMORY[0x277D85DE8];
  v75.receiver = self;
  v75.super_class = ASDTAudioDevice;
  indentCopy = indent;
  v62 = [ASDAudioDevice diagnosticDescriptionWithIndent:sel_diagnosticDescriptionWithIndent_walkTree_ walkTree:?];
  v5 = indentCopy;
  inputLatencies = [(ASDTAudioDevice *)self inputLatencies];
  v7 = [inputLatencies count] == 0;

  if (!v7)
  {
    [v62 appendFormat:@"%@|    input latencies (sampeRate : frames):\n", indentCopy];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    inputLatencies2 = [(ASDTAudioDevice *)self inputLatencies];
    allKeys = [inputLatencies2 allKeys];

    v10 = [allKeys countByEnumeratingWithState:&v71 objects:v78 count:16];
    if (v10)
    {
      v11 = *v72;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v72 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v71 + 1) + 8 * i);
          inputLatencies3 = [(ASDTAudioDevice *)self inputLatencies];
          v15 = [inputLatencies3 objectForKeyedSubscript:v13];

          [v13 doubleValue];
          [v62 appendFormat:@"%@|        %6.0lf : %u\n", indentCopy, v16, objc_msgSend(v15, "unsignedIntValue")];
        }

        v10 = [allKeys countByEnumeratingWithState:&v71 objects:v78 count:16];
      }

      while (v10);
    }
  }

  outputLatencies = [(ASDTAudioDevice *)self outputLatencies];
  v18 = [outputLatencies count] == 0;

  if (!v18)
  {
    [v62 appendFormat:@"%@|    output latencies (sampleRate : frames):\n", indentCopy];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    outputLatencies2 = [(ASDTAudioDevice *)self outputLatencies];
    allKeys2 = [outputLatencies2 allKeys];

    v21 = [allKeys2 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v21)
    {
      v22 = *v68;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v68 != v22)
          {
            objc_enumerationMutation(allKeys2);
          }

          v24 = *(*(&v67 + 1) + 8 * j);
          outputLatencies3 = [(ASDTAudioDevice *)self outputLatencies];
          v26 = [outputLatencies3 objectForKeyedSubscript:v24];

          [v24 doubleValue];
          [v62 appendFormat:@"%@|        %6.0lf : %u\n", indentCopy, v27, objc_msgSend(v26, "unsignedIntValue")];
        }

        v21 = [allKeys2 countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v21);
    }
  }

  [v62 appendFormat:@"%@|    Custom Properties:\n", indentCopy];
  customProperties = [(ASDTAudioDevice *)self customProperties];
  v29 = [customProperties count] == 0;

  if (!v29)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    customProperties2 = [(ASDTAudioDevice *)self customProperties];
    obj = customProperties2;
    v31 = [customProperties2 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v31)
    {
      v32 = 0;
      v57 = *v64;
      do
      {
        v33 = 0;
        v59 = v31;
        do
        {
          if (*v64 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v63 + 1) + 8 * v33);
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v34 includeValueInDescription])
          {
            if ([v34 selector] >> 29 && objc_msgSend(v34, "selector") >> 24 <= 0x7E)
            {
              v35 = [v34 selector] >> 24;
            }

            else
            {
              v35 = 32;
            }

            v61 = v35;
            if (([v34 selector] & 0xE00000) != 0 && (objc_msgSend(v34, "selector") >> 16) <= 0x7Eu)
            {
              v44 = ([v34 selector] >> 16);
            }

            else
            {
              v44 = 32;
            }

            v55 = v44;
            if (([v34 selector] & 0xE000) != 0 && (objc_msgSend(v34, "selector") >> 8) <= 0x7Eu)
            {
              v45 = ([v34 selector] >> 8);
            }

            else
            {
              v45 = 32;
            }

            if (([v34 selector] & 0xE0) != 0 && objc_msgSend(v34, "selector") <= 0x7Eu)
            {
              selector = [v34 selector];
            }

            else
            {
              selector = 32;
            }

            if ([v34 scope] >> 29 && objc_msgSend(v34, "scope") >> 24 <= 0x7E)
            {
              v47 = [v34 scope] >> 24;
            }

            else
            {
              v47 = 32;
            }

            if (([v34 scope] & 0xE00000) != 0 && (objc_msgSend(v34, "scope") >> 16) <= 0x7Eu)
            {
              v48 = ([v34 scope] >> 16);
            }

            else
            {
              v48 = 32;
            }

            if (([v34 scope] & 0xE000) != 0 && (objc_msgSend(v34, "scope") >> 8) <= 0x7Eu)
            {
              v49 = ([v34 scope] >> 8);
            }

            else
            {
              v49 = 32;
            }

            if (([v34 scope] & 0xE0) != 0 && objc_msgSend(v34, "scope") <= 0x7Eu)
            {
              scope = [v34 scope];
            }

            else
            {
              scope = 32;
            }

            element = [v34 element];
            value = [v34 value];
            [v62 appendFormat:@"%@|        %u: %c%c%c%c (%c%c%c%c, %u): %@\n", indentCopy, v32, v61, v55, v45, selector, v47, v48, v49, scope, element, value];
          }

          else
          {
            if ([v34 selector] >> 29 && objc_msgSend(v34, "selector") >> 24 <= 0x7E)
            {
              v36 = [v34 selector] >> 24;
            }

            else
            {
              v36 = 32;
            }

            v60 = v36;
            if (([v34 selector] & 0xE00000) != 0 && (objc_msgSend(v34, "selector") >> 16) <= 0x7Eu)
            {
              v37 = ([v34 selector] >> 16);
            }

            else
            {
              v37 = 32;
            }

            if (([v34 selector] & 0xE000) != 0 && (objc_msgSend(v34, "selector") >> 8) <= 0x7Eu)
            {
              v38 = ([v34 selector] >> 8);
            }

            else
            {
              v38 = 32;
            }

            if (([v34 selector] & 0xE0) != 0 && objc_msgSend(v34, "selector") <= 0x7Eu)
            {
              selector2 = [v34 selector];
            }

            else
            {
              selector2 = 32;
            }

            if ([v34 scope] >> 29 && objc_msgSend(v34, "scope") >> 24 <= 0x7E)
            {
              v40 = [v34 scope] >> 24;
            }

            else
            {
              v40 = 32;
            }

            if (([v34 scope] & 0xE00000) != 0 && (objc_msgSend(v34, "scope") >> 16) <= 0x7Eu)
            {
              v41 = ([v34 scope] >> 16);
            }

            else
            {
              v41 = 32;
            }

            if (([v34 scope] & 0xE000) != 0 && (objc_msgSend(v34, "scope") >> 8) <= 0x7Eu)
            {
              v42 = ([v34 scope] >> 8);
            }

            else
            {
              v42 = 32;
            }

            if (([v34 scope] & 0xE0) != 0 && objc_msgSend(v34, "scope") <= 0x7Eu)
            {
              scope2 = [v34 scope];
            }

            else
            {
              scope2 = 32;
            }

            [v62 appendFormat:@"%@|        %u: %c%c%c%c (%c%c%c%c, %u) (value unknown)\n", indentCopy, v32, v60, v37, v38, selector2, v40, v41, v42, scope2, objc_msgSend(v34, "element")];
          }

          v32 = (v32 + 1);
          ++v33;
        }

        while (v59 != v33);
        customProperties2 = obj;
        v31 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v31);
    }

    v5 = indentCopy;
  }

  v53 = *MEMORY[0x277D85DE8];

  return v62;
}

- (id)customPropertyForAddress:(id)address
{
  v21 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  [(ASDTAudioDevice *)self customProperties];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        address = [v9 address];
        selector = [address selector];
        if (selector == [addressCopy selector])
        {
          element = [address element];
          if (element == [addressCopy element])
          {
            scope = [address scope];
            if (scope == [addressCopy scope])
            {
              v6 = v9;

              goto LABEL_13;
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)updateCustomProperty:(id)property withAddress:(id)address
{
  propertyCopy = property;
  addressCopy = address;
  address = [propertyCopy address];

  if (address)
  {
    address2 = [propertyCopy address];

    addressCopy = address2;
  }

  v10 = [(ASDTAudioDevice *)self customPropertyForAddress:addressCopy];
  v11 = v10;
  if (v10 == propertyCopy)
  {
    goto LABEL_9;
  }

  if (!propertyCopy)
  {
    [(ASDTAudioDevice *)self removeCustomProperty:v10];
LABEL_13:
    v15 = 1;
    goto LABEL_14;
  }

  if (!v10)
  {
LABEL_12:
    [(ASDTAudioDevice *)self addCustomProperty:propertyCopy];
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [(ASDTAudioDevice *)self removeCustomProperty:v11];
    goto LABEL_12;
  }

  value = [v11 value];
  value2 = [propertyCopy value];
  v14 = [value isEqual:value2];

  if ((v14 & 1) == 0)
  {
    propertyValue = [propertyCopy propertyValue];
    [v11 setPropertyValue:propertyValue];

    goto LABEL_13;
  }

LABEL_9:
  v15 = 0;
LABEL_14:

  return v15;
}

- (NSSet)relatedDeviceObjectIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:3];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[ASDTAudioDevice objectID](self, "objectID")}];
  [v3 addObject:v4];

  plugin = [(ASDTAudioDevice *)self plugin];
  relatedDeviceUIDs = [(ASDTAudioDevice *)self relatedDeviceUIDs];
  v7 = [plugin objectIDsForDeviceUIDs:relatedDeviceUIDs];
  [v3 unionSet:v7];

  v8 = [v3 copy];

  return v8;
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1634429294)
  {
    relatedDeviceObjectIDs = [(ASDTAudioDevice *)self relatedDeviceObjectIDs];
    v6 = 4 * [relatedDeviceObjectIDs count];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ASDTAudioDevice;
    return [ASDAudioDevice dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
  }

  return v6;
}

- (NSDictionary)status
{
  v16 = *MEMORY[0x277D85DE8];
  [(ASDTAudioDevice *)self objectsConformingToProtocol:&unk_28535D938];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  dictionary = 0;
  v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        status = [*(*(&v11 + 1) + 8 * i) status];
        if (status)
        {
          if (!dictionary)
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
          }

          [dictionary addEntriesFromDictionary:status];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = [dictionary copy];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)configurationChangesPending
{
  configurationChangeDelegate = [(ASDAudioDevice *)self configurationChangeDelegate];
  v4 = [configurationChangeDelegate conformsToProtocol:&unk_28535AA38];

  if (!v4)
  {
    return 0;
  }

  configurationChangeDelegate2 = [(ASDAudioDevice *)self configurationChangeDelegate];
  v6 = [configurationChangeDelegate2 configurationChangePendingForObject:self];

  return v6;
}

- (id)concurrentQueue
{
  deviceManager = [(ASDTAudioDevice *)self deviceManager];
  concurrentQueue = [deviceManager concurrentQueue];

  if (!concurrentQueue)
  {
    concurrentQueue = +[ASDTDeviceManager concurrentQueue];
  }

  return concurrentQueue;
}

- (ASDTDeviceManager)deviceManager
{
  WeakRetained = objc_loadWeakRetained(self + 72);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 59) = 850045863;
  *(self + 30) = 0u;
  *(self + 31) = 0u;
  *(self + 32) = 0u;
  *(self + 66) = 0;
  return self;
}

+ (void)deviceForConfig:withDeviceManager:andPlugin:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_241659000, v3, v4, "Invalid subclass name: %@", v5);
}

- (void)initWithConfig:withDeviceManager:andPlugin:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Failed subclass init with config: %@", v4, v5);
}

- (void)initWithConfig:withDeviceManager:andPlugin:.cold.2()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Failed creating PM sequencer with config: %@", v4, v5);
}

- (void)addCustomProperties:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Failed creating custom property with config: %@", v4, v5);
}

- (void)addControls:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Failed creating control with config: %@", v4, v5);
}

- (void)addStreams:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Failed to create stream for config:\n%@", v4, v5);
}

- (void)_updateSafetyOffsets:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_debug_impl(&dword_241659000, v6, OS_LOG_TYPE_DEBUG, "%@: Output safety offset: %u frames", v5, 0x12u);
}

- (void)_updateSafetyOffsets:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_debug_impl(&dword_241659000, v6, OS_LOG_TYPE_DEBUG, "%@: Input safety offset: %u frames", v5, 0x12u);
}

- (void)performStartIO
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_241659000, v3, v4, "%@: Cannot StartIO: device is sleeping.", v5);
}

- (void)performStopIO
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_241659000, v3, v4, "IOThread dictionary not empty. Contents: %@", v5);
}

@end