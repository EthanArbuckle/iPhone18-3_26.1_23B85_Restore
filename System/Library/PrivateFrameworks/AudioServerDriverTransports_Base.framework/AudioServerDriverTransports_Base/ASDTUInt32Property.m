@interface ASDTUInt32Property
- (ASDTUInt32Property)initWithConfig:(id)a3;
- (int)checkPropertyValue:(id)a3;
- (unsigned)uint32Value;
- (void)setUint32Value:(unsigned int)a3;
@end

@implementation ASDTUInt32Property

- (ASDTUInt32Property)initWithConfig:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASDTUInt32Property;
  v5 = [(ASDTCustomProperty *)&v11 initWithConfig:v4 propertyDataType:1918990199 qualifierDataType:0];
  v6 = v5;
  if (v5)
  {
    [(ASDTCustomProperty *)v5 setCacheMode:2];
    v10 = 0;
    v7 = [v4 asdtPropertyValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 unsignedIntValue];
    }

    [(ASDTCustomProperty *)v6 setPropertyValueSize:4];
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:4];
    [(ASDTCustomProperty *)v6 storePropertyValue:v8];
  }

  return v6;
}

- (unsigned)uint32Value
{
  v3 = [(ASDTCustomProperty *)self propertyValue];
  v4 = [(ASDTCustomProperty *)self propertyValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = *[v3 bytes];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUint32Value:(unsigned int)a3
{
  v5 = a3;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:4];
  [(ASDTCustomProperty *)self setPropertyValue:v4];
}

- (int)checkPropertyValue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASDTUInt32Property;
  v5 = [(ASDTCustomProperty *)&v8 checkPropertyValue:v4];
  if (!v5)
  {
    v6 = [v4 length];
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