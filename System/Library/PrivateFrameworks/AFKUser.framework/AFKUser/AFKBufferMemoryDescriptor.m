@interface AFKBufferMemoryDescriptor
+ (id)withManager:(id)a3 capacity:(unint64_t)a4;
+ (id)withManager:(id)a3 capacity:(unint64_t)a4 token:(unint64_t)a5;
- (AFKBufferMemoryDescriptor)initWithManager:(id)a3 capacity:(unint64_t)a4 buffer:(BOOL)a5;
- (AFKBufferMemoryDescriptor)initWithManager:(id)a3 capacity:(unint64_t)a4 token:(unint64_t)a5;
- (int)appendBytes:(const void *)a3 withSize:(unint64_t)a4;
- (int)assumeControlWithOffset:(unint64_t)a3 andSize:(unint64_t)a4;
- (int)releaseControl:(BOOL)a3 withOffset:(unint64_t)a4 andSize:(unint64_t)a5;
- (void)getBytesNoCopy:(unint64_t)a3 withSize:(unint64_t)a4;
@end

@implementation AFKBufferMemoryDescriptor

+ (id)withManager:(id)a3 capacity:(unint64_t)a4
{
  v5 = a3;
  v6 = [[AFKBufferMemoryDescriptor alloc] initWithManager:v5 capacity:a4 buffer:1];

  return v6;
}

- (AFKBufferMemoryDescriptor)initWithManager:(id)a3 capacity:(unint64_t)a4 buffer:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (!v5)
  {
    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = AFKBufferMemoryDescriptor;
  v9 = [(AFKMemoryDescriptor *)&v12 initWithManager:v8 capacity:a4 buffer:1];
  if (!v9)
  {
    self = 0;
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  self = v9;
  v10 = self;
LABEL_6:

  return v10;
}

+ (id)withManager:(id)a3 capacity:(unint64_t)a4 token:(unint64_t)a5
{
  v7 = a3;
  v8 = [[AFKBufferMemoryDescriptor alloc] initWithManager:v7 capacity:a4 token:a5];

  return v8;
}

- (AFKBufferMemoryDescriptor)initWithManager:(id)a3 capacity:(unint64_t)a4 token:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = AFKBufferMemoryDescriptor;
  v5 = [(AFKMemoryDescriptor *)&v9 initWithManager:a3 capacity:a4 token:a5];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (int)assumeControlWithOffset:(unint64_t)a3 andSize:(unint64_t)a4
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  input[1] = a3;
  input[2] = a4;
  v7 = [(AFKMemoryDescriptor *)self manager];
  v8 = IOConnectCallScalarMethod([v7 connect], 6u, input, 3u, 0, 0);

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

- (int)releaseControl:(BOOL)a3 withOffset:(unint64_t)a4 andSize:(unint64_t)a5
{
  v7 = a3;
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  input[1] = v7;
  input[2] = a4;
  input[3] = a5;
  v9 = [(AFKMemoryDescriptor *)self manager];
  v10 = IOConnectCallScalarMethod([v9 connect], 7u, input, 4u, 0, 0);

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

- (void)getBytesNoCopy:(unint64_t)a3 withSize:(unint64_t)a4
{
  if (__CFADD__(a3, a4) || a3 + a4 > [(AFKMemoryDescriptor *)self length])
  {
    return 0;
  }

  else
  {
    return [(AFKMemoryDescriptor *)self buffer]+ a3;
  }
}

- (int)appendBytes:(const void *)a3 withSize:(unint64_t)a4
{
  v7 = -536870181;
  v8 = [(AFKMemoryDescriptor *)self length];
  v9 = v8 + a4;
  if (__CFADD__(v8, a4))
  {
    return -536870168;
  }

  v10 = v8;
  if (v9 <= [(AFKMemoryDescriptor *)self capacity])
  {
    [(AFKMemoryDescriptor *)self setLength:v9];
    v7 = [(AFKBufferMemoryDescriptor *)self assumeControlWithOffset:v10 andSize:a4];
    if (!v7)
    {
      memcpy([(AFKMemoryDescriptor *)self buffer]+ v10, a3, a4);
    }
  }

  return v7;
}

@end