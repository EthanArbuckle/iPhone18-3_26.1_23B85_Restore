@interface CIMetalConverter
- (CIMetalConverter)initWithDevice:(id)a3 kernelName:(id)a4;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3 sourceBuffer:(id)a4 sourceRowBytes:(unint64_t)a5 destinationBuffer:(id)a6 destinationRowBytes:(unint64_t)a7 destinationSize:(id *)a8;
- (void)encodeToCommandBuffer:(id)a3 sourceBuffer:(id)a4 sourceRowBytes:(unint64_t)a5 destinationTexture:(id)a6;
@end

@implementation CIMetalConverter

- (CIMetalConverter)initWithDevice:(id)a3 kernelName:(id)a4
{
  v9.receiver = self;
  v9.super_class = CIMetalConverter;
  v6 = [(CIMetalConverter *)&v9 init];
  if (v6)
  {
    v6->_device = a3;
    v7 = [a3 newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
    v6->_convertToTexture = [v7 newFunctionWithName:{objc_msgSend(a4, "stringByAppendingString:", @"_texture"}];
    v6->_convertToBuffer = [v7 newFunctionWithName:{objc_msgSend(a4, "stringByAppendingString:", @"_buffer"}];

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

- (void)encodeToCommandBuffer:(id)a3 sourceBuffer:(id)a4 sourceRowBytes:(unint64_t)a5 destinationTexture:(id)a6
{
  v7 = a5;
  v11 = [a3 computeCommandEncoder];
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:self->_convertToTexture error:0];
  [v11 setComputePipelineState:v13];
  v14 = [a6 width];
  v15 = [a6 height];
  v22[0] = v14;
  v22[1] = v7;
  v22[2] = 0;
  [v11 setBytes:v22 length:12 atIndex:0];
  [v11 setBuffer:a4 offset:0 atIndex:1];
  [v12 addObject:a4];
  [v11 setTexture:a6 atIndex:0];
  [v12 addObject:a6];
  v16 = [v13 threadExecutionWidth];
  v17 = [v13 maxTotalThreadsPerThreadgroup];
  v18 = [v13 threadExecutionWidth];
  v21[0] = (v14 + 4 * v16 - 1) / (4 * v16);
  v21[1] = (v15 + v17 / v18 - 1) / (v17 / v18);
  v21[2] = 1;
  v20[0] = v16;
  v20[1] = v17 / v18;
  v20[2] = 1;
  [v11 dispatchThreadgroups:v21 threadsPerThreadgroup:v20];
  [v11 endEncoding];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__CIMetalConverter_encodeToCommandBuffer_sourceBuffer_sourceRowBytes_destinationTexture___block_invoke;
  v19[3] = &unk_1E75C3558;
  v19[4] = v12;
  v19[5] = v13;
  [a3 addCompletedHandler:v19];
}

void __89__CIMetalConverter_encodeToCommandBuffer_sourceBuffer_sourceRowBytes_destinationTexture___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeAllObjects];
  v2 = *(a1 + 40);
}

- (void)encodeToCommandBuffer:(id)a3 sourceBuffer:(id)a4 sourceRowBytes:(unint64_t)a5 destinationBuffer:(id)a6 destinationRowBytes:(unint64_t)a7 destinationSize:(id *)a8
{
  v9 = a7;
  v11 = a5;
  v15 = [a3 computeCommandEncoder];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:self->_convertToBuffer error:0];
  [v15 setComputePipelineState:v17];
  var0 = a8->var0;
  var1 = a8->var1;
  v26[0] = var0;
  v26[1] = v11;
  v26[2] = v9;
  [v15 setBytes:v26 length:12 atIndex:0];
  [v15 setBuffer:a4 offset:0 atIndex:1];
  [v16 addObject:a4];
  [v15 setBuffer:a6 offset:0 atIndex:2];
  [v16 addObject:a6];
  v20 = [v17 threadExecutionWidth];
  v21 = [v17 maxTotalThreadsPerThreadgroup];
  v22 = [v17 threadExecutionWidth];
  v25[0] = (var0 + 4 * v20 - 1) / (4 * v20);
  v25[1] = (var1 + v21 / v22 - 1) / (v21 / v22);
  v25[2] = 1;
  v24[0] = v20;
  v24[1] = v21 / v22;
  v24[2] = 1;
  [v15 dispatchThreadgroups:v25 threadsPerThreadgroup:v24];
  [v15 endEncoding];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __124__CIMetalConverter_encodeToCommandBuffer_sourceBuffer_sourceRowBytes_destinationBuffer_destinationRowBytes_destinationSize___block_invoke;
  v23[3] = &unk_1E75C3558;
  v23[4] = v16;
  v23[5] = v17;
  [a3 addCompletedHandler:v23];
}

void __124__CIMetalConverter_encodeToCommandBuffer_sourceBuffer_sourceRowBytes_destinationBuffer_destinationRowBytes_destinationSize___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeAllObjects];
  v2 = *(a1 + 40);
}

@end