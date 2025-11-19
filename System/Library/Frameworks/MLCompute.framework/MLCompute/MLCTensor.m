@interface MLCTensor
+ (BOOL)canConvertValue:(float)_S0 toDataType:(int)a4;
+ (MLCTensor)tensorWithDescriptor:(MLCTensorDescriptor *)tensorDescriptor;
+ (MLCTensor)tensorWithDescriptor:(MLCTensorDescriptor *)tensorDescriptor data:(MLCTensorData *)data;
+ (MLCTensor)tensorWithDescriptor:(MLCTensorDescriptor *)tensorDescriptor fillWithData:(NSNumber *)fillData;
+ (MLCTensor)tensorWithSequenceLength:(NSUInteger)sequenceLength featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize;
+ (MLCTensor)tensorWithSequenceLength:(NSUInteger)sequenceLength featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize data:(MLCTensorData *)data;
+ (MLCTensor)tensorWithSequenceLengths:(NSArray *)sequenceLengths sortedSequences:(BOOL)sortedSequences featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize data:(MLCTensorData *)data;
+ (MLCTensor)tensorWithShape:(NSArray *)shape;
+ (MLCTensor)tensorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize;
+ (MLCTensor)tensorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize data:(MLCTensorData *)data;
+ (id)newDataForTensorDescriptor:(id)a3 fillWithData:(id)a4;
+ (id)newRandomDataForWeightTensorDescriptor:(id)a3 randomInitializerType:(int)a4;
+ (void)initialize;
- (BOOL)bindAndWriteData:(MLCTensorData *)data toDevice:(MLCDevice *)device;
- (BOOL)bindOptimizerData:(NSArray *)data deviceData:(NSArray *)deviceData;
- (BOOL)copyDataFromDeviceMemoryToBytes:(void *)bytes length:(NSUInteger)length synchronizeWithDevice:(BOOL)synchronizeWithDevice;
- (BOOL)dataContainsScalarWhere:(id)a3;
- (BOOL)doesShapeMatchWithTensor:(id)a3;
- (BOOL)hasValidNumerics;
- (BOOL)isTensorDataTypeInListOfDataTypes:(id)a3;
- (BOOL)synchronizeData;
- (BOOL)synchronizeOptimizerData;
- (MLCTensor)initWithTensorDescriptor:(id)a3 tensorData:(id)a4 parentLayers:(id)a5 childLayers:(id)a6 device:(id)a7 deviceMemory:(id)a8;
- (id)copyAndReplaceData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)calculateBatchSizeToUse:(unint64_t)a3;
- (unint64_t)tensorBatchSize;
- (void)allocateDeviceMemory:(id)a3;
- (void)deallocateDeviceMemory:(id)a3;
- (void)dispatchWriteTensorDataToAllDevices:(id)a3;
- (void)dispatchWriteTensorDataToAllDevices:(id)a3 batchSize:(unint64_t)a4;
- (void)writeTensorDataToAllDevices:(id)a3;
- (void)writeTensorDataToAllDevices:(id)a3 batchSize:(unint64_t)a4;
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

