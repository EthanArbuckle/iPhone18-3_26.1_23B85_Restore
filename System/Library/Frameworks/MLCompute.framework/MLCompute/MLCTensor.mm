@interface MLCTensor
+ (BOOL)canConvertValue:(float)_S0 toDataType:(int)type;
+ (MLCTensor)tensorWithDescriptor:(MLCTensorDescriptor *)tensorDescriptor;
+ (MLCTensor)tensorWithDescriptor:(MLCTensorDescriptor *)tensorDescriptor data:(MLCTensorData *)data;
+ (MLCTensor)tensorWithDescriptor:(MLCTensorDescriptor *)tensorDescriptor fillWithData:(NSNumber *)fillData;
+ (MLCTensor)tensorWithSequenceLength:(NSUInteger)sequenceLength featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize;
+ (MLCTensor)tensorWithSequenceLength:(NSUInteger)sequenceLength featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize data:(MLCTensorData *)data;
+ (MLCTensor)tensorWithSequenceLengths:(NSArray *)sequenceLengths sortedSequences:(BOOL)sortedSequences featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize data:(MLCTensorData *)data;
+ (MLCTensor)tensorWithShape:(NSArray *)shape;
+ (MLCTensor)tensorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize;
+ (MLCTensor)tensorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize data:(MLCTensorData *)data;
+ (id)newDataForTensorDescriptor:(id)descriptor fillWithData:(id)data;
+ (id)newRandomDataForWeightTensorDescriptor:(id)descriptor randomInitializerType:(int)type;
+ (void)initialize;
- (BOOL)bindAndWriteData:(MLCTensorData *)data toDevice:(MLCDevice *)device;
- (BOOL)bindOptimizerData:(NSArray *)data deviceData:(NSArray *)deviceData;
- (BOOL)copyDataFromDeviceMemoryToBytes:(void *)bytes length:(NSUInteger)length synchronizeWithDevice:(BOOL)synchronizeWithDevice;
- (BOOL)dataContainsScalarWhere:(id)where;
- (BOOL)doesShapeMatchWithTensor:(id)tensor;
- (BOOL)hasValidNumerics;
- (BOOL)isTensorDataTypeInListOfDataTypes:(id)types;
- (BOOL)synchronizeData;
- (BOOL)synchronizeOptimizerData;
- (MLCTensor)initWithTensorDescriptor:(id)descriptor tensorData:(id)data parentLayers:(id)layers childLayers:(id)childLayers device:(id)device deviceMemory:(id)memory;
- (id)copyAndReplaceData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)calculateBatchSizeToUse:(unint64_t)use;
- (unint64_t)tensorBatchSize;
- (void)allocateDeviceMemory:(id)memory;
- (void)deallocateDeviceMemory:(id)memory;
- (void)dispatchWriteTensorDataToAllDevices:(id)devices;
- (void)dispatchWriteTensorDataToAllDevices:(id)devices batchSize:(unint64_t)size;
- (void)writeTensorDataToAllDevices:(id)devices;
- (void)writeTensorDataToAllDevices:(id)devices batchSize:(unint64_t)size;
@end

@implementation MLCTensor

+ (void)initialize
{
  if (initialize_onceToken_0 != -1)
  {
    +[MLCTensor initialize];
  }
}

uint64_t __23__MLCTensor_initialize__block_invoke()
{
  gNextTensorID = 0;
  gLock = 0;
  gGaussian = +[_MLCGaussianRandomGenerator zeroMeanGaussianRandomGenerator];

  return MEMORY[0x2821F96F8]();
}

