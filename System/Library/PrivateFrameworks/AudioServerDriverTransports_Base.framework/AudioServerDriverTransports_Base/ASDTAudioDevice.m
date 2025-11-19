@interface ASDTAudioDevice
+ (id)deviceForConfig:(id)a3 withDeviceManager:(id)a4 andPlugin:(id)a5;
- (ASDTAudioDevice)initWithConfig:(id)a3 withDeviceManager:(id)a4 andPlugin:(id)a5;
- (ASDTDeviceManager)deviceManager;
- (BOOL)addControls:(id)a3;
- (BOOL)addCustomProperties:(id)a3;
- (BOOL)addPMDevices:(id)a3;
- (BOOL)addStreams:(id)a3;
- (BOOL)changeSamplingRate:(double)a3;
- (BOOL)configurationChangesPending;
- (BOOL)setupSamplingRates:(id)a3;
- (BOOL)updateCustomProperty:(id)a3 withAddress:(id)a4;
- (BOOL)userIsActive;
- (NSDictionary)status;
- (NSSet)relatedDeviceObjectIDs;
- (id).cxx_construct;
- (id)allStreams;
- (id)concurrentQueue;
- (id)customPropertyForAddress:(id)a3;
- (id)diagnosticDescriptionWithIndent:(id)a3 walkTree:(BOOL)a4;
- (id)objectsConformingToProtocol:(id)a3;
- (id)updateIOThreadStateChangeDescription:(id)a3;
- (id)willDoReadInputBlock;
- (id)willDoWriteMixBlock;
- (int)completeInitialization;
- (int)performPowerStatePrewarm:(int)a3;
- (int)performStartIO;
- (int)performStopIO;
- (int)systemCompletedPowerOn;
- (int)systemSleepPending;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5;
- (unsigned)numberOfIOThreadsForUseCaseInDescription:(id)a3;
- (void)_updateSafetyOffsets:(double)a3;
- (void)addControl:(id)a3;
- (void)addCustomProperty:(id)a3;
- (void)addInputStream:(id)a3;
- (void)addOutputStream:(id)a3;
- (void)ioThreadStateChange:(id)a3;
- (void)objectsConformingAddObjects:(id)a3;
- (void)objectsConformingRemoveObjects:(id)a3;
- (void)performIOThreadStateChange:(id)a3;
- (void)performStartIO;
- (void)performStopIO;
- (void)removeControl:(id)a3;
- (void)removeCustomProperty:(id)a3;
- (void)removeInputStream:(id)a3;
- (void)removeOutputStream:(id)a3;
- (void)setInputLatencies:(id)a3;
- (void)setOutputLatencies:(id)a3;
- (void)setSamplingRate:(double)a3;
- (void)updateInputLatency;
- (void)updateOutputLatency;
@end

@implementation ASDTAudioDevice

