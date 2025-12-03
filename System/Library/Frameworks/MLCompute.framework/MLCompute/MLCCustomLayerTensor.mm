@interface MLCCustomLayerTensor
+ (id)customLayerTensorWithDescriptor:(id)descriptor cpuBuffer:(id)buffer;
+ (id)customLayerTensorWithDescriptor:(id)descriptor gpuBuffer:(id)buffer;
- (MLCCustomLayerTensor)initWithTensorDescriptor:(id)descriptor cpuBuffer:(id)buffer gpuBuffer:(id)gpuBuffer;
- (MLCTensorData)hostData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MLCCustomLayerTensor

+ (id)customLayerTensorWithDescriptor:(id)descriptor gpuBuffer:(id)buffer
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  v8 = [[self alloc] initWithTensorDescriptor:descriptorCopy cpuBuffer:0 gpuBuffer:bufferCopy];

  return v8;
}

+ (id)customLayerTensorWithDescriptor:(id)descriptor cpuBuffer:(id)buffer
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  v8 = [[self alloc] initWithTensorDescriptor:descriptorCopy cpuBuffer:bufferCopy gpuBuffer:0];

  return v8;
}

- (MLCCustomLayerTensor)initWithTensorDescriptor:(id)descriptor cpuBuffer:(id)buffer gpuBuffer:(id)gpuBuffer
{
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  gpuBufferCopy = gpuBuffer;
  v15.receiver = self;
  v15.super_class = MLCCustomLayerTensor;
  v12 = [(MLCCustomLayerTensor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_descriptor, descriptor);
    objc_storeStrong(&v13->_cpuBuffer, buffer);
    objc_storeStrong(&v13->_gpuBuffer, gpuBuffer);
  }

  return v13;
}

- (MLCTensorData)hostData
{
  cpuBuffer = [(MLCCustomLayerTensor *)self cpuBuffer];
  bytes = [cpuBuffer bytes];
  cpuBuffer2 = [(MLCCustomLayerTensor *)self cpuBuffer];
  v6 = +[MLCTensorData dataWithBytesNoCopy:length:](MLCTensorData, "dataWithBytesNoCopy:length:", bytes, [cpuBuffer2 length]);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptor = [(MLCCustomLayerTensor *)self descriptor];
  cpuBuffer = [(MLCCustomLayerTensor *)self cpuBuffer];
  bytes = [cpuBuffer bytes];
  gpuBuffer = [(MLCCustomLayerTensor *)self gpuBuffer];
  v10 = [v3 stringWithFormat:@"%@: { tensorDescriptor=%@ : cpuBuffer=%@ : gpuBuffer=%@}", v5, descriptor, bytes, gpuBuffer];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  descriptor = [(MLCCustomLayerTensor *)self descriptor];
  cpuBuffer = [(MLCCustomLayerTensor *)self cpuBuffer];
  gpuBuffer = [(MLCCustomLayerTensor *)self gpuBuffer];
  v8 = [v4 initWithTensorDescriptor:descriptor cpuBuffer:cpuBuffer gpuBuffer:gpuBuffer];

  return v8;
}

@end