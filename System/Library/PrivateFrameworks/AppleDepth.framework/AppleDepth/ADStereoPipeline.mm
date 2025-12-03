@interface ADStereoPipeline
- (ADStereoPipeline)initWithInputAlignment:(unint64_t)alignment prioritization:(int64_t)prioritization andParameters:(id)parameters;
- (int64_t)adjustForEngine:(unint64_t)engine;
- (int64_t)preProcessColorInput:(__CVBuffer *)input toBuffer:(__CVBuffer *)buffer;
@end

@implementation ADStereoPipeline

- (ADStereoPipeline)initWithInputAlignment:(unint64_t)alignment prioritization:(int64_t)prioritization andParameters:(id)parameters
{
  parametersCopy = parameters;
  v22 = 335687464;
  prioritizationCopy = prioritization;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  kdebug_trace();
  v21.receiver = self;
  v21.super_class = ADStereoPipeline;
  v9 = [(ADStereoPipeline *)&v21 init];
  if (!v9)
  {
    goto LABEL_27;
  }

  if (!parametersCopy)
  {
    parametersCopy = objc_opt_new();
  }

  objc_storeStrong(&v9->_pipelineParameters, parametersCopy);
  v9->_stereoImagesAlignment = alignment;
  v9->_prioritization = prioritization;
  if ([MEMORY[0x277CEE958] hasANE])
  {
    ADCommonUtils::runtimePlatformANEVersionString(buf);
    if (v29 < 0)
    {
      v12 = *buf;
      if (v28)
      {
        v10 = atoi((*buf + 1));
      }

      else
      {
        v10 = -1;
      }

      operator delete(v12);
    }

    else if (v29)
    {
      v10 = atoi(&buf[1]);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 > 13;
  }

  else
  {
    v11 = 0;
  }

  v13 = &unk_28524ABA8;
  if ([(ADStereoPipelineParameters *)v9->_pipelineParameters networkVariantOverride]!= 1)
  {
    if ([(ADStereoPipelineParameters *)v9->_pipelineParameters networkVariantOverride]== 255)
    {
      if (!v11)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADStereoPipeline requested V3 networks, but runtime does not support them", buf, 2u);
          v19 = 0;
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      v13 = &unk_28524ABC0;
    }

    else
    {
      v14 = &unk_28524ABC0;
      if (!v11)
      {
        v14 = &unk_28524ABA8;
      }

      if (prioritization == 1)
      {
        v13 = &unk_28524ABD8;
      }

      else
      {
        v13 = v14;
      }
    }
  }

  stereoImagesAlignment = v9->_stereoImagesAlignment;
  if (stereoImagesAlignment > [v13 count] || (objc_msgSend(v13, "objectAtIndexedSubscript:", v9->_stereoImagesAlignment), v16 = objc_claimAutoreleasedReturnValue(), +[ADNetworkProvider providerForNetwork:](ADNetworkProvider, "providerForNetwork:", v16), v17 = objc_claimAutoreleasedReturnValue(), networkProvider = v9->_networkProvider, v9->_networkProvider = v17, networkProvider, v16, !v9->_networkProvider) || -[ADStereoPipeline adjustForEngine:](v9, "adjustForEngine:", 3))
  {
LABEL_29:
    v19 = 0;
    goto LABEL_30;
  }

LABEL_27:
  v19 = v9;
LABEL_30:
  kdebug_trace();

  return v19;
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
  self->_shouldPreProcessColorInputs = 0;
  prioritization = self->_prioritization;
  if (prioritization == 4 || prioritization == 1)
  {
    v6 = [ADEspressoStereoInferenceDescriptor alloc];
    networkProvider = self->_networkProvider;
    v8 = 1919365990;
  }

  else
  {
    if (engine - 3 <= 1)
    {
      v6 = [ADEspressoStereoInferenceDescriptor alloc];
      networkProvider = self->_networkProvider;
      v8 = 1380411457;
      v9 = 1751411059;
      goto LABEL_8;
    }

    self->_shouldPreProcessColorInputs = 1;
    v6 = [ADEspressoStereoInferenceDescriptor alloc];
    networkProvider = self->_networkProvider;
    v8 = 1380410945;
  }

  v9 = 1717856627;
LABEL_8:
  v10 = [(ADEspressoStereoInferenceDescriptor *)v6 initWithNetworkProvider:networkProvider inputColorFormat:v8 outputDisparityFormat:v9];
  inferenceDesc = self->_inferenceDesc;
  self->_inferenceDesc = v10;

  return 0;
}

@end