+ (id)deviceForConfig:(id)a3 withDeviceManager:(id)a4 andPlugin:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 asdtSubclass];
  if (([(objc_class *)v10 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v11 = [[v10 alloc] initWithConfig:v7 withDeviceManager:v8 andPlugin:v9];
  }

  else
  {
    v12 = ASDTBaseLogType();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v7 objectForKeyedSubscript:@"Subclass"];
      objc_claimAutoreleasedReturnValue();
      +[ASDTAudioDevice deviceForConfig:withDeviceManager:andPlugin:];
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (ASDTAudioDevice)initWithConfig:(id)a3 withDeviceManager:(id)a4 andPlugin:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 asdtDeviceUID];
  if (!v11)
  {
    goto LABEL_20;
  }

  v41.receiver = self;
  v41.super_class = ASDTAudioDevice;
  self = [(ASDAudioDevice *)&v41 initWithDeviceUID:v11 withPlugin:v10];
  if (self)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    [(ASDTAudioDevice *)self setIoThreads:v12];

    -[ASDAudioDevice setCanBeDefaultInputDevice:](self, "setCanBeDefaultInputDevice:", [v8 asdtCanBeDefaultInputDevice]);
    -[ASDAudioDevice setCanBeDefaultOutputDevice:](self, "setCanBeDefaultOutputDevice:", [v8 asdtCanBeDefaultOutputDevice]);
    -[ASDAudioDevice setCanBeDefaultSystemDevice:](self, "setCanBeDefaultSystemDevice:", [v8 asdtCanBeDefaultSystemDevice]);
    [(ASDTAudioDevice *)self setDeviceManager:v9];
    -[ASDAudioDevice setClockDomain:](self, "setClockDomain:", [v8 asdtClockDomain]);
    v13 = [v8 asdtName];
    [(ASDAudioDevice *)self setDeviceName:v13];

    [(ASDAudioDevice *)self setManufacturerName:@"Apple Inc."];
    v14 = [v8 asdtDeviceModel];
    [(ASDAudioDevice *)self setModelName:v14];

    -[ASDAudioDevice setTransportType:](self, "setTransportType:", [v8 asdtTransportType]);
    -[ASDTAudioDevice setPmOrderPowerUp:](self, "setPmOrderPowerUp:", [v8 asdtPMOrderWithDefaultForPowerUp:1]);
    -[ASDTAudioDevice setPmOrderPowerDown:](self, "setPmOrderPowerDown:", [v8 asdtPMOrderWithDefaultForPowerUp:0]);
    -[ASDTAudioDevice setPmNoStateChangeOnFailure:](self, "setPmNoStateChangeOnFailure:", [v8 asdtPMNoStateChangeOnFailure]);
    [(ASDTAudioDevice *)self setPowerState:0];
    v15 = [v8 asdtRelatedDeviceUIDs];
    [(ASDTAudioDevice *)self setRelatedDeviceUIDs:v15];

    v16 = [v8 asdtExclavesSensorName];
    [(ASDTAudioDevice *)self setExclavesSensorName:v16];

    v17 = [(ASDAudioDevice *)self modelName];
    LODWORD(v16) = v17 == 0;

    if (v16)
    {
      v18 = [(ASDAudioDevice *)self deviceUID];
      [(ASDAudioDevice *)self setModelName:v18];
    }

    v19 = [(ASDAudioDevice *)self deviceName];
    v20 = v19 == 0;

    if (v20)
    {
      v21 = [(ASDAudioDevice *)self modelName];
      [(ASDAudioDevice *)self setDeviceName:v21];
    }

    [(ASDTAudioDevice *)self setWillDoReadInputInPlace:1];
    [(ASDTAudioDevice *)self setWillDoWriteMixInPlace:1];
    if ([(ASDTAudioDevice *)self setupSamplingRates:v8])
    {
      v22 = [v8 asdtCustomProperties];
      v23 = [(ASDTAudioDevice *)self addCustomProperties:v22];

      if (v23)
      {
        v24 = [v8 asdtControls];
        v25 = [(ASDTAudioDevice *)self addControls:v24];

        if (v25)
        {
          v26 = [v8 asdtStreams];
          v27 = [(ASDTAudioDevice *)self addStreams:v26];

          if (v27)
          {
            v28 = [v8 asdtPMDevices];
            v29 = [ASDTPMSequencer pmSequencerWithPMDeviceConfig:v28 withParent:self];
            [(ASDTAudioDevice *)self setPmSequencer:v29];

            v30 = [(ASDTAudioDevice *)self pmSequencer];
            v31 = v30 == 0;

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
              if ([(ASDTAudioDevice *)self subclassInitWithConfig:v8])
              {
                v32 = [(ASDAudioDevice *)self samplingRates];
                v33 = [v8 asdtInputLatenciesForSamplingRates:v32];
                [(ASDTAudioDevice *)self setInputLatencies:v33];

                v34 = [v8 asdtOutputLatenciesForSamplingRates:v32];
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
    v37 = 0;
    goto LABEL_21;
  }

LABEL_14:
  self = self;
  v37 = self;
LABEL_21:

  v39 = *MEMORY[0x277D85DE8];
  return v37;
}

- (BOOL)setupSamplingRates:(id)a3
{
  v4 = a3;
  v9 = 0.0;
  [objc_opt_class() defaultSamplingRate];
  v8 = 0;
  v5 = [v4 asdtSamplingRate:&v9 andSamplingRates:&v8 withDefault:?];
  v6 = v8;
  if (v5)
  {
    [(ASDTAudioDevice *)self setSamplingRate:v9];
    [(ASDAudioDevice *)self setSamplingRates:v6];
  }

  return v5;
}

- (void)objectsConformingAddObjects:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v26 = a3;
  std::mutex::lock((self + 472));
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = self;
  v4 = [(ASDTAudioDevice *)self protocolMap];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v9 = v26;
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
          v18 = [(ASDTAudioDevice *)v24 protocolMap];
          v19 = [v18 objectForKey:v8];
          v20 = [v17 setWithArray:v19];

          [v20 unionSet:v11];
          v21 = [v20 allObjects];
          if (v21)
          {
            v22 = [(ASDTAudioDevice *)v24 protocolMap];
            [v22 setObject:v21 forKey:v8];
          }

          goto LABEL_22;
        }

LABEL_23:
        v7 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  std::mutex::unlock((v24 + 472));
  v23 = *MEMORY[0x277D85DE8];
}

- (void)objectsConformingRemoveObjects:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v26 = a3;
  std::mutex::lock((self + 472));
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = self;
  v4 = [(ASDTAudioDevice *)self protocolMap];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v9 = v26;
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
          v18 = [(ASDTAudioDevice *)v24 protocolMap];
          v19 = [v18 objectForKey:v8];
          v20 = [v17 setWithArray:v19];

          [v20 minusSet:v11];
          v21 = [v20 allObjects];
          if (v21)
          {
            v22 = [(ASDTAudioDevice *)v24 protocolMap];
            [v22 setObject:v21 forKey:v8];
          }

          goto LABEL_22;
        }

LABEL_23:
        v7 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  std::mutex::unlock((v24 + 472));
  v23 = *MEMORY[0x277D85DE8];
}