- (id)copyAndReplaceData:(id)data
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    v7 = [dataCopy length];
    descriptor = [(MLCTensor *)self descriptor];
    tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];

    if (v7 != tensorAllocationSizeInBytes)
    {
      v10 = +[MLCLog framework];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(a2);
        v21 = [v6 length];
        descriptor2 = [(MLCTensor *)self descriptor];
        v23 = 138412802;
        v24 = v20;
        v25 = 2048;
        v26 = v21;
        v27 = 2048;
        tensorAllocationSizeInBytes2 = [descriptor2 tensorAllocationSizeInBytes];
        _os_log_error_impl(&dword_238C1D000, v10, OS_LOG_TYPE_ERROR, "%@: Data size mismatch! data.length=%lu : tensorAllocationSizeInBytes=%lu", &v23, 0x20u);
      }
    }
  }

  selfCopy = self;
  descriptor3 = [(MLCTensor *)selfCopy descriptor];
  parentLayers = [(MLCTensor *)selfCopy parentLayers];
  childLayers = [(MLCTensor *)selfCopy childLayers];
  device = [(MLCTensor *)selfCopy device];
  deviceMemory = [(MLCTensor *)selfCopy deviceMemory];
  v17 = [(MLCTensor *)selfCopy initWithTensorDescriptor:descriptor3 tensorData:v6 parentLayers:parentLayers childLayers:childLayers device:device deviceMemory:deviceMemory];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (MLCTensor)initWithTensorDescriptor:(id)descriptor tensorData:(id)data parentLayers:(id)layers childLayers:(id)childLayers device:(id)device deviceMemory:(id)memory
{
  descriptorCopy = descriptor;
  dataCopy = data;
  obj = layers;
  layersCopy = layers;
  childLayersCopy = childLayers;
  childLayersCopy2 = childLayers;
  deviceCopy = device;
  deviceCopy2 = device;
  memoryCopy = memory;
  v39.receiver = self;
  v39.super_class = MLCTensor;
  v21 = [(MLCTensor *)&v39 init];
  if (v21)
  {
    os_unfair_lock_lock(&gLock);
    v22 = gNextTensorID++;
    v21->_tensorID = v22;
    os_unfair_lock_unlock(&gLock);
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"data%lu", v21->_tensorID];
    label = v21->_label;
    v21->_label = v23;

    objc_storeStrong(&v21->_descriptor, descriptor);
    objc_storeStrong(&v21->_data, data);
    objc_storeStrong(&v21->_parentLayers, obj);
    objc_storeStrong(&v21->_childLayers, childLayersCopy);
    objc_storeStrong(&v21->_device, deviceCopy);
    objc_storeStrong(&v21->_deviceMemory, memory);
    v21->_deviceIndex = 0;
    v25 = MEMORY[0x277CBEBF8];
    v26 = [MEMORY[0x277CBEBF8] mutableCopy];
    broadcastabledeviceMemory = v21->_broadcastabledeviceMemory;
    v21->_broadcastabledeviceMemory = v26;

    v21->_readCount = 0;
    sharedMemoryTensor = v21->_sharedMemoryTensor;
    v21->_sharedMemoryTensor = 0;

    v21->_concatOffset = 0;
    v21->_concatDimension = 0;
    v21->_splitOffset = 0;
    v21->_splitDimension = 1;
    v21->_multiDeviceReductionType = 0;
    v21->_interleave = 1;
    v21->_rootSourceGradientTensorIndexStart = 0;
    v21->_rootSourceGradientTensorCount = 0;
    intermediateSumLayer = v21->_intermediateSumLayer;
    v21->_rootSourceGradientTensorIndex = 0;
    v21->_intermediateSumLayer = 0;

    v30 = [v25 mutableCopy];
    optimizerData = v21->_optimizerData;
    v21->_optimizerData = v30;

    v32 = [v25 mutableCopy];
    optimizerDeviceData = v21->_optimizerDeviceData;
    v21->_optimizerDeviceData = v32;

    deviceDataSources = v21->_deviceDataSources;
    v21->_deviceDataSources = 0;

    v21->_skipWritingToDevice = 0;
    v21->_computeFlags = 0;
  }

  return v21;
}

+ (MLCTensor)tensorWithDescriptor:(MLCTensorDescriptor *)tensorDescriptor
{
  v4 = tensorDescriptor;
  v5 = [self alloc];
  v6 = MEMORY[0x277CBEBF8];
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  v8 = [v6 mutableCopy];
  v9 = [v6 mutableCopy];
  v10 = [v5 initWithTensorDescriptor:v4 tensorData:0 parentLayers:v7 childLayers:v8 device:0 deviceMemory:v9];

  return v10;
}

+ (MLCTensor)tensorWithDescriptor:(MLCTensorDescriptor *)tensorDescriptor data:(MLCTensorData *)data
{
  v6 = data;
  v7 = tensorDescriptor;
  v8 = [self alloc];
  data = [(MLCTensorData *)v6 data];

  v10 = MEMORY[0x277CBEBF8];
  v11 = [MEMORY[0x277CBEBF8] mutableCopy];
  v12 = [v10 mutableCopy];
  v13 = [v10 mutableCopy];
  v14 = [v8 initWithTensorDescriptor:v7 tensorData:data parentLayers:v11 childLayers:v12 device:0 deviceMemory:v13];

  return v14;
}

+ (MLCTensor)tensorWithDescriptor:(MLCTensorDescriptor *)tensorDescriptor fillWithData:(NSNumber *)fillData
{
  v6 = tensorDescriptor;
  v7 = [self newDataForTensorDescriptor:v6 fillWithData:fillData];
  v8 = [self tensorWithDescriptor:v6 data:v7];

  return v8;
}

+ (MLCTensor)tensorWithShape:(NSArray *)shape
{
  v4 = [MLCTensorDescriptor descriptorWithShape:shape dataType:1];
  v5 = [self tensorWithDescriptor:v4];

  return v5;
}

+ (MLCTensor)tensorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize
{
  v7 = [MLCTensorDescriptor descriptorWithWidth:width height:height featureChannelCount:featureChannelCount batchSize:batchSize];
  v8 = [self tensorWithDescriptor:v7];

  return v8;
}

+ (MLCTensor)tensorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize data:(MLCTensorData *)data
{
  v12 = data;
  v13 = [MLCTensorDescriptor descriptorWithWidth:width height:height featureChannelCount:featureChannelCount batchSize:batchSize];
  v14 = [self tensorWithDescriptor:v13 data:v12];

  return v14;
}

