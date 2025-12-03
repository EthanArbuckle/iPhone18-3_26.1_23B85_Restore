@interface ADStereoV2Pipeline
- (ADStereoV2Pipeline)initWithParameters:(id)parameters;
- (int64_t)adjustForEngine:(unint64_t)engine;
- (int64_t)preProcessColorInput:(__CVBuffer *)input toBuffer:(__CVBuffer *)buffer;
@end

@implementation ADStereoV2Pipeline

- (ADStereoV2Pipeline)initWithParameters:(id)parameters
{
  v42 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
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

  if (!parametersCopy)
  {
    parametersCopy = objc_opt_new();
  }

  objc_storeStrong(&v5->_pipelineParameters, parametersCopy);
  deviceName = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  uppercaseString = [deviceName uppercaseString];
  if ([uppercaseString hasPrefix:@"D83"])
  {
    v8 = @"RTFSD_0deg";
LABEL_16:

    goto LABEL_17;
  }

  deviceName2 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  uppercaseString2 = [deviceName2 uppercaseString];
  if ([uppercaseString2 hasPrefix:@"D84"])
  {
    v8 = @"RTFSD_0deg";
LABEL_15:

    goto LABEL_16;
  }

  deviceName3 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  uppercaseString3 = [deviceName3 uppercaseString];
  if ([uppercaseString3 hasPrefix:@"T2030"])
  {
    goto LABEL_13;
  }

  deviceName4 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  uppercaseString4 = [deviceName4 uppercaseString];
  if ([uppercaseString4 hasPrefix:@"D93"])
  {
LABEL_12:

LABEL_13:
    v8 = @"RTFSD_0deg";
LABEL_14:

    goto LABEL_15;
  }

  deviceName5 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  uppercaseString5 = [deviceName5 uppercaseString];
  if ([uppercaseString5 hasPrefix:@"D94"])
  {

    goto LABEL_12;
  }

  deviceName6 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  uppercaseString6 = [deviceName6 uppercaseString];
  if ([uppercaseString6 hasPrefix:@"D47"])
  {
    v28 = 1;
  }

  else
  {
    deviceName7 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
    uppercaseString7 = [deviceName7 uppercaseString];
    if ([uppercaseString7 hasPrefix:@"D48"])
    {
      v28 = 1;
    }

    else
    {
      deviceName8 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
      uppercaseString8 = [deviceName8 uppercaseString];
      if ([uppercaseString8 hasPrefix:@"V53"])
      {
        v28 = 1;
      }

      else
      {
        deviceName9 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
        uppercaseString9 = [deviceName9 uppercaseString];
        if ([uppercaseString9 hasPrefix:@"V54"])
        {
          v28 = 1;
        }

        else
        {
          deviceName10 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
          uppercaseString10 = [deviceName10 uppercaseString];
          v28 = [uppercaseString10 hasPrefix:@"V57"];
        }
      }
    }
  }

  if (v28)
  {
    v8 = @"RTFSD_0deg";
    goto LABEL_17;
  }

  deviceName = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  uppercaseString = [deviceName uppercaseString];
  if ([uppercaseString hasPrefix:@"D27"])
  {
    v8 = @"RTFSD_45deg";
    goto LABEL_16;
  }

  deviceName2 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  uppercaseString2 = [deviceName2 uppercaseString];
  if ([uppercaseString2 hasPrefix:@"D28"])
  {
    v8 = @"RTFSD_45deg";
    goto LABEL_15;
  }

  deviceName3 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  uppercaseString3 = [deviceName3 uppercaseString];
  if ([uppercaseString3 hasPrefix:@"D37"])
  {
    v8 = @"RTFSD_45deg";
    goto LABEL_14;
  }

  deviceName11 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
  uppercaseString11 = [deviceName11 uppercaseString];
  v33 = [uppercaseString11 hasPrefix:@"D38"];

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
    deviceName12 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
    *buf = 138543362;
    v41 = deviceName12;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported device %{public}@", buf, 0xCu);
  }

LABEL_19:
  v16 = 0;
LABEL_22:
  kdebug_trace();

  return v16;
}

- (int64_t)preProcessColorInput:(__CVBuffer *)input toBuffer:(__CVBuffer *)buffer
{
  kdebug_trace();
  if (self->_shouldPreProcessColorInputs)
  {
    [ADUtils convertRGBAFloat:input toPlanar:buffer];
    v7 = 0;
  }

  else
  {
    v7 = -22951;
  }

  kdebug_trace();
  return v7;
}

- (int64_t)adjustForEngine:(unint64_t)engine
{
  if (engine - 3 > 1)
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