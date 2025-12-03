@interface APCListener
+ (id)capabilityData;
- (APCListener)init;
- (APCListener)initWithCodecConfiguration:(id)configuration;
- (APCListener)initWithConfigurationData:(id)data;
- (BOOL)getResultData:(id *)data;
- (void)startListeningWithError:(id *)error;
- (void)stopListening;
@end

@implementation APCListener

+ (id)capabilityData
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"version";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v10[1] = @"aupccapability";
  v11[0] = v2;
  v3 = +[AUPasscodeDecoder supportedDecoders];
  v11[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v5 = objc_alloc(MEMORY[0x277CBEA90]);
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:0 error:0];
  v7 = [v5 initWithData:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (APCListener)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA90]);
  v4 = [(APCListener *)self initWithConfigurationData:v3];

  return v4;
}

- (APCListener)initWithConfigurationData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = APCListener;
  v5 = [(APCListener *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];
    codecConfig = v5->_codecConfig;
    v5->_codecConfig = v6;

    v8 = v5->_codecConfig;
    if (v8)
    {
      if ([(AUPasscodeCodecConfiguration *)v8 payloadLengthBytes]> 0)
      {
        v9 = APCLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          payloadLengthBytes = [(AUPasscodeCodecConfiguration *)v5->_codecConfig payloadLengthBytes];
          algorithmName = [(AUPasscodeCodecConfiguration *)v5->_codecConfig algorithmName];
          *buf = 134218242;
          v20 = payloadLengthBytes;
          v21 = 2112;
          v22 = algorithmName;
          _os_log_impl(&dword_24158E000, v9, OS_LOG_TYPE_INFO, "Created with configuration data. Payload length = %ld, codec = %@", buf, 0x16u);
        }

        v12 = objc_alloc_init(APCListenerResultData);
        resultData = v5->_resultData;
        v5->_resultData = v12;

        goto LABEL_7;
      }

      v15 = APCLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v15, OS_LOG_TYPE_ERROR, "Codec config has a payload size less than 1, that's not valid!", buf, 2u);
      }
    }

    else
    {
      v15 = APCLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v15, OS_LOG_TYPE_ERROR, "Failed to unarchive the configuration data object", buf, 2u);
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

LABEL_7:
  v14 = v5;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (APCListener)initWithCodecConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = APCListener;
  v6 = [(APCListener *)&v16 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_codecConfig, configuration);
  codecConfig = v7->_codecConfig;
  if (!codecConfig)
  {
    v12 = APCLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 0;
      v13 = "Config is nil, invalid";
LABEL_10:
      _os_log_impl(&dword_24158E000, v12, OS_LOG_TYPE_ERROR, v13, v15, 2u);
    }

LABEL_11:

    v11 = 0;
    goto LABEL_12;
  }

  if ([(AUPasscodeCodecConfiguration *)codecConfig payloadLengthBytes]<= 0)
  {
    v12 = APCLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 0;
      v13 = "Codec config has a payload size less than 1, that's not valid!";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v9 = objc_alloc_init(APCListenerResultData);
  resultData = v7->_resultData;
  v7->_resultData = v9;

LABEL_5:
  v11 = v7;
LABEL_12:

  return v11;
}

- (void)startListeningWithError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(APCListener *)self dispatchQueue];
  v6 = dispatchQueue;
  if (dispatchQueue)
  {
    v7 = dispatchQueue;
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
  }

  v8 = v7;

  v9 = APCLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    resultData = self->_resultData;
    *buf = 134217984;
    v24 = resultData;
    _os_log_impl(&dword_24158E000, v9, OS_LOG_TYPE_INFO, "result data pointer: %p", buf, 0xCu);
  }

  codecConfig = self->_codecConfig;
  v21 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __39__APCListener_startListeningWithError___block_invoke;
  v22[3] = &unk_278CE1E40;
  v22[4] = self;
  v12 = [APCListenerEngine listenerWithCodecConfig:codecConfig queue:v8 dataReceivedHandler:v22 resultData:self->_resultData error:&v21];
  v13 = v21;
  listenerEngine = self->_listenerEngine;
  self->_listenerEngine = v12;

  if (v13)
  {
    v15 = APCLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&dword_24158E000, v15, OS_LOG_TYPE_ERROR, "Could not crate the APCListener engine: %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = self->_listenerEngine;
    v20 = 0;
    [(APCListenerEngine *)v16 startEngineWithError:&v20];
    v13 = v20;
    if (!v13)
    {
      goto LABEL_16;
    }

    v17 = APCLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&dword_24158E000, v17, OS_LOG_TYPE_ERROR, "Could not start the APCListener engine: %@", buf, 0xCu);
    }
  }

  if (error)
  {
    v18 = v13;
    *error = v13;
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
}

void __39__APCListener_startListeningWithError___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) retrievedDataHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) retrievedDataHandler];
    (v4)[2](v4, 0, v5);
  }
}

- (void)stopListening
{
  [(APCListenerEngine *)self->_listenerEngine stopEngine];
  if (self->_invalidationHandler)
  {
    dispatchQueue = [(APCListener *)self dispatchQueue];
    v4 = dispatchQueue;
    if (dispatchQueue)
    {
      v5 = dispatchQueue;
    }

    else
    {
      v5 = dispatch_get_global_queue(0, 0);
    }

    queue = v5;

    dispatch_async(queue, self->_invalidationHandler);
  }
}

- (BOOL)getResultData:(id *)data
{
  isValid = [(APCListenerResultData *)self->_resultData isValid];
  if (isValid)
  {
    *data = self->_resultData;
  }

  return isValid;
}

@end