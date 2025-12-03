@interface _MLCGPUNeuron
+ (id)createMPSNeuronDescriptorWith:(id)with;
+ (id)layerWithDevice:(id)device descriptor:(id)descriptor;
+ (int)mpsNeurontypeFrom:(int)from;
- (_MLCGPUNeuron)initWithDevice:(id)device descriptor:(id)descriptor;
@end

@implementation _MLCGPUNeuron

+ (int)mpsNeurontypeFrom:(int)from
{
  if (from < 0x13 && ((0x407FFu >> from) & 1) != 0)
  {
    return dword_238D45C30[from];
  }

  v5 = +[MLCLog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_MLCGPUNeuron *)from mpsNeurontypeFrom:v5];
  }

  return 16;
}

+ (id)createMPSNeuronDescriptorWith:(id)with
{
  withCopy = with;
  [withCopy a];
  v6 = v5;
  [withCopy b];
  v8 = v7;
  [withCopy c];
  v10 = v9;
  activationType = [withCopy activationType];

  v12 = [self mpsNeurontypeFrom:activationType];
  if (v12 == 16)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_MLCGPUNeuron createMPSNeuronDescriptorWith:v16];
    }

    v17 = 0;
  }

  else
  {
    LODWORD(v13) = v6;
    LODWORD(v14) = v8;
    LODWORD(v15) = v10;
    v17 = [MEMORY[0x277CD7758] cnnNeuronDescriptorWithType:v12 a:v13 b:v14 c:v15];
  }

  return v17;
}

- (_MLCGPUNeuron)initWithDevice:(id)device descriptor:(id)descriptor
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  v30.receiver = self;
  v30.super_class = _MLCGPUNeuron;
  v8 = [(_MLCGPUNeuron *)&v30 init];
  v9 = v8;
  if (v8)
  {
    v27 = v8;
    deviceList = [deviceCopy deviceList];
    v11 = [deviceList count];

    v12 = [MEMORY[0x277CBEBF8] mutableCopy];
    v28 = descriptorCopy;
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        deviceList2 = [deviceCopy deviceList];
        v15 = [deviceList2 objectAtIndexedSubscript:i];

        gpuLibrary = [deviceCopy gpuLibrary];
        v17 = [gpuLibrary objectAtIndexedSubscript:i];
        v18 = [v17 newFunctionWithName:@"activation_forward"];

        v19 = [v15 newComputePipelineStateWithFunction:v18 error:0];
        gpuLibrary2 = [deviceCopy gpuLibrary];
        v21 = [gpuLibrary2 objectAtIndexedSubscript:i];
        v22 = [v21 newFunctionWithName:@"activation_gradient"];

        v23 = [v15 newComputePipelineStateWithFunction:v22 error:0];
        v24 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v19 gradientKernel:v23];
        [v24 setIsMPSKernel:0];
        [v24 setMetalKernelType:1];
        [v24 setNeuronDescriptor:v28];
        [v24 setSourceOfForwardNeededForGradient:1];
        [v24 setResultOfForwardNeededForGradient:0];
        [v12 addObject:v24];
      }
    }

    v25 = [v12 copy];
    v9 = v27;
    v29.receiver = v27;
    v29.super_class = _MLCGPUNeuron;
    [(_MLCGPULayer *)&v29 setDeviceOps:v25];

    descriptorCopy = v28;
  }

  return v9;
}

+ (id)layerWithDevice:(id)device descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  deviceCopy = device;
  v8 = [[self alloc] initWithDevice:deviceCopy descriptor:descriptorCopy];

  return v8;
}

+ (void)mpsNeurontypeFrom:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "+[_MLCGPUNeuron mpsNeurontypeFrom:]";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%s: Unknown neuron type %d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)createMPSNeuronDescriptorWith:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[_MLCGPUNeuron createMPSNeuronDescriptorWith:]";
  v4 = 1024;
  v5 = 16;
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: Unknown MPS neuron type %d", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end