- (id)copyAndReplaceData:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 length];
    v8 = [(MLCTensor *)self descriptor];
    v9 = [v8 tensorAllocationSizeInBytes];

    if (v7 != v9)
    {
      v10 = +[MLCLog framework];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(a2);
        v21 = [v6 length];
        v22 = [(MLCTensor *)self descriptor];
        v23 = 138412802;
        v24 = v20;
        v25 = 2048;
        v26 = v21;
        v27 = 2048;
        v28 = [v22 tensorAllocationSizeInBytes];
        _os_log_error_impl(&dword_238C1D000, v10, OS_LOG_TYPE_ERROR, "%@: Data size mismatch! data.length=%lu : tensorAllocationSizeInBytes=%lu", &v23, 0x20u);
      }
    }
  }

  v11 = self;
  v12 = [(MLCTensor *)v11 descriptor];
  v13 = [(MLCTensor *)v11 parentLayers];
  v14 = [(MLCTensor *)v11 childLayers];
  v15 = [(MLCTensor *)v11 device];
  v16 = [(MLCTensor *)v11 deviceMemory];
  v17 = [(MLCTensor *)v11 initWithTensorDescriptor:v12 tensorData:v6 parentLayers:v13 childLayers:v14 device:v15 deviceMemory:v16];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (MLCTensor)initWithTensorDescriptor:(id)a3 tensorData:(id)a4 parentLayers:(id)a5 childLayers:(id)a6 device:(id)a7 deviceMemory:(id)a8
{
  v15 = a3;
  v16 = a4;
  obj = a5;
  v17 = a5;
  v37 = a6;
  v18 = a6;
  v38 = a7;
  v19 = a7;
  v20 = a8;
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

    objc_storeStrong(&v21->_descriptor, a3);
    objc_storeStrong(&v21->_data, a4);
    objc_storeStrong(&v21->_parentLayers, obj);
    objc_storeStrong(&v21->_childLayers, v37);
    objc_storeStrong(&v21->_device, v38);
    objc_storeStrong(&v21->_deviceMemory, a8);
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
  v5 = [a1 alloc];
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
  v8 = [a1 alloc];
  v9 = [(MLCTensorData *)v6 data];

  v10 = MEMORY[0x277CBEBF8];
  v11 = [MEMORY[0x277CBEBF8] mutableCopy];
  v12 = [v10 mutableCopy];
  v13 = [v10 mutableCopy];
  v14 = [v8 initWithTensorDescriptor:v7 tensorData:v9 parentLayers:v11 childLayers:v12 device:0 deviceMemory:v13];

  return v14;
}

+ (MLCTensor)tensorWithDescriptor:(MLCTensorDescriptor *)tensorDescriptor fillWithData:(NSNumber *)fillData
{
  v6 = tensorDescriptor;
  v7 = [a1 newDataForTensorDescriptor:v6 fillWithData:fillData];
  v8 = [a1 tensorWithDescriptor:v6 data:v7];

  return v8;
}

+ (MLCTensor)tensorWithShape:(NSArray *)shape
{
  v4 = [MLCTensorDescriptor descriptorWithShape:shape dataType:1];
  v5 = [a1 tensorWithDescriptor:v4];

  return v5;
}

+ (MLCTensor)tensorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize
{
  v7 = [MLCTensorDescriptor descriptorWithWidth:width height:height featureChannelCount:featureChannelCount batchSize:batchSize];
  v8 = [a1 tensorWithDescriptor:v7];

  return v8;
}

+ (MLCTensor)tensorWithWidth:(NSUInteger)width height:(NSUInteger)height featureChannelCount:(NSUInteger)featureChannelCount batchSize:(NSUInteger)batchSize data:(MLCTensorData *)data
{
  v12 = data;
  v13 = [MLCTensorDescriptor descriptorWithWidth:width height:height featureChannelCount:featureChannelCount batchSize:batchSize];
  v14 = [a1 tensorWithDescriptor:v13 data:v12];

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
  v13 = [a1 tensorWithSequenceLengths:v12 sortedSequences:1 featureChannelCount:featureChannelCount batchSize:batchSize randomInitializerType:1];

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
  v15 = [a1 tensorWithSequenceLengths:v14 sortedSequences:1 featureChannelCount:featureChannelCount batchSize:batchSize data:v10];

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
    v16 = [v15 unsignedIntegerValue];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:batchSize];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v16, v17}];
    v25[1] = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:featureChannelCount];
    v25[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    v21 = [MLCTensorDescriptor descriptorWithShape:v20 sequenceLengths:v13 sortedSequences:1 dataType:1];

    if (v14)
    {
      [a1 tensorWithDescriptor:v21 data:v14];
    }

    else
    {
      [a1 tensorWithDescriptor:v21];
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

- (BOOL)dataContainsScalarWhere:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MLCTensor *)self data];

  if (v5)
  {
    v6 = [(MLCTensor *)self descriptor];
    v7 = [v6 dimensionCount];
    v8 = &v14[-1] - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v8, 8 * v7);
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
    v15 = v4;
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
  v3 = [(MLCTensor *)self descriptor];
  if (([v3 isFloatingPoint] & 1) == 0)
  {

    return 1;
  }

  v4 = [(MLCTensor *)self data];

  if (!v4)
  {
    return 1;
  }

  v5 = [(MLCTensor *)self descriptor];
  v6 = [v5 dataType];

  if (v6 == 3)
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
  v10 = [(MLCTensor *)self device];

  if (!v10)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCTensor copyDataFromDeviceMemoryToBytes:a2 length:? synchronizeWithDevice:?];
    }

    goto LABEL_11;
  }

  v11 = [(MLCTensor *)self deviceMemory];
  v12 = [v11 count];

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

  v13 = [(MLCTensor *)self descriptor];
  v14 = [v13 tensorAllocationSizeInBytes];

  if (v14 > length)
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
    v18 = [(MLCTensor *)self device];
    v19 = [v18 computeEngine];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = [(MLCTensor *)self device];
      v22 = [v21 computeEngine];
      v23 = [v22 synchronizeTensorOnHost:self];

      if (!v23)
      {
        return 0;
      }
    }
  }

  v24 = [(MLCTensor *)self device];
  v25 = [v24 computeEngine];
  [v25 readTensor:self targetBuffer:bytes];

  return 1;
}