+ (MLCTensor)tensorWithSequenceLength:(NSUInteger)sequenceLength featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize
{
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:batchSize];
  if (batchSize)
  {
    v10 = 0;
    do
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sequenceLength];
      [v9 setObject:v11 atIndexedSubscript:v10];

      ++v10;
    }

    while (batchSize != v10);
  }

  v12 = [v9 copy];
  v13 = [self tensorWithSequenceLengths:v12 sortedSequences:1 featureChannelCount:featureChannelCount batchSize:batchSize randomInitializerType:1];

  return v13;
}

+ (MLCTensor)tensorWithSequenceLength:(NSUInteger)sequenceLength featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize data:(MLCTensorData *)data
{
  v10 = data;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:batchSize];
  if (batchSize)
  {
    v12 = 0;
    do
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sequenceLength];
      [v11 setObject:v13 atIndexedSubscript:v12];

      ++v12;
    }

    while (batchSize != v12);
  }

  v14 = [v11 copy];
  v15 = [self tensorWithSequenceLengths:v14 sortedSequences:1 featureChannelCount:featureChannelCount batchSize:batchSize data:v10];

  return v15;
}

+ (MLCTensor)tensorWithSequenceLengths:(NSArray *)sequenceLengths sortedSequences:(BOOL)sortedSequences featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize data:(MLCTensorData *)data
{
  v25[3] = *MEMORY[0x277D85DE8];
  v13 = sequenceLengths;
  v14 = data;
  if (sortedSequences)
  {
    v15 = [(NSArray *)v13 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v15 unsignedIntegerValue];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:batchSize];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{unsignedIntegerValue, v17}];
    v25[1] = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:featureChannelCount];
    v25[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    v21 = [MLCTensorDescriptor descriptorWithShape:v20 sequenceLengths:v13 sortedSequences:1 dataType:1];

    if (v14)
    {
      [self tensorWithDescriptor:v21 data:v14];
    }

    else
    {
      [self tensorWithDescriptor:v21];
    }
    v22 = ;
  }

  else
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MLCTensor tensorWithSequenceLengths:a2 sortedSequences:? featureChannelCount:? batchSize:? randomInitializerType:?];
    }

    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)dataContainsScalarWhere:(id)where
{
  v23[1] = *MEMORY[0x277D85DE8];
  whereCopy = where;
  data = [(MLCTensor *)self data];

  if (data)
  {
    descriptor = [(MLCTensor *)self descriptor];
    dimensionCount = [descriptor dimensionCount];
    v8 = &v14[-1] - ((8 * dimensionCount + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v8, 8 * dimensionCount);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3042000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23[0] = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__MLCTensor_dataContainsScalarWhere___block_invoke;
    v14[3] = &unk_278A696E8;
    v14[4] = self;
    v17 = v8;
    v15 = whereCopy;
    v16 = &v18;
    v9 = MEMORY[0x23EE76340](v14);
    objc_storeWeak(v19 + 5, v9);
    v10 = v9[2](v9, 0);

    _Block_object_dispose(&v18, 8);
    objc_destroyWeak(v23);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL __37__MLCTensor_dataContainsScalarWhere___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) descriptor];
  v5 = [v4 dimensionCount] - 1;

  if (v5 == a2)
  {
    v6 = [*(a1 + 32) data];
    v7 = [v6 bytes];

    if (a2)
    {
      v8 = 0;
      do
      {
        v9 = [*(a1 + 32) descriptor];
        v10 = [v9 stride];
        v11 = [v10 objectAtIndexedSubscript:v8];
        v7 += *(*(a1 + 56) + 8 * v8) * [v11 unsignedIntegerValue];

        ++v8;
      }

      while (a2 != v8);
    }

    v12 = 0;
    do
    {
      v13 = [*(a1 + 32) descriptor];
      v14 = [v13 shape];
      v15 = [v14 objectAtIndexedSubscript:a2];
      v16 = [v15 unsignedIntegerValue];

      v17 = v12 < v16;
      if (v12 >= v16)
      {
        break;
      }

      v18 = *(a1 + 40);
      v19 = [*(a1 + 32) descriptor];
      v20 = [v19 stride];
      v21 = [v20 objectAtIndexedSubscript:a2];
      LOBYTE(v18) = (*(v18 + 16))(v18, v7 + [v21 unsignedIntegerValue] * v12);

      ++v12;
    }

    while ((v18 & 1) == 0);
  }

  else
  {
    v22 = 0;
    do
    {
      v23 = [*(a1 + 32) descriptor];
      v24 = [v23 shape];
      v25 = [v24 objectAtIndexedSubscript:a2];
      v26 = [v25 unsignedIntegerValue];

      v17 = v22 < v26;
      if (v22 >= v26)
      {
        break;
      }

      *(*(a1 + 56) + 8 * a2) = v22;
      WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
      v28 = WeakRetained[2](WeakRetained, a2 + 1);

      ++v22;
    }

    while (!v28);
  }

  return v17;
}

