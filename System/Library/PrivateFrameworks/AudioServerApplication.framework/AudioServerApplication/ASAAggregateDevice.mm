@interface ASAAggregateDevice
- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDevice:(id)clockDevice withName:(id)name withUID:(id)d isPrivate:(BOOL)private withIsolatedUseCaseID:(unsigned int)iD;
- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDeviceUID:(id)d withName:(id)name withUID:(id)iD isPrivate:(BOOL)private withIsolatedUseCaseID:(unsigned int)caseID;
- (void)dealloc;
@end

@implementation ASAAggregateDevice

- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDevice:(id)clockDevice withName:(id)name withUID:(id)d isPrivate:(BOOL)private withIsolatedUseCaseID:(unsigned int)iD
{
  privateCopy = private;
  v120 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  deviceCopy = device;
  clockDeviceCopy = clockDevice;
  nameCopy = name;
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v119 = nameCopy;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASAAggregateDevice initWithDevices with ASAAudioDevice and Isolated usercase ID name = %@", buf, 0xCu);
  }

  if (!devicesCopy || ![devicesCopy count])
  {
    v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v27)
    {
      [(ASAAggregateDevice *)v27 initWithDevices:v28 usingMainDevice:v29 andClockDevice:v30 withName:v31 withUID:v32 isPrivate:v33 withIsolatedUseCaseID:v34];
    }

    goto LABEL_19;
  }

  if (!deviceCopy)
  {
    v46 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v46)
    {
      [(ASAAggregateDevice *)v46 initWithDevices:v47 usingMainDevice:v48 andClockDevice:v49 withName:v50 withUID:v51 isPrivate:v52 withIsolatedUseCaseID:v53];
    }

    goto LABEL_19;
  }

  if (!nameCopy || ![(__CFDictionary *)nameCopy length])
  {
    v38 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v38)
    {
      [(ASAAggregateDevice *)v38 initWithDevices:v39 usingMainDevice:v40 andClockDevice:v41 withName:v42 withUID:v43 isPrivate:v44 withIsolatedUseCaseID:v45];
    }

LABEL_19:
    selfCopy2 = 0;
    goto LABEL_20;
  }

  selfCopy = self;
  array = [MEMORY[0x277CBEB18] array];
  string = [MEMORY[0x277CCAB68] string];
  firstObject = [devicesCopy firstObject];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v92 = devicesCopy;
  v19 = devicesCopy;
  v20 = [v19 countByEnumeratingWithState:&v108 objects:v117 count:16];
  v91 = deviceCopy;
  v99 = clockDeviceCopy;
  v96 = nameCopy;
  v102 = dCopy;
  if (v20)
  {
    v21 = v20;
    v22 = *v109;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v109 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v108 + 1) + 8 * i);
        clockDomain = [firstObject clockDomain];
        if (clockDomain != [v24 clockDomain])
        {
          v26 = 0;
          goto LABEL_26;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v108 objects:v117 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v26 = 1;
LABEL_26:

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v19;
  v54 = [obj countByEnumeratingWithState:&v104 objects:v116 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = @"Aggregate";
    v57 = *v105;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v105 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v59 = *(*(&v104 + 1) + 8 * j);
        if (v26)
        {
          v60 = 0;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v119 = v96;
            _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "All devices in aggregate %@ share a clock domain, disabling drift compensation", buf, 0xCu);
            v60 = 0;
          }
        }

        else
        {
          deviceUID = [v99 deviceUID];
          deviceUID2 = [v59 deviceUID];
          v63 = [deviceUID isEqualToString:deviceUID2];

          v60 = v63 ^ 1u;
        }

        v114[0] = @"uid";
        deviceUID3 = [v59 deviceUID];
        v115[0] = deviceUID3;
        v114[1] = @"drift";
        v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v60];
        v115[1] = v65;
        v114[2] = @"drift quality";
        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:127];
        v115[2] = v66;
        v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:3];

        [array addObject:v67];
        if (!v102)
        {
          deviceUID4 = [v59 deviceUID];
          [string appendFormat:@"%@%@", v56, deviceUID4];
        }

        v56 = @":";
      }

      v55 = [obj countByEnumeratingWithState:&v104 objects:v116 count:16];
    }

    while (v55);
  }

  v69 = MEMORY[0x277CCACA8];
  clockDeviceCopy = v99;
  deviceUID5 = [v99 deviceUID];
  if (deviceUID5)
  {
    deviceUID6 = [v99 deviceUID];
    v72 = [v69 stringWithFormat:@"%@", deviceUID6];
  }

  else
  {
    v72 = [v69 stringWithFormat:@"%@", &stru_285341100];
  }

  deviceCopy = v91;
  dCopy = v102;

  v73 = MEMORY[0x277CCACA8];
  deviceUID7 = [v91 deviceUID];
  nameCopy = v96;
  if (deviceUID7)
  {
    deviceUID8 = [v91 deviceUID];
    v76 = [v73 stringWithFormat:@"%@", deviceUID8];
  }

  else
  {
    v76 = [v73 stringWithFormat:@"%@", &stru_285341100];
  }

  if (v102)
  {
    v77 = [MEMORY[0x277CCAB68] stringWithString:v102];
  }

  else
  {
    v77 = string;
  }

  v112[0] = @"name";
  v112[1] = @"uid";
  v113[0] = v96;
  v113[1] = v77;
  v78 = v77;
  v112[2] = @"clock";
  v112[3] = @"master";
  v113[2] = v72;
  v113[3] = v76;
  v98 = v76;
  v113[4] = array;
  v112[4] = @"subdevices";
  v112[5] = @"private";
  v79 = [MEMORY[0x277CCABB0] numberWithBool:privateCopy];
  v113[5] = v79;
  v112[6] = @"isolated use case";
  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:iD];
  v113[6] = v80;
  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v119 = v81;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Aggregate %@", buf, 0xCu);
  }

  obja = v72;
  v82 = +[ASACoreAudio sharedCoreAudioObject];
  v83 = [v82 pluginWithBundleID:@"com.apple.audio.V5"];
  v84 = [v83 audioDeviceObjectIDWithUID:v78];
  *buf = v84;
  if (v84 && !AudioHardwareDestroyAggregateDevice(v84))
  {
    while (1)
    {
      *buf = [v83 audioDeviceObjectIDWithUID:v78];
      if (!*buf)
      {
        break;
      }

      usleep(0x186A0u);
    }
  }

  AggregateDevice = AudioHardwareCreateAggregateDevice(v81, buf);
  if (AggregateDevice)
  {
    v86 = AggregateDevice;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASAAggregateDevice initWithDevices:v86 usingMainDevice:? andClockDevice:? withName:? withUID:? isPrivate:? withIsolatedUseCaseID:?];
    }

    v87 = 0;
  }

  else
  {
    v88 = *buf;
    v89 = v83;
    for (k = v78; v88 != [v89 audioDeviceObjectIDWithUID:k]; k = v78)
    {
      usleep(0x2710u);
      v88 = *buf;
      v89 = v83;
    }

    v87 = [(ASAAggregateDevice *)selfCopy initWithAudioObjectID:*buf];
  }

  self = v87;

  selfCopy2 = self;
  devicesCopy = v92;