- (BOOL)bindAndWriteData:(MLCTensorData *)data toDevice:(MLCDevice *)device
{
  v6 = data;
  v7 = device;
  v8 = [(MLCTensorData *)v6 length];
  v9 = [(MLCTensor *)self descriptor];
  v10 = [v9 tensorAllocationSizeInBytes];

  if (v8 >= v10)
  {
    v11 = [(MLCDevice *)v7 type];
    v12 = [(MLCTensor *)self isLayerParameter];
    if (v11)
    {
      if (!v12)
      {
        v25 = [(MLCTensorData *)v6 data];
        [(MLCTensor *)self setData:v25];

        v26 = [(MLCTensor *)self calculateBatchSizeToUse];
        v27 = [(MLCDevice *)v7 computeEngine];
        v28 = [v27 needToAllocateDeviceMemoryForTensor:self];

        if (v28)
        {
          [(MLCTensor *)self allocateDeviceMemory:v7];
        }

        [(MLCTensor *)self writeTensorDataToAllDevices:v7 batchSize:v26];
        goto LABEL_21;
      }

      v13 = [(MLCTensor *)self data];
      v14 = [(MLCTensorData *)v6 data];

      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (!v12)
      {
        v29 = [(MLCTensorData *)v6 data];
        [(MLCTensor *)self setData:v29];

        v30 = [(MLCTensor *)self data];
        v31 = [(MLCTensor *)self deviceMemory];
        [v31 setObject:v30 atIndexedSubscript:0];

LABEL_20:
LABEL_21:
        [(MLCTensor *)self setDevice:v7];
        goto LABEL_22;
      }

      v16 = [(MLCTensor *)self data];
      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = v16;
      v18 = [(MLCTensor *)self data];
      v19 = [(MLCTensorData *)v6 data];

      if (v18 == v19)
      {
LABEL_17:
        v20 = [(MLCTensorData *)v6 data];
        [(MLCTensor *)self setData:v20];
        goto LABEL_18;
      }
    }

    v20 = [(MLCTensor *)self data];
    v21 = [v20 bytes];
    v22 = [(MLCTensorData *)v6 data];
    v23 = [v22 bytes];
    v24 = [(MLCTensor *)self data];
    memcpy(v21, v23, [v24 length]);

LABEL_18:
LABEL_19:
    v30 = [(MLCDevice *)v7 computeEngine];
    [v30 reloadParameterDataFromHostToDeviceMemoryForTensor:self];
    goto LABEL_20;
  }

  v15 = +[MLCLog framework];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MLCTensor copyDataFromDeviceMemoryToBytes:length:synchronizeWithDevice:];
  }

LABEL_22:
  return v8 >= v10;
}

- (BOOL)synchronizeData
{
  v3 = [(MLCTensor *)self device];

  if (!v3)
  {
    return 1;
  }

  v4 = [(MLCTensor *)self deviceMemory];
  v5 = [v4 count];

  if (!v5)
  {
    return 1;
  }

  v6 = [(MLCTensor *)self device];
  v7 = [v6 computeEngine];
  v8 = [v7 getHostPointerIfUnifiedDeviceMemory:self];

  if (v8)
  {
    [(MLCTensor *)self setData:v8];
  }

  else
  {
    v8 = [(MLCTensor *)self data];
    if (!v8)
    {
      v10 = [(MLCTensor *)self descriptor];
      v11 = [v10 tensorAllocationSizeInBytes];

      v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v11 length:1uLL freeWhenDone:{0x100004077774924uLL), v11, 1}];
      [(MLCTensor *)self setData:v12];

      v8 = 0;
    }
  }

  v13 = [(MLCTensor *)self device];
  v14 = [v13 computeEngine];
  v15 = objc_opt_respondsToSelector();

  if ((v15 & 1) != 0 && (-[MLCTensor device](self, "device"), v16 = objc_claimAutoreleasedReturnValue(), [v16 computeEngine], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "synchronizeTensorOnHost:", self), v17, v16, !v18))
  {
    v9 = 0;
  }

  else
  {
    v19 = [(MLCTensor *)self device];
    v20 = [v19 computeEngine];
    v21 = [(MLCTensor *)self data];
    [v20 readTensor:self targetBuffer:{objc_msgSend(v21, "bytes")}];

    v9 = 1;
  }

  return v9;
}