- (id)objectsConformingToProtocol:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  std::mutex::lock((self + 472));
  v40 = self;
  v39 = NSStringFromProtocol(v4);
  v5 = [(ASDTAudioDevice *)self protocolMap];
  v6 = [v5 objectForKey:v39];

  if (!v6)
  {
    v35 = [(ASDTAudioDevice *)self allStreams];
    v38 = [(ASDAudioDevice *)self controls];
    v37 = [(ASDTAudioDevice *)self customProperties];
    v7 = [(ASDTAudioDevice *)self pmSequencer];
    v36 = [v7 pmDevicesPowerUp];

    v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v38, "count") + objc_msgSend(v35, "count") + objc_msgSend(v37, "count") + objc_msgSend(v36, "count")}];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v9 = v35;
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
          if ([v13 conformsToProtocol:v4])
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
    v14 = v38;
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
          if ([v18 conformsToProtocol:v4])
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
    v19 = v37;
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
          if ([v23 conformsToProtocol:v4])
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
    v24 = v36;
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
          if ([v28 conformsToProtocol:v4])
          {
            [v8 addObject:v28];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v25);
    }

    v6 = [v8 allObjects];
    v29 = [(ASDTAudioDevice *)v40 protocolMap];
    v30 = v29 == 0;

    if (v30)
    {
      v31 = [MEMORY[0x277CBEB38] dictionary];
      [(ASDTAudioDevice *)v40 setProtocolMap:v31];
    }

    v32 = [(ASDTAudioDevice *)v40 protocolMap];
    [v32 setObject:v6 forKey:v39];
  }

  std::mutex::unlock((v40 + 472));
  v33 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addCustomProperty:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDTAudioDevice *)&v7 addCustomProperty:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 addedToDevice:self];
  }

  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingAddObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeCustomProperty:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDTAudioDevice *)&v7 removeCustomProperty:v4];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingRemoveObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)addCustomProperties:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = a3;
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
          v6 = ASDTBaseLogType();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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
        v6 = [(ASDTAudioDevice *)self customProperties];
        v7 = [v6 countByEnumeratingWithState:&v34 objects:v62 count:16];
        if (v7)
        {
          v8 = *v35;
          while (2)
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v35 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v34 + 1) + 8 * j);
              v11 = [v10 address];
              v12 = [v5 address];
              v13 = [v11 isEqual:v12];

              if (v13)
              {
                v15 = ASDTBaseLogType();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  v32 = [(ASDAudioDevice *)self deviceUID];
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
                    v21 = [v10 selector];
                  }

                  else
                  {
                    v21 = 32;
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
                    v25 = [v10 scope];
                  }

                  else
                  {
                    v25 = 32;
                  }

                  v26 = [v10 element];
                  *buf = 138414594;
                  v43 = v32;
                  v44 = 1024;
                  v45 = v30;
                  v46 = 1024;
                  v47 = v28;
                  v48 = 1024;
                  v49 = v20;
                  v50 = 1024;
                  v51 = v21;
                  v52 = 1024;
                  v53 = v22;
                  v54 = 1024;
                  v55 = v23;
                  v56 = 1024;
                  v57 = v24;
                  v58 = 1024;
                  v59 = v25;
                  v60 = 1024;
                  v61 = v26;
                  _os_log_error_impl(&dword_241659000, v15, OS_LOG_TYPE_ERROR, "%@: Device already has property '%c%c%c%c' with scope '%c%c%c%c' and element %u", buf, 0x42u);
                }

                goto LABEL_20;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v34 objects:v62 count:16];
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

