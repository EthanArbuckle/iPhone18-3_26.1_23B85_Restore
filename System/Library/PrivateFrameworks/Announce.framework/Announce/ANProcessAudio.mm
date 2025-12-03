@interface ANProcessAudio
+ (AudioComponentDescription)_lookupComponent:(SEL)component;
+ (BOOL)_configureEngine:(id)engine player:(id)player effect:(id)effect sourceFile:(id)file error:(id *)error;
+ (BOOL)_renderAudioTo:(id)to length:(int64_t)length engine:(id)engine error:(id *)error;
+ (BOOL)process:(id)process to:(id)to withOptions:(unint64_t)options error:(id *)error;
+ (id)_ANAudioEffectToName:(unint64_t)name;
+ (id)_lookupTunings:(unint64_t)tunings;
@end

@implementation ANProcessAudio

+ (BOOL)process:(id)process to:(id)to withOptions:(unint64_t)options error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  processCopy = process;
  toCopy = to;
  if (options)
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:processCopy error:error];
    if (!v12)
    {
      v35 = ANLogHandleAudioProcessor();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = *error;
        *buf = 138412802;
        *&buf[4] = &stru_2836DAA20;
        *&buf[12] = 2112;
        *&buf[14] = processCopy;
        v45 = 2112;
        v46 = v36;
        _os_log_impl(&dword_2237C8000, v35, OS_LOG_TYPE_ERROR, "%@Failed to open file %@, %@", buf, 0x20u);
      }

      v34 = 0;
      goto LABEL_33;
    }

    v13 = v12;
    [ANProcessAudio _lookupComponent:1];
    v14 = objc_alloc(MEMORY[0x277CB8460]);
    memset(buf, 0, 20);
    v15 = [v14 initWithAudioComponentDescription:buf];
    if (v15)
    {
      v16 = v15;
      v17 = objc_opt_new();
      v18 = objc_opt_new();
      if ([ANProcessAudio _configureEngine:v18 player:v17 effect:v16 sourceFile:v13 error:error])
      {
        v42 = v17;
        v43 = v11;
        v19 = objc_alloc(MEMORY[0x277CB8398]);
        fileFormat = [v13 fileFormat];
        settings = [fileFormat settings];
        v22 = [v19 initForWriting:toCopy settings:settings error:error];

        v23 = ANLogHandleAudioProcessor();
        v24 = v23;
        if (v22)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v22 length];
            *buf = 138412546;
            *&buf[4] = &stru_2836DAA20;
            *&buf[12] = 2048;
            *&buf[14] = v25;
            _os_log_impl(&dword_2237C8000, v24, OS_LOG_TYPE_DEFAULT, "%@Ouput File Frames Before: %lld", buf, 0x16u);
          }

          +[ANProcessAudio _renderAudioTo:length:engine:error:](ANProcessAudio, "_renderAudioTo:length:engine:error:", v22, [v13 length], v18, error);
          v26 = ANLogHandleAudioProcessor();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138413058;
            *&buf[4] = &stru_2836DAA20;
            *&buf[12] = 2112;
            *&buf[14] = processCopy;
            v45 = 2112;
            v46 = toCopy;
            v47 = 2112;
            v48 = v18;
            _os_log_impl(&dword_2237C8000, v26, OS_LOG_TYPE_DEBUG, "%@Process file: %@ to %@ with engine %@", buf, 0x2Au);
          }

          v27 = ANLogHandleAudioProcessor();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            date = [MEMORY[0x277CBEAA8] date];
            [date timeIntervalSinceDate:v43];
            *buf = 138412802;
            *&buf[4] = &stru_2836DAA20;
            *&buf[12] = 2080;
            *&buf[14] = "+[ANProcessAudio process:to:withOptions:error:]";
            v45 = 2048;
            v46 = v29;
            _os_log_impl(&dword_2237C8000, v27, OS_LOG_TYPE_INFO, "%@%s: took %f", buf, 0x20u);
          }

          [v42 stop];
          [v18 stop];
          [v18 detachNode:v42];
          [v18 detachNode:v16];

          v30 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:toCopy error:error];
          v31 = ANLogHandleAudioProcessor();
          v32 = v31;
          if (v30)
          {
            v11 = v43;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [v30 length];
              *buf = 138412546;
              *&buf[4] = &stru_2836DAA20;
              *&buf[12] = 2048;
              *&buf[14] = v33;
              _os_log_impl(&dword_2237C8000, v32, OS_LOG_TYPE_DEFAULT, "%@Ouput File Frames After: %lld", buf, 0x16u);
            }

            v16 = 0;
            v34 = 1;
            goto LABEL_32;
          }

          v11 = v43;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = &stru_2836DAA20;
            *&buf[12] = 2112;
            *&buf[14] = 0;
            _os_log_impl(&dword_2237C8000, v32, OS_LOG_TYPE_ERROR, "%@Failed to open output file for reading (post-processing) %@", buf, 0x16u);
          }

          v16 = 0;
        }

        else
        {
          v11 = v43;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = &stru_2836DAA20;
            *&buf[12] = 2112;
            *&buf[14] = 0;
            _os_log_impl(&dword_2237C8000, v24, OS_LOG_TYPE_ERROR, "%@Failed to open output file %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v38 = ANLogHandleAudioProcessor();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = *error;
          *buf = 138412546;
          *&buf[4] = &stru_2836DAA20;
          *&buf[12] = 2112;
          *&buf[14] = v39;
          _os_log_impl(&dword_2237C8000, v38, OS_LOG_TYPE_ERROR, "%@Could not configure the engine %@", buf, 0x16u);
        }
      }
    }

    else
    {

      v16 = ANLogHandleAudioProcessor();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v37 = [ANProcessAudio _ANAudioEffectToName:1];
        *buf = 138412546;
        *&buf[4] = &stru_2836DAA20;
        *&buf[12] = 2112;
        *&buf[14] = v37;
        _os_log_impl(&dword_2237C8000, v16, OS_LOG_TYPE_ERROR, "%@Could not find AudioUnit for %@", buf, 0x16u);
      }
    }

    v34 = 0;
