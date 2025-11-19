@interface ASDDSPAudioDevice
+ (id)dspItemsInConfiguration:(id)a3 notInConfiguration:(id)a4;
- (ASDDSPAudioDevice)initWithDeviceUID:(id)a3 underlyingDevice:(id)a4 deviceDSPDatabase:(id)a5 plugin:(id)a6;
- (BOOL)applyDeviceDSPConfiguration:(id)a3;
- (BOOL)applyStreamDSPConfiguration:(id)a3 toStream:(id)a4;
- (BOOL)requestConfigurationChangeForDevice:(id)a3 withBlock:(id)a4;
- (BOOL)underlyingDeviceHasAllProperties:(id)a3;
- (BOOL)updateDeviceDSPConfiguration;
- (id)findDSPConfigurationForCurrentState;
- (id)willDoReadInputBlock;
- (id)willDoWriteMixBlock;
- (int)teardownIsolatedIOForStream:(id)a3 useCase:(unint64_t)a4;
- (void)addInputStream:(id)a3;
- (void)addOutputStream:(id)a3;
- (void)changedProperty:(const AudioObjectPropertyAddress *)a3 forObject:(id)a4;
- (void)removeInputStream:(id)a3;
- (void)removeOutputStream:(id)a3;
- (void)updateDeviceDSPConfiguration;
@end

@implementation ASDDSPAudioDevice

- (ASDDSPAudioDevice)initWithDeviceUID:(id)a3 underlyingDevice:(id)a4 deviceDSPDatabase:(id)a5 plugin:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v46.receiver = self;
  v46.super_class = ASDDSPAudioDevice;
  v13 = [(ASDAudioDevice *)&v46 initWithDeviceUID:a3 withPlugin:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_underlyingDevice, a4);
    objc_storeStrong(&v14->_dspDatabase, a5);
    v15 = [(ASDAudioDeviceDSPDatabase *)v14->_dspDatabase referencedUnderlyingDeviceProperties];
    v16 = [(ASDDSPAudioDevice *)v14 underlyingDeviceHasAllProperties:v15];

    if (v16)
    {
      [v11 setConfigurationChangeDelegate:v14];
      [v11 setPropertyChangedDelegate:v14];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = [v11 inputStreams];
      v18 = [v17 countByEnumeratingWithState:&v42 objects:v49 count:16];
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
              objc_enumerationMutation(v17);
            }

            [*(*(&v42 + 1) + 8 * i) setPropertyChangedDelegate:v14];
          }

          v19 = [v17 countByEnumeratingWithState:&v42 objects:v49 count:16];
        }

        while (v19);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = [v11 outputStreams];
      v23 = [v22 countByEnumeratingWithState:&v38 objects:v48 count:16];
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
              objc_enumerationMutation(v22);
            }

            [*(*(&v38 + 1) + 8 * j) setPropertyChangedDelegate:v14];
          }

          v24 = [v22 countByEnumeratingWithState:&v38 objects:v48 count:16];
        }

        while (v24);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v27 = [v11 controls];
      v28 = [v27 countByEnumeratingWithState:&v34 objects:v47 count:16];
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
              objc_enumerationMutation(v27);
            }

            [*(*(&v34 + 1) + 8 * k) setPropertyChangedDelegate:v14];
          }

          v29 = [v27 countByEnumeratingWithState:&v34 objects:v47 count:16];
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

      v27 = v14;
      v14 = 0;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)underlyingDeviceHasAllProperties:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v72 count:16];
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
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v42 + 1) + 8 * v11);
        v41 = 0;
        v40 = 0;
        v40 = [v12 audioObjectPropertyAddress];
        v41 = v13;
        if (![(ASDAudioDevice *)self->_underlyingDevice hasProperty:&v40])
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v39 = [(ASDAudioDevice *)self deviceUID];
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
              v17 = 32;
            }

            else
            {
              v17 = [v12 selector];
            }

            v35 = v17;
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
              v21 = 32;
            }

            else
            {
              v21 = [v12 scope];
            }

            v31 = v21;
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
              v25 = 32;
            }

            else
            {
              v25 = [v12 element];
            }

            *buf = v29;
            v47 = v39;
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
            v71 = v25;
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
      v26 = [v4 countByEnumeratingWithState:&v42 objects:v72 count:16];
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
  v3 = [(ASDDSPAudioDevice *)self currentDSPConfiguration];
  v4 = [(ASDDSPAudioDevice *)self findDSPConfigurationForCurrentState];
  if ([v4 isEqual:v3])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412290;
      v35 = v5;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP configuration remains unchanged on device '%@'", buf, 0xCu);
    }