- (void)addControl:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 addControl:v4];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingAddObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeControl:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 removeControl:v4];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingRemoveObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)addControls:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
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

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)addInputStream:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 addInputStream:v4];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingAddObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeInputStream:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 removeInputStream:v4];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingRemoveObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addOutputStream:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 addOutputStream:v4];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingAddObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeOutputStream:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v7 removeOutputStream:v4];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(ASDTAudioDevice *)self objectsConformingRemoveObjects:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)addStreams:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
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

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)addPMDevices:(id)a3
{
  v4 = a3;
  v5 = [(ASDTAudioDevice *)self pmSequencer];
  v6 = [v5 addPMDevicesWithConfig:v4];

  v7 = [(ASDTAudioDevice *)self pmSequencer];
  v8 = [v7 pmDevicesPowerUp];
  [(ASDTAudioDevice *)self objectsConformingAddObjects:v8];

  return v6;
}

- (void)updateInputLatency
{
  v3 = [(ASDTAudioDevice *)self inputLatencies];

  if (v3)
  {
    v4 = MEMORY[0x277CCABB0];
    [(ASDAudioDevice *)self samplingRate];
    v7 = [v4 numberWithDouble:?];
    v5 = [(ASDTAudioDevice *)self inputLatencies];
    v6 = [v5 objectForKey:v7];
    -[ASDAudioDevice setInputLatency:](self, "setInputLatency:", [v6 unsignedIntValue]);
  }
}

- (void)updateOutputLatency
{
  v3 = [(ASDTAudioDevice *)self outputLatencies];

  if (v3)
  {
    v4 = MEMORY[0x277CCABB0];
    [(ASDAudioDevice *)self samplingRate];
    v7 = [v4 numberWithDouble:?];
    v5 = [(ASDTAudioDevice *)self outputLatencies];
    v6 = [v5 objectForKey:v7];
    -[ASDAudioDevice setOutputLatency:](self, "setOutputLatency:", [v6 unsignedIntValue]);
  }
}

- (void)setInputLatencies:(id)a3
{
  objc_storeStrong(self + 69, a3);

  [(ASDTAudioDevice *)self updateInputLatency];
}

- (void)setOutputLatencies:(id)a3
{
  objc_storeStrong(self + 70, a3);

  [(ASDTAudioDevice *)self updateOutputLatency];
}

