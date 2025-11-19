@interface MLCCustomLayerTensor
+ (id)customLayerTensorWithDescriptor:(id)a3 cpuBuffer:(id)a4;
+ (id)customLayerTensorWithDescriptor:(id)a3 gpuBuffer:(id)a4;
- (MLCCustomLayerTensor)initWithTensorDescriptor:(id)a3 cpuBuffer:(id)a4 gpuBuffer:(id)a5;
- (MLCTensorData)hostData;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MLCCustomLayerTensor

+ (id)customLayerTensorWithDescriptor:(id)a3 gpuBuffer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTensorDescriptor:v7 cpuBuffer:0 gpuBuffer:v6];

  return v8;
}

+ (id)customLayerTensorWithDescriptor:(id)a3 cpuBuffer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTensorDescriptor:v7 cpuBuffer:v6 gpuBuffer:0];

  return v8;
}

- (MLCCustomLayerTensor)initWithTensorDescriptor:(id)a3 cpuBuffer:(id)a4 gpuBuffer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MLCCustomLayerTensor;
  v12 = [(MLCCustomLayerTensor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_descriptor, a3);
    objc_storeStrong(&v13->_cpuBuffer, a4);
    objc_storeStrong(&v13->_gpuBuffer, a5);
  }

  return v13;
}

- (MLCTensorData)hostData
{
  v3 = [(MLCCustomLayerTensor *)self cpuBuffer];
  v4 = [v3 bytes];
  v5 = [(MLCCustomLayerTensor *)self cpuBuffer];
  v6 = +[MLCTensorData dataWithBytesNoCopy:length:](MLCTensorData, "dataWithBytesNoCopy:length:", v4, [v5 length]);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCCustomLayerTensor *)self descriptor];
  v7 = [(MLCCustomLayerTensor *)self cpuBuffer];
  v8 = [v7 bytes];
  v9 = [(MLCCustomLayerTensor *)self gpuBuffer];
  v10 = [v3 stringWithFormat:@"%@: { tensorDescriptor=%@ : cpuBuffer=%@ : gpuBuffer=%@}", v5, v6, v8, v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCCustomLayerTensor *)self descriptor];
  v6 = [(MLCCustomLayerTensor *)self cpuBuffer];
  v7 = [(MLCCustomLayerTensor *)self gpuBuffer];
  v8 = [v4 initWithTensorDescriptor:v5 cpuBuffer:v6 gpuBuffer:v7];

  return v8;
}

@end