- (BOOL)hasValidNumerics
{
  descriptor = [(MLCTensor *)self descriptor];
  if (([descriptor isFloatingPoint] & 1) == 0)
  {

    return 1;
  }

  data = [(MLCTensor *)self data];

  if (!data)
  {
    return 1;
  }

  descriptor2 = [(MLCTensor *)self descriptor];
  dataType = [descriptor2 dataType];

  if (dataType == 3)
  {
    v7 = &__block_literal_global_11;
  }

  else
  {
    v7 = &__block_literal_global_13;
  }

  return ![(MLCTensor *)self dataContainsScalarWhere:v7];
}

- (BOOL)copyDataFromDeviceMemoryToBytes:(void *)bytes length:(NSUInteger)length synchronizeWithDevice:(BOOL)synchronizeWithDevice
{
  v5 = synchronizeWithDevice;
  device = [(MLCTensor *)self device];

  if (!device)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCTensor copyDataFromDeviceMemoryToBytes:a2 length:? synchronizeWithDevice:?];
    }

    goto LABEL_11;
  }

  deviceMemory = [(MLCTensor *)self deviceMemory];
  v12 = [deviceMemory count];

  if (!v12)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCTensor copyDataFromDeviceMemoryToBytes:a2 length:? synchronizeWithDevice:?];
    }

LABEL_11:

    return 0;
  }

  descriptor = [(MLCTensor *)self descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];

  if (tensorAllocationSizeInBytes > length)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCTensor copyDataFromDeviceMemoryToBytes:length:synchronizeWithDevice:];
    }

    return 0;
  }

  if (v5)
  {
    device2 = [(MLCTensor *)self device];
    computeEngine = [device2 computeEngine];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      device3 = [(MLCTensor *)self device];
      computeEngine2 = [device3 computeEngine];
      v23 = [computeEngine2 synchronizeTensorOnHost:self];

      if (!v23)
      {
        return 0;
      }
    }
  }

  device4 = [(MLCTensor *)self device];
  computeEngine3 = [device4 computeEngine];
  [computeEngine3 readTensor:self targetBuffer:bytes];

  return 1;
}

- (BOOL)bindAndWriteData:(MLCTensorData *)data toDevice:(MLCDevice *)device
{
  v6 = data;
  v7 = device;
  v8 = [(MLCTensorData *)v6 length];
  descriptor = [(MLCTensor *)self descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];

  if (v8 >= tensorAllocationSizeInBytes)
  {
    type = [(MLCDevice *)v7 type];
    isLayerParameter = [(MLCTensor *)self isLayerParameter];
    if (type)
    {
      if (!isLayerParameter)
      {
        data = [(MLCTensorData *)v6 data];
        [(MLCTensor *)self setData:data];

        calculateBatchSizeToUse = [(MLCTensor *)self calculateBatchSizeToUse];
        computeEngine = [(MLCDevice *)v7 computeEngine];
        v28 = [computeEngine needToAllocateDeviceMemoryForTensor:self];

        if (v28)
        {
          [(MLCTensor *)self allocateDeviceMemory:v7];
        }

        [(MLCTensor *)self writeTensorDataToAllDevices:v7 batchSize:calculateBatchSizeToUse];
        goto LABEL_21;
      }

      data2 = [(MLCTensor *)self data];
      data3 = [(MLCTensorData *)v6 data];

      if (data2 == data3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (!isLayerParameter)
      {
        data4 = [(MLCTensorData *)v6 data];
        [(MLCTensor *)self setData:data4];

        data5 = [(MLCTensor *)self data];
        deviceMemory = [(MLCTensor *)self deviceMemory];
        [deviceMemory setObject:data5 atIndexedSubscript:0];

LABEL_20:
LABEL_21:
        [(MLCTensor *)self setDevice:v7];
        goto LABEL_22;
      }

      data6 = [(MLCTensor *)self data];
      if (!data6)
      {
        goto LABEL_17;
      }

      v17 = data6;
      data7 = [(MLCTensor *)self data];
      data8 = [(MLCTensorData *)v6 data];

      if (data7 == data8)
      {
LABEL_17:
        data9 = [(MLCTensorData *)v6 data];
        [(MLCTensor *)self setData:data9];
        goto LABEL_18;
      }
    }

    data9 = [(MLCTensor *)self data];
    bytes = [data9 bytes];
    data10 = [(MLCTensorData *)v6 data];
    bytes2 = [data10 bytes];
    data11 = [(MLCTensor *)self data];
    memcpy(bytes, bytes2, [data11 length]);

LABEL_18:
LABEL_19:
    data5 = [(MLCDevice *)v7 computeEngine];
    [data5 reloadParameterDataFromHostToDeviceMemoryForTensor:self];
    goto LABEL_20;
  }

  v15 = +[MLCLog framework];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MLCTensor copyDataFromDeviceMemoryToBytes:length:synchronizeWithDevice:];
  }