- (void)_updateSafetyOffsets:(double)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = [(ASDAudioDevice *)self outputStreams];
  v5 = [v4 count];

  if (v5)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [(ASDAudioDevice *)self outputStreams];
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 safetyOffset];
          if (v13 <= v9)
          {
            v9 = v9;
          }

          else
          {
            v9 = v13;
          }

          v8 = 1;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);

    if (v8)
    {
      [(ASDAudioDevice *)self setOutputSafetyOffset:v9];
      v6 = ASDTBaseLogType();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTAudioDevice _updateSafetyOffsets:];
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  v14 = [(ASDAudioDevice *)self inputStreams];
  v15 = [v14 count] == 0;

  if (!v15)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [(ASDAudioDevice *)self inputStreams];
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v25 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [v22 safetyOffset];
          if (v23 <= v19)
          {
            v19 = v19;
          }

          else
          {
            v19 = v23;
          }

          v18 = 1;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);

    if (v18)
    {
      [(ASDAudioDevice *)self setInputSafetyOffset:v19];
      v16 = ASDTBaseLogType();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
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

- (void)setSamplingRate:(double)a3
{
  v4.receiver = self;
  v4.super_class = ASDTAudioDevice;
  [(ASDAudioDevice *)&v4 setSamplingRate:a3];
  [(ASDTAudioDevice *)self updateInputLatency];
  [(ASDTAudioDevice *)self updateOutputLatency];
}

- (BOOL)changeSamplingRate:(double)a3
{
  objc_initWeak(&location, self);
  [(ASDAudioDevice *)self samplingRate];
  if (v5 != a3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__ASDTAudioDevice_changeSamplingRate___block_invoke;
    v7[3] = &unk_278CE66F8;
    objc_copyWeak(v8, &location);
    v8[1] = *&a3;
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
  v3 = [(ASDAudioDevice *)self hasInput];
  v4 = [(ASDTAudioDevice *)self willDoReadInputInPlace];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__ASDTAudioDevice_willDoReadInputBlock__block_invoke;
  aBlock[3] = &__block_descriptor_34_e14_i28__0I8_12_20l;
  v8 = v3;
  v9 = v4;
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
  v3 = [(ASDAudioDevice *)self hasOutput];
  v4 = [(ASDTAudioDevice *)self willDoWriteMixInPlace];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__ASDTAudioDevice_willDoWriteMixBlock__block_invoke;
  aBlock[3] = &__block_descriptor_34_e14_i28__0I8_12_20l;
  v8 = v3;
  v9 = v4;
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
  v3 = [(ASDAudioDevice *)self inputStreams];
  v4 = [(ASDAudioDevice *)self outputStreams];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (int)performPowerStatePrewarm:(int)a3
{
  v5 = [(ASDTAudioDevice *)self streamPowerStateTransition:?];
  if (a3 == 1970304877 && ![(ASDAudioDevice *)self isRunning])
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
  v3 = [(ASDTAudioDevice *)self pmSequencer];
  v4 = [v3 powerState];

  if (v4 != 1936483696)
  {
    v7 = [(ASDAudioDevice *)self configurationChangeDelegate];
    v8 = [v7 conformsToProtocol:&unk_28535AA38];

    if (v8)
    {
      v9 = [(ASDAudioDevice *)self configurationChangeDelegate];
      if ([v9 configurationChangeRunningForObject:self])
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

    v11 = [(ASDTAudioDevice *)self pmSequencer];
    v6 = [v11 executeSequenceToState:1920298606];

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
  v3 = [(ASDTAudioDevice *)self pmSequencer];
  v4 = [(ASDTAudioDevice *)self pmSequencer];
  v5 = [v3 executeSequenceToState:{objc_msgSend(v4, "quiescentState")}];

  v6 = [(ASDTAudioDevice *)self ioThreads];
  v7 = [v6 count];

  if (v7)
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ASDTAudioDevice *)self ioThreads];
      objc_claimAutoreleasedReturnValue();
      [ASDTAudioDevice performStopIO];
    }

    v9 = [(ASDTAudioDevice *)self ioThreads];
    [v9 removeAllObjects];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)completeInitialization
{
  v2 = [(ASDTAudioDevice *)self pmSequencer];
  v3 = [v2 executeSequenceToState:1767990132];

  return v3;
}

- (id)updateIOThreadStateChangeDescription:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 asdtIOThreadChangeEvent];
  v7 = [v5 asdtIOThreadChangeIsolatedUseCase];
  v33 = [v5 asdtIOThreadChangeContextID];
  v8 = [(ASDTAudioDevice *)self ioThreads];

  if (!v8)
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASDTAudioDevice updateIOThreadStateChangeDescription:v9];
    }

    v10 = [(ASDTAudioDevice *)self ioThreads];
    v11 = v10 == 0;

    if (v11)
    {
      v32 = [MEMORY[0x277CCA890] currentHandler];
      [v32 handleFailureInMethod:a2 object:self file:@"ASDTAudioDevice.mm" lineNumber:712 description:@"Failed to allocate self.ioThreads"];
    }
  }

  v12 = [(ASDTAudioDevice *)self ioThreads];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v14 = [v12 objectForKey:v13];

  if (v6 == 1937010544)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v33];
    [v14 removeObject:v21];

    if (v14 && ![v14 count])
    {
      v22 = [(ASDTAudioDevice *)self ioThreads];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
      [v22 removeObjectForKey:v23];

      v14 = 0;
    }

    v19 = [v14 count] == 0;
    v20 = "stop";
  }

  else if (v6 == 1937011316)
  {
    if (!v14)
    {
      v15 = [MEMORY[0x277CBEB58] setWithCapacity:2];
      v16 = [(ASDTAudioDevice *)self ioThreads];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
      [v16 setObject:v15 forKey:v17];

      v14 = v15;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v33];
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
  v25 = [v5 mutableCopy];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
  [v25 setObject:v26 forKey:@"useCaseThreadCount"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  [v25 setObject:v27 forKey:@"isFirstOrWasLast"];

  v28 = ASDTBaseLogType();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(ASDAudioDevice *)self deviceUID];
    *buf = 138413314;
    v35 = v29;
    v36 = 1024;
    v37 = v33;
    v38 = 2080;
    v39 = v20;
    v40 = 1024;
    v41 = v7;
    v42 = 1024;
    v43 = v24;
    _os_log_impl(&dword_241659000, v28, OS_LOG_TYPE_DEFAULT, "%@: Thread context %u %s with use case %u, count: %u", buf, 0x28u);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)ioThreadStateChange:(id)a3
{
  v4 = a3;
  v5 = [(ASDAudioDevice *)self ioReferenceQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ASDTAudioDevice_ioThreadStateChange___block_invoke;
  v7[3] = &unk_278CE6740;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __39__ASDTAudioDevice_ioThreadStateChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateIOThreadStateChangeDescription:*(a1 + 40)];
  [*(a1 + 32) performIOThreadStateChange:?];
}

