@interface SASStartSpeechDictation
+ (id)ad_startSpeechDictationWithAFDictationOptions:(id)options;
- (id)ad_deferredMetricsContext;
- (id)ad_languageModel;
@end

@implementation SASStartSpeechDictation

- (id)ad_deferredMetricsContext
{
  v7.receiver = self;
  v7.super_class = SASStartSpeechDictation;
  ad_deferredMetricsContext = [(SASStartSpeechDictation *)&v7 ad_deferredMetricsContext];
  applicationName = [(SASStartSpeechDictation *)self applicationName];
  if (applicationName)
  {
    [ad_deferredMetricsContext setObject:applicationName forKey:SASStartSpeechDictationApplicationNamePListKey];
  }

  fieldLabel = [(SASStartSpeechDictation *)self fieldLabel];
  if (fieldLabel)
  {
    [ad_deferredMetricsContext setObject:fieldLabel forKey:SASStartSpeechDictationFieldLabelPListKey];
  }

  return ad_deferredMetricsContext;
}

- (id)ad_languageModel
{
  languages = [(SASStartSpeechDictation *)self languages];
  v3 = languages;
  if (languages && [languages count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)ad_startSpeechDictationWithAFDictationOptions:(id)options
{
  optionsCopy = options;
  voiceSearchTypeOptions = [optionsCopy voiceSearchTypeOptions];
  if (voiceSearchTypeOptions)
  {
    v5 = voiceSearchTypeOptions;
    v6 = objc_alloc_init(SASStartVoiceSearchRequest);
    v7 = objc_alloc_init(NSMutableArray);
    v8 = v7;
    if (v5)
    {
      [v7 addObject:SASearchTypeVOICE_SEARCHValue];
    }

    if ((v5 & 2) != 0)
    {
      [v8 addObject:SASearchTypeWEB_SEARCHValue];
    }

    [v6 setSearchTypes:v8];

    voiceSearchHeaderFields = [optionsCopy voiceSearchHeaderFields];
    [v6 setHeaders:voiceSearchHeaderFields];

    voiceSearchQueryParameters = [optionsCopy voiceSearchQueryParameters];
    [v6 setQueryParameters:voiceSearchQueryParameters];
  }

  else
  {
    v6 = objc_alloc_init(SASStartSpeechDictation);
  }

  applicationName = [optionsCopy applicationName];
  [v6 setApplicationName:applicationName];

  applicationVersion = [optionsCopy applicationVersion];
  [v6 setApplicationVersion:applicationVersion];

  fieldLabel = [optionsCopy fieldLabel];
  [v6 setFieldLabel:fieldLabel];

  fieldIdentifier = [optionsCopy fieldIdentifier];
  [v6 setFieldId:fieldIdentifier];

  interactionIdentifier = [optionsCopy interactionIdentifier];
  [v6 setInteractionId:interactionIdentifier];

  requestIdentifier = [optionsCopy requestIdentifier];
  [v6 setAceId:requestIdentifier];

  v17 = [optionsCopy keyboardType] - 1;
  if (v17 > 0xC)
  {
    v18 = 0;
  }

  else
  {
    v18 = **(&off_10051D8B0 + v17);
  }

  [v6 setKeyboardType:v18];

  [v6 setPostfixText:&stru_10051F508];
  [v6 setPrefixText:&stru_10051F508];
  [v6 setSelectedText:&stru_10051F508];
  keyboardIdentifier = [optionsCopy keyboardIdentifier];
  [v6 setKeyboardIdentifier:keyboardIdentifier];

  v20 = [optionsCopy returnKeyType] - 1;
  if (v20 > 0xA)
  {
    v21 = 0;
  }

  else
  {
    v21 = **(&off_10051D918 + v20);
  }

  [v6 setKeyboardReturnKey:v21];

  [v6 setEnablePartialResults:AFPreferencesStreamingDictationEnabled()];
  inlineItemList = [optionsCopy inlineItemList];
  [v6 setInlineItemList:inlineItemList];

  voiceTriggerEventInfo = [optionsCopy voiceTriggerEventInfo];
  [v6 setVoiceTriggerEventInfo:voiceTriggerEventInfo];

  [v6 setAutoPunctuation:{objc_msgSend(optionsCopy, "autoPunctuation")}];

  return v6;
}

@end