LABEL_22:
  return v8 >= tensorAllocationSizeInBytes;
}

- (BOOL)synchronizeData
{
  device = [(MLCTensor *)self device];

  if (!device)
  {
    return 1;
  }

  deviceMemory = [(MLCTensor *)self deviceMemory];
  v5 = [deviceMemory count];

  if (!v5)
  {
    return 1;
  }

  device2 = [(MLCTensor *)self device];
  computeEngine = [device2 computeEngine];
  data = [computeEngine getHostPointerIfUnifiedDeviceMemory:self];

  if (data)
  {
    [(MLCTensor *)self setData:data];
  }

  else
  {
    data = [(MLCTensor *)self data];
    if (!data)
    {
      descriptor = [(MLCTensor *)self descriptor];
      tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];

      v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(tensorAllocationSizeInBytes length:1uLL freeWhenDone:{0x100004077774924uLL), tensorAllocationSizeInBytes, 1}];
      [(MLCTensor *)self setData:v12];

      data = 0;
    }
  }

  device3 = [(MLCTensor *)self device];
  computeEngine2 = [device3 computeEngine];
  v15 = objc_opt_respondsToSelector();

  if ((v15 & 1) != 0 && (-[MLCTensor device](self, "device"), v16 = objc_claimAutoreleasedReturnValue(), [v16 computeEngine], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "synchronizeTensorOnHost:", self), v17, v16, !v18))
  {
    v9 = 0;
  }

  else
  {
    device4 = [(MLCTensor *)self device];
    computeEngine3 = [device4 computeEngine];
    data2 = [(MLCTensor *)self data];
    [computeEngine3 readTensor:self targetBuffer:{objc_msgSend(data2, "bytes")}];

    v9 = 1;
  }

  return v9;
}

- (BOOL)synchronizeOptimizerData
{
  device = [(MLCTensor *)self device];
  if (device)
  {
    v4 = device;
    optimizerDeviceData = [(MLCTensor *)self optimizerDeviceData];
    v6 = [optimizerDeviceData count];

    if (v6)
    {
      deviceMemory = [(MLCTensor *)self deviceMemory];
      v8 = [deviceMemory count];

      if (v8)
      {
        if (![(MLCTensor *)self isLayerParameter])
        {
          device2 = [(MLCTensor *)self device];
          computeEngine = [device2 computeEngine];
          [computeEngine synchronizeOptimizerUpdatesForTensor:self];

          device3 = [(MLCTensor *)self device];
          computeEngine2 = [device3 computeEngine];
          [computeEngine2 commitAndWaitForCompletion:0];

          device4 = [(MLCTensor *)self device];
          computeEngine3 = [device4 computeEngine];
          [computeEngine3 convertUpdatesToTensorDataForTensorParameters:self];
LABEL_12:

          return 1;
        }

        childLayers = [(MLCTensor *)self childLayers];
        v10 = [childLayers count];

        if (v10)
        {
          v11 = 0;
          while (1)
          {
            childLayers2 = [(MLCTensor *)self childLayers];
            device4 = [childLayers2 objectAtIndexedSubscript:v11];

            if ([device4 isTrainable])
            {
              break;
            }

            ++v11;
            childLayers3 = [(MLCTensor *)self childLayers];
            v15 = [childLayers3 count];

            if (v11 >= v15)
            {
              return 1;
            }
          }

          device5 = [(MLCTensor *)self device];
          computeEngine4 = [device5 computeEngine];
          [computeEngine4 synchronizeUpdatesForLayer:device4];

          device6 = [(MLCTensor *)self device];
          computeEngine5 = [device6 computeEngine];
          [computeEngine5 commitAndWaitForCompletion:0];

          computeEngine3 = [(MLCTensor *)self device];
          v20ComputeEngine = [computeEngine3 computeEngine];
          [v20ComputeEngine convertUpdatesToTensorDataForLayer:device4];

          goto LABEL_12;
        }
      }
    }
  }

  return 1;
}

- (BOOL)bindOptimizerData:(NSArray *)data deviceData:(NSArray *)deviceData
{
  v6 = deviceData;
  [(MLCTensor *)self setOptimizerData:data];
  if (v6)
  {
    [(MLCTensor *)self setOptimizerDeviceData:v6];
  }

  return 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(MLCTensor *)self label];
  descriptor = [(MLCTensor *)self descriptor];
  data = [(MLCTensor *)self data];
  deviceMemory = [(MLCTensor *)self deviceMemory];
  v10 = [v3 stringWithFormat:@"%@: { label=%@ : tensorDescriptor=%@ : tensorData=%@ : deviceMemory=%@ }", v5, label, descriptor, data, deviceMemory];

  return v10;
}

