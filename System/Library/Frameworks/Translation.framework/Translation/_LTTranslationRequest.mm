@interface _LTTranslationRequest
- (NSString)qssSessionID;
- (_LTTranslationRequest)initWithLocalePair:(id)pair suggestedUniqueID:(id)d;
- (_LTTranslationRequest)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale;
- (_LTTranslationRequest)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale suggestedUniqueID:(id)d;
- (id)requestContext;
@end

@implementation _LTTranslationRequest

- (_LTTranslationRequest)initWithLocalePair:(id)pair suggestedUniqueID:(id)d
{
  pairCopy = pair;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = _LTTranslationRequest;
  v9 = [(_LTTranslationRequest *)&v17 init];
  if (v9)
  {
    if (dCopy)
    {
      v10 = dCopy;
      uniqueID = v9->_uniqueID;
      v9->_uniqueID = v10;
    }

    else
    {
      uniqueID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uniqueID UUIDString];
      v13 = v9->_uniqueID;
      v9->_uniqueID = uUIDString;
    }

    objc_storeStrong(&v9->_localePair, pair);
    *&v9->_autodetectLanguage = 0;
    v9->_censorSpeech = 0;
    v9->__mtConfidenceThreshold = -1;
    v9->_taskHint = 1;
    v9->_sourceOrigin = 0;
    v9->_isFinal = 1;
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    v9->_audioSessionID = [mEMORY[0x277CB83F8] opaqueSessionID];

    v9->_overrideOngoingSessionIfNeeded = 0;
    v15 = v9;
  }

  return v9;
}

- (_LTTranslationRequest)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale
{
  v16 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  targetLocaleCopy = targetLocale;
  v8 = _LTOSLogXPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138478083;
    v13 = localeCopy;
    v14 = 2113;
    v15 = targetLocaleCopy;
    _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_INFO, "Translation request with sourceLocale:%{private}@ targetLocale:%{private}@", &v12, 0x16u);
  }

  v9 = [(_LTTranslationRequest *)self initWithSourceLocale:localeCopy targetLocale:targetLocaleCopy suggestedUniqueID:0];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (_LTTranslationRequest)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale suggestedUniqueID:(id)d
{
  dCopy = d;
  targetLocaleCopy = targetLocale;
  localeCopy = locale;
  v11 = [[_LTLocalePair alloc] initWithSourceLocale:localeCopy targetLocale:targetLocaleCopy];

  v12 = [(_LTTranslationRequest *)self initWithLocalePair:v11 suggestedUniqueID:dCopy];
  return v12;
}

- (NSString)qssSessionID
{
  batchSessionUUID = [(_LTTranslationRequest *)self batchSessionUUID];

  if (batchSessionUUID)
  {
    batchSessionUUID2 = [(_LTTranslationRequest *)self batchSessionUUID];
    uUIDString = [batchSessionUUID2 UUIDString];
  }

  else
  {
    uUIDString = [(_LTTranslationRequest *)self uniqueID];
  }

  return uUIDString;
}

- (id)requestContext
{
  v3 = objc_alloc_init(_LTTranslationContext);
  uniqueID = [(_LTTranslationRequest *)self uniqueID];
  [(_LTTranslationContext *)v3 setUniqueID:uniqueID];

  sessionID = [(_LTTranslationRequest *)self sessionID];
  [(_LTTranslationContext *)v3 setSessionID:sessionID];

  [(_LTTranslationContext *)v3 setTaskHint:[(_LTTranslationRequest *)self taskHint]];
  localePair = [(_LTTranslationRequest *)self localePair];
  [(_LTTranslationContext *)v3 setLocalePair:localePair];

  [(_LTTranslationContext *)v3 setAutodetectLanguage:[(_LTTranslationRequest *)self autodetectLanguage]];
  [(_LTTranslationContext *)v3 setForceSourceLocale:[(_LTTranslationRequest *)self forceSourceLocale]];
  [(_LTTranslationContext *)v3 setCensorSpeech:[(_LTTranslationRequest *)self censorSpeech]];
  _offlineMTModelURL = [(_LTTranslationRequest *)self _offlineMTModelURL];
  [(_LTTranslationContext *)v3 setMtModelURL:_offlineMTModelURL];

  outputFileURL = [(_LTTranslationRequest *)self outputFileURL];
  [(_LTTranslationContext *)v3 setOutputFileURL:outputFileURL];

  [(_LTTranslationContext *)v3 setAudioSessionID:[(_LTTranslationRequest *)self audioSessionID]];
  appIdentifier = [(_LTTranslationRequest *)self appIdentifier];
  [(_LTTranslationContext *)v3 setAppIdentifier:appIdentifier];

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