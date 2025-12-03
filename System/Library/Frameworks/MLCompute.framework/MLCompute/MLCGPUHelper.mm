@interface MLCGPUHelper
+ (id)allocateMPSImageBatchForTensor:(id)tensor commandBuffer:(id)buffer kernel:(id)kernel batchSize:(unint64_t)size heapAllocator:(id)allocator imageBatchIsTemporary:(BOOL)temporary;
+ (void)copyMPSImageBatchToMTLBuffer:(id)buffer commandBuffer:(id)commandBuffer sourceImageBatch:(id)batch destinationMTLBuffer:(id)lBuffer MLCDataType:(int)type;
+ (void)copyMTLBufferToMPSImageBatch:(id)batch commandBuffer:(id)buffer sourceMTLBuffer:(id)lBuffer destinationImageBatch:(id)imageBatch MLCDataType:(int)type;
@end

@implementation MLCGPUHelper

+ (void)copyMTLBufferToMPSImageBatch:(id)batch commandBuffer:(id)buffer sourceMTLBuffer:(id)lBuffer destinationImageBatch:(id)imageBatch MLCDataType:(int)type
{
  batchCopy = batch;
  bufferCopy = buffer;
  lBufferCopy = lBuffer;
  imageBatchCopy = imageBatch;
  v14 = objc_autoreleasePoolPush();
  v15 = [imageBatchCopy count];
  v16 = [imageBatchCopy objectAtIndexedSubscript:0];
  width = [v16 width];
  v18 = [imageBatchCopy objectAtIndexedSubscript:0];
  v19 = [v18 height] * width;
  v20 = [imageBatchCopy objectAtIndexedSubscript:0];
  v21 = v19 * [v20 featureChannels];

  v22 = GPU_CreateMPSMatrixDesc(v15, v21, 1, type);
  v23 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:lBufferCopy descriptor:v22];
  [batchCopy encodeBatchToCommandBuffer:bufferCopy sourceMatrix:v23 destinationImages:imageBatchCopy];

  objc_autoreleasePoolPop(v14);
}

+ (void)copyMPSImageBatchToMTLBuffer:(id)buffer commandBuffer:(id)commandBuffer sourceImageBatch:(id)batch destinationMTLBuffer:(id)lBuffer MLCDataType:(int)type
{
  bufferCopy = buffer;
  commandBufferCopy = commandBuffer;
  batchCopy = batch;
  lBufferCopy = lBuffer;
  v14 = objc_autoreleasePoolPush();
  v15 = [batchCopy count];
  v16 = [batchCopy objectAtIndexedSubscript:0];
  width = [v16 width];
  v18 = [batchCopy objectAtIndexedSubscript:0];
  v19 = [v18 height] * width;
  v20 = [batchCopy objectAtIndexedSubscript:0];
  v21 = v19 * [v20 featureChannels];

  v22 = GPU_CreateMPSMatrixDesc(v15, v21, 1, type);
  v23 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:lBufferCopy descriptor:v22];
  [bufferCopy encodeBatchToCommandBuffer:commandBufferCopy sourceImages:batchCopy destinationMatrix:v23];

  objc_autoreleasePoolPop(v14);
}

+ (id)allocateMPSImageBatchForTensor:(id)tensor commandBuffer:(id)buffer kernel:(id)kernel batchSize:(unint64_t)size heapAllocator:(id)allocator imageBatchIsTemporary:(BOOL)temporary
{
  v33 = a2;
  tensorCopy = tensor;
  bufferCopy = buffer;
  kernelCopy = kernel;
  allocatorCopy = allocator;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v19 = [shape count] != 1;

  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v22 = [shape2 objectAtIndexedSubscript:v19];
  unsignedIntegerValue = [v22 unsignedIntegerValue];

  v36 = 0;
  v37 = unsignedIntegerValue;
  v35 = 0;
  GPU_GetTensorWidthAndHeight(tensorCopy, &v36, &v35);
  if (!size)
  {
    size = [tensorCopy calculateBatchSizeToUse];
  }

  if (unsignedIntegerValue > kMaxFeatureChannelMPSImage && (GPU_AdjustFeatureChannelBeyondMax(&v36, &v35, &v37, 0) & 1) == 0)
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCGPUHelper allocateMPSImageBatchForTensor:v33 commandBuffer:tensorCopy kernel:v27 batchSize:? heapAllocator:? imageBatchIsTemporary:?];
    }

    goto LABEL_13;
  }

  descriptor3 = [tensorCopy descriptor];
  dataType = [descriptor3 dataType];

  v26 = dataType - 1;
  if ((dataType - 1) >= 6 || ((0x2Du >> v26) & 1) == 0)
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCGPUHelper allocateMPSImageBatchForTensor:v34 commandBuffer:tensorCopy kernel:v27 batchSize:? heapAllocator:? imageBatchIsTemporary:?];
    }

LABEL_13:
    v29 = MEMORY[0x277CBEBF8];
    goto LABEL_14;
  }

  v27 = [MEMORY[0x277CD7220] imageDescriptorWithChannelFormat:qword_238D45B10[v26] width:v36 height:v35 featureChannels:v37];
  if (allocatorCopy)
  {
    defaultAllocator = allocatorCopy;
  }

  else
  {
    if (temporary)
    {
      v31 = MEMORY[0x277CD72A8];
    }

    else
    {
      v31 = MEMORY[0x277CD7218];
    }

    defaultAllocator = [v31 defaultAllocator];
  }

  v32 = defaultAllocator;
  v29 = [defaultAllocator imageBatchForCommandBuffer:bufferCopy imageDescriptor:v27 kernel:kernelCopy count:size];

LABEL_14:

  return v29;
}

+ (void)allocateMPSImageBatchForTensor:(NSObject *)a3 commandBuffer:kernel:batchSize:heapAllocator:imageBatchIsTemporary:.cold.1(const char *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 descriptor];
  v7 = [v6 shape];
  v8 = [v7 objectAtIndexedSubscript:1];
  v10 = 138412546;
  v11 = v5;
  v12 = 1024;
  v13 = [v8 intValue];
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: featureChannel = %d is not supported on GPU", &v10, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)allocateMPSImageBatchForTensor:(NSObject *)a3 commandBuffer:kernel:batchSize:heapAllocator:imageBatchIsTemporary:.cold.2(const char *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 descriptor];
  v8 = 138412546;
  v9 = v5;
  v10 = 1024;
  v11 = [v6 dataType];
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: Illegal tensor data type:%d", &v8, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

@end