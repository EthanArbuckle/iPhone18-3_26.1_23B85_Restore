@interface ASAAudioDevice
- (BOOL)acquireHogMode;
- (BOOL)canBeDefaultDevice;
- (BOOL)canBeDefaultInputDevice;
- (BOOL)canBeDefaultOutputDevice;
- (BOOL)canBeDefaultSystemDevice;
- (BOOL)createAudioProcID:(void *)a3 forIOProc:(void *)a4 withClientData:(void *)a5 error:(id *)a6;
- (BOOL)destroyAudioProcID:(void *)a3 error:(id *)a4;
- (BOOL)externalSecureMute;
- (BOOL)isAlive;
- (BOOL)isHidden;
- (BOOL)isReferenceStreamEnabled;
- (BOOL)isRunning;
- (BOOL)setInputStreamUsage:(id)a3 forAudioProc:(void *)a4;
- (BOOL)setOutputStreamUsage:(id)a3 forAudioProc:(void *)a4;
- (BOOL)startAudioProc:(void *)a3 error:(id *)a4;
- (BOOL)stopAudioProc:(void *)a3 error:(id *)a4;
- (BOOL)supportsHeySiri;
- (NSArray)controlObjectIDs;
- (NSArray)controls;
- (NSArray)inputStreamObjectIDs;
- (NSArray)inputStreams;
- (NSArray)nominalSampleRateRanges;
- (NSArray)nominalSampleRates;
- (NSArray)outputStreamObjectIDs;
- (NSArray)outputStreams;
- (NSArray)relatedDeviceObjectIDs;
- (NSDictionary)aggregateDescription;
- (NSDictionary)clientDescription;
- (NSDictionary)deviceDescription;
- (NSDictionary)headsetInfo;
- (NSString)clockDeviceUID;
- (NSString)deviceUID;
- (NSString)manufacturer;
- (NSString)modelUID;
- (NSString)name;
- (NSURL)iconURL;
- (OS_os_workgroup)ioThreadOSWorkgroup;
- (double)actualSampleRate;
- (double)nominalSampleRate;
- (float)ioCycleUsage;
- (id)inputStreamUsageForAudioProc:(void *)a3;
- (id)outputStreamUsageForAudioProc:(void *)a3;
- (int)hogModeOwner;
- (unsigned)clockDomain;
- (unsigned)inputLatency;
- (unsigned)inputSafetyOffset;
- (unsigned)ioBufferFrameSize;
- (unsigned)isolatedUseCaseID;
- (unsigned)maximumIOBufferFrameSize;
- (unsigned)minimumIOBufferFrameSize;
- (unsigned)outputLatency;
- (unsigned)outputSafetyOffset;
- (unsigned)transportType;
- (unsigned)zeroTimestampPeriod;
- (void)setClientDescription:(id)a3;
- (void)setClockDeviceUID:(id)a3;
- (void)setEnableReferenceStream:(BOOL)a3;
- (void)setExternalSecureMute:(BOOL)a3;
- (void)setIoThreadOSWorkgroup:(id)a3;
- (void)setName:(id)a3;
- (void)setNominalSampleRate:(double)a3;
@end

@implementation ASAAudioDevice

- (NSString)name
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1819173229 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read name property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (void)setName:(id)a3
{
  v4 = a3;
  [(ASAObject *)self setMainGlobalProperty:1819173229 withData:&v4 ofSize:8 withQualifier:0 ofSize:0];
}

- (NSString)manufacturer
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1819107691 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read manufacturer property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (NSString)deviceUID
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1969841184 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read device UID property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (NSString)modelUID
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1836411236 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read model UID property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (unsigned)transportType
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1953653102 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read transport type property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)clockDomain
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1668049764 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read clock domain property\n", v3, 2u);
  }

  return v4;
}

