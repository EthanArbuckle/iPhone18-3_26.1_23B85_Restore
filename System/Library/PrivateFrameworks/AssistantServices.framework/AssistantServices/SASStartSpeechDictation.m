@interface SASStartSpeechDictation
+ (id)ad_startSpeechDictationWithAFDictationOptions:(id)a3;
- (id)ad_deferredMetricsContext;
- (id)ad_languageModel;
@end

@implementation SASStartSpeechDictation

- (id)ad_deferredMetricsContext
{
  v7.receiver = self;
  v7.super_class = SASStartSpeechDictation;
  v3 = [(SASStartSpeechDictation *)&v7 ad_deferredMetricsContext];
  v4 = [(SASStartSpeechDictation *)self applicationName];
  if (v4)
  {
    [v3 setObject:v4 forKey:SASStartSpeechDictationApplicationNamePListKey];
  }

  v5 = [(SASStartSpeechDictation *)self fieldLabel];
  if (v5)
  {
    [v3 setObject:v5 forKey:SASStartSpeechDictationFieldLabelPListKey];
  }

  return v3;
}

- (id)ad_languageModel
{
  v2 = [(SASStartSpeechDictation *)self languages];
  v3 = v2;
  if (v2 && [v2 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)ad_startSpeechDictationWithAFDictationOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 voiceSearchTypeOptions];
  if (v4)
  {
    v5 = v4;
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

    v9 = [v3 voiceSearchHeaderFields];
    [v6 setHeaders:v9];

    v10 = [v3 voiceSearchQueryParameters];
    [v6 setQueryParameters:v10];
  }

  else
  {
    v6 = objc_alloc_init(SASStartSpeechDictation);
  }

  v11 = [v3 applicationName];
  [v6 setApplicationName:v11];

  v12 = [v3 applicationVersion];
  [v6 setApplicationVersion:v12];

  v13 = [v3 fieldLabel];
  [v6 setFieldLabel:v13];

  v14 = [v3 fieldIdentifier];
  [v6 setFieldId:v14];

  v15 = [v3 interactionIdentifier];
  [v6 setInteractionId:v15];

  v16 = [v3 requestIdentifier];
  [v6 setAceId:v16];

  v17 = [v3 keyboardType] - 1;
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
  v19 = [v3 keyboardIdentifier];
  [v6 setKeyboardIdentifier:v19];

  v20 = [v3 returnKeyType] - 1;
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
  v22 = [v3 inlineItemList];
  [v6 setInlineItemList:v22];

  v23 = [v3 voiceTriggerEventInfo];
  [v6 setVoiceTriggerEventInfo:v23];

  [v6 setAutoPunctuation:{objc_msgSend(v3, "autoPunctuation")}];

  return v6;
}

@end