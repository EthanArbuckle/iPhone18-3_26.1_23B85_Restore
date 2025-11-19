@interface _MLCCPUEmbedding
- (_MLCCPUEmbedding)initWithDevice:(id)a3 descriptor:(id)a4 weights:(id)a5 inferenceOnly:(BOOL)a6;
@end

@implementation _MLCCPUEmbedding

- (_MLCCPUEmbedding)initWithDevice:(id)a3 descriptor:(id)a4 weights:(id)a5 inferenceOnly:(BOOL)a6
{
  v53[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x277CBEBF8];
  v14 = [MEMORY[0x277CBEBF8] mutableCopy];
  v15 = [v13 mutableCopy];
  if (a6)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v44 = a6;
    v45 = v10;
    v47 = v14;
    memset(v52, 0, sizeof(v52));
    v18 = [v12 descriptor];
    v19 = [v18 shape];
    v20 = [v12 descriptor];
    v21 = [v20 stride];
    v22 = [v12 descriptor];
    v23 = CPU_BuildBNNSNDArrayDescriptorRowMajor(v52, v19, v21, 0, [v22 dataType], 2, 0);

    if (!v23)
    {
      v41 = 0;
      v10 = v45;
      v14 = v47;
      goto LABEL_14;
    }

    v16 = [MEMORY[0x277CBEA90] dataWithBytes:v52 length:176];
    v24 = [v12 data];
    v25 = [v24 bytes];
    *([v16 bytes] + 136) = v25;

    v49 = [MEMORY[0x277CBEA90] dataWithBytes:v52 length:176];
    for (i = 0; i != 3; ++i)
    {
      v27 = [MEMORY[0x277CBEA90] dataWithBytes:v52 length:176];
      [v15 setObject:v27 atIndexedSubscript:i];
    }

    v10 = v45;
    v14 = v47;
    a6 = v44;
    v17 = v49;
  }

  v50 = v17;
  v28 = [MLCCPUDeviceOps deviceOpsWithType:"deviceOpsWithType:params:inDeltaData:outDeltaData:weightsDeltaData:biasDeltaData:weightsMomentumData:biasMomentumData:" params:47 inDeltaData:v16 outDeltaData:0 weightsDeltaData:0 biasDeltaData:v15 weightsMomentumData:0 biasMomentumData:?];
  if (v28)
  {
    [v14 addObject:v28];
    v29 = [v11 paddingIndex];
    [v28 setPaddingIndex:v29];

    [v28 setEmbeddingParams:0];
    v30 = [v11 maximumNorm];

    if (v30)
    {
      v31 = [v11 maximumNorm];
      v53[0] = v31;
      [v11 pNorm];
      v46 = v11;
      v48 = v14;
      v32 = v12;
      v34 = v33 = v10;
      v53[1] = v34;
      [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
      v35 = v16;
      v36 = self;
      v38 = v37 = a6;
      [v28 setEmbeddingParams:v38];

      a6 = v37;
      self = v36;
      v16 = v35;

      v10 = v33;
      v12 = v32;
      v11 = v46;
      v14 = v48;
    }

    [v28 setScaleGradientByFrequency:{objc_msgSend(v11, "scalesGradientByFrequency")}];
    if (!a6)
    {
      v39 = [MEMORY[0x277CBEBF8] mutableCopy];
      [v28 setWeightsDeltaDataBytesArray:v39];
    }
  }

  v40 = [v14 copy];
  v51.receiver = self;
  v51.super_class = _MLCCPUEmbedding;
  self = [(_MLCCPULayer *)&v51 initWithDevice:v10 deviceOps:v40];

  v41 = self;
LABEL_14:

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

@end