@interface ASDDSPAudioDevice
+ (id)dspItemsInConfiguration:(id)configuration notInConfiguration:(id)inConfiguration;
- (ASDDSPAudioDevice)initWithDeviceUID:(id)d underlyingDevice:(id)device deviceDSPDatabase:(id)database plugin:(id)plugin;
- (BOOL)applyDeviceDSPConfiguration:(id)configuration;
- (BOOL)applyStreamDSPConfiguration:(id)configuration toStream:(id)stream;
- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block;
- (BOOL)underlyingDeviceHasAllProperties:(id)properties;
- (BOOL)updateDeviceDSPConfiguration;
- (id)findDSPConfigurationForCurrentState;
- (id)willDoReadInputBlock;
- (id)willDoWriteMixBlock;
- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case;
- (void)addInputStream:(id)stream;
- (void)addOutputStream:(id)stream;
- (void)changedProperty:(const AudioObjectPropertyAddress *)property forObject:(id)object;
- (void)removeInputStream:(id)stream;
- (void)removeOutputStream:(id)stream;
- (void)updateDeviceDSPConfiguration;
@end

@implementation ASDDSPAudioDevice

- (ASDDSPAudioDevice)initWithDeviceUID:(id)d underlyingDevice:(id)device deviceDSPDatabase:(id)database plugin:(id)plugin
{
  v50 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  databaseCopy = database;
  v46.receiver = self;
  v46.super_class = ASDDSPAudioDevice;
  v13 = [(ASDAudioDevice *)&v46 initWithDeviceUID:d withPlugin:plugin];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_underlyingDevice, device);
    objc_storeStrong(&v14->_dspDatabase, database);
    referencedUnderlyingDeviceProperties = [(ASDAudioDeviceDSPDatabase *)v14->_dspDatabase referencedUnderlyingDeviceProperties];
    v16 = [(ASDDSPAudioDevice *)v14 underlyingDeviceHasAllProperties:referencedUnderlyingDeviceProperties];

    if (v16)
    {
      [deviceCopy setConfigurationChangeDelegate:v14];
      [deviceCopy setPropertyChangedDelegate:v14];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      inputStreams = [deviceCopy inputStreams];
      v18 = [inputStreams countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v43;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v43 != v20)
            {
              objc_enumerationMutation(inputStreams);
            }

            [*(*(&v42 + 1) + 8 * i) setPropertyChangedDelegate:v14];
          }

          v19 = [inputStreams countByEnumeratingWithState:&v42 objects:v49 count:16];
        }

        while (v19);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      outputStreams = [deviceCopy outputStreams];
      v23 = [outputStreams countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(outputStreams);
            }

            [*(*(&v38 + 1) + 8 * j) setPropertyChangedDelegate:v14];
          }

          v24 = [outputStreams countByEnumeratingWithState:&v38 objects:v48 count:16];
        }

        while (v24);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      controls = [deviceCopy controls];
      v28 = [controls countByEnumeratingWithState:&v34 objects:v47 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v35;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(controls);
            }

            [*(*(&v34 + 1) + 8 * k) setPropertyChangedDelegate:v14];
          }

          v29 = [controls countByEnumeratingWithState:&v34 objects:v47 count:16];
        }

        while (v29);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASDDSPAudioDevice initWithDeviceUID:v14 underlyingDevice:? deviceDSPDatabase:? plugin:?];
      }

      controls = v14;
      v14 = 0;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)underlyingDeviceHasAllProperties:(id)properties
{
  v73 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = [propertiesCopy countByEnumeratingWithState:&v42 objects:v72 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v43;
    v9 = 1;
    v10 = MEMORY[0x277D86220];
    *&v6 = 138415362;
    v29 = v6;
    do
    {
      v11 = 0;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(propertiesCopy);
        }

        v12 = *(*(&v42 + 1) + 8 * v11);
        v41 = 0;
        audioObjectPropertyAddress = 0;
        audioObjectPropertyAddress = [v12 audioObjectPropertyAddress];
        v41 = v13;
        if (![(ASDAudioDevice *)self->_underlyingDevice hasProperty:&audioObjectPropertyAddress])
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            deviceUID = [(ASDAudioDevice *)self deviceUID];
            if ([v12 selector] < 0x20000000)
            {
              v38 = 32;
            }

            else
            {
              if ([v12 selector] > 2130706431)
              {
                v14 = 32;
              }

              else
              {
                v14 = [v12 selector] >> 24;
              }

              v38 = v14;
            }

            if (([v12 selector] << 8) < 0x20000000 || (objc_msgSend(v12, "selector") << 8) > 2130706431)
            {
              v15 = 32;
            }

            else
            {
              v15 = ([v12 selector] << 8) >> 24;
            }

            v37 = v15;
            if ([v12 selector] < 0x2000 || objc_msgSend(v12, "selector") > 32511)
            {
              v16 = 32;
            }

            else
            {
              v16 = [v12 selector] >> 8;
            }

            v36 = v16;
            if ([v12 selector] < 32 || objc_msgSend(v12, "selector") == 127)
            {
              selector = 32;
            }

            else
            {
              selector = [v12 selector];
            }

            v35 = selector;
            if ([v12 scope] < 0x20000000 || objc_msgSend(v12, "scope") > 2130706431)
            {
              v18 = 32;
            }

            else
            {
              v18 = [v12 scope] >> 24;
            }

            v34 = v18;
            if (([v12 scope] << 8) < 0x20000000 || (objc_msgSend(v12, "scope") << 8) > 2130706431)
            {
              v19 = 32;
            }

            else
            {
              v19 = ([v12 scope] << 8) >> 24;
            }

            v33 = v19;
            if ([v12 scope] < 0x2000 || objc_msgSend(v12, "scope") > 32511)
            {
              v20 = 32;
            }

            else
            {
              v20 = [v12 scope] >> 8;
            }

            v32 = v20;
            if ([v12 scope] < 32 || objc_msgSend(v12, "scope") == 127)
            {
              scope = 32;
            }

            else
            {
              scope = [v12 scope];
            }

            v31 = scope;
            if ([v12 element] < 0x20000000 || objc_msgSend(v12, "element") > 2130706431)
            {
              v22 = 32;
            }

            else
            {
              v22 = [v12 element] >> 24;
            }

            v30 = v22;
            if (([v12 element] << 8) < 0x20000000 || (objc_msgSend(v12, "element") << 8) > 2130706431)
            {
              v23 = 32;
            }

            else
            {
              v23 = ([v12 element] << 8) >> 24;
            }

            if ([v12 element] < 0x2000 || objc_msgSend(v12, "element") > 32511)
            {
              v24 = 32;
            }

            else
            {
              v24 = [v12 element] >> 8;
            }

            if ([v12 element] < 32 || objc_msgSend(v12, "element") == 127)
            {
              element = 32;
            }

            else
            {
              element = [v12 element];
            }

            *buf = v29;
            v47 = deviceUID;
            v48 = 1024;
            v49 = v38;
            v50 = 1024;
            v51 = v37;
            v52 = 1024;
            v53 = v36;
            v54 = 1024;
            v55 = v35;
            v56 = 1024;
            v57 = v34;
            v58 = 1024;
            v59 = v33;
            v60 = 1024;
            v61 = v32;
            v62 = 1024;
            v63 = v31;
            v64 = 1024;
            v65 = v30;
            v66 = 1024;
            v67 = v23;
            v68 = 1024;
            v69 = v24;
            v70 = 1024;
            v71 = element;
            _os_log_error_impl(&dword_2415D8000, v10, OS_LOG_TYPE_ERROR, "Underlying device '%@' is missing property %c%c%c%c %c%c%c%c %c%c%c%c", buf, 0x54u);

            v9 = 0;
          }

          else
          {
            v9 = 0;
          }
        }

        ++v11;
      }

      while (v7 != v11);
      v26 = [propertiesCopy countByEnumeratingWithState:&v42 objects:v72 count:16];
      v7 = v26;
    }

    while (v26);
  }

  else
  {
    v9 = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)updateDeviceDSPConfiguration
{
  v40 = *MEMORY[0x277D85DE8];
  currentDSPConfiguration = [(ASDDSPAudioDevice *)self currentDSPConfiguration];
  findDSPConfigurationForCurrentState = [(ASDDSPAudioDevice *)self findDSPConfigurationForCurrentState];
  if ([findDSPConfigurationForCurrentState isEqual:currentDSPConfiguration])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412290;
      v35 = deviceUID;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP configuration remains unchanged on device '%@'", buf, 0xCu);
    }

