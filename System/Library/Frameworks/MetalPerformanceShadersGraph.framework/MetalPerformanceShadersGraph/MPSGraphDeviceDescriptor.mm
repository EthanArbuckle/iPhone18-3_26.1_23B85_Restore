@interface MPSGraphDeviceDescriptor
- (BOOL)hasANE;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTo:(id)to;
- (BOOL)supportsMXU;
- (MPSGraphDeviceDescriptor)initWithMPSGraphDevice:(id)device;
- (MPSGraphDeviceDescriptor)initWithSerializedProperties:(id)properties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initMetalDeviceWithGPUCoreCount:(int64_t)count architecture:(id)architecture;
@end

@implementation MPSGraphDeviceDescriptor

- (MPSGraphDeviceDescriptor)initWithMPSGraphDevice:(id)device
{
  deviceCopy = device;
  self->_type = [deviceCopy type];
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_type];
  [v5 addObject:v6];

  if (!self->_type)
  {
    v7 = MEMORY[0x1E696AEC0];
    aneSubType = [MEMORY[0x1E698CD58] aneSubType];
    aneSubTypeVariant = [MEMORY[0x1E698CD58] aneSubTypeVariant];
    aneSubTypeProductVariant = [MEMORY[0x1E698CD58] aneSubTypeProductVariant];
    v11 = [v7 stringWithFormat:@"%@%@%@", aneSubType, aneSubTypeVariant, aneSubTypeProductVariant];
    architecture = self->_architecture;
    self->_architecture = v11;

    lowercaseString = [(NSString *)self->_architecture lowercaseString];
    v14 = self->_architecture;
    self->_architecture = lowercaseString;

    self->_gpuCoreCount = -1;
    metalDevice = [deviceCopy metalDevice];
    MPSDevice = MPSDevice::GetMPSDevice();

    self->_gpuCoreCount = *(MPSDevice + 1480);
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v5 addObject:v17];

    [v5 addObject:self->_architecture];
  }

  v18 = [(MPSGraphDeviceDescriptor *)self initWithSerializedProperties:v5];

  return v18;
}

- (id)initMetalDeviceWithGPUCoreCount:(int64_t)count architecture:(id)architecture
{
  v12[3] = *MEMORY[0x1E69E9840];
  architectureCopy = architecture;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{count, v7}];
  v12[1] = v8;
  v12[2] = architectureCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  v10 = [(MPSGraphDeviceDescriptor *)self initWithSerializedProperties:v9];
  return v10;
}

- (MPSGraphDeviceDescriptor)initWithSerializedProperties:(id)properties
{
  propertiesCopy = properties;
  v18.receiver = self;
  v18.super_class = MPSGraphDeviceDescriptor;
  v5 = [(MPSGraphDeviceDescriptor *)&v18 init];
  if (v5)
  {
    v6 = [propertiesCopy copy];
    serializedProperties = v5->_serializedProperties;
    v5->_serializedProperties = v6;

    v8 = [propertiesCopy objectAtIndexedSubscript:0];
    v5->_preComputedHash = [v8 unsignedIntValue];

    v9 = [(NSArray *)v5->_serializedProperties objectAtIndexedSubscript:0];
    v5->_type = [v9 unsignedIntValue];

    if (!v5->_type)
    {
      v10 = [(NSArray *)v5->_serializedProperties objectAtIndexedSubscript:2];
      lowercaseString = [v10 lowercaseString];
      v5->_preComputedHash ^= [lowercaseString hash];

      v12 = [(NSArray *)v5->_serializedProperties objectAtIndexedSubscript:1];
      v5->_gpuCoreCount = [v12 longLongValue];

      v13 = [(NSArray *)v5->_serializedProperties objectAtIndexedSubscript:2];
      lowercaseString2 = [v13 lowercaseString];
      architecture = v5->_architecture;
      v5->_architecture = lowercaseString2;
    }

    v16 = v5;
  }

  return v5;
}

- (BOOL)hasANE
{
  architecture = [(MPSGraphDeviceDescriptor *)self architecture];
  v3 = architecture != 0;

  return v3;
}

- (BOOL)supportsMXU
{
  if (self->_type)
  {
    LOBYTE(v2) = 0;
    return v2;
  }

  v2 = [(NSString *)self->_architecture length];
  if (!v2)
  {
    return v2;
  }

  if ([(NSString *)self->_architecture characterAtIndex:0]== 104 && [(NSString *)self->_architecture length]!= 1)
  {
    v4 = objc_opt_new();
    v5 = 1;
    v6 = MEMORY[0x1E69E9830];
    while (1)
    {
      v7 = [(NSString *)self->_architecture length];
      architecture = self->_architecture;
      if (v5 >= v7)
      {
        break;
      }

      v9 = [(NSString *)architecture characterAtIndex:v5];
      if (v9 <= 0xFF && (*(v6 + 4 * v9 + 60) & 0x400) != 0)
      {
        [v4 appendFormat:@"%c", v9];
      }

      ++v5;
    }

    if ([(NSString *)architecture length]!= v5)
    {
      integerValue = [v4 integerValue];
      if (integerValue > 17)
      {
        v10 = 1;
        goto LABEL_20;
      }

      if (integerValue == 17)
      {
        v10 = [(NSString *)self->_architecture characterAtIndex:v5]!= 112;
        goto LABEL_20;
      }
    }

    v10 = 0;
LABEL_20:

    LOBYTE(v2) = v10;
    return v2;
  }

  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  if (toCopy)
  {
    v5 = [(MPSGraphDeviceDescriptor *)self isEqual:toCopy];

    return v5;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {

    return 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    serializedProperties = self->_serializedProperties;
    serializedProperties = [(MPSGraphDeviceDescriptor *)v5 serializedProperties];
    LOBYTE(serializedProperties) = [(NSArray *)serializedProperties isEqualToArray:serializedProperties];

    return serializedProperties;
  }

  else
  {

    return 0;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MPSGraphDeviceDescriptor alloc];
  serializedProperties = self->_serializedProperties;

  return [(MPSGraphDeviceDescriptor *)v4 initWithSerializedProperties:serializedProperties];
}

@end