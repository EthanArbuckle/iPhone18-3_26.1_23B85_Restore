@interface AFDictationOptions
- (AFDictationOptions)dictationOptionsWithoutTextContext;
- (AFDictationOptions)init;
- (AFDictationOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFDictationOptions

- (AFDictationOptions)dictationOptionsWithoutTextContext
{
  v3 = objc_alloc_init(objc_opt_class());
  v4 = [(AFDictationOptions *)self applicationName];
  [v3 setApplicationName:v4];

  v5 = [(AFDictationOptions *)self applicationDisplayName];
  [v3 setApplicationDisplayName:v5];

  v6 = [(AFDictationOptions *)self applicationVersion];
  [v3 setApplicationVersion:v6];

  v7 = [(AFDictationOptions *)self context];
  [v3 setContext:v7];

  v8 = [(AFDictationOptions *)self fieldLabel];
  [v3 setFieldLabel:v8];

  v9 = [(AFDictationOptions *)self fieldIdentifier];
  [v3 setFieldIdentifier:v9];

  v10 = [(AFDictationOptions *)self interactionIdentifier];
  [v3 setInteractionIdentifier:v10];

  v11 = [(AFDictationOptions *)self requestIdentifier];
  [v3 setRequestIdentifier:v11];

  [v3 setKeyboardType:{-[AFDictationOptions keyboardType](self, "keyboardType")}];
  [v3 setReturnKeyType:{-[AFDictationOptions returnKeyType](self, "returnKeyType")}];
  v12 = [(AFDictationOptions *)self languageCodeOverride];
  [v3 setLanguageCodeOverride:v12];

  v13 = [(AFDictationOptions *)self offlineLanguage];
  [v3 setOfflineLanguage:v13];

  [v3 setTranscriptionMode:{-[AFDictationOptions transcriptionMode](self, "transcriptionMode")}];
  v14 = [(AFDictationOptions *)self microphoneIdentifier];
  [v3 setMicrophoneIdentifier:v14];

  [v3 setVoiceSearchTypeOptions:{-[AFDictationOptions voiceSearchTypeOptions](self, "voiceSearchTypeOptions")}];
  v15 = [(AFDictationOptions *)self voiceSearchHeaderFields];
  [v3 setVoiceSearchHeaderFields:v15];

  v16 = [(AFDictationOptions *)self voiceSearchQueryParameters];
  [v3 setVoiceSearchQueryParameters:v16];

  v17 = [(AFDictationOptions *)self voiceTriggerEventInfo];
  [v3 setVoiceTriggerEventInfo:v17];

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
  v18 = [(AFDictationOptions *)self orthography];
  [v3 setOrthography:v18];

  v19 = [(AFDictationOptions *)self keyboardIdentifier];
  [v3 setKeyboardIdentifier:v19];

  [v3 setReleaseAudioSessionOnRecordingCompletion:{-[AFDictationOptions releaseAudioSessionOnRecordingCompletion](self, "releaseAudioSessionOnRecordingCompletion")}];
  [v3 setIncremental:{-[AFDictationOptions incremental](self, "incremental")}];
  [(AFDictationOptions *)self maximumRecognitionDuration];
  [v3 setMaximumRecognitionDuration:?];
  [v3 setTaskHint:{-[AFDictationOptions taskHint](self, "taskHint")}];
  v20 = [(AFDictationOptions *)self originalAudioFileURL];
  [v3 setOriginalAudioFileURL:v20];

  v21 = [(AFDictationOptions *)self recognitionOverrides];
  [v3 setRecognitionOverrides:v21];

  v22 = [(AFDictationOptions *)self modelOverrideURL];
  [v3 setModelOverrideURL:v22];

  v23 = [(AFDictationOptions *)self inlineItemList];
  [v3 setInlineItemList:v23];

  v24 = [(AFDictationOptions *)self languageDetectionUserContext];
  [v3 setLanguageDetectionUserContext:v24];

  [v3 setDictationInputOrigin:{-[AFDictationOptions dictationInputOrigin](self, "dictationInputOrigin")}];
  v25 = [(AFDictationOptions *)self samplingInfo];
  [v3 setSamplingInfo:v25];

  [v3 setShouldClassifyIntent:{-[AFDictationOptions shouldClassifyIntent](self, "shouldClassifyIntent")}];
  [v3 setShouldRecognizeCommands:{-[AFDictationOptions shouldRecognizeCommands](self, "shouldRecognizeCommands")}];
  [v3 setShouldGenerateVoiceCommandCandidates:{-[AFDictationOptions shouldGenerateVoiceCommandCandidates](self, "shouldGenerateVoiceCommandCandidates")}];
  v26 = [(AFDictationOptions *)self messagesContext];
  [v3 setMessagesContext:v26];

  [v3 setShouldPerformFullPayloadCorrection:{-[AFDictationOptions shouldPerformFullPayloadCorrection](self, "shouldPerformFullPayloadCorrection")}];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(AFDictationOptions *)self dictationOptionsWithoutTextContext];
  v5 = [(AFDictationOptions *)self prefixText];
  [v4 setPrefixText:v5];

  v6 = [(AFDictationOptions *)self postfixText];
  [v4 setPostfixText:v6];

  v7 = [(AFDictationOptions *)self selectedText];
  [v4 setSelectedText:v7];

  return v4;
}