- (void)performIOThreadStateChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(ASDTAudioDevice *)self allStreams];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 ioThreadStateChange:v4];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unsigned)numberOfIOThreadsForUseCaseInDescription:(id)a3
{
  v4 = a3;
  LODWORD(self) = -[ASDTAudioDevice numberOfIOThreadsForUseCaseID:](self, "numberOfIOThreadsForUseCaseID:", [v4 asdtIOThreadChangeIsolatedUseCase]);

  return self;
}

- (int)systemSleepPending
{
  v2 = [(ASDTAudioDevice *)self pmSequencer];
  v3 = [v2 executeSequenceToState:1936483696];

  return v3;
}

- (int)systemCompletedPowerOn
{
  v3 = [(ASDTAudioDevice *)self pmSequencer];
  v4 = [(ASDTAudioDevice *)self pmSequencer];
  v5 = [v3 executeSequenceToState:objc_msgSend(v4 fromState:{"quiescentState"), 1936483696}];

  return v5;
}

- (BOOL)userIsActive
{
  v2 = [(ASDTAudioDevice *)self deviceManager];
  v3 = [v2 userIsActive];

  return v3;
}

- (id)diagnosticDescriptionWithIndent:(id)a3 walkTree:(BOOL)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v75.receiver = self;
  v75.super_class = ASDTAudioDevice;
  v58 = a3;
  v62 = [ASDAudioDevice diagnosticDescriptionWithIndent:sel_diagnosticDescriptionWithIndent_walkTree_ walkTree:?];
  v5 = v58;
  v6 = [(ASDTAudioDevice *)self inputLatencies];
  v7 = [v6 count] == 0;

  if (!v7)
  {
    [v62 appendFormat:@"%@|    input latencies (sampeRate : frames):\n", v58];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v8 = [(ASDTAudioDevice *)self inputLatencies];
    v9 = [v8 allKeys];

    v10 = [v9 countByEnumeratingWithState:&v71 objects:v78 count:16];
    if (v10)
    {
      v11 = *v72;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v72 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v71 + 1) + 8 * i);
          v14 = [(ASDTAudioDevice *)self inputLatencies];
          v15 = [v14 objectForKeyedSubscript:v13];

          [v13 doubleValue];
          [v62 appendFormat:@"%@|        %6.0lf : %u\n", v58, v16, objc_msgSend(v15, "unsignedIntValue")];
        }

        v10 = [v9 countByEnumeratingWithState:&v71 objects:v78 count:16];
      }

      while (v10);
    }
  }

  v17 = [(ASDTAudioDevice *)self outputLatencies];
  v18 = [v17 count] == 0;

  if (!v18)
  {
    [v62 appendFormat:@"%@|    output latencies (sampleRate : frames):\n", v58];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v19 = [(ASDTAudioDevice *)self outputLatencies];
    v20 = [v19 allKeys];

    v21 = [v20 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v21)
    {
      v22 = *v68;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v68 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v67 + 1) + 8 * j);
          v25 = [(ASDTAudioDevice *)self outputLatencies];
          v26 = [v25 objectForKeyedSubscript:v24];

          [v24 doubleValue];
          [v62 appendFormat:@"%@|        %6.0lf : %u\n", v58, v27, objc_msgSend(v26, "unsignedIntValue")];
        }

        v21 = [v20 countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v21);
    }
  }

  [v62 appendFormat:@"%@|    Custom Properties:\n", v58];
  v28 = [(ASDTAudioDevice *)self customProperties];
  v29 = [v28 count] == 0;

  if (!v29)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v30 = [(ASDTAudioDevice *)self customProperties];
    obj = v30;
    v31 = [v30 countByEnumeratingWithState:&v63 objects:v76 count:16];
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
              v46 = [v34 selector];
            }

            else
            {
              v46 = 32;
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
              v50 = [v34 scope];
            }

            else
            {
              v50 = 32;
            }

            v51 = [v34 element];
            v52 = [v34 value];
            [v62 appendFormat:@"%@|        %u: %c%c%c%c (%c%c%c%c, %u): %@\n", v58, v32, v61, v55, v45, v46, v47, v48, v49, v50, v51, v52];
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
              v39 = [v34 selector];
            }

            else
            {
              v39 = 32;
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
              v43 = [v34 scope];
            }

            else
            {
              v43 = 32;
            }

            [v62 appendFormat:@"%@|        %u: %c%c%c%c (%c%c%c%c, %u) (value unknown)\n", v58, v32, v60, v37, v38, v39, v40, v41, v42, v43, objc_msgSend(v34, "element")];
          }

          v32 = (v32 + 1);
          ++v33;
        }

        while (v59 != v33);
        v30 = obj;
        v31 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v31);
    }

    v5 = v58;
  }

  v53 = *MEMORY[0x277D85DE8];

  return v62;
}