LABEL_8:
    v9 = 1;
    goto LABEL_32;
  }

  if ([(ASDDSPAudioDevice *)self applyDeviceDSPConfiguration:findDSPConfigurationForCurrentState])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      name = [currentDSPConfiguration name];
      name2 = [findDSPConfigurationForCurrentState name];
      deviceUID2 = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412802;
      v35 = name;
      v36 = 2112;
      v37 = name2;
      v38 = 2112;
      v39 = deviceUID2;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP configuration changed from '%@' to '%@' on device '%@'", buf, 0x20u);
    }

    [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:findDSPConfigurationForCurrentState];
    goto LABEL_8;
  }

  if (![(ASDAudioDevice *)self isRunning])
  {
    [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    inputStreams = [(ASDAudioDevice *)self inputStreams];
    v11 = [inputStreams countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(inputStreams);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 removeHardwareDSP];
            [v15 setCurrentDSPConfiguration:0];
          }
        }

        v12 = [inputStreams countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    outputStreams = [(ASDAudioDevice *)self outputStreams];
    v17 = [outputStreams countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(outputStreams);
          }

          v21 = *(*(&v24 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 removeHardwareDSP];
            [v21 setCurrentDSPConfiguration:0];
          }
        }

        v18 = [outputStreams countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(ASDDSPAudioDevice *)findDSPConfigurationForCurrentState updateDeviceDSPConfiguration];
  }

  v9 = 0;
