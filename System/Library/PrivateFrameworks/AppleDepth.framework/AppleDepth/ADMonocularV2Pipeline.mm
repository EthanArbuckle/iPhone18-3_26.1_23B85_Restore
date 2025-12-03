@interface ADMonocularV2Pipeline
- (ADMonocularV2Pipeline)initWithInputPrioritization:(int64_t)prioritization andParameters:(id)parameters;
- (int64_t)adjustForEngine:(unint64_t)engine;
- (int64_t)postProcessDisparity:(__CVBuffer *)disparity output:(__CVBuffer *)output;
@end

@implementation ADMonocularV2Pipeline

- (int64_t)postProcessDisparity:(__CVBuffer *)disparity output:(__CVBuffer *)output
{
  kdebug_trace();
  v6 = [ADUtils postProcessDepth:disparity depthOutput:output];
  kdebug_trace();
  return v6;
}

- (ADMonocularV2Pipeline)initWithInputPrioritization:(int64_t)prioritization andParameters:(id)parameters
{
  v35 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v22 = 335686160;
  prioritizationCopy = prioritization;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  kdebug_trace();
  v21.receiver = self;
  v21.super_class = ADMonocularV2Pipeline;
  v7 = [(ADMonocularV2Pipeline *)&v21 init];
  if (v7)
  {
    if (!parametersCopy)
    {
      parametersCopy = objc_opt_new();
    }

    objc_storeStrong(&v7->_pipelineParameters, parametersCopy);
    if ([(ADMonocularV2PipelineParameters *)v7->_pipelineParameters networkVariantOverride]!= 1)
    {
      if (-[ADMonocularV2PipelineParameters networkVariantOverride](v7->_pipelineParameters, "networkVariantOverride") == 255 || ![MEMORY[0x277CEE958] hasANE])
      {
        goto LABEL_23;
      }

      ADCommonUtils::runtimePlatformANEVersionString(&buf);
      if (v34 < 0)
      {
        v14 = buf;
        v12 = *(&buf + 1) ? atoi((buf + 1)) : -1;
        operator delete(v14);
      }

      else
      {
        if (!v34)
        {
          goto LABEL_5;
        }

        v12 = atoi(&buf + 1);
      }

      if (v12 > 12)
      {
LABEL_23:
        v8 = @"CVM";
        if (prioritization != 3)
        {
LABEL_6:
          if (prioritization == 2)
          {
            v29 = &unk_28524A728;
            v30 = @"height_216_width_288";
            v9 = &v29;
            v10 = &v30;
            v11 = @"height_176_width_320";
          }

          else
          {
            if (prioritization != 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                v20 = [ADUtils prioritizationAsString:prioritization];
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v20;
                _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MonocularV2 does not support prioritization %{public}@", &buf, 0xCu);
              }

              v13 = 0;
              goto LABEL_31;
            }

            v31 = &unk_28524A728;
            v32 = @"height_160_width_224";
            v9 = &v31;
            v10 = &v32;
            v11 = @"height_144_width_256";
          }

LABEL_25:
          v9[1] = &unk_28524A740;
          v10[1] = v11;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
          v15 = [ADNetworkProvider providerForNetwork:v8 requestedLayouts:v13];
          networkProvider = v7->_networkProvider;
          v7->_networkProvider = v15;

          if (v7->_networkProvider)
          {
            if ([MEMORY[0x277CEE958] hasANE])
            {
              v17 = 4;
            }

            else
            {
              v17 = 2;
            }

            [(ADMonocularV2Pipeline *)v7 adjustForEngine:v17];

            goto LABEL_30;
          }

LABEL_31:

          v18 = 0;
          goto LABEL_32;
        }

LABEL_24:
        v27 = &unk_28524A728;
        v28 = @"height_360_width_480";
        v9 = &v27;
        v10 = &v28;
        v11 = @"height_280_width_496";
        goto LABEL_25;
      }
    }

LABEL_5:
    v8 = @"CVM4";
    if (prioritization != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_30:
  v18 = v7;
LABEL_32:
  kdebug_trace();

  return v18;
}

- (int64_t)adjustForEngine:(unint64_t)engine
{
  v4 = engine - 3;
  v5 = [ADEspressoMonocularV2InferenceDescriptor alloc];
  if (v4 >= 2)
  {
    v6 = 1717856627;
  }

  else
  {
    v6 = 1751411059;
  }

  v7 = [(ADEspressoMonocularV2InferenceDescriptor *)v5 initWithNetworkProvider:self->_networkProvider inputColorFormat:1111970369 disparityFormat:v6];
  inferenceDesc = self->_inferenceDesc;
  self->_inferenceDesc = v7;

  return 0;
}

@end