LABEL_8:
    v9 = 1;
    goto LABEL_32;
  }

  if ([(ASDDSPAudioDevice *)self applyDeviceDSPConfiguration:v4])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 name];
      v7 = [v4 name];
      v8 = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412802;
      v35 = v6;
      v36 = 2112;
      v37 = v7;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP configuration changed from '%@' to '%@' on device '%@'", buf, 0x20u);
    }

    [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:v4];
    goto LABEL_8;
  }

  if (![(ASDAudioDevice *)self isRunning])
  {
    [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [(ASDAudioDevice *)self inputStreams];
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 removeHardwareDSP];
            [v15 setCurrentDSPConfiguration:0];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [(ASDAudioDevice *)self outputStreams];
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v24 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 removeHardwareDSP];
            [v21 setCurrentDSPConfiguration:0];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(ASDDSPAudioDevice *)v4 updateDeviceDSPConfiguration];
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
  v3 = [(ASDDSPAudioDevice *)self dspDatabase];
  v4 = [v3 dspConfigurations];

  v30 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v30)
  {
    v29 = *v41;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v41 != v29)
      {
        objc_enumerationMutation(v4);
      }

      v31 = v5;
      v6 = *(*(&v40 + 1) + 8 * v5);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v7 = [v6 underlyingDeviceProperties];
      v8 = [v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
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
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v36 + 1) + 8 * i);
            underlyingDevice = self->_underlyingDevice;
            v15 = [v13 address];
            v16 = [(ASDAudioDevice *)underlyingDevice getProperty:v15];

            v17 = [v13 value];
            LOBYTE(v15) = [v16 isEqual:v17];

            if ((v15 & 1) == 0)
            {

              v9 = 0;
              goto LABEL_16;
            }
          }

          v10 = [v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
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
      v18 = [v6 dspDeviceProperties];
      v19 = [v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
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
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v32 + 1) + 8 * j);
            v24 = [v23 address];
            v25 = [(ASDAudioDevice *)self getProperty:v24];

            v26 = [v23 value];
            LOBYTE(v24) = [v25 isEqual:v26];

            if ((v24 & 1) == 0)
            {

              goto LABEL_27;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
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
        v30 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
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

- (BOOL)applyDeviceDSPConfiguration:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = [(ASDAudioDevice *)self inputStreams];
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v48 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v4 inputDSP];
          v13 = [v12 count];

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

          v14 = [v4 inputDSP];
          v15 = [v14 objectAtIndexedSubscript:v8];

          LOBYTE(v14) = [(ASDDSPAudioDevice *)self applyStreamDSPConfiguration:v15 toStream:v11];
          if ((v14 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(ASDAudioDevice *)self deviceUID];
          v17 = [v11 streamName];
          *buf = 138412546;
          v45 = v16;
          v46 = 2112;
          v47 = v17;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Stream '%@' isn't an ASDDSPStream, skipping.", buf, 0x16u);
        }

        ++v8;
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v48 count:16];
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
  v19 = [(ASDAudioDevice *)self outputStreams];
  v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v35 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [v4 outputDSP];
          v27 = [v26 count];

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

          v28 = [v4 outputDSP];
          v29 = [v28 objectAtIndexedSubscript:v22];

          LOBYTE(v28) = [(ASDDSPAudioDevice *)self applyStreamDSPConfiguration:v29 toStream:v25];
          if ((v28 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v30 = [(ASDAudioDevice *)self deviceUID];
          v31 = [v25 streamName];
          *buf = 138412546;
          v45 = v30;
          v46 = 2112;
          v47 = v31;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Stream '%@' isn't an ASDDSPStream, skipping.", buf, 0x16u);
        }

        ++v22;
      }

      v21 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
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

