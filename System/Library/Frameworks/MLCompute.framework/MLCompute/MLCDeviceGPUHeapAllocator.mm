@interface MLCDeviceGPUHeapAllocator
- (MLCDeviceGPUHeapAllocator)initWithCoder:(id)coder;
- (MLCDeviceGPUHeapAllocator)initWithDevice:(id)device heapSize:(unint64_t)size resourceSize:(unint64_t)resourceSize numResources:(unint64_t)resources;
- (id)allocateBuffer:(unint64_t)buffer;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageBatchForCommandBuffer:(id)buffer imageDescriptor:(id)descriptor kernel:(id)kernel count:(unint64_t)count;
- (id)imageForCommandBuffer:(id)buffer imageDescriptor:(id)descriptor kernel:(id)kernel;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLCDeviceGPUHeapAllocator

- (id)imageForCommandBuffer:(id)buffer imageDescriptor:(id)descriptor kernel:(id)kernel
{
  descriptorCopy = descriptor;
  resourceOffset = [(MLCDeviceGPUHeapAllocator *)self resourceOffset];
  featureChannels = [descriptorCopy featureChannels];
  v10 = 125;
  if (featureChannels == 2)
  {
    v10 = 105;
  }

  if (featureChannels == 1)
  {
    v11 = 55;
  }

  else
  {
    v11 = v10;
  }

  v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v11 width:objc_msgSend(descriptorCopy height:"width") mipmapped:objc_msgSend(descriptorCopy, "height"), 0];
  if ([descriptorCopy featureChannels] <= 4)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  [v12 setTextureType:v13];
  [v12 setArrayLength:{(objc_msgSend(descriptorCopy, "featureChannels") + 3) >> 2}];
  [v12 setStorageMode:2];
  [v12 setUsage:3];
  heap = [(MLCDeviceGPUHeapAllocator *)self heap];
  v15 = [heap newTextureWithDescriptor:v12 offset:resourceOffset];

  v16 = objc_alloc(MEMORY[0x277CD7218]);
  featureChannels2 = [descriptorCopy featureChannels];

  v18 = [v16 initWithTexture:v15 featureChannels:featureChannels2];
  if (!v18)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPUHeapAllocator imageForCommandBuffer:a2 imageDescriptor:? kernel:?];
    }
  }

  resourceOffset2 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset];
  resourceSize = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
  if (resourceOffset2 == ([(MLCDeviceGPUHeapAllocator *)self numResources]- 1) * resourceSize)
  {
    v22 = 0;
  }

  else
  {
    resourceSize2 = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
    v22 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset]+ resourceSize2;
  }

  [(MLCDeviceGPUHeapAllocator *)self setResourceOffset:v22];

  return v18;
}

- (id)imageBatchForCommandBuffer:(id)buffer imageDescriptor:(id)descriptor kernel:(id)kernel count:(unint64_t)count
{
  descriptorCopy = descriptor;
  v37 = [MEMORY[0x277CBEBF8] mutableCopy];
  resourceOffset = [(MLCDeviceGPUHeapAllocator *)self resourceOffset];
  countCopy = count;
  if (count)
  {
    v9 = resourceOffset;
    v10 = 0;
    v11 = 125;
    while (1)
    {
      featureChannels = [descriptorCopy featureChannels];
      v13 = 55;
      if (featureChannels != 1)
      {
        v13 = v11;
      }

      v14 = featureChannels == 2 ? 105 : v13;
      v15 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v14 width:objc_msgSend(descriptorCopy height:"width") mipmapped:objc_msgSend(descriptorCopy, "height"), 0];
      v16 = [descriptorCopy featureChannels] <= 4 ? 2 : 3;
      [v15 setTextureType:v16];
      [v15 setArrayLength:{(objc_msgSend(descriptorCopy, "featureChannels") + 3) >> 2}];
      [v15 setStorageMode:2];
      [v15 setUsage:3];
      heap = [(MLCDeviceGPUHeapAllocator *)self heap];
      v18 = [heap newTextureWithDescriptor:v15 offset:v9];

      v19 = [objc_alloc(MEMORY[0x277CD7218]) initWithTexture:v18 featureChannels:{objc_msgSend(descriptorCopy, "featureChannels")}];
      if (!v19)
      {
        break;
      }

      v20 = v19;
      [v37 addObject:v19];
      [(MLCDeviceGPUHeapAllocator *)self heap];
      v21 = v39 = v9;
      [v21 device];
      v23 = v22 = v14;
      v24 = [v23 heapTextureSizeAndAlignWithDescriptor:v15];
      v26 = v25;

      v11 = v22;
      v9 = v39 + (v24 + v26 - 1) / v26 * v26;

      if (countCopy == ++v10)
      {
        goto LABEL_13;
      }
    }

    v33 = +[MLCLog framework];
    v31 = v37;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPUHeapAllocator imageBatchForCommandBuffer:a2 imageDescriptor:? kernel:? count:?];
    }

    v32 = MEMORY[0x277CBEBF8];
  }

  else
  {
LABEL_13:
    resourceOffset2 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset];
    resourceSize = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
    if (resourceOffset2 == ([(MLCDeviceGPUHeapAllocator *)self numResources]- 1) * resourceSize)
    {
      v29 = 0;
    }

    else
    {
      resourceSize2 = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
      v29 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset]+ resourceSize2;
    }

    v31 = v37;
    [(MLCDeviceGPUHeapAllocator *)self setResourceOffset:v29];
    v32 = v37;
  }

  return v32;
}

