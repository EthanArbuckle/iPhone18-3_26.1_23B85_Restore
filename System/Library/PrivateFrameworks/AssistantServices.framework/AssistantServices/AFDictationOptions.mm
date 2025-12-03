@interface AFDictationOptions
- (AFDictationOptions)dictationOptionsWithoutTextContext;
- (AFDictationOptions)init;
- (AFDictationOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFDictationOptions

- (AFDictationOptions)dictationOptionsWithoutTextContext
{
  v3 = objc_alloc_init(objc_opt_class());
  applicationName = [(AFDictationOptions *)self applicationName];
  [v3 setApplicationName:applicationName];

  applicationDisplayName = [(AFDictationOptions *)self applicationDisplayName];
  [v3 setApplicationDisplayName:applicationDisplayName];

  applicationVersion = [(AFDictationOptions *)self applicationVersion];
  [v3 setApplicationVersion:applicationVersion];

  context = [(AFDictationOptions *)self context];
  [v3 setContext:context];

  fieldLabel = [(AFDictationOptions *)self fieldLabel];
  [v3 setFieldLabel:fieldLabel];

  fieldIdentifier = [(AFDictationOptions *)self fieldIdentifier];
  [v3 setFieldIdentifier:fieldIdentifier];

  interactionIdentifier = [(AFDictationOptions *)self interactionIdentifier];
  [v3 setInteractionIdentifier:interactionIdentifier];

  requestIdentifier = [(AFDictationOptions *)self requestIdentifier];
  [v3 setRequestIdentifier:requestIdentifier];

  [v3 setKeyboardType:{-[AFDictationOptions keyboardType](self, "keyboardType")}];
  [v3 setReturnKeyType:{-[AFDictationOptions returnKeyType](self, "returnKeyType")}];
  languageCodeOverride = [(AFDictationOptions *)self languageCodeOverride];
  [v3 setLanguageCodeOverride:languageCodeOverride];

  offlineLanguage = [(AFDictationOptions *)self offlineLanguage];
  [v3 setOfflineLanguage:offlineLanguage];

  [v3 setTranscriptionMode:{-[AFDictationOptions transcriptionMode](self, "transcriptionMode")}];
  microphoneIdentifier = [(AFDictationOptions *)self microphoneIdentifier];
  [v3 setMicrophoneIdentifier:microphoneIdentifier];

  [v3 setVoiceSearchTypeOptions:{-[AFDictationOptions voiceSearchTypeOptions](self, "voiceSearchTypeOptions")}];
  voiceSearchHeaderFields = [(AFDictationOptions *)self voiceSearchHeaderFields];
  [v3 setVoiceSearchHeaderFields:voiceSearchHeaderFields];

  voiceSearchQueryParameters = [(AFDictationOptions *)self voiceSearchQueryParameters];
  [v3 setVoiceSearchQueryParameters:voiceSearchQueryParameters];

  voiceTriggerEventInfo = [(AFDictationOptions *)self voiceTriggerEventInfo];
  [v3 setVoiceTriggerEventInfo:voiceTriggerEventInfo];

  [v3 setForceOfflineRecognition:{-[AFDictationOptions forceOfflineRecognition](self, "forceOfflineRecognition")}];
  [v3 setPreferOnlineRecognition:{-[AFDictationOptions preferOnlineRecognition](self, "preferOnlineRecognition")}];
  [v3 setDetectUtterances:{-[AFDictationOptions detectUtterances](self, "detectUtterances")}];
  [v3 setContinuousListening:{-[AFDictationOptions continuousListening](self, "continuousListening")}];
  [v3 setShouldHandleCapitalization:{-[AFDictationOptions shouldHandleCapitalization](self, "shouldHandleCapitalization")}];
  [v3 setAutoPunctuation:{-[AFDictationOptions autoPunctuation](self, "autoPunctuation")}];
  [v3 setEmojiRecognition:{-[AFDictationOptions emojiRecognition](self, "emojiRecognition")}];
  [v3 setPreferOnDeviceRecognition:{-[AFDictationOptions preferOnDeviceRecognition](self, "preferOnDeviceRecognition")}];
  [v3 setSecureOfflineOnly:{-[AFDictationOptions secureOfflineOnly](self, "secureOfflineOnly")}];
  [v3 setFarField:{-[AFDictationOptions farField](self, "farField")}];
  orthography = [(AFDictationOptions *)self orthography];
  [v3 setOrthography:orthography];

  keyboardIdentifier = [(AFDictationOptions *)self keyboardIdentifier];
  [v3 setKeyboardIdentifier:keyboardIdentifier];

  [v3 setReleaseAudioSessionOnRecordingCompletion:{-[AFDictationOptions releaseAudioSessionOnRecordingCompletion](self, "releaseAudioSessionOnRecordingCompletion")}];
  [v3 setIncremental:{-[AFDictationOptions incremental](self, "incremental")}];
  [(AFDictationOptions *)self maximumRecognitionDuration];
  [v3 setMaximumRecognitionDuration:?];
  [v3 setTaskHint:{-[AFDictationOptions taskHint](self, "taskHint")}];
  originalAudioFileURL = [(AFDictationOptions *)self originalAudioFileURL];
  [v3 setOriginalAudioFileURL:originalAudioFileURL];

  recognitionOverrides = [(AFDictationOptions *)self recognitionOverrides];
  [v3 setRecognitionOverrides:recognitionOverrides];

  modelOverrideURL = [(AFDictationOptions *)self modelOverrideURL];
  [v3 setModelOverrideURL:modelOverrideURL];

  inlineItemList = [(AFDictationOptions *)self inlineItemList];
  [v3 setInlineItemList:inlineItemList];

  languageDetectionUserContext = [(AFDictationOptions *)self languageDetectionUserContext];
  [v3 setLanguageDetectionUserContext:languageDetectionUserContext];

  [v3 setDictationInputOrigin:{-[AFDictationOptions dictationInputOrigin](self, "dictationInputOrigin")}];
  samplingInfo = [(AFDictationOptions *)self samplingInfo];
  [v3 setSamplingInfo:samplingInfo];

  [v3 setShouldClassifyIntent:{-[AFDictationOptions shouldClassifyIntent](self, "shouldClassifyIntent")}];
  [v3 setShouldRecognizeCommands:{-[AFDictationOptions shouldRecognizeCommands](self, "shouldRecognizeCommands")}];
  [v3 setShouldGenerateVoiceCommandCandidates:{-[AFDictationOptions shouldGenerateVoiceCommandCandidates](self, "shouldGenerateVoiceCommandCandidates")}];
  messagesContext = [(AFDictationOptions *)self messagesContext];
  [v3 setMessagesContext:messagesContext];

  [v3 setShouldPerformFullPayloadCorrection:{-[AFDictationOptions shouldPerformFullPayloadCorrection](self, "shouldPerformFullPayloadCorrection")}];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  dictationOptionsWithoutTextContext = [(AFDictationOptions *)self dictationOptionsWithoutTextContext];
  prefixText = [(AFDictationOptions *)self prefixText];
  [dictationOptionsWithoutTextContext setPrefixText:prefixText];

  postfixText = [(AFDictationOptions *)self postfixText];
  [dictationOptionsWithoutTextContext setPostfixText:postfixText];

  selectedText = [(AFDictationOptions *)self selectedText];
  [dictationOptionsWithoutTextContext setSelectedText:selectedText];

  return dictationOptionsWithoutTextContext;
}

- (AFDictationOptions)initWithCoder:(id)coder
{
  v81[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v77.receiver = self;
  v77.super_class = AFDictationOptions;
  v5 = [(AFDictationOptions *)&v77 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_applicationDisplayName"];
    applicationDisplayName = v5->_applicationDisplayName;
    v5->_applicationDisplayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_applicationVersion"];
    applicationVersion = v5->_applicationVersion;
    v5->_applicationVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = v5->_context;
    v5->_context = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fieldLabel"];
    fieldLabel = v5->_fieldLabel;
    v5->_fieldLabel = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fieldIdentifier"];
    fieldIdentifier = v5->_fieldIdentifier;
    v5->_fieldIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_interactionIdentifier"];
    interactionIdentifier = v5->_interactionIdentifier;
    v5->_interactionIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v20;

    v5->_keyboardType = [coderCopy decodeIntegerForKey:@"_keyboardType"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_prefixText"];
    prefixText = v5->_prefixText;
    v5->_prefixText = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_postfixText"];
    postfixText = v5->_postfixText;
    v5->_postfixText = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_selectedText"];
    selectedText = v5->_selectedText;
    v5->_selectedText = v26;

    v5->_returnKeyType = [coderCopy decodeIntegerForKey:@"_returnKeyType"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_languageCodeOverride"];
    languageCodeOverride = v5->_languageCodeOverride;
    v5->_languageCodeOverride = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_offlineLanguage"];
    offlineLanguage = v5->_offlineLanguage;
    v5->_offlineLanguage = v30;

    v5->_transcriptionMode = [coderCopy decodeIntegerForKey:@"_transcriptionMode"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_microphoneIdentifier"];
    microphoneIdentifier = v5->_microphoneIdentifier;
    v5->_microphoneIdentifier = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_orthography"];
    orthography = v5->_orthography;
    v5->_orthography = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_keyboardIdentifier"];
    keyboardIdentifier = v5->_keyboardIdentifier;
    v5->_keyboardIdentifier = v36;

    v38 = MEMORY[0x1E695DFD8];
    v81[0] = objc_opt_class();
    v81[1] = objc_opt_class();
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
    v40 = [v38 setWithArray:v39];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"_inlineItemList"];
    inlineItemList = v5->_inlineItemList;
    v5->_inlineItemList = v41;

    v5->_voiceSearchTypeOptions = [coderCopy decodeIntegerForKey:@"_voiceSearchTypeOptions"];
    v43 = MEMORY[0x1E695DFD8];
    v80[0] = objc_opt_class();
    v80[1] = objc_opt_class();
    v80[2] = objc_opt_class();
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:3];
    v45 = [v43 setWithArray:v44];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"_voiceSearchHeaderFields"];
    voiceSearchHeaderFields = v5->_voiceSearchHeaderFields;
    v5->_voiceSearchHeaderFields = v46;

    v48 = MEMORY[0x1E695DFD8];
    v79[0] = objc_opt_class();
    v79[1] = objc_opt_class();
    v79[2] = objc_opt_class();
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
    v50 = [v48 setWithArray:v49];
    v51 = [coderCopy decodeObjectOfClasses:v50 forKey:@"_voiceSearchQueryParameters"];
    voiceSearchQueryParameters = v5->_voiceSearchQueryParameters;
    v5->_voiceSearchQueryParameters = v51;

    v53 = [coderCopy decodePropertyListForKey:@"_voiceTriggerEventInfo"];
    voiceTriggerEventInfo = v5->_voiceTriggerEventInfo;
    v5->_voiceTriggerEventInfo = v53;

    v55 = v5->_voiceTriggerEventInfo;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v56 = v5->_voiceTriggerEventInfo;
      v5->_voiceTriggerEventInfo = 0;
    }

    v5->_forceOfflineRecognition = [coderCopy decodeBoolForKey:@"_forceOfflineRecognition"];
    v5->_preferOnlineRecognition = [coderCopy decodeBoolForKey:@"_preferOnlineRecognition"];
    v5->_detectUtterances = [coderCopy decodeBoolForKey:@"_detectUtterances"];
    v5->_continuousListening = [coderCopy decodeBoolForKey:@"_continuousListening"];
    v5->_shouldHandleCapitalization = [coderCopy decodeBoolForKey:@"_shouldHandleCapitalization"];
    v5->_autoPunctuation = [coderCopy decodeBoolForKey:@"_autoPunctuation"];
    v5->_emojiRecognition = [coderCopy decodeBoolForKey:@"_emojiRecognition"];
    v5->_preferOnDeviceRecognition = [coderCopy decodeBoolForKey:@"_preferOnDeviceRecognition"];
    v5->_secureOfflineOnly = [coderCopy decodeBoolForKey:@"_secureOfflineOnly"];
    v5->_farField = [coderCopy decodeBoolForKey:@"_farField"];
    v5->_releaseAudioSessionOnRecordingCompletion = [coderCopy decodeBoolForKey:@"_releaseAudioSessionOnRecordingCompletion"];
    v5->_incremental = [coderCopy decodeBoolForKey:@"_incremental"];
    [coderCopy decodeDoubleForKey:@"_maximumRecognitionDuration"];
    v5->_maximumRecognitionDuration = v57;
    v5->_taskHint = [coderCopy decodeIntegerForKey:@"_taskHint"];
    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_originalAudioFileURL"];
    originalAudioFileURL = v5->_originalAudioFileURL;
    v5->_originalAudioFileURL = v58;

    v60 = [coderCopy decodePropertyListForKey:@"_recognitionOverrides"];
    recognitionOverrides = v5->_recognitionOverrides;
    v5->_recognitionOverrides = v60;

    v62 = v5->_recognitionOverrides;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v63 = v5->_recognitionOverrides;
      v5->_recognitionOverrides = 0;
    }

    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modelOverrideURL"];
    modelOverrideURL = v5->_modelOverrideURL;
    v5->_modelOverrideURL = v64;

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_languageDetectionUserContext"];
    languageDetectionUserContext = v5->_languageDetectionUserContext;
    v5->_languageDetectionUserContext = v66;

    v5->_dictationInputOrigin = [coderCopy decodeIntegerForKey:@"_dictationInputOrigin"];
    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_samplingInfo"];
    samplingInfo = v5->_samplingInfo;
    v5->_samplingInfo = v68;

    v5->_shouldClassifyIntent = [coderCopy decodeBoolForKey:@"_shouldClassifyIntent"];
    v5->_shouldRecognizeCommands = [coderCopy decodeBoolForKey:@"_shouldRecognizeCommands"];
    v5->_shouldGenerateVoiceCommandCandidates = [coderCopy decodeBoolForKey:@"_shouldGenerateVoiceCommandCandidates"];
    v70 = MEMORY[0x1E695DFD8];
    v78[0] = objc_opt_class();
    v78[1] = objc_opt_class();
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
    v72 = [v70 setWithArray:v71];
    v73 = [coderCopy decodeObjectOfClasses:v72 forKey:@"_messagesContext"];
    messagesContext = v5->_messagesContext;
    v5->_messagesContext = v73;

    v5->_shouldPerformFullPayloadCorrection = [coderCopy decodeBoolForKey:@"_shouldPerformFullPayloadCorrection"];
  }

  v75 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  applicationName = self->_applicationName;
  coderCopy = coder;
  [coderCopy encodeObject:applicationName forKey:@"_applicationName"];
  [coderCopy encodeObject:self->_applicationDisplayName forKey:@"_applicationDisplayName"];
  [coderCopy encodeObject:self->_applicationVersion forKey:@"_applicationVersion"];
  [coderCopy encodeObject:self->_context forKey:@"_context"];
  [coderCopy encodeObject:self->_fieldLabel forKey:@"_fieldLabel"];
  [coderCopy encodeObject:self->_fieldIdentifier forKey:@"_fieldIdentifier"];
  [coderCopy encodeObject:self->_interactionIdentifier forKey:@"_interactionIdentifier"];
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"_requestIdentifier"];
  [coderCopy encodeInteger:self->_keyboardType forKey:@"_keyboardType"];
  [coderCopy encodeObject:self->_prefixText forKey:@"_prefixText"];
  [coderCopy encodeObject:self->_postfixText forKey:@"_postfixText"];
  [coderCopy encodeObject:self->_selectedText forKey:@"_selectedText"];
  [coderCopy encodeInteger:self->_returnKeyType forKey:@"_returnKeyType"];
  [coderCopy encodeObject:self->_languageCodeOverride forKey:@"_languageCodeOverride"];
  [coderCopy encodeObject:self->_offlineLanguage forKey:@"_offlineLanguage"];
  [coderCopy encodeInteger:self->_transcriptionMode forKey:@"_transcriptionMode"];
  [coderCopy encodeObject:self->_microphoneIdentifier forKey:@"_microphoneIdentifier"];
  [coderCopy encodeObject:self->_inlineItemList forKey:@"_inlineItemList"];
  [coderCopy encodeInteger:self->_voiceSearchTypeOptions forKey:@"_voiceSearchTypeOptions"];
  [coderCopy encodeObject:self->_voiceSearchHeaderFields forKey:@"_voiceSearchHeaderFields"];
  [coderCopy encodeObject:self->_voiceSearchQueryParameters forKey:@"_voiceSearchQueryParameters"];
  [coderCopy encodeObject:self->_voiceTriggerEventInfo forKey:@"_voiceTriggerEventInfo"];
  [coderCopy encodeObject:self->_orthography forKey:@"_orthography"];
  [coderCopy encodeObject:self->_keyboardIdentifier forKey:@"_keyboardIdentifier"];
  [coderCopy encodeBool:self->_forceOfflineRecognition forKey:@"_forceOfflineRecognition"];
  [coderCopy encodeBool:self->_preferOnlineRecognition forKey:@"_preferOnlineRecognition"];
  [coderCopy encodeBool:self->_detectUtterances forKey:@"_detectUtterances"];
  [coderCopy encodeBool:self->_continuousListening forKey:@"_continuousListening"];
  [coderCopy encodeBool:self->_shouldHandleCapitalization forKey:@"_shouldHandleCapitalization"];
  [coderCopy encodeBool:self->_autoPunctuation forKey:@"_autoPunctuation"];
  [coderCopy encodeBool:self->_emojiRecognition forKey:@"_emojiRecognition"];
  [coderCopy encodeBool:self->_preferOnDeviceRecognition forKey:@"_preferOnDeviceRecognition"];
  [coderCopy encodeBool:self->_secureOfflineOnly forKey:@"_secureOfflineOnly"];
  [coderCopy encodeBool:self->_farField forKey:@"_farField"];
  [coderCopy encodeBool:self->_releaseAudioSessionOnRecordingCompletion forKey:@"_releaseAudioSessionOnRecordingCompletion"];
  [coderCopy encodeBool:self->_incremental forKey:@"_incremental"];
  [coderCopy encodeDouble:@"_maximumRecognitionDuration" forKey:self->_maximumRecognitionDuration];
  [coderCopy encodeInteger:self->_taskHint forKey:@"_taskHint"];
  [coderCopy encodeObject:self->_originalAudioFileURL forKey:@"_originalAudioFileURL"];
  [coderCopy encodeObject:self->_recognitionOverrides forKey:@"_recognitionOverrides"];
  [coderCopy encodeObject:self->_modelOverrideURL forKey:@"_modelOverrideURL"];
  [coderCopy encodeObject:self->_languageDetectionUserContext forKey:@"_languageDetectionUserContext"];
  [coderCopy encodeInteger:self->_dictationInputOrigin forKey:@"_dictationInputOrigin"];
  [coderCopy encodeObject:self->_samplingInfo forKey:@"_samplingInfo"];
  [coderCopy encodeBool:self->_shouldClassifyIntent forKey:@"_shouldClassifyIntent"];
  [coderCopy encodeBool:self->_shouldRecognizeCommands forKey:@"_shouldRecognizeCommands"];
  [coderCopy encodeBool:self->_shouldGenerateVoiceCommandCandidates forKey:@"_shouldGenerateVoiceCommandCandidates"];
  [coderCopy encodeObject:self->_messagesContext forKey:@"_messagesContext"];
  [coderCopy encodeBool:self->_shouldPerformFullPayloadCorrection forKey:@"_shouldPerformFullPayloadCorrection"];
}

- (AFDictationOptions)init
{
  v3.receiver = self;
  v3.super_class = AFDictationOptions;
  result = [(AFDictationOptions *)&v3 init];
  if (result)
  {
    result->_maximumRecognitionDuration = 120.0;
  }

  return result;
}

@end