- (BOOL)applyStreamDSPConfiguration:(id)a3 toStream:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v6 hardwareDSP];
    v10 = [v8 currentDSPConfiguration];
    v11 = [v10 hardwareDSP];
    v12 = [ASDDSPAudioDevice dspItemsInConfiguration:v9 notInConfiguration:v11];

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
        v30 = self;
        v31 = v6;
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
            v19 = [v8 hardwareDSP];
            v20 = [ASDDSPGraphLoader applyAUStrip:v18 toGraph:v19];
          }

          v15 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v15);
        self = v30;
        v6 = v31;
      }

      else
      {
        v20 = 0;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(ASDAudioDevice *)self deviceUID];
        *buf = 138412290;
        v37 = v27;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: New StreamDSPConfiguration contained only AUStrip differences", buf, 0xCu);
      }

      if (v20)
      {
LABEL_22:
        [v8 setCurrentDSPConfiguration:v6];
        v21 = 1;
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      v22 = [v6 hardwareDSP];
      v23 = [ASDDSPGraphLoader graphWithConfiguration:v22];

      if (v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v23 name];
          v25 = [(ASDAudioDevice *)self deviceUID];
          *buf = 138412546;
          v37 = v24;
          v38 = 2112;
          v39 = v25;
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

+ (id)dspItemsInConfiguration:(id)a3 notInConfiguration:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v22 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = v5;
  obj = [v5 dspItems];
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
        v12 = [v6 dspItems];
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (!v13)
        {

LABEL_16:
          [v22 addObject:v11];
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
              objc_enumerationMutation(v12);
            }

            v15 |= [v11 isEqual:*(*(&v23 + 1) + 8 * j)];
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

  return v22;
}

- (int)teardownIsolatedIOForStream:(id)a3 useCase:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 underlyingStreams];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v7);
          }

          v13 = [(ASDAudioDevice *)self->_underlyingDevice teardownIsolatedIOForStream:*(*(&v16 + 1) + 8 * i) useCase:a4];
          if (v13)
          {
            v10 = v13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    v10 = [(ASDAudioDevice *)self->_underlyingDevice teardownIsolatedIOForStream:v6 useCase:a4];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)addInputStream:(id)a3
{
  v4 = a3;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 addInputStream:v4];
}

- (void)removeInputStream:(id)a3
{
  v4 = a3;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 removeInputStream:v4];
}

- (void)addOutputStream:(id)a3
{
  v4 = a3;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 addOutputStream:v4];
}

- (void)removeOutputStream:(id)a3
{
  v4 = a3;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 removeOutputStream:v4];
}

- (id)willDoReadInputBlock
{
  v2 = [(ASDAudioDevice *)self hasInput];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__ASDDSPAudioDevice_willDoReadInputBlock__block_invoke;
  v5[3] = &__block_descriptor_33_e14_i28__0I8_12_20l;
  v6 = v2;
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
  v2 = [(ASDAudioDevice *)self hasOutput];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ASDDSPAudioDevice_willDoWriteMixBlock__block_invoke;
  v5[3] = &__block_descriptor_33_e14_i28__0I8_12_20l;
  v6 = v2;
  v3 = MEMORY[0x245CEBEA0](v5);

  return v3;
}

uint64_t __40__ASDDSPAudioDevice_willDoWriteMixBlock__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a3 = *(a1 + 32);
  *a4 = 1;
  return 0;
}

- (BOOL)requestConfigurationChangeForDevice:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  v6 = [(ASDObject *)self plugin];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__ASDDSPAudioDevice_requestConfigurationChangeForDevice_withBlock___block_invoke;
  v9[3] = &unk_278CE42D0;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  LOBYTE(self) = [v6 requestConfigurationChangeForDevice:self withBlock:v9];

  return self;
}

uint64_t __67__ASDDSPAudioDevice_requestConfigurationChangeForDevice_withBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 updateDeviceDSPConfiguration];
}

- (void)changedProperty:(const AudioObjectPropertyAddress *)a3 forObject:(id)a4
{
  v6 = [(ASDObject *)self plugin:a3];
  [v6 changedProperty:a3 forObject:self];
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
  v3 = [a1 name];
  v4 = [a2 deviceUID];
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
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