@interface _LTTranslationContext
- (NSString)clientIdentifier;
- (_LTTranslationContext)init;
- (_LTTranslationContext)initWithCoder:(id)a3;
- (id)sanitizedCopyForUntrustedTextTranslation;
- (void)encodeWithCoder:(id)a3;
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

- (_LTTranslationContext)initWithCoder:(id)a3
{
  v34[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = _LTTranslationContext;
  v5 = [(_LTTranslationContext *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v8;

    v5->_taskHint = [v4 decodeIntegerForKey:@"taskHint"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v10;

    v5->_autodetectLanguage = [v4 decodeBoolForKey:@"autodetectLanguage"];
    v5->_forceSourceLocale = [v4 decodeBoolForKey:@"forceSourceLocale"];
    v5->_autoEndpoint = [v4 decodeBoolForKey:@"autoEndpoint"];
    v5->_enableStreamingSpeechTranslation = [v4 decodeBoolForKey:@"enableStreamingSpeechTranslation"];
    v5->_enableOfflineStreamStabilizer = [v4 decodeBoolForKey:@"enableOfflineStreamStabilizer"];
    v5->_enableMultiFieldInput = [v4 decodeBoolForKey:@"enableMultiFieldInput"];
    v5->_enableTranslationSemanticSegmentation = [v4 decodeBoolForKey:@"enableTranslationSemanticSegmentation"];
    v5->_censorSpeech = [v4 decodeBoolForKey:@"censorSpeech"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outputFileURL"];
    outputFileURL = v5->_outputFileURL;
    v5->_outputFileURL = v12;

    v14 = MEMORY[0x277CBEB98];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v16 = [v14 setWithArray:v15];

    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"asrModelURLs"];
    asrModelURLs = v5->_asrModelURLs;
    v5->_asrModelURLs = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mtModelURL"];
    mtModelURL = v5->_mtModelURL;
    v5->_mtModelURL = v19;

    v5->_route = [v4 decodeIntegerForKey:@"route"];
    v5->_audioSessionID = [v4 decodeInt32ForKey:@"audioSessionID"];
    v5->_lidThreshold = [v4 decodeIntegerForKey:@"lidThreshold"];
    v5->_asrConfidenceThreshold = [v4 decodeIntegerForKey:@"asrConfidenceThreshold"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v21;

    [v4 decodeDoubleForKey:@"ttsPlaybackRate"];
    v5->_ttsPlaybackRate = v23;
    v5->_muteTTSBasedOnRingerSwitchIfPossible = [v4 decodeBoolForKey:@"muteTTSBasedOnRingerSwitchIfPossible"];
    v5->_enableVAD = [v4 decodeBoolForKey:@"enableVAD"];
    v5->_enableAirPodsOwnVAD = [v4 decodeBoolForKey:@"enableAirPodsOwnVAD"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appIdentifier"];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v24;

    v5->_sourceOrigin = [v4 decodeIntegerForKey:@"sourceOrigin"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"untrustedClientIdentifier"];
    untrustedClientIdentifier = v5->_untrustedClientIdentifier;
    v5->_untrustedClientIdentifier = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logIdentifier"];
    logIdentifier = v5->_logIdentifier;
    v5->_logIdentifier = v28;

    v5->_isFinal = [v4 decodeBoolForKey:@"isFinal"];
    v5->_supportsGenderDisambiguation = [v4 decodeBoolForKey:@"supportsGenderDisambiguation"];
    v5->_overrideOngoingSessionIfNeeded = [v4 decodeBoolForKey:@"overrideOngoingSessionIfNeeded"];
    v5->_cancelOnCleanup = [v4 decodeBoolForKey:@"cancelOnCleanup"];
    v5->_cleanUpExistingSpeechSession = [v4 decodeBoolForKey:@"cleanUpExistingSpeechSession"];
    v30 = v5;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueID = self->_uniqueID;
  v5 = a3;
  [v5 encodeObject:uniqueID forKey:@"uniqueID"];
  [v5 encodeObject:self->_sessionID forKey:@"sessionID"];
  [v5 encodeInteger:self->_taskHint forKey:@"taskHint"];
  [v5 encodeObject:self->_localePair forKey:@"localePair"];
  [v5 encodeBool:self->_autodetectLanguage forKey:@"autodetectLanguage"];
  [v5 encodeBool:self->_forceSourceLocale forKey:@"forceSourceLocale"];
  [v5 encodeBool:self->_autoEndpoint forKey:@"autoEndpoint"];
  [v5 encodeBool:self->_enableStreamingSpeechTranslation forKey:@"enableStreamingSpeechTranslation"];
  [v5 encodeBool:self->_enableOfflineStreamStabilizer forKey:@"enableOfflineStreamStabilizer"];
  [v5 encodeBool:self->_enableMultiFieldInput forKey:@"enableMultiFieldInput"];
  [v5 encodeBool:self->_enableTranslationSemanticSegmentation forKey:@"enableTranslationSemanticSegmentation"];
  [v5 encodeBool:self->_censorSpeech forKey:@"censorSpeech"];
  [v5 encodeObject:self->_outputFileURL forKey:@"outputFileURL"];
  [v5 encodeObject:self->_asrModelURLs forKey:@"asrModelURLs"];
  [v5 encodeObject:self->_mtModelURL forKey:@"mtModelURL"];
  [v5 encodeInteger:self->_route forKey:@"route"];
  [v5 encodeInt32:self->_audioSessionID forKey:@"audioSessionID"];
  [v5 encodeInteger:self->_lidThreshold forKey:@"lidThreshold"];
  [v5 encodeInteger:self->_asrConfidenceThreshold forKey:@"asrConfidenceThreshold"];
  [v5 encodeObject:self->_sourceURL forKey:@"sourceURL"];
  [v5 encodeDouble:@"ttsPlaybackRate" forKey:self->_ttsPlaybackRate];
  [v5 encodeBool:self->_muteTTSBasedOnRingerSwitchIfPossible forKey:@"muteTTSBasedOnRingerSwitchIfPossible"];
  [v5 encodeBool:self->_enableVAD forKey:@"enableVAD"];
  [v5 encodeBool:self->_enableAirPodsOwnVAD forKey:@"enableAirPodsOwnVAD"];
  [v5 encodeObject:self->_appIdentifier forKey:@"appIdentifier"];
  [v5 encodeInteger:self->_sourceOrigin forKey:@"sourceOrigin"];
  [v5 encodeObject:self->_untrustedClientIdentifier forKey:@"untrustedClientIdentifier"];
  [v5 encodeObject:self->_logIdentifier forKey:@"logIdentifier"];
  [v5 encodeBool:self->_isFinal forKey:@"isFinal"];
  [v5 encodeBool:self->_supportsGenderDisambiguation forKey:@"supportsGenderDisambiguation"];
  [v5 encodeBool:self->_overrideOngoingSessionIfNeeded forKey:@"overrideOngoingSessionIfNeeded"];
  [v5 encodeBool:self->_cancelOnCleanup forKey:@"cancelOnCleanup"];
  [v5 encodeBool:self->_cleanUpExistingSpeechSession forKey:@"cleanUpExistingSpeechSession"];
}

- (id)sanitizedCopyForUntrustedTextTranslation
{
  v3 = objc_alloc_init(_LTTranslationContext);
  v4 = [(_LTTranslationContext *)self uniqueID];
  v5 = [v4 copy];
  [(_LTTranslationContext *)v3 setUniqueID:v5];

  v6 = [(_LTTranslationContext *)self sessionID];
  v7 = [v6 copy];
  [(_LTTranslationContext *)v3 setSessionID:v7];

  [(_LTTranslationContext *)v3 setTaskHint:[(_LTTranslationContext *)self taskHint]];
  v8 = [(_LTTranslationContext *)self localePair];
  v9 = [v8 copy];
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
  v10 = [(_LTTranslationContext *)self appIdentifier];
  v11 = [v10 copy];
  [(_LTTranslationContext *)v3 setAppIdentifier:v11];

  [(_LTTranslationContext *)v3 setSourceOrigin:[(_LTTranslationContext *)self sourceOrigin]];
  v12 = [(_LTTranslationContext *)self logIdentifier];
  [(_LTTranslationContext *)v3 setLogIdentifier:v12];

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