@interface CIMetalConverter
- (CIMetalConverter)initWithDevice:(id)device kernelName:(id)name;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer sourceBuffer:(id)sourceBuffer sourceRowBytes:(unint64_t)bytes destinationBuffer:(id)destinationBuffer destinationRowBytes:(unint64_t)rowBytes destinationSize:(id *)size;
- (void)encodeToCommandBuffer:(id)buffer sourceBuffer:(id)sourceBuffer sourceRowBytes:(unint64_t)bytes destinationTexture:(id)texture;
@end

@implementation CIMetalConverter

- (CIMetalConverter)initWithDevice:(id)device kernelName:(id)name
{
  v9.receiver = self;
  v9.super_class = CIMetalConverter;
  v6 = [(CIMetalConverter *)&v9 init];
  if (v6)
  {
    v6->_device = device;
    v7 = [device newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
    v6->_convertToTexture = [v7 newFunctionWithName:{objc_msgSend(name, "stringByAppendingString:", @"_texture"}];
    v6->_convertToBuffer = [v7 newFunctionWithName:{objc_msgSend(name, "stringByAppendingString:", @"_buffer"}];

    if (!v6->_convertToTexture || !v6->_convertToBuffer)
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CIMetalConverter;
  [(CIMetalConverter *)&v3 dealloc];
}

- (void)encodeToCommandBuffer:(id)buffer sourceBuffer:(id)sourceBuffer sourceRowBytes:(unint64_t)bytes destinationTexture:(id)texture
{
  bytesCopy = bytes;
  computeCommandEncoder = [buffer computeCommandEncoder];
  array = [MEMORY[0x1E695DF70] array];
  v13 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:self->_convertToTexture error:0];
  [computeCommandEncoder setComputePipelineState:v13];
  width = [texture width];
  height = [texture height];
  v22[0] = width;
  v22[1] = bytesCopy;
  v22[2] = 0;
  [computeCommandEncoder setBytes:v22 length:12 atIndex:0];
  [computeCommandEncoder setBuffer:sourceBuffer offset:0 atIndex:1];
  [array addObject:sourceBuffer];
  [computeCommandEncoder setTexture:texture atIndex:0];
  [array addObject:texture];
  threadExecutionWidth = [v13 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [v13 maxTotalThreadsPerThreadgroup];
  threadExecutionWidth2 = [v13 threadExecutionWidth];
  v21[0] = (width + 4 * threadExecutionWidth - 1) / (4 * threadExecutionWidth);
  v21[1] = (height + maxTotalThreadsPerThreadgroup / threadExecutionWidth2 - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth2);
  v21[2] = 1;
  v20[0] = threadExecutionWidth;
  v20[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth2;
  v20[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v21 threadsPerThreadgroup:v20];
  [computeCommandEncoder endEncoding];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__CIMetalConverter_encodeToCommandBuffer_sourceBuffer_sourceRowBytes_destinationTexture___block_invoke;
  v19[3] = &unk_1E75C3558;
  v19[4] = array;
  v19[5] = v13;
  [buffer addCompletedHandler:v19];
}

void __89__CIMetalConverter_encodeToCommandBuffer_sourceBuffer_sourceRowBytes_destinationTexture___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeAllObjects];
  v2 = *(a1 + 40);
}

- (void)encodeToCommandBuffer:(id)buffer sourceBuffer:(id)sourceBuffer sourceRowBytes:(unint64_t)bytes destinationBuffer:(id)destinationBuffer destinationRowBytes:(unint64_t)rowBytes destinationSize:(id *)size
{
  rowBytesCopy = rowBytes;
  bytesCopy = bytes;
  computeCommandEncoder = [buffer computeCommandEncoder];
  array = [MEMORY[0x1E695DF70] array];
  v17 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:self->_convertToBuffer error:0];
  [computeCommandEncoder setComputePipelineState:v17];
  var0 = size->var0;
  var1 = size->var1;
  v26[0] = var0;
  v26[1] = bytesCopy;
  v26[2] = rowBytesCopy;
  [computeCommandEncoder setBytes:v26 length:12 atIndex:0];
  [computeCommandEncoder setBuffer:sourceBuffer offset:0 atIndex:1];
  [array addObject:sourceBuffer];
  [computeCommandEncoder setBuffer:destinationBuffer offset:0 atIndex:2];
  [array addObject:destinationBuffer];
  threadExecutionWidth = [v17 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [v17 maxTotalThreadsPerThreadgroup];
  threadExecutionWidth2 = [v17 threadExecutionWidth];
  v25[0] = (var0 + 4 * threadExecutionWidth - 1) / (4 * threadExecutionWidth);
  v25[1] = (var1 + maxTotalThreadsPerThreadgroup / threadExecutionWidth2 - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth2);
  v25[2] = 1;
  v24[0] = threadExecutionWidth;
  v24[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth2;
  v24[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v25 threadsPerThreadgroup:v24];
  [computeCommandEncoder endEncoding];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __124__CIMetalConverter_encodeToCommandBuffer_sourceBuffer_sourceRowBytes_destinationBuffer_destinationRowBytes_destinationSize___block_invoke;
  v23[3] = &unk_1E75C3558;
  v23[4] = array;
  v23[5] = v17;
  [buffer addCompletedHandler:v23];
}

void __124__CIMetalConverter_encodeToCommandBuffer_sourceBuffer_sourceRowBytes_destinationBuffer_destinationRowBytes_destinationSize___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeAllObjects];
  v2 = *(a1 + 40);
}

@end