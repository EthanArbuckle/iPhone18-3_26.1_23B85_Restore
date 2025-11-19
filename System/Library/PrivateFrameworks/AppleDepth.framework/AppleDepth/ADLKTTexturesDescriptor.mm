@interface ADLKTTexturesDescriptor
- ($06231CF0FCC0A6A3B5C95DAAB190E4AF)opticalFlowConfig;
- (CGSize)downscaledInputSizeForLayout:(unint64_t)a3;
- (CGSize)inputSizeForLayout:(unint64_t)a3;
- (CGSize)outputSizeForLayout:(unint64_t)a3;
- (id)initForSupportedSizes:(id)a3 config:(id *)a4;
- (id)initForSupportedSizes:(id)a3 prioritization:(int64_t)a4;
@end

@implementation ADLKTTexturesDescriptor

- ($06231CF0FCC0A6A3B5C95DAAB190E4AF)opticalFlowConfig
{
  nwarpings = self->_opticalFlowConfig.nwarpings;
  retstr->var0 = self->_opticalFlowConfig.scales;
  result = nwarpings;
  retstr->var1 = result;
  v7 = *&self->_opticalFlowConfig.nlreg_sigma_c;
  *&retstr->var2 = *&self->_opticalFlowConfig.useNonLocalRegularization;
  *&retstr->var6 = v7;
  *(&retstr->var8 + 5) = *(&self->_opticalFlowConfig.downscaleToWidth + 5);
  return result;
}

