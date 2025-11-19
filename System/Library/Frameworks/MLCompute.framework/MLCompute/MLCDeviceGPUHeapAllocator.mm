@interface MLCDeviceGPUHeapAllocator
- (MLCDeviceGPUHeapAllocator)initWithCoder:(id)a3;
- (MLCDeviceGPUHeapAllocator)initWithDevice:(id)a3 heapSize:(unint64_t)a4 resourceSize:(unint64_t)a5 numResources:(unint64_t)a6;
- (id)allocateBuffer:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)imageBatchForCommandBuffer:(id)a3 imageDescriptor:(id)a4 kernel:(id)a5 count:(unint64_t)a6;
- (id)imageForCommandBuffer:(id)a3 imageDescriptor:(id)a4 kernel:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MLCDeviceGPUHeapAllocator

- (id)imageForCommandBuffer:(id)a3 imageDescriptor:(id)a4 kernel:(id)a5
{
  v7 = a4;
  v8 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset];
  v9 = [v7 featureChannels];
  v10 = 125;
  if (v9 == 2)
  {
    v10 = 105;
  }

  if (v9 == 1)
  {
    v11 = 55;
  }

  else
  {
    v11 = v10;
  }

  v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v11 width:objc_msgSend(v7 height:"width") mipmapped:objc_msgSend(v7, "height"), 0];
  if ([v7 featureChannels] <= 4)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  [v12 setTextureType:v13];
  [v12 setArrayLength:{(objc_msgSend(v7, "featureChannels") + 3) >> 2}];
  [v12 setStorageMode:2];
  [v12 setUsage:3];
  v14 = [(MLCDeviceGPUHeapAllocator *)self heap];
  v15 = [v14 newTextureWithDescriptor:v12 offset:v8];

  v16 = objc_alloc(MEMORY[0x277CD7218]);
  v17 = [v7 featureChannels];

  v18 = [v16 initWithTexture:v15 featureChannels:v17];
  if (!v18)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPUHeapAllocator imageForCommandBuffer:a2 imageDescriptor:? kernel:?];
    }
  }

  v20 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset];
  v21 = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
  if (v20 == ([(MLCDeviceGPUHeapAllocator *)self numResources]- 1) * v21)
  {
    v22 = 0;
  }

  else
  {
    v23 = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
    v22 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset]+ v23;
  }

  [(MLCDeviceGPUHeapAllocator *)self setResourceOffset:v22];

  return v18;
}

- (id)imageBatchForCommandBuffer:(id)a3 imageDescriptor:(id)a4 kernel:(id)a5 count:(unint64_t)a6
{
  v38 = a4;
  v37 = [MEMORY[0x277CBEBF8] mutableCopy];
  v8 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset];
  v36 = a6;
  if (a6)
  {
    v9 = v8;
    v10 = 0;
    v11 = 125;
    while (1)
    {
      v12 = [v38 featureChannels];
      v13 = 55;
      if (v12 != 1)
      {
        v13 = v11;
      }

      v14 = v12 == 2 ? 105 : v13;
      v15 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v14 width:objc_msgSend(v38 height:"width") mipmapped:objc_msgSend(v38, "height"), 0];
      v16 = [v38 featureChannels] <= 4 ? 2 : 3;
      [v15 setTextureType:v16];
      [v15 setArrayLength:{(objc_msgSend(v38, "featureChannels") + 3) >> 2}];
      [v15 setStorageMode:2];
      [v15 setUsage:3];
      v17 = [(MLCDeviceGPUHeapAllocator *)self heap];
      v18 = [v17 newTextureWithDescriptor:v15 offset:v9];

      v19 = [objc_alloc(MEMORY[0x277CD7218]) initWithTexture:v18 featureChannels:{objc_msgSend(v38, "featureChannels")}];
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

      if (v36 == ++v10)
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
    v27 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset];
    v28 = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
    if (v27 == ([(MLCDeviceGPUHeapAllocator *)self numResources]- 1) * v28)
    {
      v29 = 0;
    }

    else
    {
      v30 = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
      v29 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset]+ v30;
    }

    v31 = v37;
    [(MLCDeviceGPUHeapAllocator *)self setResourceOffset:v29];
    v32 = v37;
  }

  return v32;
}

- (id)allocateBuffer:(unint64_t)a3
{
  v6 = [(MLCDeviceGPUHeapAllocator *)self heap];
  v7 = [v6 newBufferWithLength:a3 options:544 offset:{-[MLCDeviceGPUHeapAllocator resourceOffset](self, "resourceOffset")}];

  if (v7)
  {
    v8 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset];
    v9 = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
    if (v8 == ([(MLCDeviceGPUHeapAllocator *)self numResources]- 1) * v9)
    {
      v10 = 0;
    }

    else
    {
      v12 = [(MLCDeviceGPUHeapAllocator *)self resourceSize];
      v10 = [(MLCDeviceGPUHeapAllocator *)self resourceOffset]+ v12;
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

- (MLCDeviceGPUHeapAllocator)initWithDevice:(id)a3 heapSize:(unint64_t)a4 resourceSize:(unint64_t)a5 numResources:(unint64_t)a6
{
  v10 = a3;
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
    [v12 setSize:a4];
    v13 = [v10 newHeapWithDescriptor:v12];
    if (v13)
    {
      objc_storeStrong(&v11->_heap, v13);
    }

    v11->_heapSize = a4;
    v11->_resourceSize = a5;
    v11->_resourceOffset = 0;
    v11->_numResources = a6;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCDeviceGPUHeapAllocator *)self heap];
  v6 = [v5 device];
  v7 = [v4 initWithDevice:v6 heapSize:-[MLCDeviceGPUHeapAllocator heapSize](self resourceSize:"heapSize") numResources:{-[MLCDeviceGPUHeapAllocator resourceSize](self, "resourceSize"), -[MLCDeviceGPUHeapAllocator numResources](self, "numResources")}];

  return v7;
}

- (MLCDeviceGPUHeapAllocator)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"heapSize"];
  v6 = [v4 decodeIntegerForKey:@"resourceSize"];
  v7 = [v4 decodeIntegerForKey:@"numResources"];

  return [(MLCDeviceGPUHeapAllocator *)self initWithDevice:0 heapSize:v5 resourceSize:v6 numResources:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[MLCDeviceGPUHeapAllocator heapSize](self forKey:{"heapSize"), @"heapSize"}];
  [v4 encodeInteger:-[MLCDeviceGPUHeapAllocator resourceSize](self forKey:{"resourceSize"), @"resourceSize"}];
  [v4 encodeInteger:-[MLCDeviceGPUHeapAllocator numResources](self forKey:{"numResources"), @"numResources"}];
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