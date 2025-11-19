@interface AXSpeechPronunciationHelper
- (BOOL)supportsPronunciationSessions;
- (float)audioLevel;
- (id)_assetUpdaterClient;
- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(unint64_t)a5 error:(id *)a6;
- (void)cancelPronunciationSession;
- (void)dealloc;
- (void)startPronunciationSession:(id)a3 resultCallback:(id)a4;
- (void)stopPronunciationSession;
@end

@implementation AXSpeechPronunciationHelper

- (id)_assetUpdaterClient
{
  if (_assetUpdaterClient_onceToken != -1)
  {
    [AXSpeechPronunciationHelper _assetUpdaterClient];
  }

  v3 = _assetUpdaterClient_Client;

  return v3;
}

uint64_t __50__AXSpeechPronunciationHelper__assetUpdaterClient__block_invoke()
{
  _assetUpdaterClient_Client = [objc_alloc(MEMORY[0x277CE7740]) initWithIdentifier:@"AXSpeechPronunciationClient" serviceBundleName:@"AXAssetAndDataServer"];

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v3 = [(AXSpeechPronunciationHelper *)self _assetUpdaterClient];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = AXSpeechPronunciationHelper;
  [(AXSpeechPronunciationHelper *)&v4 dealloc];
}

- (BOOL)supportsPronunciationSessions
{
  v2 = MGGetBoolAnswer();
  if (v2)
  {
    v3 = [MEMORY[0x277CEF368] sharedPreferences];
    v4 = [v3 dictationIsEnabled];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(unint64_t)a5 error:(id *)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [MEMORY[0x277CE6980] sharedInstance];
  v10 = [v9 ignoreLogging];

  if ((v10 & 1) == 0)
  {
    v11 = [MEMORY[0x277CE6980] identifier];
    v12 = AXLoggerForFacility();

    v13 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = AXColorizeFormatLog();
      v15 = _AXStringForArgs();
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138543362;
        v23 = v15;
        _os_log_impl(&dword_23D6A6000, v12, v13, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (a5 == 4)
  {
    v16 = [v8 objectForKeyedSubscript:@"results"];
    v17 = [v8 objectForKeyedSubscript:@"error"];

    if (v17)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = [v8 objectForKeyedSubscript:@"error"];
      v17 = [v18 errorWithDomain:v19 code:0 userInfo:0];
    }

    (*(self->_resultCallback + 2))(self->_resultCallback);
    self->_inSession = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

- (float)audioLevel
{
  if (!self->_inSession)
  {
    return 0.0;
  }

  v2 = [(AXSpeechPronunciationHelper *)self _assetUpdaterClient];
  v3 = [v2 sendSynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:7 error:0];

  v4 = [v3 objectForKeyedSubscript:@"audioLevel"];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (void)startPronunciationSession:(id)a3 resultCallback:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AXSpeechPronunciationHelper *)self _assetUpdaterClient];
  [v8 setDelegate:self];

  v9 = [MEMORY[0x277CE6980] sharedInstance];
  v10 = [v9 ignoreLogging];

  if ((v10 & 1) == 0)
  {
    v11 = [MEMORY[0x277CE6980] identifier];
    v12 = AXLoggerForFacility();

    v13 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = AXColorizeFormatLog();
      inSession = self->_inSession;
      v15 = _AXStringForArgs();
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138543362;
        v43 = v15;
        _os_log_impl(&dword_23D6A6000, v12, v13, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (!self->_inSession)
  {
    v16 = [v7 copy];
    resultCallback = self->_resultCallback;
    self->_resultCallback = v16;

    self->_inSession = 1;
    v18 = [MEMORY[0x277CE6980] sharedInstance];
    v19 = [v18 ignoreLogging];

    if ((v19 & 1) == 0)
    {
      v20 = [MEMORY[0x277CE6980] identifier];
      v21 = AXLoggerForFacility();

      v22 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = AXColorizeFormatLog();
        inSession = v6;
        v24 = _AXStringForArgs();
        if (os_log_type_enabled(v21, v22))
        {
          *buf = 138543362;
          v43 = v24;
          _os_log_impl(&dword_23D6A6000, v21, v22, "%{public}@", buf, 0xCu);
        }
      }
    }

    v39 = 0;
    v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:{&v39, inSession}];
    v26 = v39;
    if (v26)
    {
      v27 = [MEMORY[0x277CE6980] sharedInstance];
      v28 = [v27 ignoreLogging];

      if ((v28 & 1) == 0)
      {
        v29 = [MEMORY[0x277CE6980] identifier];
        v30 = AXLoggerForFacility();

        v31 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = AXColorizeFormatLog();
          v33 = _AXStringForArgs();
          if (os_log_type_enabled(v30, v31))
          {
            *buf = 138543362;
            v43 = v33;
            _os_log_impl(&dword_23D6A6000, v30, v31, "%{public}@", buf, 0xCu);
          }
        }
      }
    }

    if (v25)
    {
      v34 = [(AXSpeechPronunciationHelper *)self _assetUpdaterClient];
      v40 = @"options";
      v41 = v25;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v36 = [MEMORY[0x277CE6948] mainAccessQueue];
      [v34 sendAsynchronousMessage:v35 withIdentifier:4 targetAccessQueue:v36 completion:0];
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)stopPronunciationSession
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE6980] sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277CE6980] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      inSession = self->_inSession;
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v15 = v9;
        _os_log_impl(&dword_23D6A6000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (self->_inSession)
  {
    v10 = [(AXSpeechPronunciationHelper *)self _assetUpdaterClient];
    v11 = [MEMORY[0x277CE6948] mainAccessQueue];
    [v10 sendAsynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:5 targetAccessQueue:v11 completion:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cancelPronunciationSession
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE6980] sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277CE6980] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      inSession = self->_inSession;
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v15 = v9;
        _os_log_impl(&dword_23D6A6000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (self->_inSession)
  {
    v10 = [(AXSpeechPronunciationHelper *)self _assetUpdaterClient];
    v11 = [MEMORY[0x277CE6948] mainAccessQueue];
    [v10 sendAsynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:6 targetAccessQueue:v11 completion:&__block_literal_global_368];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end