LABEL_32:

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)findDSPConfigurationForCurrentState
{
  v47 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  dspDatabase = [(ASDDSPAudioDevice *)self dspDatabase];
  dspConfigurations = [dspDatabase dspConfigurations];

  v30 = [dspConfigurations countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v30)
  {
    v29 = *v41;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v41 != v29)
      {
        objc_enumerationMutation(dspConfigurations);
      }

      v31 = v5;
      v6 = *(*(&v40 + 1) + 8 * v5);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      underlyingDeviceProperties = [v6 underlyingDeviceProperties];
      v8 = [underlyingDeviceProperties countByEnumeratingWithState:&v36 objects:v45 count:16];
      v9 = v6;
      if (v8)
      {
        v10 = v8;
        v11 = *v37;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(underlyingDeviceProperties);
            }

            v13 = *(*(&v36 + 1) + 8 * i);
            underlyingDevice = self->_underlyingDevice;
            address = [v13 address];
            v16 = [(ASDAudioDevice *)underlyingDevice getProperty:address];

            value = [v13 value];
            LOBYTE(address) = [v16 isEqual:value];

            if ((address & 1) == 0)
            {

              v9 = 0;
              goto LABEL_16;
            }
          }

          v10 = [underlyingDeviceProperties countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v9 = v6;
      }

