@interface ASDTIOPAudioVTUInt32Property
- (ASDTIOPAudioVTUInt32Property)initWithConfig:(id)config;
- (BOOL)storePropertyValue:(id)value;
- (id)retrievePropertyValue;
- (int)checkPropertyValue:(id)value;
@end

@implementation ASDTIOPAudioVTUInt32Property

- (ASDTIOPAudioVTUInt32Property)initWithConfig:(id)config
{
  v6.receiver = self;
  v6.super_class = ASDTIOPAudioVTUInt32Property;
  v3 = [(ASDTIOPAudioVTProperty *)&v6 initWithConfig:config propertyDataType:1918990199 qualifierDataType:0];
  v4 = v3;
  if (v3)
  {
    [(ASDTCustomProperty *)v3 setPropertyValueSize:4];
    [(ASDTCustomProperty *)v4 setCacheMode:0];
  }

  return v4;
}

- (int)checkPropertyValue:(id)value
{
  valueCopy = value;
  v8.receiver = self;
  v8.super_class = ASDTIOPAudioVTUInt32Property;
  v5 = [(ASDTCustomProperty *)&v8 checkPropertyValue:valueCopy];
  if (!v5)
  {
    v6 = [valueCopy length];
    if (v6 == [(ASDTCustomProperty *)self propertyValueSize])
    {
      v5 = 0;
    }

    else
    {
      v5 = 3;
    }
  }

  return v5;
}

- (BOOL)storePropertyValue:(id)value
{
  valueCopy = value;
  v6 = *[value bytes];

  return [(ASDTIOPAudioVTUInt32Property *)self storeUInt32Value:v6];
}

- (id)retrievePropertyValue
{
  v4 = 0;
  if ([(ASDTIOPAudioVTUInt32Property *)self retrieveUInt32Value:&v4])
  {
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end