LABEL_32:

LABEL_33:
    goto LABEL_34;
  }

  v34 = 0;
LABEL_34:

  v40 = *MEMORY[0x277D85DE8];
  return v34;
}

+ (BOOL)_configureEngine:(id)engine player:(id)player effect:(id)effect sourceFile:(id)file error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  playerCopy = player;
  effectCopy = effect;
  fileCopy = file;
  processingFormat = [fileCopy processingFormat];
  v16 = [engineCopy enableManualRenderingMode:0 format:processingFormat maximumFrameCount:4096 error:error];

  if (v16)
  {
    errorCopy = error;
    v42 = fileCopy;
    [engineCopy attachNode:playerCopy];
    v43 = playerCopy;
    v40 = playerCopy;
    v17 = [ANProcessAudio _lookupTunings:1];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v45;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          v23 = [v17 objectForKeyedSubscript:v22];
          [v23 floatValue];
          v25 = v24;
          aUAudioUnit = [effectCopy AUAudioUnit];
          parameterTree = [aUAudioUnit parameterTree];
          v28 = [parameterTree parameterWithAddress:{objc_msgSend(v22, "unsignedIntegerValue")}];
          LODWORD(v29) = v25;
          [v28 setValue:v29];
        }

        v19 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v19);
    }

    [engineCopy attachNode:effectCopy];
    fileCopy = v42;
    processingFormat2 = [v42 processingFormat];
    [engineCopy connect:v40 to:effectCopy format:processingFormat2];

    v31 = effectCopy;
    mainMixerNode = [engineCopy mainMixerNode];
    processingFormat3 = [v42 processingFormat];
    [engineCopy connect:v31 to:mainMixerNode format:processingFormat3];

    [v40 scheduleFile:v42 atTime:0 completionHandler:0];
    v34 = [engineCopy startAndReturnError:errorCopy];
    if (v34)
    {
      [v40 play];
    }

    else
    {
      v36 = ANLogHandleAudioProcessor();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = *errorCopy;
        *buf = 138412546;
        v50 = &stru_2836DAA20;
        v51 = 2112;
        v52 = v37;
        _os_log_impl(&dword_2237C8000, v36, OS_LOG_TYPE_ERROR, "%@Could not start the engine %@", buf, 0x16u);
      }
    }

    playerCopy = v43;
  }

  else
  {
    v31 = ANLogHandleAudioProcessor();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v35 = *error;
      *buf = 138412546;
      v50 = &stru_2836DAA20;
      v51 = 2112;
      v52 = v35;
      _os_log_impl(&dword_2237C8000, v31, OS_LOG_TYPE_ERROR, "%@Failed to configure for offline render mode %@", buf, 0x16u);
    }

    v34 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v34;
}

