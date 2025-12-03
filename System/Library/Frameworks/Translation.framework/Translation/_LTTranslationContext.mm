@interface _LTTranslationContext
- (NSString)clientIdentifier;
- (_LTTranslationContext)init;
- (_LTTranslationContext)initWithCoder:(id)coder;
- (id)sanitizedCopyForUntrustedTextTranslation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTranslationContext

- (_LTTranslationContext)init
{
  v8.receiver = self;
  v8.super_class = _LTTranslationContext;
  v2 = [(_LTTranslationContext *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_lidThreshold = xmmword_23AB4CF90;
    v2->_asrConfidenceThreshold = -1;
    v2->_isFinal = 1;
    v2->_forceSourceLocale = 0;
    v2->_overrideOngoingSessionIfNeeded = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCAD78]);
    logIdentifier = v3->_logIdentifier;
    v3->_logIdentifier = v4;

    v6 = v3;
  }

  return v3;
}

- (_LTTranslationContext)initWithCoder:(id)coder
{
  v34[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = _LTTranslationContext;
  v5 = [(_LTTranslationContext *)&v33 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v8;

    v5->_taskHint = [coderCopy decodeIntegerForKey:@"taskHint"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v10;

    v5->_autodetectLanguage = [coderCopy decodeBoolForKey:@"autodetectLanguage"];
    v5->_forceSourceLocale = [coderCopy decodeBoolForKey:@"forceSourceLocale"];
    v5->_autoEndpoint = [coderCopy decodeBoolForKey:@"autoEndpoint"];
    v5->_enableStreamingSpeechTranslation = [coderCopy decodeBoolForKey:@"enableStreamingSpeechTranslation"];
    v5->_enableOfflineStreamStabilizer = [coderCopy decodeBoolForKey:@"enableOfflineStreamStabilizer"];
    v5->_enableMultiFieldInput = [coderCopy decodeBoolForKey:@"enableMultiFieldInput"];
    v5->_enableTranslationSemanticSegmentation = [coderCopy decodeBoolForKey:@"enableTranslationSemanticSegmentation"];
    v5->_censorSpeech = [coderCopy decodeBoolForKey:@"censorSpeech"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputFileURL"];
    outputFileURL = v5->_outputFileURL;
    v5->_outputFileURL = v12;

    v14 = MEMORY[0x277CBEB98];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v16 = [v14 setWithArray:v15];

    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"asrModelURLs"];
    asrModelURLs = v5->_asrModelURLs;
    v5->_asrModelURLs = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mtModelURL"];
    mtModelURL = v5->_mtModelURL;
    v5->_mtModelURL = v19;

    v5->_route = [coderCopy decodeIntegerForKey:@"route"];
    v5->_audioSessionID = [coderCopy decodeInt32ForKey:@"audioSessionID"];
    v5->_lidThreshold = [coderCopy decodeIntegerForKey:@"lidThreshold"];
    v5->_asrConfidenceThreshold = [coderCopy decodeIntegerForKey:@"asrConfidenceThreshold"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v21;

    [coderCopy decodeDoubleForKey:@"ttsPlaybackRate"];
    v5->_ttsPlaybackRate = v23;
    v5->_muteTTSBasedOnRingerSwitchIfPossible = [coderCopy decodeBoolForKey:@"muteTTSBasedOnRingerSwitchIfPossible"];
    v5->_enableVAD = [coderCopy decodeBoolForKey:@"enableVAD"];
    v5->_enableAirPodsOwnVAD = [coderCopy decodeBoolForKey:@"enableAirPodsOwnVAD"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appIdentifier"];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v24;

    v5->_sourceOrigin = [coderCopy decodeIntegerForKey:@"sourceOrigin"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"untrustedClientIdentifier"];
    untrustedClientIdentifier = v5->_untrustedClientIdentifier;
    v5->_untrustedClientIdentifier = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logIdentifier"];
    logIdentifier = v5->_logIdentifier;
    v5->_logIdentifier = v28;

    v5->_isFinal = [coderCopy decodeBoolForKey:@"isFinal"];
    v5->_supportsGenderDisambiguation = [coderCopy decodeBoolForKey:@"supportsGenderDisambiguation"];
    v5->_overrideOngoingSessionIfNeeded = [coderCopy decodeBoolForKey:@"overrideOngoingSessionIfNeeded"];
    v5->_cancelOnCleanup = [coderCopy decodeBoolForKey:@"cancelOnCleanup"];
    v5->_cleanUpExistingSpeechSession = [coderCopy decodeBoolForKey:@"cleanUpExistingSpeechSession"];
    v30 = v5;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueID = self->_uniqueID;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueID forKey:@"uniqueID"];
  [coderCopy encodeObject:self->_sessionID forKey:@"sessionID"];
  [coderCopy encodeInteger:self->_taskHint forKey:@"taskHint"];
  [coderCopy encodeObject:self->_localePair forKey:@"localePair"];
  [coderCopy encodeBool:self->_autodetectLanguage forKey:@"autodetectLanguage"];
  [coderCopy encodeBool:self->_forceSourceLocale forKey:@"forceSourceLocale"];
  [coderCopy encodeBool:self->_autoEndpoint forKey:@"autoEndpoint"];
  [coderCopy encodeBool:self->_enableStreamingSpeechTranslation forKey:@"enableStreamingSpeechTranslation"];
  [coderCopy encodeBool:self->_enableOfflineStreamStabilizer forKey:@"enableOfflineStreamStabilizer"];
  [coderCopy encodeBool:self->_enableMultiFieldInput forKey:@"enableMultiFieldInput"];
  [coderCopy encodeBool:self->_enableTranslationSemanticSegmentation forKey:@"enableTranslationSemanticSegmentation"];
  [coderCopy encodeBool:self->_censorSpeech forKey:@"censorSpeech"];
  [coderCopy encodeObject:self->_outputFileURL forKey:@"outputFileURL"];
  [coderCopy encodeObject:self->_asrModelURLs forKey:@"asrModelURLs"];
  [coderCopy encodeObject:self->_mtModelURL forKey:@"mtModelURL"];
  [coderCopy encodeInteger:self->_route forKey:@"route"];
  [coderCopy encodeInt32:self->_audioSessionID forKey:@"audioSessionID"];
  [coderCopy encodeInteger:self->_lidThreshold forKey:@"lidThreshold"];
  [coderCopy encodeInteger:self->_asrConfidenceThreshold forKey:@"asrConfidenceThreshold"];
  [coderCopy encodeObject:self->_sourceURL forKey:@"sourceURL"];
  [coderCopy encodeDouble:@"ttsPlaybackRate" forKey:self->_ttsPlaybackRate];
  [coderCopy encodeBool:self->_muteTTSBasedOnRingerSwitchIfPossible forKey:@"muteTTSBasedOnRingerSwitchIfPossible"];
  [coderCopy encodeBool:self->_enableVAD forKey:@"enableVAD"];
  [coderCopy encodeBool:self->_enableAirPodsOwnVAD forKey:@"enableAirPodsOwnVAD"];
  [coderCopy encodeObject:self->_appIdentifier forKey:@"appIdentifier"];
  [coderCopy encodeInteger:self->_sourceOrigin forKey:@"sourceOrigin"];
  [coderCopy encodeObject:self->_untrustedClientIdentifier forKey:@"untrustedClientIdentifier"];
  [coderCopy encodeObject:self->_logIdentifier forKey:@"logIdentifier"];
  [coderCopy encodeBool:self->_isFinal forKey:@"isFinal"];
  [coderCopy encodeBool:self->_supportsGenderDisambiguation forKey:@"supportsGenderDisambiguation"];
  [coderCopy encodeBool:self->_overrideOngoingSessionIfNeeded forKey:@"overrideOngoingSessionIfNeeded"];
  [coderCopy encodeBool:self->_cancelOnCleanup forKey:@"cancelOnCleanup"];
  [coderCopy encodeBool:self->_cleanUpExistingSpeechSession forKey:@"cleanUpExistingSpeechSession"];
}

- (id)sanitizedCopyForUntrustedTextTranslation
{
  v3 = objc_alloc_init(_LTTranslationContext);
  uniqueID = [(_LTTranslationContext *)self uniqueID];
  v5 = [uniqueID copy];
  [(_LTTranslationContext *)v3 setUniqueID:v5];

  sessionID = [(_LTTranslationContext *)self sessionID];
  v7 = [sessionID copy];
  [(_LTTranslationContext *)v3 setSessionID:v7];

  [(_LTTranslationContext *)v3 setTaskHint:[(_LTTranslationContext *)self taskHint]];
  localePair = [(_LTTranslationContext *)self localePair];
  v9 = [localePair copy];
  [(_LTTranslationContext *)v3 setLocalePair:v9];

  [(_LTTranslationContext *)v3 setAutodetectLanguage:[(_LTTranslationContext *)self autodetectLanguage]];
  [(_LTTranslationContext *)v3 setForceSourceLocale:[(_LTTranslationContext *)self forceSourceLocale]];
  [(_LTTranslationContext *)v3 setCensorSpeech:[(_LTTranslationContext *)self censorSpeech]];
  [(_LTTranslationContext *)v3 setAutoEndpoint:[(_LTTranslationContext *)self autoEndpoint]];
  [(_LTTranslationContext *)v3 setEnableStreamingSpeechTranslation:[(_LTTranslationContext *)self enableStreamingSpeechTranslation]];
  [(_LTTranslationContext *)v3 setEnableOfflineStreamStabilizer:[(_LTTranslationContext *)self enableOfflineStreamStabilizer]];
  [(_LTTranslationContext *)v3 setEnableMultiFieldInput:[(_LTTranslationContext *)self enableMultiFieldInput]];
  [(_LTTranslationContext *)v3 setEnableTranslationSemanticSegmentation:[(_LTTranslationContext *)self enableTranslationSemanticSegmentation]];
  [(_LTTranslationContext *)v3 setLidThreshold:[(_LTTranslationContext *)self lidThreshold]];
  [(_LTTranslationContext *)v3 setRoute:[(_LTTranslationContext *)self route]];
  appIdentifier = [(_LTTranslationContext *)self appIdentifier];
  v11 = [appIdentifier copy];
  [(_LTTranslationContext *)v3 setAppIdentifier:v11];

  [(_LTTranslationContext *)v3 setSourceOrigin:[(_LTTranslationContext *)self sourceOrigin]];
  logIdentifier = [(_LTTranslationContext *)self logIdentifier];
  [(_LTTranslationContext *)v3 setLogIdentifier:logIdentifier];

  [(_LTTranslationContext *)v3 setIsFinal:[(_LTTranslationContext *)self isFinal]];
  [(_LTTranslationContext *)v3 setSupportsGenderDisambiguation:[(_LTTranslationContext *)self supportsGenderDisambiguation]];
  [(_LTTranslationContext *)v3 setCancelOnCleanup:[(_LTTranslationContext *)self cancelOnCleanup]];
  [(_LTTranslationContext *)v3 setCleanUpExistingSpeechSession:[(_LTTranslationContext *)self cleanUpExistingSpeechSession]];

  return v3;
}

- (NSString)clientIdentifier
{
  v14 = *MEMORY[0x277D85DE8];
  p_trustedClientIdentifier = &self->_trustedClientIdentifier;
  trustedClientIdentifier = self->_trustedClientIdentifier;
  v5 = _LTOSLogXPC();
  v6 = v5;
  if (trustedClientIdentifier)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *p_trustedClientIdentifier;
      v12 = 138477827;
      v13 = v7;
      _os_log_impl(&dword_23AAF5000, v6, OS_LOG_TYPE_INFO, "Using trusted client identifier: %{private}@", &v12, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      untrustedClientIdentifier = self->_untrustedClientIdentifier;
      v12 = 138477827;
      v13 = untrustedClientIdentifier;
      _os_log_impl(&dword_23AAF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get trusted client identifier, falling back to untrusted value: %{private}@", &v12, 0xCu);
    }

    p_trustedClientIdentifier = &self->_untrustedClientIdentifier;
  }

  v9 = *p_trustedClientIdentifier;
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end