- (BOOL)isAlive
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1818850926 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read is active property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)isRunning
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1735354734 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read is running property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)canBeDefaultDevice
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1684434036 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read can be default device property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)canBeDefaultInputDevice
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainInputProperty:1684434036 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read can be default device property (input)\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)canBeDefaultOutputDevice
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1684434036 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read can be default device property (output)\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)canBeDefaultSystemDevice
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1936092276 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read can be default system device property\n", v3, 2u);
  }

  return v4 != 0;
}

- (double)nominalSampleRate
{
  v5 = 8;
  v4 = 0.0;
  if (![(ASAObject *)self getMainGlobalProperty:1853059700 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read nominal sample rate property\n", v3, 2u);
  }

  return v4;
}

- (void)setNominalSampleRate:(double)a3
{
  v4 = a3;
  if (![(ASAObject *)self setMainGlobalProperty:1853059700 withData:&v4 ofSize:8 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not write nominal sample rate property\n", v3, 2u);
  }
}

- (BOOL)isHidden
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1751737454 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read is hidden property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)supportsHeySiri
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1685276755 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read supports Hey Siri property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)externalSecureMute
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1702392685 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read ExternalSecureMute property\n", v3, 2u);
  }

  return v4 != 0;
}

- (void)setExternalSecureMute:(BOOL)a3
{
  v4 = a3;
  if (![(ASAObject *)self setMainGlobalProperty:1702392685 withData:&v4 ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set kAudioDevicePropertyExternalSecureMute\n", v3, 2u);
  }
}

- (unsigned)inputLatency
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainInputProperty:1819569763 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read input latency property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)outputLatency
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1819569763 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read output latency property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)inputSafetyOffset
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainInputProperty:1935763060 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read input safety offset property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)outputSafetyOffset
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1935763060 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read output safety offset property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)zeroTimestampPeriod
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1919512167 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read zero timestamp period property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)ioBufferFrameSize
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1718839674 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read IO buffer frame size property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)minimumIOBufferFrameSize
{
  v6[0] = 0.0;
  v6[1] = 0.0;
  v5 = 16;
  if ([(ASAObject *)self getMainOutputProperty:1718843939 withData:v6 ofSize:&v5 withQualifier:0 ofSize:0])
  {
    return v6[0];
  }

  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v3)
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read IO buffer frame size range property\n", v4, 2u);
    return 0;
  }

  return result;
}

- (unsigned)maximumIOBufferFrameSize
{
  v5 = 0;
  v6 = 0.0;
  v4 = 16;
  if ([(ASAObject *)self getMainOutputProperty:1718843939 withData:&v5 ofSize:&v4 withQualifier:0 ofSize:0])
  {
    return v6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read IO buffer frame size range property\n", v3, 2u);
  }

  return -1;
}

- (OS_os_workgroup)ioThreadOSWorkgroup
{
  v6 = 8;
  v5 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1869838183 withData:&v5 ofSize:&v6 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read IO thread OS workgroup property", v4, 2u);
  }

  v2 = v5;

  return v2;
}

- (void)setIoThreadOSWorkgroup:(id)a3
{
  v4 = a3;
  [(ASAObject *)self setMainGlobalProperty:1869838183 withData:&v4 ofSize:8 withQualifier:0 ofSize:0];
}

- (float)ioCycleUsage
{
  v5 = 4;
  v4 = 0.0;
  if (![(ASAObject *)self getMainGlobalProperty:1852012899 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read io cycle usage property\n", v3, 2u);
  }

  return v4;
}

- (BOOL)isReferenceStreamEnabled
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1952542820 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read reference stream enabled property\n", v3, 2u);
  }

  return v4 != 0;
}

