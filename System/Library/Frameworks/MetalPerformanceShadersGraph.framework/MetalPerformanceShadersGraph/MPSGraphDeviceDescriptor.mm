@interface MPSGraphDeviceDescriptor
- (BOOL)hasANE;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTo:(id)a3;
- (BOOL)supportsMXU;
- (MPSGraphDeviceDescriptor)initWithMPSGraphDevice:(id)a3;
- (MPSGraphDeviceDescriptor)initWithSerializedProperties:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initMetalDeviceWithGPUCoreCount:(int64_t)a3 architecture:(id)a4;
@end

@implementation MPSGraphDeviceDescriptor

- (MPSGraphDeviceDescriptor)initWithMPSGraphDevice:(id)a3
{
  v4 = a3;
  self->_type = [v4 type];
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_type];
  [v5 addObject:v6];

  if (!self->_type)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [MEMORY[0x1E698CD58] aneSubType];
    v9 = [MEMORY[0x1E698CD58] aneSubTypeVariant];
    v10 = [MEMORY[0x1E698CD58] aneSubTypeProductVariant];
    v11 = [v7 stringWithFormat:@"%@%@%@", v8, v9, v10];
    architecture = self->_architecture;
    self->_architecture = v11;

    v13 = [(NSString *)self->_architecture lowercaseString];
    v14 = self->_architecture;
    self->_architecture = v13;

    self->_gpuCoreCount = -1;
    v15 = [v4 metalDevice];
    MPSDevice = MPSDevice::GetMPSDevice();

    self->_gpuCoreCount = *(MPSDevice + 1480);
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v5 addObject:v17];

    [v5 addObject:self->_architecture];
  }

  v18 = [(MPSGraphDeviceDescriptor *)self initWithSerializedProperties:v5];

  return v18;
}

- (id)initMetalDeviceWithGPUCoreCount:(int64_t)a3 architecture:(id)a4
{
  v12[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{a3, v7}];
  v12[1] = v8;
  v12[2] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  v10 = [(MPSGraphDeviceDescriptor *)self initWithSerializedProperties:v9];
  return v10;
}

- (MPSGraphDeviceDescriptor)initWithSerializedProperties:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MPSGraphDeviceDescriptor;
  v5 = [(MPSGraphDeviceDescriptor *)&v18 init];
  if (v5)
  {
    v6 = [v4 copy];
    serializedProperties = v5->_serializedProperties;
    v5->_serializedProperties = v6;

    v8 = [v4 objectAtIndexedSubscript:0];
    v5->_preComputedHash = [v8 unsignedIntValue];

    v9 = [(NSArray *)v5->_serializedProperties objectAtIndexedSubscript:0];
    v5->_type = [v9 unsignedIntValue];

    if (!v5->_type)
    {
      v10 = [(NSArray *)v5->_serializedProperties objectAtIndexedSubscript:2];
      v11 = [v10 lowercaseString];
      v5->_preComputedHash ^= [v11 hash];

      v12 = [(NSArray *)v5->_serializedProperties objectAtIndexedSubscript:1];
      v5->_gpuCoreCount = [v12 longLongValue];

      v13 = [(NSArray *)v5->_serializedProperties objectAtIndexedSubscript:2];
      v14 = [v13 lowercaseString];
      architecture = v5->_architecture;
      v5->_architecture = v14;
    }

    v16 = v5;
  }

  return v5;
}

- (BOOL)hasANE
{
  v2 = [(MPSGraphDeviceDescriptor *)self architecture];
  v3 = v2 != 0;

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
      v11 = [v4 integerValue];
      if (v11 > 17)
      {
        v10 = 1;
        goto LABEL_20;
      }

      if (v11 == 17)
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

- (BOOL)isEqualTo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MPSGraphDeviceDescriptor *)self isEqual:v4];

    return v5;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {

    return 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    serializedProperties = self->_serializedProperties;
    v7 = [(MPSGraphDeviceDescriptor *)v5 serializedProperties];
    LOBYTE(serializedProperties) = [(NSArray *)serializedProperties isEqualToArray:v7];

    return serializedProperties;
  }

  else
  {

    return 0;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPSGraphDeviceDescriptor alloc];
  serializedProperties = self->_serializedProperties;

  return [(MPSGraphDeviceDescriptor *)v4 initWithSerializedProperties:serializedProperties];
}

@end