LABEL_20:

  v36 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDeviceUID:(id)d withName:(id)name withUID:(id)iD isPrivate:(BOOL)private withIsolatedUseCaseID:(unsigned int)caseID
{
  privateCopy = private;
  v85 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  deviceCopy = device;
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v84 = nameCopy;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASAAggregateDevice initWithDevices with device UID and Isolated usercase ID name = %@", buf, 0xCu);
  }

  if (devicesCopy && [devicesCopy count])
  {
    if (deviceCopy && [deviceCopy length])
    {
      if (nameCopy && [nameCopy length])
      {
        HIDWORD(v74) = privateCopy;
        v75 = iDCopy;
        v76 = dCopy;
        selfCopy = self;
        v20 = +[ASACoreAudio sharedCoreAudioObject];
        array = [MEMORY[0x277CBEB18] array];
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v22 = devicesCopy;
        v23 = [v22 countByEnumeratingWithState:&v78 objects:v82 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v79;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v79 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [v20 audioDeviceWithUID:*(*(&v78 + 1) + 8 * i)];
              if (v27)
              {
                [array addObject:v27];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v78 objects:v82 count:16];
          }

          while (v24);
        }

        if ([array count])
        {
          v28 = [v20 audioDeviceWithUID:deviceCopy];
          dCopy = v76;
          self = selfCopy;
          if (v28)
          {
            v29 = v28;
            if (v76)
            {
              v30 = [v20 clockDeviceWithUID:v76];
            }

            else
            {
              v30 = 0;
            }

            LODWORD(v74) = caseID;
            iDCopy = v75;
            self = [(ASAAggregateDevice *)selfCopy initWithDevices:array usingMainDevice:v29 andClockDevice:v30 withName:nameCopy withUID:v75 isPrivate:HIDWORD(v74) withIsolatedUseCaseID:v74];

            selfCopy2 = self;
            goto LABEL_37;
          }

          v66 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v66)
          {
            [(ASAAggregateDevice *)v66 initWithDevices:v67 usingMainDevice:v68 andClockDeviceUID:v69 withName:v70 withUID:v71 isPrivate:v72 withIsolatedUseCaseID:v73];
          }
        }

        else
        {
          v58 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          dCopy = v76;
          self = selfCopy;
          if (v58)
          {
            [(ASAAggregateDevice *)v58 initWithDevices:v59 usingMainDevice:v60 andClockDeviceUID:v61 withName:v62 withUID:v63 isPrivate:v64 withIsolatedUseCaseID:v65];
          }
        }

        selfCopy2 = 0;
        iDCopy = v75;
LABEL_37:

        goto LABEL_29;
      }

      v47 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v47)
      {
        [(ASAAggregateDevice *)v47 initWithDevices:v48 usingMainDevice:v49 andClockDevice:v50 withName:v51 withUID:v52 isPrivate:v53 withIsolatedUseCaseID:v54];
      }
    }

    else
    {
      v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v39)
      {
        [(ASAAggregateDevice *)v39 initWithDevices:v40 usingMainDevice:v41 andClockDeviceUID:v42 withName:v43 withUID:v44 isPrivate:v45 withIsolatedUseCaseID:v46];
      }
    }
  }

  else
  {
    v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v31)
    {
      [(ASAAggregateDevice *)v31 initWithDevices:v32 usingMainDevice:v33 andClockDeviceUID:v34 withName:v35 withUID:v36 isPrivate:v37 withIsolatedUseCaseID:v38];
    }
  }

  selfCopy2 = 0;
LABEL_29:

  v56 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = [self objectID];
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to destroy aggregate device with object ID %d, error: 0x%x", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithAudioObjectID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASAAggregateDevice.m" lineNumber:26 description:@"Device object ID is not an aggregate device. Init with initWithDevices: instead"];
}

- (void)initWithDevices:(int)a1 usingMainDevice:andClockDevice:withName:withUID:isPrivate:withIsolatedUseCaseID:.cold.1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create aggregate with error 0x%x", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end