- (void)setEnableReferenceStream:(BOOL)a3
{
  v4 = a3;
  if (![(ASAObject *)self setMainOutputProperty:1952542820 withData:&v4 ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set reference stream enabled property\n", v3, 2u);
  }
}

- (int)hogModeOwner
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 4;
  if (![(ASAObject *)self getMainGlobalProperty:1869180523 withData:&v6 ofSize:&v7 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(ASAAudioDevice *)self deviceUID];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read hog mode property on %@", buf, 0xCu);
  }

  result = v6;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)acquireHogMode
{
  v5 = getpid();
  v3 = [(ASAAudioDevice *)self hogModeOwner];
  if (v3 == v5)
  {
    return 1;
  }

  if (v3 == -1)
  {
    return [(ASAObject *)self setMainGlobalProperty:1869180523 withData:&v5 ofSize:4 withQualifier:0 ofSize:0];
  }

  return 0;
}

- (double)actualSampleRate
{
  v5 = 8;
  v4 = 0.0;
  if (![(ASAObject *)self getMainGlobalProperty:1634955892 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read actual sample rate property\n", v3, 2u);
  }

  return v4;
}

- (NSArray)relatedDeviceObjectIDs
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1634429294 withQualifier:0 ofSize:0];
  v15 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0x231C7FADuLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1634429294 withData:v6 ofSize:&v15 withQualifier:0 ofSize:0];
    v8 = 0;
    if (v7)
    {
      v9 = v15;
      v8 = [MEMORY[0x277CBEB18] array];
      if (v9 >= 4)
      {
        v10 = v9 >> 2;
        v11 = v6;
        do
        {
          v12 = *v11++;
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
          [v8 addObject:v13];

          --v10;
        }

        while (v10);
      }
    }

    free(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)nominalSampleRates
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1853059619 withQualifier:0 ofSize:0];
  v15 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0x22349368uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1853059619 withData:v6 ofSize:&v15 withQualifier:0 ofSize:0];
    v8 = 0;
    if (v7)
    {
      v9 = v15;
      v8 = [MEMORY[0x277CBEB18] array];
      if (v9 >= 0x10)
      {
        v10 = v9 >> 4;
        v11 = v6 + 1;
        do
        {
          v12 = *(v11 - 1);
          if (v12 == *v11)
          {
            *&v12 = v12;
            v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
            [v8 addObject:v13];
          }

          v11 += 2;
          --v10;
        }

        while (v10);
      }
    }

    free(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)nominalSampleRateRanges
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1853059619 withQualifier:0 ofSize:0];
  v14 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0x62B44E26uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1853059619 withData:v6 ofSize:&v14 withQualifier:0 ofSize:0];
    v8 = 0;
    if (v7)
    {
      v9 = v14;
      v8 = [MEMORY[0x277CBEB18] array];
      if (v9 >= 0x10)
      {
        v10 = v9 >> 4;
        v11 = v6 + 1;
        do
        {
          v12 = [ASASampleRateRange rangeWithMinimum:*(v11 - 1) maximum:*v11];
          [v8 addObject:v12];

          v11 += 2;
          --v10;
        }

        while (v10);
      }
    }

    free(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)inputStreamObjectIDs
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainInputProperty:1937009955 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x1A7169B6uLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainInputProperty:1937009955 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          v10 = *v9++;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
          [v3 addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return v3;
}

- (NSArray)inputStreams
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(ASAAudioDevice *)self inputStreamObjectIDs];
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [ASAStream alloc];
        v11 = -[ASAObject initWithAudioObjectID:](v10, "initWithAudioObjectID:", [v9 unsignedIntValue]);
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)outputStreamObjectIDs
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainOutputProperty:1937009955 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0xF0EE4D5BuLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainOutputProperty:1937009955 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          v10 = *v9++;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
          [v3 addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return v3;
}

- (NSArray)outputStreams
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(ASAAudioDevice *)self outputStreamObjectIDs];
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [ASAStream alloc];
        v11 = -[ASAObject initWithAudioObjectID:](v10, "initWithAudioObjectID:", [v9 unsignedIntValue]);
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)controlObjectIDs
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1668575852 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x23347282uLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1668575852 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          v10 = *v9++;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
          [v3 addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return v3;
}