- (BOOL)doesShapeMatchWithTensor:(id)tensor
{
  tensorCopy = tensor;
  descriptor = [(MLCTensor *)self descriptor];
  shape = [descriptor shape];
  v7 = [shape count];
  v28 = tensorCopy;
  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v10 = [shape2 count];

  if (v7 == v10)
  {
    descriptor3 = [(MLCTensor *)self descriptor];
    shape3 = [descriptor3 shape];
    v13 = [shape3 count];

    if (v13)
    {
      v14 = 0;
      do
      {
        descriptor4 = [(MLCTensor *)self descriptor];
        shape4 = [descriptor4 shape];
        v17 = [shape4 objectAtIndexedSubscript:v14];
        unsignedIntegerValue = [v17 unsignedIntegerValue];
        descriptor5 = [v28 descriptor];
        shape5 = [descriptor5 shape];
        v21 = [shape5 objectAtIndexedSubscript:v14];
        unsignedIntegerValue2 = [v21 unsignedIntegerValue];

        v23 = unsignedIntegerValue == unsignedIntegerValue2;
        if (unsignedIntegerValue != unsignedIntegerValue2)
        {
          break;
        }

        ++v14;
        descriptor6 = [(MLCTensor *)self descriptor];
        shape6 = [descriptor6 shape];
        v26 = [shape6 count];
      }

      while (v14 < v26);
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)calculateBatchSizeToUse:(unint64_t)use
{
  descriptor = [(MLCTensor *)self descriptor];
  shape = [descriptor shape];
  v7 = [shape count];

  if (v7 == 1)
  {
    return 1;
  }

  descriptor2 = [(MLCTensor *)self descriptor];
  shape2 = [descriptor2 shape];
  v11 = [shape2 objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  if (unsignedIntegerValue >= use)
  {
    useCopy = use;
  }

  else
  {
    useCopy = unsignedIntegerValue;
  }

  if (use)
  {
    return useCopy;
  }

  else
  {
    return unsignedIntegerValue;
  }
}

- (void)allocateDeviceMemory:(id)memory
{
  memoryCopy = memory;
  if ([memoryCopy type])
  {
    computeEngine = [memoryCopy computeEngine];
    [computeEngine allocateDeviceMemoryForTensor:self];
  }

  else
  {
    computeEngine = [(MLCTensor *)self deviceMemory];
    data = [(MLCTensor *)self data];
    [computeEngine addObject:data];
  }
}

- (void)deallocateDeviceMemory:(id)memory
{
  computeEngine = [memory computeEngine];
  [computeEngine deallocateDeviceMemoryForTensor:self];
}

- (void)writeTensorDataToAllDevices:(id)devices
{
  computeEngine = [devices computeEngine];
  [computeEngine broadcastTensor:self];
}

- (void)writeTensorDataToAllDevices:(id)devices batchSize:(unint64_t)size
{
  computeEngine = [devices computeEngine];
  [computeEngine broadcastTensor:self batchSize:size];
}

- (void)dispatchWriteTensorDataToAllDevices:(id)devices
{
  computeEngine = [devices computeEngine];
  [computeEngine dispatchBroadcastTensor:self];
}

- (void)dispatchWriteTensorDataToAllDevices:(id)devices batchSize:(unint64_t)size
{
  computeEngine = [devices computeEngine];
  [computeEngine dispatchBroadcastTensor:self batchSize:size];
}

+ (BOOL)canConvertValue:(float)_S0 toDataType:(int)type
{
  v4 = 0;
  if (type <= 3)
  {
    if (type != 1)
    {
      if (type == 3)
      {
        v5 = LODWORD(_S0) & 0x7FFFFFFF;
        __asm { FCVT            H0, S0 }

        if (v5 <= 2139095039)
        {
          return (_H0 & 0x7FFFu) < 0x7C00;
        }

        else
        {
          return (_H0 & 0x7FFFu) > 0x7BFF;
        }
      }

      return v4;
    }

    return 1;
  }

  if (type == 4)
  {
    return 1;
  }

  if (type == 6)
  {
    return _S0 <= 1.0 && _S0 >= 0.0;
  }

  return v4;
}

+ (id)newDataForTensorDescriptor:(id)descriptor fillWithData:(id)data
{
  dataCopy = data;
  descriptorCopy = descriptor;
  tensorAllocationSizeInBytes = [descriptorCopy tensorAllocationSizeInBytes];
  dataType = [descriptorCopy dataType];
  v10 = malloc_type_malloc(tensorAllocationSizeInBytes, 0xE511174AuLL);
  elementCount = [descriptorCopy elementCount];

  if (dataType > 5)
  {
    if (dataType <= 7)
    {
      if (dataType == 6)
      {
        [dataCopy floatValue];
        bOOLValue = (v14 * 255.0);
LABEL_24:
        memset(v10, bOOLValue, tensorAllocationSizeInBytes);
        goto LABEL_27;
      }

      LODWORD(__A) = [dataCopy intValue];
      goto LABEL_22;
    }

    if (dataType == 8)
    {
      LODWORD(__A) = 16843009 * [dataCopy intValue];
LABEL_22:
      memset_pattern4(v10, &__A, tensorAllocationSizeInBytes);
      goto LABEL_27;
    }

    if (dataType == 9)
    {
      LODWORD(__A) = 16843009 * [dataCopy intValue];
      goto LABEL_26;
    }

    if (dataType != 10)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (dataType > 2)
    {
      if (dataType != 3)
      {
        if (dataType != 4)
        {
          __A = [dataCopy longLongValue];
LABEL_26:
          memset_pattern8(v10, &__A, tensorAllocationSizeInBytes);
          goto LABEL_27;
        }

        bOOLValue = [dataCopy BOOLValue];
        goto LABEL_24;
      }

      [dataCopy floatValue];
      __asm { FCVT            H0, S0 }

      LOWORD(__A) = _S0;
      WORD1(__A) = _S0;
      goto LABEL_22;
    }

    if (dataType)
    {
      if (dataType == 1)
      {
        [dataCopy floatValue];
        LODWORD(__A) = v12;
        vDSP_vfill(&__A, v10, 1, elementCount);
      }

      goto LABEL_27;
    }
  }

  v13 = +[MLCLog framework];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceGPU multiDeviceTensorReduction:a2 sourceBuffer:? targetBuffer:?];
  }

LABEL_27:
  v21 = [MLCTensorData dataWithBytesNoCopy:v10 length:tensorAllocationSizeInBytes freeWhenDone:1];

  return v21;
}

+ (id)newRandomDataForWeightTensorDescriptor:(id)descriptor randomInitializerType:(int)type
{
  v45 = a2;
  v50 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  fanIn = [descriptorCopy fanIn];
  fanOut = [descriptorCopy fanOut];
  elementCount = [descriptorCopy elementCount];
  if (fanIn | fanOut)
  {
    goto LABEL_8;
  }

  if ((type & 0xFFFFFFFE) != 2)
  {
    fanOut = 0;
    fanIn = 0;
LABEL_8:
    tensorAllocationSizeInBytes = [descriptorCopy tensorAllocationSizeInBytes];
    v17 = malloc_type_malloc(tensorAllocationSizeInBytes, 0xFF96F4D7uLL);
    v18 = +[MLCPlatformInfo isRNGSeeded];
    if (v18)
    {
      srand48(+[MLCPlatformInfo randomSeed]);
    }

    v19 = malloc_type_malloc(4 * elementCount, 0x100004052888210uLL);
    arc4random_buf(v19, 4 * elementCount);
    if (elementCount)
    {
      v21 = 0;
      v22 = (fanIn + fanOut);
      v23 = sqrtf(6.0 / v22);
      v24 = -v23;
      v25 = 1.0 / v22;
      v26 = v23 + v23;
      _S13 = 0.0;
      do
      {
        switch(type)
        {
          case 1:
            v30 = arc4random();
            if (v18)
            {
              v31 = drand48();
            }

            else
            {
              v31 = v30 / 4294967300.0;
            }

            _S13 = v31;
            break;
          case 3:
            [gGaussian sample];
            *&v29 = v29;
            _S13 = v25 * *&v29;
            break;
          case 2:
            if (v18)
            {
              v28 = drand48();
            }

            else
            {
              LODWORD(v20) = *(v19 + v21);
              v28 = v20 / 4294967300.0;
            }

            v33 = v28;
            _S13 = v24 + (v33 * v26);
            break;
          default:
            v32 = +[MLCLog framework];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [MLCTensor newRandomDataForWeightTensorDescriptor:v49 randomInitializerType:v46];
            }

            break;
        }

        dataType = [descriptorCopy dataType];
        switch(dataType)
        {
          case 1:
            v17[v21] = _S13;
            break;
          case 4:
            *(v17 + v21) = _S13 >= 0.5;
            break;
          case 3:
            __asm { FCVT            H0, S13 }

            *(v17 + v21) = _H0;
            break;
          default:
            v40 = +[MLCLog framework];
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              [MLCTensor newRandomDataForWeightTensorDescriptor:v48 randomInitializerType:v46];
            }

            break;
        }

        ++v21;
      }

      while (elementCount != v21);
    }

    free(v19);
    v41 = [MLCTensorData dataWithBytesNoCopy:v17 length:tensorAllocationSizeInBytes freeWhenDone:1];
    goto LABEL_38;
  }

  if ([descriptorCopy dimensionCount] == 4)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      shape = [descriptorCopy shape];
      v12 = [shape objectAtIndexedSubscript:v9];
      v10 *= [v12 unsignedIntegerValue];

      ++v9;
    }

    while (v9 != 4);
    shape2 = [descriptorCopy shape];
    v14 = [shape2 objectAtIndexedSubscript:2];
    fanIn = [v14 unsignedIntegerValue] * v10;

    shape3 = [descriptorCopy shape];
    v16 = [shape3 objectAtIndexedSubscript:3];
    fanOut = [v16 unsignedIntegerValue] * v10;

    goto LABEL_8;
  }

  v44 = +[MLCLog framework];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    +[MLCTensor newRandomDataForWeightTensorDescriptor:randomInitializerType:];
  }

  v41 = 0;
