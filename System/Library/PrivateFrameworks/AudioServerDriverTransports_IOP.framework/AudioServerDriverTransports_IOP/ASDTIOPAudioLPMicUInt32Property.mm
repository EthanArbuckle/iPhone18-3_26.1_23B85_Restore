@interface ASDTIOPAudioLPMicUInt32Property
- (ASDTIOPAudioLPMicDevice)lpMicDevice;
- (ASDTIOPAudioLPMicUInt32Property)initWithConfig:(id)a3;
- (BOOL)storePropertyValue:(id)a3;
- (id)retrievePropertyValue;
- (int)checkPropertyValue:(id)a3;
@end

@implementation ASDTIOPAudioLPMicUInt32Property

- (ASDTIOPAudioLPMicUInt32Property)initWithConfig:(id)a3
{
  v6.receiver = self;
  v6.super_class = ASDTIOPAudioLPMicUInt32Property;
  v3 = [(ASDTCustomProperty *)&v6 initWithConfig:a3 propertyDataType:1918990199 qualifierDataType:0];
  v4 = v3;
  if (v3)
  {
    [(ASDTCustomProperty *)v3 setCacheMode:0];
    [(ASDTCustomProperty *)v4 setPropertyValueSize:4];
  }

  return v4;
}

- (ASDTIOPAudioLPMicDevice)lpMicDevice
{
  v3 = [(ASDCustomProperty *)self owner];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(ASDCustomProperty *)self owner];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)checkPropertyValue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASDTIOPAudioLPMicUInt32Property;
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
        [(ASDTIOPAudioLPMicUInt32Property *)self checkPropertyValue:v6, v8];
      }

      v5 = 3;
    }
  }

  return v5;
}

- (BOOL)storePropertyValue:(id)a3
{
  v4 = a3;
  v10 = 0;
  [v4 getBytes:&v10 length:4];
  if (-[ASDCustomProperty selector](self, "selector") == 1634690413 && (-[ASDTIOPAudioLPMicUInt32Property lpMicDevice](self, "lpMicDevice"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 setEnabledChannelMask:v10], v5, v6))
  {
    v9.receiver = self;
    v9.super_class = ASDTIOPAudioLPMicUInt32Property;
    v7 = [(ASDTCustomProperty *)&v9 storePropertyValue:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)retrievePropertyValue
{
  v8 = 0;
  v3 = [(ASDTIOPAudioLPMicUInt32Property *)self lpMicDevice];
  if (v3)
  {
    v4 = [(ASDCustomProperty *)self selector];
    switch(v4)
    {
      case 0x616F656Du:
        if ([v3 getEnabledChannelMask:&v8])
        {
          goto LABEL_8;
        }

        break;
      case 0x646D7064u:
        v5 = [v3 maximumPastDataFrames];
        goto LABEL_7;
      case 0x64617064u:
        v5 = [v3 availablePastDataFrames];
LABEL_7:
        v8 = v5;
LABEL_8:
        v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v8 length:4];
        goto LABEL_11;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (void)checkPropertyValue:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 name];
  v7 = 138412546;
  v8 = v5;
  v9 = 2048;
  v10 = [a2 length];
  _os_log_error_impl(&dword_2416E9000, a3, OS_LOG_TYPE_ERROR, "%@: set: Bad property data length: %lu", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end