@interface ASDTUInt32Property
- (ASDTUInt32Property)initWithConfig:(id)config;
- (int)checkPropertyValue:(id)value;
- (unsigned)uint32Value;
- (void)setUint32Value:(unsigned int)value;
@end

@implementation ASDTUInt32Property

- (ASDTUInt32Property)initWithConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = ASDTUInt32Property;
  v5 = [(ASDTCustomProperty *)&v11 initWithConfig:configCopy propertyDataType:1918990199 qualifierDataType:0];
  v6 = v5;
  if (v5)
  {
    [(ASDTCustomProperty *)v5 setCacheMode:2];
    unsignedIntValue = 0;
    asdtPropertyValue = [configCopy asdtPropertyValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntValue = [asdtPropertyValue unsignedIntValue];
    }

    [(ASDTCustomProperty *)v6 setPropertyValueSize:4];
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:&unsignedIntValue length:4];
    [(ASDTCustomProperty *)v6 storePropertyValue:v8];
  }

  return v6;
}

- (unsigned)uint32Value
{
  propertyValue = [(ASDTCustomProperty *)self propertyValue];
  propertyValue2 = [(ASDTCustomProperty *)self propertyValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = *[propertyValue bytes];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUint32Value:(unsigned int)value
{
  valueCopy = value;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&valueCopy length:4];
  [(ASDTCustomProperty *)self setPropertyValue:v4];
}

- (int)checkPropertyValue:(id)value
{
  valueCopy = value;
  v8.receiver = self;
  v8.super_class = ASDTUInt32Property;
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

@end