- (BOOL)synchronizeOptimizerData
{
  v3 = [(MLCTensor *)self device];
  if (v3)
  {
    v4 = v3;
    v5 = [(MLCTensor *)self optimizerDeviceData];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(MLCTensor *)self deviceMemory];
      v8 = [v7 count];

      if (v8)
      {
        if (![(MLCTensor *)self isLayerParameter])
        {
          v16 = [(MLCTensor *)self device];
          v17 = [v16 computeEngine];
          [v17 synchronizeOptimizerUpdatesForTensor:self];

          v18 = [(MLCTensor *)self device];
          v19 = [v18 computeEngine];
          [v19 commitAndWaitForCompletion:0];

          v13 = [(MLCTensor *)self device];
          v20 = [v13 computeEngine];
          [v20 convertUpdatesToTensorDataForTensorParameters:self];
LABEL_12:

          return 1;
        }

        v9 = [(MLCTensor *)self childLayers];
        v10 = [v9 count];

        if (v10)
        {
          v11 = 0;
          while (1)
          {
            v12 = [(MLCTensor *)self childLayers];
            v13 = [v12 objectAtIndexedSubscript:v11];

            if ([v13 isTrainable])
            {
              break;
            }

            ++v11;
            v14 = [(MLCTensor *)self childLayers];
            v15 = [v14 count];

            if (v11 >= v15)
            {
              return 1;
            }
          }

          v21 = [(MLCTensor *)self device];
          v22 = [v21 computeEngine];
          [v22 synchronizeUpdatesForLayer:v13];

          v23 = [(MLCTensor *)self device];
          v24 = [v23 computeEngine];
          [v24 commitAndWaitForCompletion:0];

          v20 = [(MLCTensor *)self device];
          v25 = [v20 computeEngine];
          [v25 convertUpdatesToTensorDataForLayer:v13];

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
  v6 = [(MLCTensor *)self label];
  v7 = [(MLCTensor *)self descriptor];
  v8 = [(MLCTensor *)self data];
  v9 = [(MLCTensor *)self deviceMemory];
  v10 = [v3 stringWithFormat:@"%@: { label=%@ : tensorDescriptor=%@ : tensorData=%@ : deviceMemory=%@ }", v5, v6, v7, v8, v9];

  return v10;
}

- (BOOL)doesShapeMatchWithTensor:(id)a3
{
  v4 = a3;
  v5 = [(MLCTensor *)self descriptor];
  v6 = [v5 shape];
  v7 = [v6 count];
  v28 = v4;
  v8 = [v4 descriptor];
  v9 = [v8 shape];
  v10 = [v9 count];

  if (v7 == v10)
  {
    v11 = [(MLCTensor *)self descriptor];
    v12 = [v11 shape];
    v13 = [v12 count];

    if (v13)
    {
      v14 = 0;
      do
      {
        v15 = [(MLCTensor *)self descriptor];
        v16 = [v15 shape];
        v17 = [v16 objectAtIndexedSubscript:v14];
        v18 = [v17 unsignedIntegerValue];
        v19 = [v28 descriptor];
        v20 = [v19 shape];
        v21 = [v20 objectAtIndexedSubscript:v14];
        v22 = [v21 unsignedIntegerValue];

        v23 = v18 == v22;
        if (v18 != v22)
        {
          break;
        }

        ++v14;
        v24 = [(MLCTensor *)self descriptor];
        v25 = [v24 shape];
        v26 = [v25 count];
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

- (unint64_t)calculateBatchSizeToUse:(unint64_t)a3
{
  v5 = [(MLCTensor *)self descriptor];
  v6 = [v5 shape];
  v7 = [v6 count];

  if (v7 == 1)
  {
    return 1;
  }

  v9 = [(MLCTensor *)self descriptor];
  v10 = [v9 shape];
  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = [v11 unsignedIntegerValue];

  if (v12 >= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = v12;
  }

  if (a3)
  {
    return v13;
  }

  else
  {
    return v12;
  }
}

- (void)allocateDeviceMemory:(id)a3
{
  v6 = a3;
  if ([v6 type])
  {
    v4 = [v6 computeEngine];
    [v4 allocateDeviceMemoryForTensor:self];
  }

  else
  {
    v4 = [(MLCTensor *)self deviceMemory];
    v5 = [(MLCTensor *)self data];
    [v4 addObject:v5];
  }
}

- (void)deallocateDeviceMemory:(id)a3
{
  v4 = [a3 computeEngine];
  [v4 deallocateDeviceMemoryForTensor:self];
}

- (void)writeTensorDataToAllDevices:(id)a3
{
  v4 = [a3 computeEngine];
  [v4 broadcastTensor:self];
}

- (void)writeTensorDataToAllDevices:(id)a3 batchSize:(unint64_t)a4
{
  v6 = [a3 computeEngine];
  [v6 broadcastTensor:self batchSize:a4];
}

- (void)dispatchWriteTensorDataToAllDevices:(id)a3
{
  v4 = [a3 computeEngine];
  [v4 dispatchBroadcastTensor:self];
}

- (void)dispatchWriteTensorDataToAllDevices:(id)a3 batchSize:(unint64_t)a4
{
  v6 = [a3 computeEngine];
  [v6 dispatchBroadcastTensor:self batchSize:a4];
}

+ (BOOL)canConvertValue:(float)_S0 toDataType:(int)a4
{
  v4 = 0;
  if (a4 <= 3)
  {
    if (a4 != 1)
    {
      if (a4 == 3)
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

  if (a4 == 4)
  {
    return 1;
  }

  if (a4 == 6)
  {
    return _S0 <= 1.0 && _S0 >= 0.0;
  }

  return v4;
}

+ (id)newDataForTensorDescriptor:(id)a3 fillWithData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 tensorAllocationSizeInBytes];
  v9 = [v7 dataType];
  v10 = malloc_type_malloc(v8, 0xE511174AuLL);
  v11 = [v7 elementCount];

  if (v9 > 5)
  {
    if (v9 <= 7)
    {
      if (v9 == 6)
      {
        [v6 floatValue];
        v15 = (v14 * 255.0);
LABEL_24:
        memset(v10, v15, v8);
        goto LABEL_27;
      }

      LODWORD(__A) = [v6 intValue];
      goto LABEL_22;
    }

    if (v9 == 8)
    {
      LODWORD(__A) = 16843009 * [v6 intValue];
LABEL_22:
      memset_pattern4(v10, &__A, v8);
      goto LABEL_27;
    }

    if (v9 == 9)
    {
      LODWORD(__A) = 16843009 * [v6 intValue];
      goto LABEL_26;
    }

    if (v9 != 10)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v9 > 2)
    {
      if (v9 != 3)
      {
        if (v9 != 4)
        {
          __A = [v6 longLongValue];
LABEL_26:
          memset_pattern8(v10, &__A, v8);
          goto LABEL_27;
        }

        v15 = [v6 BOOLValue];
        goto LABEL_24;
      }

      [v6 floatValue];
      __asm { FCVT            H0, S0 }

      LOWORD(__A) = _S0;
      WORD1(__A) = _S0;
      goto LABEL_22;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        [v6 floatValue];
        LODWORD(__A) = v12;
        vDSP_vfill(&__A, v10, 1, v11);
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
  v21 = [MLCTensorData dataWithBytesNoCopy:v10 length:v8 freeWhenDone:1];

  return v21;
}

+ (id)newRandomDataForWeightTensorDescriptor:(id)a3 randomInitializerType:(int)a4
{
  v45 = a2;
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 fanIn];
  v7 = [v5 fanOut];
  v8 = [v5 elementCount];
  if (v6 | v7)
  {
    goto LABEL_8;
  }

  if ((a4 & 0xFFFFFFFE) != 2)
  {
    v7 = 0;
    v6 = 0;
LABEL_8:
    v47 = [v5 tensorAllocationSizeInBytes];
    v17 = malloc_type_malloc(v47, 0xFF96F4D7uLL);
    v18 = +[MLCPlatformInfo isRNGSeeded];
    if (v18)
    {
      srand48(+[MLCPlatformInfo randomSeed]);
    }

    v19 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
    arc4random_buf(v19, 4 * v8);
    if (v8)
    {
      v21 = 0;
      v22 = (v6 + v7);
      v23 = sqrtf(6.0 / v22);
      v24 = -v23;
      v25 = 1.0 / v22;
      v26 = v23 + v23;
      _S13 = 0.0;
      do
      {
        switch(a4)
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

        v34 = [v5 dataType];
        switch(v34)
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

      while (v8 != v21);
    }

    free(v19);
    v41 = [MLCTensorData dataWithBytesNoCopy:v17 length:v47 freeWhenDone:1];
    goto LABEL_38;
  }

  if ([v5 dimensionCount] == 4)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = [v5 shape];
      v12 = [v11 objectAtIndexedSubscript:v9];
      v10 *= [v12 unsignedIntegerValue];

      ++v9;
    }

    while (v9 != 4);
    v13 = [v5 shape];
    v14 = [v13 objectAtIndexedSubscript:2];
    v6 = [v14 unsignedIntegerValue] * v10;

    v15 = [v5 shape];
    v16 = [v15 objectAtIndexedSubscript:3];
    v7 = [v16 unsignedIntegerValue] * v10;

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

- (BOOL)isTensorDataTypeInListOfDataTypes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      v6 = [(MLCTensor *)self descriptor];
      v7 = [v6 dataType];
      v8 = [v4 objectAtIndexedSubscript:v5];
      v9 = [v8 intValue];

      v10 = v7 == v9;
      if (v7 == v9)
      {
        break;
      }

      ++v5;
    }

    while (v5 < [v4 count]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)tensorBatchSize
{
  v3 = [(MLCTensor *)self descriptor];
  v4 = [v3 shape];
  if ([v4 count] == 1)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(MLCTensor *)self descriptor];
    v7 = [v6 shape];
    v8 = [v7 objectAtIndexedSubscript:0];
    v5 = [v8 unsignedIntegerValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCTensor *)self descriptor];
  v6 = [(MLCTensor *)self data];
  v7 = [(MLCTensor *)self parentLayers];
  v8 = [(MLCTensor *)self childLayers];
  v9 = [(MLCTensor *)self device];
  v10 = [(MLCTensor *)self deviceMemory];
  v11 = [v4 initWithTensorDescriptor:v5 tensorData:v6 parentLayers:v7 childLayers:v8 device:v9 deviceMemory:v10];

  v12 = [(MLCTensor *)self device];
  [v11 setDevice:v12];

  [v11 setReadCount:{-[MLCTensor readCount](self, "readCount")}];
  v13 = [(MLCTensor *)self sharedMemoryTensor];
  [v11 setSharedMemoryTensor:v13];

  [v11 setConcatOffset:{-[MLCTensor concatOffset](self, "concatOffset")}];
  [v11 setConcatDimension:{-[MLCTensor concatDimension](self, "concatDimension")}];
  [v11 setSplitOffset:{-[MLCTensor splitOffset](self, "splitOffset")}];
  [v11 setSplitDimension:{-[MLCTensor splitDimension](self, "splitDimension")}];
  [v11 setMultiDeviceReductionType:{-[MLCTensor multiDeviceReductionType](self, "multiDeviceReductionType")}];
  [v11 setInterleave:{-[MLCTensor interleave](self, "interleave")}];
  [v11 setRootSourceGradientTensorIndex:{-[MLCTensor rootSourceGradientTensorIndex](self, "rootSourceGradientTensorIndex")}];
  [v11 setRootSourceGradientTensorIndexStart:{-[MLCTensor rootSourceGradientTensorIndexStart](self, "rootSourceGradientTensorIndexStart")}];
  [v11 setRootSourceGradientTensorCount:{-[MLCTensor rootSourceGradientTensorCount](self, "rootSourceGradientTensorCount")}];
  v14 = [(MLCTensor *)self intermediateSumLayer];
  [v11 setIntermediateSumLayer:v14];

  v15 = [(MLCTensor *)self optimizerData];
  [v11 setOptimizerData:v15];

  v16 = [(MLCTensor *)self optimizerDeviceData];
  [v11 setOptimizerDeviceData:v16];

  v17 = [(MLCTensor *)self deviceDataSources];
  [v11 setDeviceDataSources:v17];

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