- (AFDictationOptions)initWithCoder:(id)a3
{
  v81[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v77.receiver = self;
  v77.super_class = AFDictationOptions;
  v5 = [(AFDictationOptions *)&v77 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_applicationDisplayName"];
    applicationDisplayName = v5->_applicationDisplayName;
    v5->_applicationDisplayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_applicationVersion"];
    applicationVersion = v5->_applicationVersion;
    v5->_applicationVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = v5->_context;
    v5->_context = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fieldLabel"];
    fieldLabel = v5->_fieldLabel;
    v5->_fieldLabel = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fieldIdentifier"];
    fieldIdentifier = v5->_fieldIdentifier;
    v5->_fieldIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interactionIdentifier"];
    interactionIdentifier = v5->_interactionIdentifier;
    v5->_interactionIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v20;

    v5->_keyboardType = [v4 decodeIntegerForKey:@"_keyboardType"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_prefixText"];
    prefixText = v5->_prefixText;
    v5->_prefixText = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_postfixText"];
    postfixText = v5->_postfixText;
    v5->_postfixText = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_selectedText"];
    selectedText = v5->_selectedText;
    v5->_selectedText = v26;

    v5->_returnKeyType = [v4 decodeIntegerForKey:@"_returnKeyType"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_languageCodeOverride"];
    languageCodeOverride = v5->_languageCodeOverride;
    v5->_languageCodeOverride = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_offlineLanguage"];
    offlineLanguage = v5->_offlineLanguage;
    v5->_offlineLanguage = v30;

    v5->_transcriptionMode = [v4 decodeIntegerForKey:@"_transcriptionMode"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_microphoneIdentifier"];
    microphoneIdentifier = v5->_microphoneIdentifier;
    v5->_microphoneIdentifier = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_orthography"];
    orthography = v5->_orthography;
    v5->_orthography = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_keyboardIdentifier"];
    keyboardIdentifier = v5->_keyboardIdentifier;
    v5->_keyboardIdentifier = v36;

    v38 = MEMORY[0x1E695DFD8];
    v81[0] = objc_opt_class();
    v81[1] = objc_opt_class();
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
    v40 = [v38 setWithArray:v39];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"_inlineItemList"];
    inlineItemList = v5->_inlineItemList;
    v5->_inlineItemList = v41;

    v5->_voiceSearchTypeOptions = [v4 decodeIntegerForKey:@"_voiceSearchTypeOptions"];
    v43 = MEMORY[0x1E695DFD8];
    v80[0] = objc_opt_class();
    v80[1] = objc_opt_class();
    v80[2] = objc_opt_class();
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:3];
    v45 = [v43 setWithArray:v44];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"_voiceSearchHeaderFields"];
    voiceSearchHeaderFields = v5->_voiceSearchHeaderFields;
    v5->_voiceSearchHeaderFields = v46;

    v48 = MEMORY[0x1E695DFD8];
    v79[0] = objc_opt_class();
    v79[1] = objc_opt_class();
    v79[2] = objc_opt_class();
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
    v50 = [v48 setWithArray:v49];
    v51 = [v4 decodeObjectOfClasses:v50 forKey:@"_voiceSearchQueryParameters"];
    voiceSearchQueryParameters = v5->_voiceSearchQueryParameters;
    v5->_voiceSearchQueryParameters = v51;

    v53 = [v4 decodePropertyListForKey:@"_voiceTriggerEventInfo"];
    voiceTriggerEventInfo = v5->_voiceTriggerEventInfo;
    v5->_voiceTriggerEventInfo = v53;

    v55 = v5->_voiceTriggerEventInfo;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v56 = v5->_voiceTriggerEventInfo;
      v5->_voiceTriggerEventInfo = 0;
    }

    v5->_forceOfflineRecognition = [v4 decodeBoolForKey:@"_forceOfflineRecognition"];
    v5->_preferOnlineRecognition = [v4 decodeBoolForKey:@"_preferOnlineRecognition"];
    v5->_detectUtterances = [v4 decodeBoolForKey:@"_detectUtterances"];
    v5->_continuousListening = [v4 decodeBoolForKey:@"_continuousListening"];
    v5->_shouldHandleCapitalization = [v4 decodeBoolForKey:@"_shouldHandleCapitalization"];
    v5->_autoPunctuation = [v4 decodeBoolForKey:@"_autoPunctuation"];
    v5->_emojiRecognition = [v4 decodeBoolForKey:@"_emojiRecognition"];
    v5->_preferOnDeviceRecognition = [v4 decodeBoolForKey:@"_preferOnDeviceRecognition"];
    v5->_secureOfflineOnly = [v4 decodeBoolForKey:@"_secureOfflineOnly"];
    v5->_farField = [v4 decodeBoolForKey:@"_farField"];
    v5->_releaseAudioSessionOnRecordingCompletion = [v4 decodeBoolForKey:@"_releaseAudioSessionOnRecordingCompletion"];
    v5->_incremental = [v4 decodeBoolForKey:@"_incremental"];
    [v4 decodeDoubleForKey:@"_maximumRecognitionDuration"];
    v5->_maximumRecognitionDuration = v57;
    v5->_taskHint = [v4 decodeIntegerForKey:@"_taskHint"];
    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originalAudioFileURL"];
    originalAudioFileURL = v5->_originalAudioFileURL;
    v5->_originalAudioFileURL = v58;

    v60 = [v4 decodePropertyListForKey:@"_recognitionOverrides"];
    recognitionOverrides = v5->_recognitionOverrides;
    v5->_recognitionOverrides = v60;

    v62 = v5->_recognitionOverrides;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v63 = v5->_recognitionOverrides;
      v5->_recognitionOverrides = 0;
    }

    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modelOverrideURL"];
    modelOverrideURL = v5->_modelOverrideURL;
    v5->_modelOverrideURL = v64;

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_languageDetectionUserContext"];
    languageDetectionUserContext = v5->_languageDetectionUserContext;
    v5->_languageDetectionUserContext = v66;

    v5->_dictationInputOrigin = [v4 decodeIntegerForKey:@"_dictationInputOrigin"];
    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_samplingInfo"];
    samplingInfo = v5->_samplingInfo;
    v5->_samplingInfo = v68;

    v5->_shouldClassifyIntent = [v4 decodeBoolForKey:@"_shouldClassifyIntent"];
    v5->_shouldRecognizeCommands = [v4 decodeBoolForKey:@"_shouldRecognizeCommands"];
    v5->_shouldGenerateVoiceCommandCandidates = [v4 decodeBoolForKey:@"_shouldGenerateVoiceCommandCandidates"];
    v70 = MEMORY[0x1E695DFD8];
    v78[0] = objc_opt_class();
    v78[1] = objc_opt_class();
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
    v72 = [v70 setWithArray:v71];
    v73 = [v4 decodeObjectOfClasses:v72 forKey:@"_messagesContext"];
    messagesContext = v5->_messagesContext;
    v5->_messagesContext = v73;

    v5->_shouldPerformFullPayloadCorrection = [v4 decodeBoolForKey:@"_shouldPerformFullPayloadCorrection"];
  }

  v75 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  applicationName = self->_applicationName;
  v5 = a3;
  [v5 encodeObject:applicationName forKey:@"_applicationName"];
  [v5 encodeObject:self->_applicationDisplayName forKey:@"_applicationDisplayName"];
  [v5 encodeObject:self->_applicationVersion forKey:@"_applicationVersion"];
  [v5 encodeObject:self->_context forKey:@"_context"];
  [v5 encodeObject:self->_fieldLabel forKey:@"_fieldLabel"];
  [v5 encodeObject:self->_fieldIdentifier forKey:@"_fieldIdentifier"];
  [v5 encodeObject:self->_interactionIdentifier forKey:@"_interactionIdentifier"];
  [v5 encodeObject:self->_requestIdentifier forKey:@"_requestIdentifier"];
  [v5 encodeInteger:self->_keyboardType forKey:@"_keyboardType"];
  [v5 encodeObject:self->_prefixText forKey:@"_prefixText"];
  [v5 encodeObject:self->_postfixText forKey:@"_postfixText"];
  [v5 encodeObject:self->_selectedText forKey:@"_selectedText"];
  [v5 encodeInteger:self->_returnKeyType forKey:@"_returnKeyType"];
  [v5 encodeObject:self->_languageCodeOverride forKey:@"_languageCodeOverride"];
  [v5 encodeObject:self->_offlineLanguage forKey:@"_offlineLanguage"];
  [v5 encodeInteger:self->_transcriptionMode forKey:@"_transcriptionMode"];
  [v5 encodeObject:self->_microphoneIdentifier forKey:@"_microphoneIdentifier"];
  [v5 encodeObject:self->_inlineItemList forKey:@"_inlineItemList"];
  [v5 encodeInteger:self->_voiceSearchTypeOptions forKey:@"_voiceSearchTypeOptions"];
  [v5 encodeObject:self->_voiceSearchHeaderFields forKey:@"_voiceSearchHeaderFields"];
  [v5 encodeObject:self->_voiceSearchQueryParameters forKey:@"_voiceSearchQueryParameters"];
  [v5 encodeObject:self->_voiceTriggerEventInfo forKey:@"_voiceTriggerEventInfo"];
  [v5 encodeObject:self->_orthography forKey:@"_orthography"];
  [v5 encodeObject:self->_keyboardIdentifier forKey:@"_keyboardIdentifier"];
  [v5 encodeBool:self->_forceOfflineRecognition forKey:@"_forceOfflineRecognition"];
  [v5 encodeBool:self->_preferOnlineRecognition forKey:@"_preferOnlineRecognition"];
  [v5 encodeBool:self->_detectUtterances forKey:@"_detectUtterances"];
  [v5 encodeBool:self->_continuousListening forKey:@"_continuousListening"];
  [v5 encodeBool:self->_shouldHandleCapitalization forKey:@"_shouldHandleCapitalization"];
  [v5 encodeBool:self->_autoPunctuation forKey:@"_autoPunctuation"];
  [v5 encodeBool:self->_emojiRecognition forKey:@"_emojiRecognition"];
  [v5 encodeBool:self->_preferOnDeviceRecognition forKey:@"_preferOnDeviceRecognition"];
  [v5 encodeBool:self->_secureOfflineOnly forKey:@"_secureOfflineOnly"];
  [v5 encodeBool:self->_farField forKey:@"_farField"];
  [v5 encodeBool:self->_releaseAudioSessionOnRecordingCompletion forKey:@"_releaseAudioSessionOnRecordingCompletion"];
  [v5 encodeBool:self->_incremental forKey:@"_incremental"];
  [v5 encodeDouble:@"_maximumRecognitionDuration" forKey:self->_maximumRecognitionDuration];
  [v5 encodeInteger:self->_taskHint forKey:@"_taskHint"];
  [v5 encodeObject:self->_originalAudioFileURL forKey:@"_originalAudioFileURL"];
  [v5 encodeObject:self->_recognitionOverrides forKey:@"_recognitionOverrides"];
  [v5 encodeObject:self->_modelOverrideURL forKey:@"_modelOverrideURL"];
  [v5 encodeObject:self->_languageDetectionUserContext forKey:@"_languageDetectionUserContext"];
  [v5 encodeInteger:self->_dictationInputOrigin forKey:@"_dictationInputOrigin"];
  [v5 encodeObject:self->_samplingInfo forKey:@"_samplingInfo"];
  [v5 encodeBool:self->_shouldClassifyIntent forKey:@"_shouldClassifyIntent"];
  [v5 encodeBool:self->_shouldRecognizeCommands forKey:@"_shouldRecognizeCommands"];
  [v5 encodeBool:self->_shouldGenerateVoiceCommandCandidates forKey:@"_shouldGenerateVoiceCommandCandidates"];
  [v5 encodeObject:self->_messagesContext forKey:@"_messagesContext"];
  [v5 encodeBool:self->_shouldPerformFullPayloadCorrection forKey:@"_shouldPerformFullPayloadCorrection"];
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