LABEL_38:

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (BOOL)isTensorDataTypeInListOfDataTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy count])
  {
    v5 = 0;
    do
    {
      descriptor = [(MLCTensor *)self descriptor];
      dataType = [descriptor dataType];
      v8 = [typesCopy objectAtIndexedSubscript:v5];
      intValue = [v8 intValue];

      v10 = dataType == intValue;
      if (dataType == intValue)
      {
        break;
      }

      ++v5;
    }

    while (v5 < [typesCopy count]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)tensorBatchSize
{
  descriptor = [(MLCTensor *)self descriptor];
  shape = [descriptor shape];
  if ([shape count] == 1)
  {
    unsignedIntegerValue = 1;
  }

  else
  {
    descriptor2 = [(MLCTensor *)self descriptor];
    shape2 = [descriptor2 shape];
    v8 = [shape2 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  return unsignedIntegerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  descriptor = [(MLCTensor *)self descriptor];
  data = [(MLCTensor *)self data];
  parentLayers = [(MLCTensor *)self parentLayers];
  childLayers = [(MLCTensor *)self childLayers];
  device = [(MLCTensor *)self device];
  deviceMemory = [(MLCTensor *)self deviceMemory];
  v11 = [v4 initWithTensorDescriptor:descriptor tensorData:data parentLayers:parentLayers childLayers:childLayers device:device deviceMemory:deviceMemory];

  device2 = [(MLCTensor *)self device];
  [v11 setDevice:device2];

  [v11 setReadCount:{-[MLCTensor readCount](self, "readCount")}];
  sharedMemoryTensor = [(MLCTensor *)self sharedMemoryTensor];
  [v11 setSharedMemoryTensor:sharedMemoryTensor];

  [v11 setConcatOffset:{-[MLCTensor concatOffset](self, "concatOffset")}];
  [v11 setConcatDimension:{-[MLCTensor concatDimension](self, "concatDimension")}];
  [v11 setSplitOffset:{-[MLCTensor splitOffset](self, "splitOffset")}];
  [v11 setSplitDimension:{-[MLCTensor splitDimension](self, "splitDimension")}];
  [v11 setMultiDeviceReductionType:{-[MLCTensor multiDeviceReductionType](self, "multiDeviceReductionType")}];
  [v11 setInterleave:{-[MLCTensor interleave](self, "interleave")}];
  [v11 setRootSourceGradientTensorIndex:{-[MLCTensor rootSourceGradientTensorIndex](self, "rootSourceGradientTensorIndex")}];
  [v11 setRootSourceGradientTensorIndexStart:{-[MLCTensor rootSourceGradientTensorIndexStart](self, "rootSourceGradientTensorIndexStart")}];
  [v11 setRootSourceGradientTensorCount:{-[MLCTensor rootSourceGradientTensorCount](self, "rootSourceGradientTensorCount")}];
  intermediateSumLayer = [(MLCTensor *)self intermediateSumLayer];
  [v11 setIntermediateSumLayer:intermediateSumLayer];

  optimizerData = [(MLCTensor *)self optimizerData];
  [v11 setOptimizerData:optimizerData];

  optimizerDeviceData = [(MLCTensor *)self optimizerDeviceData];
  [v11 setOptimizerDeviceData:optimizerDeviceData];

  deviceDataSources = [(MLCTensor *)self deviceDataSources];
  [v11 setDeviceDataSources:deviceDataSources];

  [v11 setSkipWritingToDevice:{-[MLCTensor skipWritingToDevice](self, "skipWritingToDevice")}];
  [v11 setComputeFlags:{-[MLCTensor computeFlags](self, "computeFlags")}];
  return v11;
}

+ (void)tensorWithSequenceLengths:(const char *)a1 sortedSequences:featureChannelCount:batchSize:randomInitializerType:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)copyDataFromDeviceMemoryToBytes:length:synchronizeWithDevice:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v10 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(v1);
  v3 = [v0 descriptor];
  [v3 tensorAllocationSizeInBytes];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)copyDataFromDeviceMemoryToBytes:(const char *)a1 length:synchronizeWithDevice:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)copyDataFromDeviceMemoryToBytes:(const char *)a1 length:synchronizeWithDevice:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)newRandomDataForWeightTensorDescriptor:randomInitializerType:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)newRandomDataForWeightTensorDescriptor:(uint64_t)a1 randomInitializerType:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_1(a1, a2);
  v5 = NSStringFromSelector(v4);
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_6_1(&dword_238C1D000, v6, v7, "%@: Unsupported random number generator");
}

+ (void)newRandomDataForWeightTensorDescriptor:(uint64_t)a1 randomInitializerType:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_1(a1, a2);
  v5 = NSStringFromSelector(v4);
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_6_1(&dword_238C1D000, v6, v7, "%@: Unsupported data type.");
}

- (void)tensorByQuantizingToType:(const char *)a1 scale:bias:axis:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)tensorByDequantizingToType:(const char *)a1 scale:bias:axis:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)tensorByDequantizingToType:scale:bias:axis:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v10 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(v1);
  v3 = [v0 descriptor];
  [v3 dataType];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

@end