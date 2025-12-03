@interface _MLCCPUEmbedding
- (_MLCCPUEmbedding)initWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights inferenceOnly:(BOOL)only;
@end

@implementation _MLCCPUEmbedding

- (_MLCCPUEmbedding)initWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights inferenceOnly:(BOOL)only
{
  v53[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  descriptorCopy = descriptor;
  weightsCopy = weights;
  v13 = MEMORY[0x277CBEBF8];
  v14 = [MEMORY[0x277CBEBF8] mutableCopy];
  v15 = [v13 mutableCopy];
  if (only)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    onlyCopy = only;
    v45 = deviceCopy;
    v47 = v14;
    memset(v52, 0, sizeof(v52));
    descriptor = [weightsCopy descriptor];
    shape = [descriptor shape];
    descriptor2 = [weightsCopy descriptor];
    stride = [descriptor2 stride];
    descriptor3 = [weightsCopy descriptor];
    v23 = CPU_BuildBNNSNDArrayDescriptorRowMajor(v52, shape, stride, 0, [descriptor3 dataType], 2, 0);

    if (!v23)
    {
      selfCopy2 = 0;
      deviceCopy = v45;
      v14 = v47;
      goto LABEL_14;
    }

    v16 = [MEMORY[0x277CBEA90] dataWithBytes:v52 length:176];
    data = [weightsCopy data];
    bytes = [data bytes];
    *([v16 bytes] + 136) = bytes;

    v49 = [MEMORY[0x277CBEA90] dataWithBytes:v52 length:176];
    for (i = 0; i != 3; ++i)
    {
      v27 = [MEMORY[0x277CBEA90] dataWithBytes:v52 length:176];
      [v15 setObject:v27 atIndexedSubscript:i];
    }

    deviceCopy = v45;
    v14 = v47;
    only = onlyCopy;
    v17 = v49;
  }

  v50 = v17;
  v28 = [MLCCPUDeviceOps deviceOpsWithType:"deviceOpsWithType:params:inDeltaData:outDeltaData:weightsDeltaData:biasDeltaData:weightsMomentumData:biasMomentumData:" params:47 inDeltaData:v16 outDeltaData:0 weightsDeltaData:0 biasDeltaData:v15 weightsMomentumData:0 biasMomentumData:?];
  if (v28)
  {
    [v14 addObject:v28];
    paddingIndex = [descriptorCopy paddingIndex];
    [v28 setPaddingIndex:paddingIndex];

    [v28 setEmbeddingParams:0];
    maximumNorm = [descriptorCopy maximumNorm];

    if (maximumNorm)
    {
      maximumNorm2 = [descriptorCopy maximumNorm];
      v53[0] = maximumNorm2;
      [descriptorCopy pNorm];
      v46 = descriptorCopy;
      v48 = v14;
      v32 = weightsCopy;
      v34 = v33 = deviceCopy;
      v53[1] = v34;
      [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
      v35 = v16;
      selfCopy = self;
      v38 = v37 = only;
      [v28 setEmbeddingParams:v38];

      only = v37;
      self = selfCopy;
      v16 = v35;

      deviceCopy = v33;
      weightsCopy = v32;
      descriptorCopy = v46;
      v14 = v48;
    }

    [v28 setScaleGradientByFrequency:{objc_msgSend(descriptorCopy, "scalesGradientByFrequency")}];
    if (!only)
    {
      v39 = [MEMORY[0x277CBEBF8] mutableCopy];
      [v28 setWeightsDeltaDataBytesArray:v39];
    }
  }

  v40 = [v14 copy];
  v51.receiver = self;
  v51.super_class = _MLCCPUEmbedding;
  self = [(_MLCCPULayer *)&v51 initWithDevice:deviceCopy deviceOps:v40];

  selfCopy2 = self;
LABEL_14:

  v42 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

@end