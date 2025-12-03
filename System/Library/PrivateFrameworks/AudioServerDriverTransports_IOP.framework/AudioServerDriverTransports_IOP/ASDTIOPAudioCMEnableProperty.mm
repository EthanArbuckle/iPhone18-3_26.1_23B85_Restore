@interface ASDTIOPAudioCMEnableProperty
+ (id)ioServiceDependenciesForConfig:(id)config;
- (ASDTIOPAudioCMEnableProperty)initWithConfig:(id)config;
- (BOOL)storePropertyValue:(id)value;
- (id)retrievePropertyValue;
- (int)checkPropertyValue:(id)value;
- (void)dealloc;
@end

@implementation ASDTIOPAudioCMEnableProperty

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

- (ASDTIOPAudioCMEnableProperty)initWithConfig:(id)config
{
  configCopy = config;
  v16.receiver = self;
  v16.super_class = ASDTIOPAudioCMEnableProperty;
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
  [(ASDTIOPAudioCMEnableProperty *)v6 setClientManager:v8];

  clientManager = [(ASDTIOPAudioCMEnableProperty *)v6 clientManager];
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

  clientManager2 = [(ASDTIOPAudioCMEnableProperty *)v6 clientManager];
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

  -[ASDTIOPAudioCMEnableProperty setEnableDirection:](v6, "setEnableDirection:", [configCopy asdtIOPAudioCMEnablePropertyDirection]);

LABEL_5:
  v13 = v6;
LABEL_11:

  return v13;
}

- (void)dealloc
{
  clientManager = [(ASDTIOPAudioCMEnableProperty *)self clientManager];
  [clientManager close];

  v4.receiver = self;
  v4.super_class = ASDTIOPAudioCMEnableProperty;
  [(ASDTIOPAudioCMEnableProperty *)&v4 dealloc];
}

- (int)checkPropertyValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = ASDTIOPAudioCMEnableProperty;
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
  v6 = 0;
  clientManager = [(ASDTIOPAudioCMEnableProperty *)self clientManager];
  [clientManager getEnableState:&v6];

  v5 = v6;
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:4];

  return v3;
}

- (BOOL)storePropertyValue:(id)value
{
  valueCopy = value;
  v13 = 0;
  [valueCopy getBytes:&v13 length:4];
  v5 = v13;
  clientManager = [(ASDTIOPAudioCMEnableProperty *)self clientManager];
  enableDirection = [(ASDTIOPAudioCMEnableProperty *)self enableDirection];
  if (!v5)
  {
    v10 = [clientManager disableInDirection:enableDirection];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = [clientManager enableInDirection:enableDirection];

  if ((v8 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12.receiver = self;
  v12.super_class = ASDTIOPAudioCMEnableProperty;
  v9 = [(ASDTCustomProperty *)&v12 storePropertyValue:valueCopy];
LABEL_6:

  return v9;
}

@end