LABEL_16:

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      dspDeviceProperties = [v6 dspDeviceProperties];
      v19 = [dspDeviceProperties countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v33;
        while (2)
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(dspDeviceProperties);
            }

            v23 = *(*(&v32 + 1) + 8 * j);
            address2 = [v23 address];
            v25 = [(ASDAudioDevice *)self getProperty:address2];

            value2 = [v23 value];
            LOBYTE(address2) = [v25 isEqual:value2];

            if ((address2 & 1) == 0)
            {

              goto LABEL_27;
            }
          }

          v20 = [dspDeviceProperties countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      if (v9)
      {
        break;
      }

LABEL_27:
      v5 = v31 + 1;
      if (v31 + 1 == v30)
      {
        v30 = [dspConfigurations countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (v30)
        {
          goto LABEL_3;
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    v9 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)applyDeviceDSPConfiguration:(id)configuration
{
  v49 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  inputStreams = [(ASDAudioDevice *)self inputStreams];
  v6 = [inputStreams countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v40;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(inputStreams);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          inputDSP = [configurationCopy inputDSP];
          v13 = [inputDSP count];

          if (v8 >= v13)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ASDDSPAudioDevice applyDeviceDSPConfiguration:?];
            }

LABEL_17:
            v18 = 0;
            goto LABEL_18;
          }

          inputDSP2 = [configurationCopy inputDSP];
          v15 = [inputDSP2 objectAtIndexedSubscript:v8];

          LOBYTE(inputDSP2) = [(ASDDSPAudioDevice *)self applyStreamDSPConfiguration:v15 toStream:v11];
          if ((inputDSP2 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          deviceUID = [(ASDAudioDevice *)self deviceUID];
          streamName = [v11 streamName];
          *buf = 138412546;
          v45 = deviceUID;
          v46 = 2112;
          v47 = streamName;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Stream '%@' isn't an ASDDSPStream, skipping.", buf, 0x16u);
        }

        ++v8;
      }

      v7 = [inputStreams countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_18:

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  outputStreams = [(ASDAudioDevice *)self outputStreams];
  v20 = [outputStreams countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v34 = v18;
    v22 = 0;
    v23 = *v36;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(outputStreams);
        }

        v25 = *(*(&v35 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          outputDSP = [configurationCopy outputDSP];
          v27 = [outputDSP count];

          if (v22 >= v27)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ASDDSPAudioDevice applyDeviceDSPConfiguration:?];
            }

LABEL_34:
            v18 = 0;
            goto LABEL_35;
          }

          outputDSP2 = [configurationCopy outputDSP];
          v29 = [outputDSP2 objectAtIndexedSubscript:v22];

          LOBYTE(outputDSP2) = [(ASDDSPAudioDevice *)self applyStreamDSPConfiguration:v29 toStream:v25];
          if ((outputDSP2 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          deviceUID2 = [(ASDAudioDevice *)self deviceUID];
          streamName2 = [v25 streamName];
          *buf = 138412546;
          v45 = deviceUID2;
          v46 = 2112;
          v47 = streamName2;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Stream '%@' isn't an ASDDSPStream, skipping.", buf, 0x16u);
        }

        ++v22;
      }

      v21 = [outputStreams countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

    v18 = v34;
  }

LABEL_35:

  v32 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)applyStreamDSPConfiguration:(id)configuration toStream:(id)stream
{
  v41 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = streamCopy;
    hardwareDSP = [configurationCopy hardwareDSP];
    currentDSPConfiguration = [v8 currentDSPConfiguration];
    hardwareDSP2 = [currentDSPConfiguration hardwareDSP];
    v12 = [ASDDSPAudioDevice dspItemsInConfiguration:hardwareDSP notInConfiguration:hardwareDSP2];

    if ([ASDAUStripInfo containsOnlyAUStrips:v12])
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v14)
      {
        v15 = v14;
        selfCopy = self;
        v31 = configurationCopy;
        v16 = *v33;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v32 + 1) + 8 * i);
            hardwareDSP3 = [v8 hardwareDSP];
            v20 = [ASDDSPGraphLoader applyAUStrip:v18 toGraph:hardwareDSP3];
          }

          v15 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v15);
        self = selfCopy;
        configurationCopy = v31;
      }

      else
      {
        v20 = 0;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        deviceUID = [(ASDAudioDevice *)self deviceUID];
        *buf = 138412290;
        v37 = deviceUID;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: New StreamDSPConfiguration contained only AUStrip differences", buf, 0xCu);
      }

      if (v20)
      {
LABEL_22:
        [v8 setCurrentDSPConfiguration:configurationCopy];
        v21 = 1;
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      hardwareDSP4 = [configurationCopy hardwareDSP];
      v23 = [ASDDSPGraphLoader graphWithConfiguration:hardwareDSP4];

      if (v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          name = [v23 name];
          deviceUID2 = [(ASDAudioDevice *)self deviceUID];
          *buf = 138412546;
          v37 = name;
          v38 = 2112;
          v39 = deviceUID2;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "New DSPGraph '%@' created on device '%@'", buf, 0x16u);
        }

        v26 = [v8 addHardwareDSP:v23];

        if (v26)
        {
          goto LABEL_22;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASDDSPAudioDevice applyStreamDSPConfiguration:? toStream:?];
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPAudioDevice applyStreamDSPConfiguration:? toStream:?];
    }

    v21 = 0;
    goto LABEL_28;
  }

  v21 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASDDSPAudioDevice currently only supports ASDDSPStreams.", buf, 2u);
    v21 = 0;
  }

LABEL_29:

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)dspItemsInConfiguration:(id)configuration notInConfiguration:(id)inConfiguration
{
  v33 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  inConfigurationCopy = inConfiguration;
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = configurationCopy;
  obj = [configurationCopy dspItems];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        dspItems = [inConfigurationCopy dspItems];
        v13 = [dspItems countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (!v13)
        {

LABEL_16:
          [array addObject:v11];
          continue;
        }

        v14 = v13;
        v15 = 0;
        v16 = *v24;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(dspItems);
            }

            v15 |= [v11 isEqual:*(*(&v23 + 1) + 8 * j)];
          }

          v14 = [dspItems countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v14);

        if ((v15 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x277D85DE8];

  return array;
}

- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case
{
  v21 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    underlyingStreams = [streamCopy underlyingStreams];
    v8 = [underlyingStreams countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(underlyingStreams);
          }

          v13 = [(ASDAudioDevice *)self->_underlyingDevice teardownIsolatedIOForStream:*(*(&v16 + 1) + 8 * i) useCase:case];
          if (v13)
          {
            v10 = v13;
          }
        }

        v9 = [underlyingStreams countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(ASDAudioDevice *)self->_underlyingDevice teardownIsolatedIOForStream:streamCopy useCase:case];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)addInputStream:(id)stream
{
  streamCopy = stream;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 addInputStream:streamCopy];
}

