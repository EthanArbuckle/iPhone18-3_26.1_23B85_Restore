@interface AFKBufferMemoryDescriptor
+ (id)withManager:(id)manager capacity:(unint64_t)capacity;
+ (id)withManager:(id)manager capacity:(unint64_t)capacity token:(unint64_t)token;
- (AFKBufferMemoryDescriptor)initWithManager:(id)manager capacity:(unint64_t)capacity buffer:(BOOL)buffer;
- (AFKBufferMemoryDescriptor)initWithManager:(id)manager capacity:(unint64_t)capacity token:(unint64_t)token;
- (int)appendBytes:(const void *)bytes withSize:(unint64_t)size;
- (int)assumeControlWithOffset:(unint64_t)offset andSize:(unint64_t)size;
- (int)releaseControl:(BOOL)control withOffset:(unint64_t)offset andSize:(unint64_t)size;
- (void)getBytesNoCopy:(unint64_t)copy withSize:(unint64_t)size;
@end

@implementation AFKBufferMemoryDescriptor

+ (id)withManager:(id)manager capacity:(unint64_t)capacity
{
  managerCopy = manager;
  v6 = [[AFKBufferMemoryDescriptor alloc] initWithManager:managerCopy capacity:capacity buffer:1];

  return v6;
}

- (AFKBufferMemoryDescriptor)initWithManager:(id)manager capacity:(unint64_t)capacity buffer:(BOOL)buffer
{
  bufferCopy = buffer;
  managerCopy = manager;
  if (!bufferCopy)
  {
    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = AFKBufferMemoryDescriptor;
  v9 = [(AFKMemoryDescriptor *)&v12 initWithManager:managerCopy capacity:capacity buffer:1];
  if (!v9)
  {
    self = 0;
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  self = v9;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

+ (id)withManager:(id)manager capacity:(unint64_t)capacity token:(unint64_t)token
{
  managerCopy = manager;
  v8 = [[AFKBufferMemoryDescriptor alloc] initWithManager:managerCopy capacity:capacity token:token];

  return v8;
}

- (AFKBufferMemoryDescriptor)initWithManager:(id)manager capacity:(unint64_t)capacity token:(unint64_t)token
{
  v9.receiver = self;
  v9.super_class = AFKBufferMemoryDescriptor;
  v5 = [(AFKMemoryDescriptor *)&v9 initWithManager:manager capacity:capacity token:token];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (int)assumeControlWithOffset:(unint64_t)offset andSize:(unint64_t)size
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  input[1] = offset;
  input[2] = size;
  manager = [(AFKMemoryDescriptor *)self manager];
  v8 = IOConnectCallScalarMethod([manager connect], 6u, input, 3u, 0, 0);

  if (v8)
  {
    v11 = _AFKUserLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AFKBufferMemoryDescriptor *)&v12 assumeControlWithOffset:v8 andSize:?];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int)releaseControl:(BOOL)control withOffset:(unint64_t)offset andSize:(unint64_t)size
{
  controlCopy = control;
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  input[1] = controlCopy;
  input[2] = offset;
  input[3] = size;
  manager = [(AFKMemoryDescriptor *)self manager];
  v10 = IOConnectCallScalarMethod([manager connect], 7u, input, 4u, 0, 0);

  if (v10)
  {
    v13 = _AFKUserLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AFKBufferMemoryDescriptor releaseControl:[(AFKMemoryDescriptor *)self regID] withOffset:v10 andSize:?];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)getBytesNoCopy:(unint64_t)copy withSize:(unint64_t)size
{
  if (__CFADD__(copy, size) || copy + size > [(AFKMemoryDescriptor *)self length])
  {
    return 0;
  }

  else
  {
    return [(AFKMemoryDescriptor *)self buffer]+ copy;
  }
}

- (int)appendBytes:(const void *)bytes withSize:(unint64_t)size
{
  v7 = -536870181;
  v8 = [(AFKMemoryDescriptor *)self length];
  v9 = v8 + size;
  if (__CFADD__(v8, size))
  {
    return -536870168;
  }

  v10 = v8;
  if (v9 <= [(AFKMemoryDescriptor *)self capacity])
  {
    [(AFKMemoryDescriptor *)self setLength:v9];
    v7 = [(AFKBufferMemoryDescriptor *)self assumeControlWithOffset:v10 andSize:size];
    if (!v7)
    {
      memcpy([(AFKMemoryDescriptor *)self buffer]+ v10, bytes, size);
    }
  }

  return v7;
}

@end