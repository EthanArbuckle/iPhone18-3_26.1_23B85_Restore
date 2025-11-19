@interface _MLCGPUEmbedding
- (_MLCGPUEmbedding)initWithDevice:(id)a3 descriptor:(id)a4 weights:(id)a5 inferenceOnly:(BOOL)a6;
@end

@implementation _MLCGPUEmbedding

- (_MLCGPUEmbedding)initWithDevice:(id)a3 descriptor:(id)a4 weights:(id)a5 inferenceOnly:(BOOL)a6
{
  v44[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v43.receiver = self;
  v43.super_class = _MLCGPUEmbedding;
  v12 = [(_MLCGPUEmbedding *)&v43 init];
  v13 = v12;
  if (v12)
  {
    v39 = v12;
    v41 = [MEMORY[0x277CBEBF8] mutableCopy];
    v14 = [v9 deviceList];
    v15 = [v14 count];

    if (v15)
    {
      v16 = 0;
      do
      {
        v17 = [v9 deviceList];
        v18 = [v17 objectAtIndexedSubscript:v16];

        v19 = +[MLCEmbeddingGPUDeviceOps deviceOps];
        if (v19)
        {
          v20 = [v11 deviceMemory];
          v21 = [v20 count];

          if (v16 >= v21)
          {
            v22 = [v11 data];
            v23 = [v22 bytes];
            v24 = [v11 data];
            v25 = [v18 newBufferWithBytes:v23 length:objc_msgSend(v24 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
            v26 = [v11 deviceMemory];
            [v26 setObject:v25 atIndexedSubscript:v16];
          }

          if (!a6)
          {
            v27 = [v11 data];
            v28 = [v18 newBufferWithLength:objc_msgSend(v27 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
            [v19 setGradientForWeights:v28];
          }

          v29 = [v10 paddingIndex];
          [v19 setPaddingIndex:v29];

          [v19 setEmbeddingParams:0];
          v30 = [v10 maximumNorm];

          if (v30)
          {
            v31 = [v10 maximumNorm];
            v44[0] = v31;
            v32 = [v10 pNorm];
            v44[1] = v32;
            v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
            [v19 setEmbeddingParams:v33];
          }

          [v19 setScaleGradientByFrequency:{objc_msgSend(v10, "scalesGradientByFrequency")}];
          [v19 setSourceOfForwardNeededForGradient:1];
          [v19 setResultOfForwardNeededForGradient:0];
          [v41 addObject:v19];
        }

        ++v16;
        v34 = [v9 deviceList];
        v35 = [v34 count];
      }

      while (v16 < v35);
    }

    v36 = [v41 copy];
    v13 = v39;
    v42.receiver = v39;
    v42.super_class = _MLCGPUEmbedding;
    [(_MLCGPULayer *)&v42 setDeviceOps:v36];
  }

  v37 = *MEMORY[0x277D85DE8];
  return v13;
}

@end