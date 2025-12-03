@interface MTLIOAccelDebugCommandEncoder
- (MTLIOAccelDebugCommandEncoder)initWithCommandBuffer:(id)buffer;
- (unsigned)addDebugResourceListInfo:(IOAccelResourceInfo *)info flag:(unsigned int)flag;
- (void)addAPIResource:(id)resource;
- (void)dealloc;
- (void)debugBytes:(const char *)bytes length:(unint64_t)length output_type:(unsigned int)output_type;
- (void)debugResourceBytes:(unsigned int)bytes length:(unint64_t)length output_type:(unsigned int)output_type;
- (void)endEncoding;
- (void)reserveKernelCommandBufferSpace:(unint64_t)space;
- (void)restartDebugPass;
@end

@implementation MTLIOAccelDebugCommandEncoder

- (MTLIOAccelDebugCommandEncoder)initWithCommandBuffer:(id)buffer
{
  v7.receiver = self;
  v7.super_class = MTLIOAccelDebugCommandEncoder;
  v4 = [(_MTLCommandEncoder *)&v7 initWithCommandBuffer:?];
  v5 = v4;
  if (v4)
  {
    [buffer getCurrentKernelCommandBufferPointer:&v4->_kernelCommandBufferCurrent end:&v4->_kernelCommandBufferEnd];
    [buffer beginSegment:v5->_kernelCommandBufferCurrent];
    v5->_resourceList = [buffer ioAccelResourceList];
    v5->_api_resourceList = [buffer akResourceList];
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

- (void)reserveKernelCommandBufferSpace:(unint64_t)space
{
  kernelCommandBufferEnd = self->_kernelCommandBufferEnd;
  result = self->_kernelCommandBufferCurrent;
  if (kernelCommandBufferEnd - result < space)
  {
    commandBuffer = self->super.super._commandBuffer;
    [(MTLCommandBuffer *)commandBuffer growKernelCommandBuffer:space];
    [(MTLCommandBuffer *)commandBuffer getCurrentKernelCommandBufferPointer:&self->_kernelCommandBufferCurrent end:&self->_kernelCommandBufferEnd];
    result = self->_kernelCommandBufferCurrent;
  }

  self->_kernelCommandBufferCurrent = result + space;
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

- (unsigned)addDebugResourceListInfo:(IOAccelResourceInfo *)info flag:(unsigned int)flag
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

- (void)debugBytes:(const char *)bytes length:(unint64_t)length output_type:(unsigned int)output_type
{
  v8 = (length + 19) & 0xFFFFFFFC;
  0xFFFFFFFFFFFFFFFCLL = [(MTLIOAccelDebugCommandEncoder *)self reserveKernelCommandBufferSpace:(length + 19) & 0xFFFFFFFFFFFFFFFCLL];
  *0xFFFFFFFFFFFFFFFCLL = 0;
  0xFFFFFFFFFFFFFFFCLL[1] = v8;
  0xFFFFFFFFFFFFFFFCLL[2] = output_type;
  0xFFFFFFFFFFFFFFFCLL[3] = length;
  v10 = 0xFFFFFFFFFFFFFFFCLL + 4;

  memcpy(v10, bytes, length);
}

- (void)debugResourceBytes:(unsigned int)bytes length:(unint64_t)length output_type:(unsigned int)output_type
{
  lengthCopy = length;
  v10[2] = bytes;
  v10[0] = 0;
  v10[1] = length & 0xFFFFFFFFFFFFFFLL;
  v8 = [(MTLIOAccelDebugCommandEncoder *)self addDebugResourceListInfo:v10 flag:16];
  v9 = [(MTLIOAccelDebugCommandEncoder *)self reserveKernelCommandBufferSpace:24];
  *v9 = 0x1800000001;
  v9[2] = output_type;
  v9[3] = lengthCopy;
  v9[4] = v8;
  v9[5] = 0;
  [(MTLIOAccelDebugCommandEncoder *)self restartDebugPass];
}

- (void)addAPIResource:(id)resource
{
  api_resourceList = self->_api_resourceList;
  if (api_resourceList)
  {
    MTLResourceListAddResource(api_resourceList, resource);
  }
}

@end