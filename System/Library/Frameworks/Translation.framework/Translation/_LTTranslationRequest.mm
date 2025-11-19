@interface _LTTranslationRequest
- (NSString)qssSessionID;
- (_LTTranslationRequest)initWithLocalePair:(id)a3 suggestedUniqueID:(id)a4;
- (_LTTranslationRequest)initWithSourceLocale:(id)a3 targetLocale:(id)a4;
- (_LTTranslationRequest)initWithSourceLocale:(id)a3 targetLocale:(id)a4 suggestedUniqueID:(id)a5;
- (id)requestContext;
@end

@implementation _LTTranslationRequest

- (_LTTranslationRequest)initWithLocalePair:(id)a3 suggestedUniqueID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = _LTTranslationRequest;
  v9 = [(_LTTranslationRequest *)&v17 init];
  if (v9)
  {
    if (v8)
    {
      v10 = v8;
      uniqueID = v9->_uniqueID;
      v9->_uniqueID = v10;
    }

    else
    {
      uniqueID = [MEMORY[0x277CCAD78] UUID];
      v12 = [uniqueID UUIDString];
      v13 = v9->_uniqueID;
      v9->_uniqueID = v12;
    }

    objc_storeStrong(&v9->_localePair, a3);
    *&v9->_autodetectLanguage = 0;
    v9->_censorSpeech = 0;
    v9->__mtConfidenceThreshold = -1;
    v9->_taskHint = 1;
    v9->_sourceOrigin = 0;
    v9->_isFinal = 1;
    v14 = [MEMORY[0x277CB83F8] sharedInstance];
    v9->_audioSessionID = [v14 opaqueSessionID];

    v9->_overrideOngoingSessionIfNeeded = 0;
    v15 = v9;
  }

  return v9;
}

- (_LTTranslationRequest)initWithSourceLocale:(id)a3 targetLocale:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _LTOSLogXPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138478083;
    v13 = v6;
    v14 = 2113;
    v15 = v7;
    _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_INFO, "Translation request with sourceLocale:%{private}@ targetLocale:%{private}@", &v12, 0x16u);
  }

  v9 = [(_LTTranslationRequest *)self initWithSourceLocale:v6 targetLocale:v7 suggestedUniqueID:0];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (_LTTranslationRequest)initWithSourceLocale:(id)a3 targetLocale:(id)a4 suggestedUniqueID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_LTLocalePair alloc] initWithSourceLocale:v10 targetLocale:v9];

  v12 = [(_LTTranslationRequest *)self initWithLocalePair:v11 suggestedUniqueID:v8];
  return v12;
}

- (NSString)qssSessionID
{
  v3 = [(_LTTranslationRequest *)self batchSessionUUID];

  if (v3)
  {
    v4 = [(_LTTranslationRequest *)self batchSessionUUID];
    v5 = [v4 UUIDString];
  }

  else
  {
    v5 = [(_LTTranslationRequest *)self uniqueID];
  }

  return v5;
}

- (id)requestContext
{
  v3 = objc_alloc_init(_LTTranslationContext);
  v4 = [(_LTTranslationRequest *)self uniqueID];
  [(_LTTranslationContext *)v3 setUniqueID:v4];

  v5 = [(_LTTranslationRequest *)self sessionID];
  [(_LTTranslationContext *)v3 setSessionID:v5];

  [(_LTTranslationContext *)v3 setTaskHint:[(_LTTranslationRequest *)self taskHint]];
  v6 = [(_LTTranslationRequest *)self localePair];
  [(_LTTranslationContext *)v3 setLocalePair:v6];

  [(_LTTranslationContext *)v3 setAutodetectLanguage:[(_LTTranslationRequest *)self autodetectLanguage]];
  [(_LTTranslationContext *)v3 setForceSourceLocale:[(_LTTranslationRequest *)self forceSourceLocale]];
  [(_LTTranslationContext *)v3 setCensorSpeech:[(_LTTranslationRequest *)self censorSpeech]];
  v7 = [(_LTTranslationRequest *)self _offlineMTModelURL];
  [(_LTTranslationContext *)v3 setMtModelURL:v7];

  v8 = [(_LTTranslationRequest *)self outputFileURL];
  [(_LTTranslationContext *)v3 setOutputFileURL:v8];

  [(_LTTranslationContext *)v3 setAudioSessionID:[(_LTTranslationRequest *)self audioSessionID]];
  v9 = [(_LTTranslationRequest *)self appIdentifier];
  [(_LTTranslationContext *)v3 setAppIdentifier:v9];

  [(_LTTranslationContext *)v3 setSourceOrigin:[(_LTTranslationRequest *)self sourceOrigin]];
  v10 = untrustedClientIdentifier();
  [(_LTTranslationContext *)v3 setUntrustedClientIdentifier:v10];

  [(_LTTranslationContext *)v3 setLogIdentifier:self->_logIdentifier];
  [(_LTTranslationContext *)v3 setIsFinal:[(_LTTranslationRequest *)self isFinal]];
  [(_LTTranslationContext *)v3 setSupportsGenderDisambiguation:[(_LTTranslationRequest *)self _supportsGenderDisambiguation]];
  [(_LTTranslationContext *)v3 setOverrideOngoingSessionIfNeeded:[(_LTTranslationRequest *)self overrideOngoingSessionIfNeeded]];
  [(_LTTranslationContext *)v3 setCleanUpExistingSpeechSession:[(_LTTranslationRequest *)self cleanUpExistingSpeechSession]];
  [(_LTTranslationContext *)v3 setRoute:2];
  if ([(_LTTranslationRequest *)self forcedOfflineTranslation])
  {
    v11 = 1;
  }

  else
  {
    if (![(_LTTranslationRequest *)self preferOnDeviceIfAvailable])
    {
      goto LABEL_6;
    }

    v11 = 3;
  }

  [(_LTTranslationContext *)v3 setRoute:v11];
LABEL_6:

  return v3;
}

@end