- (id)customPropertyForAddress:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v10 = [v9 address];
        v11 = [v10 selector];
        if (v11 == [v4 selector])
        {
          v12 = [v10 element];
          if (v12 == [v4 element])
          {
            v13 = [v10 scope];
            if (v13 == [v4 scope])
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

- (BOOL)updateCustomProperty:(id)a3 withAddress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 address];

  if (v8)
  {
    v9 = [v6 address];

    v7 = v9;
  }

  v10 = [(ASDTAudioDevice *)self customPropertyForAddress:v7];
  v11 = v10;
  if (v10 == v6)
  {
    goto LABEL_9;
  }

  if (!v6)
  {
    [(ASDTAudioDevice *)self removeCustomProperty:v10];
LABEL_13:
    v15 = 1;
    goto LABEL_14;
  }

  if (!v10)
  {
LABEL_12:
    [(ASDTAudioDevice *)self addCustomProperty:v6];
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [(ASDTAudioDevice *)self removeCustomProperty:v11];
    goto LABEL_12;
  }

  v12 = [v11 value];
  v13 = [v6 value];
  v14 = [v12 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    v17 = [v6 propertyValue];
    [v11 setPropertyValue:v17];

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

  v5 = [(ASDTAudioDevice *)self plugin];
  v6 = [(ASDTAudioDevice *)self relatedDeviceUIDs];
  v7 = [v5 objectIDsForDeviceUIDs:v6];
  [v3 unionSet:v7];

  v8 = [v3 copy];

  return v8;
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5
{
  if (!a3)
  {
    return 0;
  }

  if (a3->mSelector == 1634429294)
  {
    v5 = [(ASDTAudioDevice *)self relatedDeviceObjectIDs];
    v6 = 4 * [v5 count];
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
  v3 = 0;
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

        v7 = [*(*(&v11 + 1) + 8 * i) status];
        if (v7)
        {
          if (!v3)
          {
            v3 = [MEMORY[0x277CBEB38] dictionary];
          }

          [v3 addEntriesFromDictionary:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = [v3 copy];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)configurationChangesPending
{
  v3 = [(ASDAudioDevice *)self configurationChangeDelegate];
  v4 = [v3 conformsToProtocol:&unk_28535AA38];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ASDAudioDevice *)self configurationChangeDelegate];
  v6 = [v5 configurationChangePendingForObject:self];

  return v6;
}

- (id)concurrentQueue
{
  v2 = [(ASDTAudioDevice *)self deviceManager];
  v3 = [v2 concurrentQueue];

  if (!v3)
  {
    v3 = +[ASDTDeviceManager concurrentQueue];
  }

  return v3;
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