- (id)allocateBuffer:(unint64_t)buffer
{
  heap = [(MLCDeviceGPUHeapAllocator *)self heap];
  v7 = [heap newBufferWithLength:buffer options:544 offset:{-[MLCDeviceGPUHeapAllocator resourceOffset](self, "resourceOffset")}];

  if (v7)
  {
    resourceOffset = [(MLCDeviceGPUHeapAllocator *)self resourceOffset];
    resourceSize = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
    if (resourceOffset == ([(MLCDeviceGPUHeapAllocator *)self numResources]- 1) * resourceSize)
    {
      v10 = 0;
    }

    else
    {
      resourceSize2 = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
      v10 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset]+ resourceSize2;
    }

    [(MLCDeviceGPUHeapAllocator *)self setResourceOffset:v10];
    v13 = v7;
  }

  else
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPUHeapAllocator allocateBuffer:a2];
    }
  }

  return v7;
}

- (MLCDeviceGPUHeapAllocator)initWithDevice:(id)device heapSize:(unint64_t)size resourceSize:(unint64_t)resourceSize numResources:(unint64_t)resources
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = MLCDeviceGPUHeapAllocator;
  v11 = [(MLCDeviceGPUHeapAllocator *)&v15 init];
  if (v11)
  {
    v12 = objc_opt_new();
    [v12 setType:1];
    [v12 setCpuCacheMode:0];
    [v12 setStorageMode:2];
    [v12 setHazardTrackingMode:2];
    [v12 setSize:size];
    v13 = [deviceCopy newHeapWithDescriptor:v12];
    if (v13)
    {
      objc_storeStrong(&v11->_heap, v13);
    }

    v11->_heapSize = size;
    v11->_resourceSize = resourceSize;
    v11->_resourceOffset = 0;
    v11->_numResources = resources;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  heap = [(MLCDeviceGPUHeapAllocator *)self heap];
  device = [heap device];
  v7 = [v4 initWithDevice:device heapSize:-[MLCDeviceGPUHeapAllocator heapSize](self resourceSize:"heapSize") numResources:{-[MLCDeviceGPUHeapAllocator resourceSize](self, "resourceSize"), -[MLCDeviceGPUHeapAllocator numResources](self, "numResources")}];

  return v7;
}

- (MLCDeviceGPUHeapAllocator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"heapSize"];
  v6 = [coderCopy decodeIntegerForKey:@"resourceSize"];
  v7 = [coderCopy decodeIntegerForKey:@"numResources"];

  return [(MLCDeviceGPUHeapAllocator *)self initWithDevice:0 heapSize:v5 resourceSize:v6 numResources:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[MLCDeviceGPUHeapAllocator heapSize](self forKey:{"heapSize"), @"heapSize"}];
  [coderCopy encodeInteger:-[MLCDeviceGPUHeapAllocator resourceSize](self forKey:{"resourceSize"), @"resourceSize"}];
  [coderCopy encodeInteger:-[MLCDeviceGPUHeapAllocator numResources](self forKey:{"numResources"), @"numResources"}];
}

- (void)imageForCommandBuffer:(const char *)a1 imageDescriptor:kernel:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)imageBatchForCommandBuffer:(const char *)a1 imageDescriptor:kernel:count:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allocateBuffer:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end