+ (AudioComponentDescription)_lookupComponent:(SEL)component
{
  *&retstr->componentType = 0;
  *&retstr->componentManufacturer = 0;
  retstr->componentFlagsMask = 0;
  if (a4 == 1)
  {
    qmemcpy(retstr, "xfuamndllppa", 12);
  }

  return result;
}

+ (id)_lookupTunings:(unint64_t)tunings
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (tunings == 1)
  {
    v6 = &unk_2836E1E70;
    v7[0] = &unk_2836E1F98;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_ANAudioEffectToName:(unint64_t)name
{
  v3 = @"N/A";
  if (name == 1)
  {
    v3 = @"AppleAUNormalizer";
  }

  if (name)
  {
    return v3;
  }

  else
  {
    return @"None";
  }
}

+ (BOOL)_renderAudioTo:(id)to length:(int64_t)length engine:(id)engine error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  toCopy = to;
  engineCopy = engine;
  v11 = ANLogHandleAudioProcessor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = &stru_2836DAA20;
    v31 = 2048;
    lengthCopy = length;
    _os_log_impl(&dword_2237C8000, v11, OS_LOG_TYPE_DEFAULT, "%@Rendering Audio with length: %lld", buf, 0x16u);
  }

  v12 = objc_alloc(MEMORY[0x277CB83C8]);
  manualRenderingFormat = [engineCopy manualRenderingFormat];
  v14 = [v12 initWithPCMFormat:manualRenderingFormat frameCapacity:objc_msgSend(engineCopy, "manualRenderingMaximumFrameCount")];

  v15 = 0;
  while (1)
  {
    if ([engineCopy manualRenderingSampleTime] >= length)
    {
      v21 = 1;
      goto LABEL_17;
    }

    v16 = length - [engineCopy manualRenderingSampleTime];
    frameCapacity = [v14 frameCapacity];
    v18 = frameCapacity >= v16 ? v16 : frameCapacity;
    v28 = v15;
    v19 = [engineCopy renderOffline:v18 toBuffer:v14 error:&v28];
    v20 = v28;

    v21 = v19 != 0;
    if (v19)
    {
      break;
    }

    v27 = v20;
    v22 = [toCopy writeFromBuffer:v14 error:&v27];
    v15 = v27;

    if ((v22 & 1) == 0)
    {
      v23 = ANLogHandleAudioProcessor();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v30 = &stru_2836DAA20;
        v31 = 2112;
        lengthCopy = v15;
        _os_log_impl(&dword_2237C8000, v23, OS_LOG_TYPE_ERROR, "%@error when writing out audio to file: %@", buf, 0x16u);
      }

      v20 = v15;
      goto LABEL_16;
    }
  }

  v23 = ANLogHandleAudioProcessor();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v30 = &stru_2836DAA20;
    v31 = 2112;
    lengthCopy = v20;
    _os_log_impl(&dword_2237C8000, v23, OS_LOG_TYPE_ERROR, "%@error when rendering status: %@", buf, 0x16u);
  }

LABEL_16:

  v15 = v20;
LABEL_17:

  if (error)
  {
    v24 = v15;
    *error = v15;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

@end