- (void)removeInputStream:(id)stream
{
  streamCopy = stream;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 removeInputStream:streamCopy];
}

- (void)addOutputStream:(id)stream
{
  streamCopy = stream;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 addOutputStream:streamCopy];
}

- (void)removeOutputStream:(id)stream
{
  streamCopy = stream;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 removeOutputStream:streamCopy];
}

- (id)willDoReadInputBlock
{
  hasInput = [(ASDAudioDevice *)self hasInput];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__ASDDSPAudioDevice_willDoReadInputBlock__block_invoke;
  v5[3] = &__block_descriptor_33_e14_i28__0I8_12_20l;
  v6 = hasInput;
  v3 = MEMORY[0x245CEBEA0](v5);

  return v3;
}

uint64_t __41__ASDDSPAudioDevice_willDoReadInputBlock__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a3 = *(a1 + 32);
  *a4 = 1;
  return 0;
}

- (id)willDoWriteMixBlock
{
  hasOutput = [(ASDAudioDevice *)self hasOutput];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ASDDSPAudioDevice_willDoWriteMixBlock__block_invoke;
  v5[3] = &__block_descriptor_33_e14_i28__0I8_12_20l;
  v6 = hasOutput;
  v3 = MEMORY[0x245CEBEA0](v5);

  return v3;
}

uint64_t __40__ASDDSPAudioDevice_willDoWriteMixBlock__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a3 = *(a1 + 32);
  *a4 = 1;
  return 0;
}

- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block
{
  blockCopy = block;
  plugin = [(ASDObject *)self plugin];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__ASDDSPAudioDevice_requestConfigurationChangeForDevice_withBlock___block_invoke;
  v9[3] = &unk_278CE42D0;
  v9[4] = self;
  v10 = blockCopy;
  v7 = blockCopy;
  LOBYTE(self) = [plugin requestConfigurationChangeForDevice:self withBlock:v9];

  return self;
}

uint64_t __67__ASDDSPAudioDevice_requestConfigurationChangeForDevice_withBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 updateDeviceDSPConfiguration];
}

- (void)changedProperty:(const AudioObjectPropertyAddress *)property forObject:(id)object
{
  v6 = [(ASDObject *)self plugin:property];
  [v6 changedProperty:property forObject:self];
}

- (void)initWithDeviceUID:(void *)a1 underlyingDevice:deviceDSPDatabase:plugin:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_2415D8000, MEMORY[0x277D86220], v2, "Underlying device '%@' doesn't have all properties specified in database.", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateDeviceDSPConfiguration
{
  v10 = *MEMORY[0x277D85DE8];
  name = [self name];
  deviceUID = [a2 deviceUID];
  v6 = 138412546;
  v7 = name;
  v8 = 2112;
  v9 = deviceUID;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DSP configuration '%@' couldn't be applied on device '%@'", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)applyDeviceDSPConfiguration:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_2415D8000, MEMORY[0x277D86220], v2, "Can't find an input stream configuration in database. The DSP device '%@' is now in an inconsistent state.", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)applyDeviceDSPConfiguration:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_2415D8000, MEMORY[0x277D86220], v2, "Can't find an output stream configuration in database. The DSP device '%@' is now in an inconsistent state.", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)applyStreamDSPConfiguration:(void *)a1 toStream:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_2415D8000, MEMORY[0x277D86220], v2, "%@: Graph is nil", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)applyStreamDSPConfiguration:(void *)a1 toStream:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_2415D8000, MEMORY[0x277D86220], v2, "Error adding hardware DSP. The DSP device '%@' is now in an inconsistent state.", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startIOForClient:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDDSPAudioDevice.m" lineNumber:358 description:@"Starting IO without a DSP configuration"];
}

- (void)startIOForClient:(uint64_t)a3 .cold.2(void *a1, objc_super *a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  a2->receiver = a1;
  a2->super_class = ASDDSPAudioDevice;
  v7 = [(objc_super *)a2 deviceUID];
  [v6 handleFailureInMethod:a3 object:a1 file:@"ASDDSPAudioDevice.m" lineNumber:365 description:{@"%@: ASDAudioDevice startIOForClient must succeed", v7}];
}

- (void)stopIOForClient:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDDSPAudioDevice.m" lineNumber:378 description:@"Stopping IO without a DSP configuration"];
}

- (void)stopIOForClient:(uint64_t)a3 .cold.2(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = [*a1 deviceUID];
  [v6 handleFailureInMethod:a2 object:a3 file:@"ASDDSPAudioDevice.m" lineNumber:385 description:{@"%@: Underlying stopIOForClient must succeed", v7}];
}

@end