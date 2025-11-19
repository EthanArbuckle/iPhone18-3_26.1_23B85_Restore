@interface MLCGPUHelper
+ (id)allocateMPSImageBatchForTensor:(id)a3 commandBuffer:(id)a4 kernel:(id)a5 batchSize:(unint64_t)a6 heapAllocator:(id)a7 imageBatchIsTemporary:(BOOL)a8;
+ (void)copyMPSImageBatchToMTLBuffer:(id)a3 commandBuffer:(id)a4 sourceImageBatch:(id)a5 destinationMTLBuffer:(id)a6 MLCDataType:(int)a7;
+ (void)copyMTLBufferToMPSImageBatch:(id)a3 commandBuffer:(id)a4 sourceMTLBuffer:(id)a5 destinationImageBatch:(id)a6 MLCDataType:(int)a7;
@end

@implementation MLCGPUHelper

+ (void)copyMTLBufferToMPSImageBatch:(id)a3 commandBuffer:(id)a4 sourceMTLBuffer:(id)a5 destinationImageBatch:(id)a6 MLCDataType:(int)a7
{
  v24 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = [v13 count];
  v16 = [v13 objectAtIndexedSubscript:0];
  v17 = [v16 width];
  v18 = [v13 objectAtIndexedSubscript:0];
  v19 = [v18 height] * v17;
  v20 = [v13 objectAtIndexedSubscript:0];
  v21 = v19 * [v20 featureChannels];

  v22 = GPU_CreateMPSMatrixDesc(v15, v21, 1, a7);
  v23 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v12 descriptor:v22];
  [v24 encodeBatchToCommandBuffer:v11 sourceMatrix:v23 destinationImages:v13];

  objc_autoreleasePoolPop(v14);
}

+ (void)copyMPSImageBatchToMTLBuffer:(id)a3 commandBuffer:(id)a4 sourceImageBatch:(id)a5 destinationMTLBuffer:(id)a6 MLCDataType:(int)a7
{
  v24 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = [v12 count];
  v16 = [v12 objectAtIndexedSubscript:0];
  v17 = [v16 width];
  v18 = [v12 objectAtIndexedSubscript:0];
  v19 = [v18 height] * v17;
  v20 = [v12 objectAtIndexedSubscript:0];
  v21 = v19 * [v20 featureChannels];

  v22 = GPU_CreateMPSMatrixDesc(v15, v21, 1, a7);
  v23 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v13 descriptor:v22];
  [v24 encodeBatchToCommandBuffer:v11 sourceImages:v12 destinationMatrix:v23];

  objc_autoreleasePoolPop(v14);
}

+ (id)allocateMPSImageBatchForTensor:(id)a3 commandBuffer:(id)a4 kernel:(id)a5 batchSize:(unint64_t)a6 heapAllocator:(id)a7 imageBatchIsTemporary:(BOOL)a8
{
  v33 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [v13 descriptor];
  v18 = [v17 shape];
  v19 = [v18 count] != 1;

  v20 = [v13 descriptor];
  v21 = [v20 shape];
  v22 = [v21 objectAtIndexedSubscript:v19];
  v23 = [v22 unsignedIntegerValue];

  v36 = 0;
  v37 = v23;
  v35 = 0;
  GPU_GetTensorWidthAndHeight(v13, &v36, &v35);
  if (!a6)
  {
    a6 = [v13 calculateBatchSizeToUse];
  }

  if (v23 > kMaxFeatureChannelMPSImage && (GPU_AdjustFeatureChannelBeyondMax(&v36, &v35, &v37, 0) & 1) == 0)
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCGPUHelper allocateMPSImageBatchForTensor:v33 commandBuffer:v13 kernel:v27 batchSize:? heapAllocator:? imageBatchIsTemporary:?];
    }

    goto LABEL_13;
  }

  v24 = [v13 descriptor];
  v25 = [v24 dataType];

  v26 = v25 - 1;
  if ((v25 - 1) >= 6 || ((0x2Du >> v26) & 1) == 0)
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCGPUHelper allocateMPSImageBatchForTensor:v34 commandBuffer:v13 kernel:v27 batchSize:? heapAllocator:? imageBatchIsTemporary:?];
    }

LABEL_13:
    v29 = MEMORY[0x277CBEBF8];
    goto LABEL_14;
  }

  v27 = [MEMORY[0x277CD7220] imageDescriptorWithChannelFormat:qword_238D45B10[v26] width:v36 height:v35 featureChannels:v37];
  if (v16)
  {
    v28 = v16;
  }

  else
  {
    if (a8)
    {
      v31 = MEMORY[0x277CD72A8];
    }

    else
    {
      v31 = MEMORY[0x277CD7218];
    }

    v28 = [v31 defaultAllocator];
  }

  v32 = v28;
  v29 = [v28 imageBatchForCommandBuffer:v14 imageDescriptor:v27 kernel:v15 count:a6];

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