- (NSArray)controls
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [(ASAAudioDevice *)self controlObjectIDs];
  v3 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [ASAObject alloc];
        v11 = -[ASAObject initWithAudioObjectID:](v10, "initWithAudioObjectID:", [v9 unsignedIntValue]);
        v12 = [(ASAObject *)v11 baseClass];
        if (v12 > 1936483441)
        {
          if (v12 != 1936483442)
          {
            v13 = off_278CE2A50;
            if (v12 == 1953458028)
            {
              goto LABEL_15;
            }

            goto LABEL_12;
          }

          v13 = off_278CE2AA0;
        }

        else
        {
          if (v12 != 1818588780)
          {
            if (v12 == 1936483188)
            {
              v13 = off_278CE2A98;
              goto LABEL_15;
            }

LABEL_12:
            v13 = off_278CE2A68;
            goto LABEL_15;
          }

          v13 = off_278CE2A78;
        }

LABEL_15:
        v14 = [objc_alloc(*v13) initWithAudioObjectID:{-[ASAObject objectID](v11, "objectID")}];
        if (v14)
        {
          [v3 addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSURL)iconURL
{
  if (![(ASAObject *)self hasMainGlobalProperty:1768124270])
  {
    goto LABEL_7;
  }

  cf = 0;
  v6 = 8;
  if (![(ASAObject *)self getMainOutputProperty:1768124270 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read output icon property\n", v5, 2u);
  }

  if (cf)
  {
    v3 = [cf absoluteURL];
    CFRelease(cf);
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

  return v3;
}

- (NSString)clockDeviceUID
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1634755428 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read clock device UID property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (void)setClockDeviceUID:(id)a3
{
  v4 = a3;
  if (![(ASAObject *)self setMainGlobalProperty:1634755428 withData:&v4 ofSize:8 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read clock device UID property\n", v3, 2u);
  }
}

- (NSDictionary)aggregateDescription
{
  if ([(ASAAudioDevice *)self isAggregate])
  {
    v7 = 8;
    cf = 0;
    if ([(ASAObject *)self getMainGlobalProperty:1633906541 withData:&cf ofSize:&v7 withQualifier:0 ofSize:0])
    {
      if (cf)
      {
        v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
        CFRelease(cf);
        goto LABEL_8;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read aggregate description property\n", v5, 2u);
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (NSDictionary)headsetInfo
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1751474532 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read headset info property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (void)setClientDescription:(id)a3
{
  v4 = a3;
  if (![(ASAObject *)self setMainGlobalProperty:1667523955 withData:&v4 ofSize:8 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set client dictionary property\n", v3, 2u);
  }
}

- (NSDictionary)clientDescription
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1667523955 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read client description property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (NSDictionary)deviceDescription
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1684301171 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read device description property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (BOOL)createAudioProcID:(void *)a3 forIOProc:(void *)a4 withClientData:(void *)a5 error:(id *)a6
{
  IOProcID = AudioDeviceCreateIOProcID([(ASAObject *)self objectID], a4, a5, a3);
  v8 = IOProcID;
  if (a6 && IOProcID)
  {
    *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:IOProcID userInfo:0];
  }

  return v8 == 0;
}

- (BOOL)destroyAudioProcID:(void *)a3 error:(id *)a4
{
  v5 = AudioDeviceDestroyIOProcID([(ASAObject *)self objectID], a3);
  v6 = v5;
  if (a4 && v5)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
  }

  return v6 == 0;
}

- (BOOL)startAudioProc:(void *)a3 error:(id *)a4
{
  v5 = AudioDeviceStart([(ASAObject *)self objectID], a3);
  v6 = v5;
  if (a4 && v5)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
  }

  return v6 == 0;
}

- (BOOL)stopAudioProc:(void *)a3 error:(id *)a4
{
  v5 = AudioDeviceStop([(ASAObject *)self objectID], a3);
  v6 = v5;
  if (a4 && v5)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
  }

  return v6 == 0;
}

- (id)inputStreamUsageForAudioProc:(void *)a3
{
  v5 = [(ASAObject *)self sizeOfMainInputProperty:1937009955 withQualifier:0 ofSize:0];
  v14 = v5;
  if (v5 >= 4 && (v6 = v5, v14 = (v5 & 0xFFFFFFFC) + 12, (v7 = malloc_type_calloc(1uLL, v14, 0x1080040FC6463CFuLL)) != 0))
  {
    v8 = v7;
    *v7 = a3;
    v7[2] = v6 >> 2;
    v9 = [(ASAObject *)self getMainInputProperty:1937077093 withData:v7 ofSize:&v14 withQualifier:0 ofSize:0];
    v10 = 0;
    if (v9)
    {
      v10 = [MEMORY[0x277CBEB18] array];
      if (v8[2])
      {
        v11 = 0;
        do
        {
          v12 = [MEMORY[0x277CCABB0] numberWithBool:v8[v11 + 3] != 0];
          [v10 addObject:v12];

          ++v11;
        }

        while (v11 < v8[2]);
      }
    }

    free(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setInputStreamUsage:(id)a3 forAudioProc:(void *)a4
{
  v6 = a3;
  v7 = [v6 count];
  v8 = v7;
  if (v7 && (v9 = (4 * v7 + 12), (v10 = malloc_type_calloc(1uLL, v9, 0x1080040FC6463CFuLL)) != 0))
  {
    v11 = v10;
    v12 = 0;
    *v10 = a4;
    *(v10 + 2) = v8;
    do
    {
      v13 = [v6 objectAtIndexedSubscript:v12];
      v11[v12 + 3] = [v13 unsignedIntValue];

      ++v12;
    }

    while (v8 != v12);
    v14 = [(ASAObject *)self setMainInputProperty:1937077093 withData:v11 ofSize:v9 withQualifier:0 ofSize:0];
    free(v11);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)outputStreamUsageForAudioProc:(void *)a3
{
  v5 = [(ASAObject *)self sizeOfMainOutputProperty:1937009955 withQualifier:0 ofSize:0];
  v14 = v5;
  if (v5 >= 4 && (v6 = v5, v14 = (v5 & 0xFFFFFFFC) + 12, (v7 = malloc_type_calloc(1uLL, v14, 0x1080040FC6463CFuLL)) != 0))
  {
    v8 = v7;
    *v7 = a3;
    v7[2] = v6 >> 2;
    v9 = [(ASAObject *)self getMainOutputProperty:1937077093 withData:v7 ofSize:&v14 withQualifier:0 ofSize:0];
    v10 = 0;
    if (v9)
    {
      v10 = [MEMORY[0x277CBEB18] array];
      if (v8[2])
      {
        v11 = 0;
        do
        {
          v12 = [MEMORY[0x277CCABB0] numberWithBool:v8[v11 + 3] != 0];
          [v10 addObject:v12];

          ++v11;
        }

        while (v11 < v8[2]);
      }
    }

    free(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setOutputStreamUsage:(id)a3 forAudioProc:(void *)a4
{
  v6 = a3;
  v7 = [v6 count];
  v8 = v7;
  if (v7 && (v9 = (4 * v7 + 12), (v10 = malloc_type_calloc(1uLL, v9, 0x1080040FC6463CFuLL)) != 0))
  {
    v11 = v10;
    v12 = 0;
    *v10 = a4;
    *(v10 + 2) = v8;
    do
    {
      v13 = [v6 objectAtIndexedSubscript:v12];
      v11[v12 + 3] = [v13 unsignedIntValue];

      ++v12;
    }

    while (v8 != v12);
    v14 = [(ASAObject *)self setMainOutputProperty:1937077093 withData:v11 ofSize:v9 withQualifier:0 ofSize:0];
    free(v11);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unsigned)isolatedUseCaseID
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1769302372 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read Device isolate use case ID property\n", v3, 2u);
  }

  return v4;
}

@end