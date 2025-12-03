@interface APCDecoderProcessor
- (APCDecoderProcessor)initWithInputURL:(id)l codecConfig:(id)config resultData:(id)data error:(id *)error;
- (BOOL)getResultData:(id *)data;
- (id)run;
@end

@implementation APCDecoderProcessor

- (APCDecoderProcessor)initWithInputURL:(id)l codecConfig:(id)config resultData:(id)data error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  lCopy = l;
  configCopy = config;
  dataCopy = data;
  v42.receiver = self;
  v42.super_class = APCDecoderProcessor;
  v13 = [(APCDecoderProcessor *)&v42 init];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = 0;
  if (lCopy && configCopy)
  {
    +[AUPasscodeDecoder registerAU];
    v15 = [AUPasscodeDecoder alloc];
    +[AUPasscodeDecoder getAUDesc];
    v16 = [(AUPasscodeDecoder *)v15 initWithComponentDescription:buf options:0 error:error];
    decoderAU = v13->_decoderAU;
    v13->_decoderAU = v16;

    if (v13->_decoderAU)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      payloadsReceived = v13->_payloadsReceived;
      v13->_payloadsReceived = v18;

      [configCopy setSampleRate:-1];
      [(AUPasscodeDecoder *)v13->_decoderAU setCodecConfig:configCopy];
      objc_initWeak(&location, v13->_payloadsReceived);
      v20 = dispatch_get_global_queue(0, 0);
      [(AUPasscodeDecoder *)v13->_decoderAU setDispatchQueue:v20];

      v36 = MEMORY[0x277D85DD0];
      v37 = 3221225472;
      v38 = __69__APCDecoderProcessor_initWithInputURL_codecConfig_resultData_error___block_invoke;
      v39 = &unk_278CE1E18;
      objc_copyWeak(&v40, &location);
      [(AUPasscodeDecoder *)v13->_decoderAU setDataHandler:&v36];
      [(AUPasscodeDecoder *)v13->_decoderAU setRenderingOffline:1, v36, v37, v38, v39];
      [(AUPasscodeDecoder *)v13->_decoderAU setResultData:dataCopy];
      resultData = [(AUPasscodeDecoder *)v13->_decoderAU resultData];
      LOBYTE(v20) = resultData == 0;

      if ((v20 & 1) == 0)
      {
        resultData2 = [(AUPasscodeDecoder *)v13->_decoderAU resultData];
        [resultData2 reset];
      }

      v23 = APCLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = lCopy;
        _os_log_impl(&dword_24158E000, v23, OS_LOG_TYPE_INFO, "Recording URL: %@", buf, 0xCu);
      }

      v24 = -[AUAudioUnitOfflineProcessor initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:]([AUAudioUnitOfflineProcessor alloc], "initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:", v13->_decoderAU, lCopy, 0, [configCopy sampleRate]);
      processor = v13->_processor;
      v13->_processor = v24;

      if (v13->_processor)
      {
        inputBusses = [(AUPasscodeDecoder *)v13->_decoderAU inputBusses];
        v27 = [inputBusses objectAtIndexedSubscript:0];
        format = [v27 format];
        [format sampleRate];
        [configCopy setSampleRate:v29];

        objc_destroyWeak(&v40);
        objc_destroyWeak(&location);
LABEL_11:
        v14 = v13;
        goto LABEL_19;
      }

      v31 = APCLogObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v31, OS_LOG_TYPE_ERROR, "Failed to create the offline processor", buf, 2u);
      }

      v32 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44 = @"Failed to create the offline decoder processor";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *error = [v32 errorWithDomain:@"com.apple.audiopasscode" code:101 userInfo:v33];

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }

    else
    {
      v30 = APCLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v30, OS_LOG_TYPE_ERROR, "Failed to create the decoder AU", buf, 2u);
      }
    }

    v14 = 0;
  }

LABEL_19:

  v34 = *MEMORY[0x277D85DE8];
  return v14;
}

void __69__APCDecoderProcessor_initWithInputURL_codecConfig_resultData_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addObject:v3];
}

- (id)run
{
  [(AUAudioUnitOfflineProcessor *)self->_processor run];
  payloadsReceived = self->_payloadsReceived;

  return payloadsReceived;
}

- (BOOL)getResultData:(id *)data
{
  resultData = [(AUPasscodeDecoder *)self->_decoderAU resultData];
  if (resultData)
  {
    v6 = resultData;
    resultData2 = [(AUPasscodeDecoder *)self->_decoderAU resultData];
    isValid = [resultData2 isValid];

    if (isValid)
    {
      *data = [(AUPasscodeDecoder *)self->_decoderAU resultData];
      LOBYTE(resultData) = 1;
    }

    else
    {
      LOBYTE(resultData) = 0;
    }
  }

  return resultData;
}

@end