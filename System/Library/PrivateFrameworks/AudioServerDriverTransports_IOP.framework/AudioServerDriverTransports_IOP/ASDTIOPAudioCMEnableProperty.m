@interface ASDTIOPAudioCMEnableProperty
+ (id)ioServiceDependenciesForConfig:(id)a3;
- (ASDTIOPAudioCMEnableProperty)initWithConfig:(id)a3;
- (BOOL)storePropertyValue:(id)a3;
- (id)retrievePropertyValue;
- (int)checkPropertyValue:(id)a3;
- (void)dealloc;
@end

@implementation ASDTIOPAudioCMEnableProperty

+ (id)ioServiceDependenciesForConfig:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 asdtServiceID];
  v5 = [(ASDTIOServiceManager *)ASDTIOPAudioCMServiceManager dependencyForID:v4 andConfiguration:v3];

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

- (ASDTIOPAudioCMEnableProperty)initWithConfig:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ASDTIOPAudioCMEnableProperty;
  v5 = [(ASDTCustomProperty *)&v16 initWithConfig:v4 propertyDataType:1918990199 qualifierDataType:0];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  [(ASDTCustomProperty *)v5 setPropertyValueSize:4];
  [(ASDTCustomProperty *)v6 setCacheMode:0];
  v7 = [v4 asdtServiceID];
  v8 = [(ASDTIOServiceManager *)ASDTIOPAudioCMServiceManager matchedIOServiceForID:v7];
  [(ASDTIOPAudioCMEnableProperty *)v6 setClientManager:v8];

  v9 = [(ASDTIOPAudioCMEnableProperty *)v6 clientManager];
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

  v11 = [(ASDTIOPAudioCMEnableProperty *)v6 clientManager];
  v12 = [v11 open];

  if ((v12 & 1) == 0)
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

  -[ASDTIOPAudioCMEnableProperty setEnableDirection:](v6, "setEnableDirection:", [v4 asdtIOPAudioCMEnablePropertyDirection]);

LABEL_5:
  v13 = v6;
LABEL_11:

  return v13;
}

- (void)dealloc
{
  v3 = [(ASDTIOPAudioCMEnableProperty *)self clientManager];
  [v3 close];

  v4.receiver = self;
  v4.super_class = ASDTIOPAudioCMEnableProperty;
  [(ASDTIOPAudioCMEnableProperty *)&v4 dealloc];
}

- (int)checkPropertyValue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASDTIOPAudioCMEnableProperty;
  v5 = [(ASDTCustomProperty *)&v10 checkPropertyValue:v4];
  if (!v5)
  {
    v6 = v4;
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
  v2 = [(ASDTIOPAudioCMEnableProperty *)self clientManager];
  [v2 getEnableState:&v6];

  v5 = v6;
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:4];

  return v3;
}

- (BOOL)storePropertyValue:(id)a3
{
  v4 = a3;
  v13 = 0;
  [v4 getBytes:&v13 length:4];
  v5 = v13;
  v6 = [(ASDTIOPAudioCMEnableProperty *)self clientManager];
  v7 = [(ASDTIOPAudioCMEnableProperty *)self enableDirection];
  if (!v5)
  {
    v10 = [v6 disableInDirection:v7];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = [v6 enableInDirection:v7];

  if ((v8 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12.receiver = self;
  v12.super_class = ASDTIOPAudioCMEnableProperty;
  v9 = [(ASDTCustomProperty *)&v12 storePropertyValue:v4];
LABEL_6:

  return v9;
}

@end