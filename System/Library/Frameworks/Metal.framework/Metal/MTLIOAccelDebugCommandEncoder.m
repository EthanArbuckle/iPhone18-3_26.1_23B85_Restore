@interface MTLIOAccelDebugCommandEncoder
- (MTLIOAccelDebugCommandEncoder)initWithCommandBuffer:(id)a3;
- (unsigned)addDebugResourceListInfo:(IOAccelResourceInfo *)a3 flag:(unsigned int)a4;
- (void)addAPIResource:(id)a3;
- (void)dealloc;
- (void)debugBytes:(const char *)a3 length:(unint64_t)a4 output_type:(unsigned int)a5;
- (void)debugResourceBytes:(unsigned int)a3 length:(unint64_t)a4 output_type:(unsigned int)a5;
- (void)endEncoding;
- (void)reserveKernelCommandBufferSpace:(unint64_t)a3;
- (void)restartDebugPass;
@end

@implementation MTLIOAccelDebugCommandEncoder

- (MTLIOAccelDebugCommandEncoder)initWithCommandBuffer:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTLIOAccelDebugCommandEncoder;
  v4 = [(_MTLCommandEncoder *)&v7 initWithCommandBuffer:?];
  v5 = v4;
  if (v4)
  {
    [a3 getCurrentKernelCommandBufferPointer:&v4->_kernelCommandBufferCurrent end:&v4->_kernelCommandBufferEnd];
    [a3 beginSegment:v5->_kernelCommandBufferCurrent];
    v5->_resourceList = [a3 ioAccelResourceList];
    v5->_api_resourceList = [a3 akResourceList];
  }

  return v5;
}

- (void)dealloc
{
  self->_kernelCommandBufferEnd = 0;
  self->_kernelCommandBufferCurrent = 0;
  self->_resourceList = 0;
  self->_api_resourceList = 0;
  v2.receiver = self;
  v2.super_class = MTLIOAccelDebugCommandEncoder;
  [(_MTLCommandEncoder *)&v2 dealloc];
}

- (void)reserveKernelCommandBufferSpace:(unint64_t)a3
{
  kernelCommandBufferEnd = self->_kernelCommandBufferEnd;
  result = self->_kernelCommandBufferCurrent;
  if (kernelCommandBufferEnd - result < a3)
  {
    commandBuffer = self->super.super._commandBuffer;
    [(MTLCommandBuffer *)commandBuffer growKernelCommandBuffer:a3];
    [(MTLCommandBuffer *)commandBuffer getCurrentKernelCommandBufferPointer:&self->_kernelCommandBufferCurrent end:&self->_kernelCommandBufferEnd];
    result = self->_kernelCommandBufferCurrent;
  }

  self->_kernelCommandBufferCurrent = result + a3;
  return result;
}

- (void)restartDebugPass
{
  commandBuffer = self->super.super._commandBuffer;
  [(MTLCommandBuffer *)commandBuffer setCurrentKernelCommandBufferPointer:self->_kernelCommandBufferCurrent];
  [(MTLCommandBuffer *)commandBuffer endCurrentSegment];
  kernelCommandBufferCurrent = self->_kernelCommandBufferCurrent;

  [(MTLCommandBuffer *)commandBuffer beginSegment:kernelCommandBufferCurrent];
}

- (void)endEncoding
{
  commandBuffer = self->super.super._commandBuffer;
  [(MTLCommandBuffer *)commandBuffer setCurrentKernelCommandBufferPointer:self->_kernelCommandBufferCurrent];
  [(MTLCommandBuffer *)commandBuffer endCurrentSegment];
  self->_kernelCommandBufferEnd = 0;
  self->_kernelCommandBufferCurrent = 0;
  self->_resourceList = 0;
  self->_api_resourceList = 0;
  v4.receiver = self;
  v4.super_class = MTLIOAccelDebugCommandEncoder;
  [(_MTLCommandEncoder *)&v4 endEncoding];
}

- (unsigned)addDebugResourceListInfo:(IOAccelResourceInfo *)a3 flag:(unsigned int)a4
{
  resourceList = self->_resourceList;
  result = IOAccelResourceListAddResource();
  if (!self->_resourceList->var2)
  {
    [(MTLIOAccelDebugCommandEncoder *)self restartDebugPass];
    v7 = self->_resourceList;

    return IOAccelResourceListAddResource();
  }

  return result;
}

- (void)debugBytes:(const char *)a3 length:(unint64_t)a4 output_type:(unsigned int)a5
{
  v8 = (a4 + 19) & 0xFFFFFFFC;
  v9 = [(MTLIOAccelDebugCommandEncoder *)self reserveKernelCommandBufferSpace:(a4 + 19) & 0xFFFFFFFFFFFFFFFCLL];
  *v9 = 0;
  v9[1] = v8;
  v9[2] = a5;
  v9[3] = a4;
  v10 = v9 + 4;

  memcpy(v10, a3, a4);
}

- (void)debugResourceBytes:(unsigned int)a3 length:(unint64_t)a4 output_type:(unsigned int)a5
{
  v6 = a4;
  v10[2] = a3;
  v10[0] = 0;
  v10[1] = a4 & 0xFFFFFFFFFFFFFFLL;
  v8 = [(MTLIOAccelDebugCommandEncoder *)self addDebugResourceListInfo:v10 flag:16];
  v9 = [(MTLIOAccelDebugCommandEncoder *)self reserveKernelCommandBufferSpace:24];
  *v9 = 0x1800000001;
  v9[2] = a5;
  v9[3] = v6;
  v9[4] = v8;
  v9[5] = 0;
  [(MTLIOAccelDebugCommandEncoder *)self restartDebugPass];
}

- (void)addAPIResource:(id)a3
{
  api_resourceList = self->_api_resourceList;
  if (api_resourceList)
  {
    MTLResourceListAddResource(api_resourceList, a3);
  }
}

@end