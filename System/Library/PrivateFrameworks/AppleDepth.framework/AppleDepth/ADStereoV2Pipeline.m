@interface ADStereoV2Pipeline
- (ADStereoV2Pipeline)initWithParameters:(id)a3;
- (int64_t)adjustForEngine:(unint64_t)a3;
- (int64_t)preProcessColorInput:(__CVBuffer *)a3 toBuffer:(__CVBuffer *)a4;
@end

@implementation ADStereoV2Pipeline

- (ADStereoV2Pipeline)initWithParameters:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37 = 335687204;
  v38 = 0u;
  v39 = 0u;
  kdebug_trace();
  v36.receiver = self;
  v36.super_class = ADStereoV2Pipeline;
  v5 = [(ADStereoV2Pipeline *)&v36 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  if (!v4)
  {
    v4 = objc_opt_new();
  }

  objc_storeStrong(&v5->_pipelineParameters, v4);
  v6 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  v7 = [v6 uppercaseString];
  if ([v7 hasPrefix:@"D83"])
  {
    v8 = @"RTFSD_0deg";
LABEL_16:

    goto LABEL_17;
  }

  v9 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  v10 = [v9 uppercaseString];
  if ([v10 hasPrefix:@"D84"])
  {
    v8 = @"RTFSD_0deg";
LABEL_15:

    goto LABEL_16;
  }

  v11 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  v12 = [v11 uppercaseString];
  if ([v12 hasPrefix:@"T2030"])
  {
    goto LABEL_13;
  }

  v34 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  v13 = [v34 uppercaseString];
  if ([v13 hasPrefix:@"D93"])
  {
LABEL_12:

LABEL_13:
    v8 = @"RTFSD_0deg";
LABEL_14:

    goto LABEL_15;
  }

  v31 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  v32 = [v31 uppercaseString];
  if ([v32 hasPrefix:@"D94"])
  {

    goto LABEL_12;
  }

  v30 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  v29 = [v30 uppercaseString];
  if ([v29 hasPrefix:@"D47"])
  {
    v28 = 1;
  }

  else
  {
    v27 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
    v26 = [v27 uppercaseString];
    if ([v26 hasPrefix:@"D48"])
    {
      v28 = 1;
    }

    else
    {
      v25 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
      v24 = [v25 uppercaseString];
      if ([v24 hasPrefix:@"V53"])
      {
        v28 = 1;
      }

      else
      {
        v23 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
        v22 = [v23 uppercaseString];
        if ([v22 hasPrefix:@"V54"])
        {
          v28 = 1;
        }

        else
        {
          v21 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
          v20 = [v21 uppercaseString];
          v28 = [v20 hasPrefix:@"V57"];
        }
      }
    }
  }

  if (v28)
  {
    v8 = @"RTFSD_0deg";
    goto LABEL_17;
  }

  v6 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  v7 = [v6 uppercaseString];
  if ([v7 hasPrefix:@"D27"])
  {
    v8 = @"RTFSD_45deg";
    goto LABEL_16;
  }

  v9 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  v10 = [v9 uppercaseString];
  if ([v10 hasPrefix:@"D28"])
  {
    v8 = @"RTFSD_45deg";
    goto LABEL_15;
  }

  v11 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  v12 = [v11 uppercaseString];
  if ([v12 hasPrefix:@"D37"])
  {
    v8 = @"RTFSD_45deg";
    goto LABEL_14;
  }

  v35 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  v18 = [v35 uppercaseString];
  v33 = [v18 hasPrefix:@"D38"];

  if (v33)
  {
    v8 = @"RTFSD_45deg";
LABEL_17:
    v14 = [ADNetworkProvider providerForNetwork:v8];
    networkProvider = v5->_networkProvider;
    v5->_networkProvider = v14;

    if (!v5->_networkProvider)
    {
      v16 = 0;
      goto LABEL_22;
    }

    if ([(ADStereoV2Pipeline *)v5 adjustForEngine:3])
    {
      goto LABEL_19;
    }

LABEL_20:
    v16 = v5;
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v19 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
    *buf = 138543362;
    v41 = v19;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported device %{public}@", buf, 0xCu);
  }

LABEL_19:
  v16 = 0;
LABEL_22:
  kdebug_trace();

  return v16;
}

- (int64_t)preProcessColorInput:(__CVBuffer *)a3 toBuffer:(__CVBuffer *)a4
{
  kdebug_trace();
  if (self->_shouldPreProcessColorInputs)
  {
    [ADUtils convertRGBAFloat:a3 toPlanar:a4];
    v7 = 0;
  }

  else
  {
    v7 = -22951;
  }

  kdebug_trace();
  return v7;
}

- (int64_t)adjustForEngine:(unint64_t)a3
{
  if (a3 - 3 > 1)
  {
    self->_shouldPreProcessColorInputs = 1;
    v4 = [ADEspressoStereoV2InferenceDescriptor alloc];
    networkProvider = self->_networkProvider;
    v6 = 1380410945;
    v7 = 1717856627;
  }

  else
  {
    self->_shouldPreProcessColorInputs = 0;
    v4 = [ADEspressoStereoV2InferenceDescriptor alloc];
    networkProvider = self->_networkProvider;
    v6 = 1380411457;
    v7 = 1751411059;
  }

  v8 = [(ADEspressoStereoV2InferenceDescriptor *)v4 initWithNetworkProvider:networkProvider inputColorFormat:v6 outputDisparityFormat:v7];
  inferenceDesc = self->_inferenceDesc;
  self->_inferenceDesc = v8;

  return 0;
}

@end