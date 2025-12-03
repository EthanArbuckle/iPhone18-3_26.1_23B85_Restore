@interface ASDTIOPAudioCMPowerStateProperty
+ (id)ioServiceDependenciesForConfig:(id)config;
- (ASDTIOPAudioCMPowerStateProperty)initWithConfig:(id)config;
- (BOOL)storePropertyValue:(id)value;
- (id)retrievePropertyValue;
- (int)checkPropertyValue:(id)value;
- (void)dealloc;
@end

@implementation ASDTIOPAudioCMPowerStateProperty

+ (id)ioServiceDependenciesForConfig:(id)config
{
  v9[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  asdtServiceID = [configCopy asdtServiceID];
  v5 = [(ASDTIOServiceManager *)ASDTIOPAudioCMServiceManager dependencyForID:asdtServiceID andConfiguration:configCopy];

  if (v5)
  {
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (ASDTIOPAudioCMPowerStateProperty)initWithConfig:(id)config
{
  configCopy = config;
  v16.receiver = self;
  v16.super_class = ASDTIOPAudioCMPowerStateProperty;
  v5 = [(ASDTCustomProperty *)&v16 initWithConfig:configCopy propertyDataType:1918990199 qualifierDataType:0];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  [(ASDTCustomProperty *)v5 setPropertyValueSize:4];
  [(ASDTCustomProperty *)v6 setCacheMode:0];
  asdtServiceID = [configCopy asdtServiceID];
  v8 = [(ASDTIOServiceManager *)ASDTIOPAudioCMServiceManager matchedIOServiceForID:asdtServiceID];
  [(ASDTIOPAudioCMPowerStateProperty *)v6 setClientManager:v8];

  clientManager = [(ASDTIOPAudioCMPowerStateProperty *)v6 clientManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v14 = ASDTIOPLogType();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOPAudioCMPowerStateProperty initWithConfig:v6];
    }

    goto LABEL_10;
  }

  clientManager2 = [(ASDTIOPAudioCMPowerStateProperty *)v6 clientManager];
  open = [clientManager2 open];

  if ((open & 1) == 0)
  {
    v14 = ASDTIOPLogType();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOPAudioCMPowerStateProperty initWithConfig:v6];
    }

LABEL_10:

    v13 = 0;
    goto LABEL_11;
  }

  -[ASDTIOPAudioCMPowerStateProperty setPowerStateEnabled:](v6, "setPowerStateEnabled:", [configCopy asdtIOPAudioCMPowerStatePropertyEnabled]);
  -[ASDTIOPAudioCMPowerStateProperty setPowerStateDisabled:](v6, "setPowerStateDisabled:", [configCopy asdtIOPAudioCMPowerStatePropertyDisabled]);
  -[ASDTIOPAudioCMPowerStateProperty setPowerStateDirection:](v6, "setPowerStateDirection:", [configCopy asdtIOPAudioCMPowerStatePropertyDirection]);

LABEL_5:
  v13 = v6;
LABEL_11:

  return v13;
}

- (void)dealloc
{
  clientManager = [(ASDTIOPAudioCMPowerStateProperty *)self clientManager];
  [clientManager close];

  v4.receiver = self;
  v4.super_class = ASDTIOPAudioCMPowerStateProperty;
  [(ASDTIOPAudioCMPowerStateProperty *)&v4 dealloc];
}

- (int)checkPropertyValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = ASDTIOPAudioCMPowerStateProperty;
  v5 = [(ASDTCustomProperty *)&v10 checkPropertyValue:valueCopy];
  if (!v5)
  {
    v6 = valueCopy;
    v7 = [v6 length];
    if (v7 == [(ASDTCustomProperty *)self propertyValueSize])
    {
      v5 = 0;
    }

    else
    {
      v8 = ASDTIOPLogType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ASDTIOPAudioCMPowerStateProperty *)self checkPropertyValue:v6];
      }

      v5 = 3;
    }
  }

  return v5;
}

- (id)retrievePropertyValue
{
  v8 = 0;
  clientManager = [(ASDTIOPAudioCMPowerStateProperty *)self clientManager];
  v4 = [clientManager getCurrentPowerState:&v8];

  v8 = (v4 & 1) != 0 && (v5 = v8, v5 == [(ASDTIOPAudioCMPowerStateProperty *)self powerStateEnabled]);
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v8 length:4];

  return v6;
}

- (BOOL)storePropertyValue:(id)value
{
  valueCopy = value;
  v11 = 0;
  [valueCopy getBytes:&v11 length:4];
  if (v11)
  {
    powerStateEnabled = [(ASDTIOPAudioCMPowerStateProperty *)self powerStateEnabled];
  }

  else
  {
    powerStateEnabled = [(ASDTIOPAudioCMPowerStateProperty *)self powerStateDisabled];
  }

  v6 = powerStateEnabled;
  clientManager = [(ASDTIOPAudioCMPowerStateProperty *)self clientManager];
  LODWORD(v6) = [clientManager makePowerRequestForState:v6 andDirection:{-[ASDTIOPAudioCMPowerStateProperty powerStateDirection](self, "powerStateDirection")}];

  if (v6)
  {
    v10.receiver = self;
    v10.super_class = ASDTIOPAudioCMPowerStateProperty;
    v8 = [(ASDTCustomProperty *)&v10 storePropertyValue:valueCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2416E9000, v2, v3, "%@: Failed to retrieve client manager service with identifier: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2416E9000, v2, v3, "%@: Failed to open client manager service with identifier: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)checkPropertyValue:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  [a2 length];
  OUTLINED_FUNCTION_1_0(&dword_2416E9000, v4, v5, "%@: set: Bad property data length: %lu", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end