- (CGSize)outputSizeForLayout:(unint64_t)a3
{
  [(ADImageDescriptor *)self->_outputDescriptor sizeForLayout:a3];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)downscaledInputSizeForLayout:(unint64_t)a3
{
  [(ADImageDescriptor *)self->_downscaledInputDescriptor sizeForLayout:a3];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)inputSizeForLayout:(unint64_t)a3
{
  [(ADImageDescriptor *)self->_inputDescriptor sizeForLayout:a3];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)initForSupportedSizes:(id)a3 config:(id *)a4
{
  v7 = a3;
  v71.receiver = self;
  v71.super_class = ADLKTTexturesDescriptor;
  v8 = [(ADLKTTexturesDescriptor *)&v71 init];
  v9 = v8;
  if (v8)
  {
    var0 = a4->var0;
    var1 = a4->var1;
    v8->_scales = a4->var0;
    v8->_opticalFlowConfig.scales = var0;
    objc_storeStrong(&v8->_opticalFlowConfig.nwarpings, var1);
    v12 = *&a4->var2;
    v13 = *&a4->var6;
    *(&v9->_opticalFlowConfig.downscaleToWidth + 5) = *(&a4->var8 + 5);
    *&v9->_opticalFlowConfig.useNonLocalRegularization = v12;
    *&v9->_opticalFlowConfig.nlreg_sigma_c = v13;
    v14 = [MEMORY[0x277CED078] descriptorForSupportedSizes:v7 pixelFormat:1278226488];
    inputDescriptor = v9->_inputDescriptor;
    v69 = v9;
    v9->_inputDescriptor = v14;

    v16 = [v7 mutableCopy];
    if (a4->var8)
    {
      for (i = 0; [v7 count] > i; ++i)
      {
        v18 = [v7 objectAtIndexedSubscript:i];
        [v18 size];
        v4 = v19;
        v21 = v20;

        var8 = a4->var8;
        v23 = var8;
        if (v4 <= var8)
        {
          v23 = v4;
        }

        else
        {
          v24 = v21 * (var8 / v4);
          v25 = ceilf(v24 * 0.5);
          v21 = (v25 + v25);
        }

        v26 = MEMORY[0x277CED088];
        v27 = [v7 objectAtIndexedSubscript:i];
        v28 = [v26 createWithSize:objc_msgSend(v27 andLayout:{"layout"), v23, v21}];
        [v16 setObject:v28 atIndexedSubscript:i];
      }
    }

    v29 = [MEMORY[0x277CED078] descriptorForSupportedSizes:v16 pixelFormat:1278226488];
    downscaledInputDescriptor = v69->_downscaledInputDescriptor;
    v69->_downscaledInputDescriptor = v29;

    v31 = [MEMORY[0x277CED078] descriptorForSupportedSizes:v16 pixelFormat:843264104];
    shiftmapDescriptor = v69->_shiftmapDescriptor;
    v69->_shiftmapDescriptor = v31;

    obj = [MEMORY[0x277CBEB18] arrayWithCapacity:v69->_scales];
    v66 = [MEMORY[0x277CBEB18] arrayWithCapacity:v69->_scales];
    v68 = [MEMORY[0x277CBEB18] arrayWithCapacity:v69->_scales];
    v33 = [v16 mutableCopy];
    if (v69->_scales)
    {
      v34 = 0;
      v35 = 0;
      do
      {
        v36 = [MEMORY[0x277CED078] descriptorForSupportedSizes:v33 pixelFormat:1278226488];
        [v68 setObject:v36 atIndexedSubscript:v34];

        v37 = [MEMORY[0x277CED078] descriptorForSupportedSizes:v33 pixelFormat:843264104];
        [obj setObject:v37 atIndexedSubscript:v34];

        v38 = [MEMORY[0x277CED078] descriptorForSupportedSizes:v33 pixelFormat:1380411457];
        [v66 setObject:v38 atIndexedSubscript:v34];

        for (j = 0; ; j = v40 + 1)
        {
          v40 = j;
          if ([v33 count] <= j)
          {
            break;
          }

          v41 = [v33 objectAtIndexedSubscript:j];
          [v41 size];
          [ADLKTOpticalFlow getNextPyramidLevelSize:?];
          v43 = v42;
          v45 = v44;

          v46 = MEMORY[0x277CED088];
          v47 = [v33 objectAtIndexedSubscript:v40];
          v48 = [v46 createWithSize:objc_msgSend(v47 andLayout:{"layout"), v43, v45}];
          [v33 setObject:v48 atIndexedSubscript:v40];
        }

        v34 = ++v35;
      }

      while (v69->_scales > v35);
    }

    objc_storeStrong(&v69->_featuresDescriptors, obj);
    objc_storeStrong(&v69->_derivitivesDescriptors, v66);
    objc_storeStrong(&v69->_pyramidsDescriptors, v68);
    v49 = [v16 mutableCopy];
    if (a4->var9 >= 2)
    {
      for (k = 0; ; k = v51 + 1)
      {
        v51 = k;
        if ([v16 count] <= k)
        {
          break;
        }

        v52 = [v16 objectAtIndexedSubscript:k];
        [v52 size];
        v54 = v53;
        LODWORD(v4) = a4->var9;
        v55 = [v16 objectAtIndexedSubscript:v51];
        [v55 size];
        v57 = v56;
        LODWORD(v5) = a4->var9;

        v58 = MEMORY[0x277CED088];
        v59 = [v7 objectAtIndexedSubscript:v51];
        v60 = [v58 createWithSize:objc_msgSend(v59 andLayout:{"layout"), ceil(v54 / *&v4), ceil(v57 / v5)}];
        [v49 setObject:v60 atIndexedSubscript:v51];
      }
    }

    v61 = [MEMORY[0x277CED078] descriptorForSupportedSizes:v49 pixelFormat:843264104];
    outputDescriptor = v69->_outputDescriptor;
    v69->_outputDescriptor = v61;

    v63 = [MEMORY[0x277CED078] descriptorForSupportedSizes:v49 pixelFormat:1278226536];
    confidenceDescriptor = v69->_confidenceDescriptor;
    v69->_confidenceDescriptor = v63;

    v9 = v69;
  }

  return v9;
}

- (id)initForSupportedSizes:(id)a3 prioritization:(int64_t)a4
{
  v6 = a3;
  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    +[ADLKTOpticalFlow defaultConfig];
    if (self)
    {
      v7 = v14;
      goto LABEL_11;
    }

    v10 = v14;
LABEL_16:

    v8 = 0;
    goto LABEL_17;
  }

  switch(a4)
  {
    case 4:
      goto LABEL_5;
    case 3:
      +[ADLKTOpticalFlow highQualityConfig];
      if (self)
      {
        v7 = v12;
        goto LABEL_11;
      }

      v10 = v12;
      goto LABEL_16;
    case 1:
LABEL_5:
      +[ADLKTOpticalFlow highPerformanceConfig];
      if (self)
      {
        v7 = v13;
LABEL_11:
        v8 = [(ADLKTTexturesDescriptor *)self initForSupportedSizes:v6 config:v7];
LABEL_17:
        self = v8;
        v9 = self;
        goto LABEL_18;
      }

      v10 = v13;
      goto LABEL_16;
  }

  v9 = 0;
LABEL_18:

  return v9;
}

@end