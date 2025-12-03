@interface WFSpeechSynthesisVoice
+ (id)availableLanguageCodes;
+ (id)currentLanguageCode;
+ (id)defaultVoiceForLanguageCode:(id)code;
+ (id)voiceForIdentifier:(id)identifier;
+ (id)voiceFromAVVoice:(id)voice;
+ (id)voicesForLanguageCode:(id)code;
- (AVSpeechSynthesisVoice)avVoice;
- (BOOL)isSiriVoice;
- (NSString)languageCode;
- (NSString)name;
- (NSString)vsVoiceName;
- (WFSpeechSynthesisVoice)initWithIdentifier:(id)identifier;
- (id)description;
@end

@implementation WFSpeechSynthesisVoice

- (NSString)vsVoiceName
{
  [(WFSpeechSynthesisVoice *)self identifier];
  v2 = v10[0] = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v3 = getAXGetComponentsInSiriVoiceIdentifierSymbolLoc_ptr;
  v15 = getAXGetComponentsInSiriVoiceIdentifierSymbolLoc_ptr;
  if (!getAXGetComponentsInSiriVoiceIdentifierSymbolLoc_ptr)
  {
    v10[1] = MEMORY[0x277D85DD0];
    v10[2] = 3221225472;
    v10[3] = __getAXGetComponentsInSiriVoiceIdentifierSymbolLoc_block_invoke;
    v10[4] = &unk_278C222B8;
    v11 = &v12;
    v4 = AccessibilityUtilitiesLibrary();
    v13[3] = dlsym(v4, "AXGetComponentsInSiriVoiceIdentifier");
    getAXGetComponentsInSiriVoiceIdentifierSymbolLoc_ptr = *(v11[1] + 24);
    v3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v3)
  {
    (v3)(v2, 0, 0, 0, v10);

    v5 = v10[0];
    v6 = v10[0];

    return v5;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL WFAXGetComponentsInSiriVoiceIdentifier(NSString *__strong, NSString *__autoreleasing *, NSString *__autoreleasing *, NSString *__autoreleasing *, NSString *__autoreleasing *)"}];
    [currentHandler handleFailureInFunction:v9 file:@"WFSpeechSynthesisVoice.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (AVSpeechSynthesisVoice)avVoice
{
  avVoice = self->_avVoice;
  if (avVoice)
  {
    v3 = avVoice;
  }

  else
  {
    AVSpeechSynthesisVoiceClass = getAVSpeechSynthesisVoiceClass();
    identifier = [(WFSpeechSynthesisVoice *)self identifier];
    v3 = [AVSpeechSynthesisVoiceClass _voiceFromInternalVoiceListWithIdentifier:identifier];
  }

  return v3;
}

- (BOOL)isSiriVoice
{
  sharedInstance = [getAXAlternativeVoicesClass() sharedInstance];
  identifier = [(WFSpeechSynthesisVoice *)self identifier];
  v5 = [sharedInstance isSiriVoiceIdentifier:identifier];

  return v5;
}

- (NSString)languageCode
{
  avVoice = [(WFSpeechSynthesisVoice *)self avVoice];
  language = [avVoice language];

  return language;
}

- (NSString)name
{
  avVoice = [(WFSpeechSynthesisVoice *)self avVoice];
  name = [avVoice name];

  sharedInstance = [getAXAlternativeVoicesClass() sharedInstance];
  identifier = [(WFSpeechSynthesisVoice *)self identifier];
  v7 = [sharedInstance isSiriVoiceIdentifier:identifier];

  if (v7)
  {
    identifier2 = [(WFSpeechSynthesisVoice *)self identifier];
    v9 = [sharedInstance nameForVoiceIdentifier:identifier2];

    name = v9;
  }

  return name;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFSpeechSynthesisVoice *)self identifier];
  vsVoiceName = [(WFSpeechSynthesisVoice *)self vsVoiceName];
  avVoice = [(WFSpeechSynthesisVoice *)self avVoice];
  v9 = [v3 stringWithFormat:@"<%p %@> Identifier: %@, (VS voice name: %@ AV voice: %@)", self, v5, identifier, vsVoiceName, avVoice];

  return v9;
}

- (WFSpeechSynthesisVoice)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesisVoice.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v12.receiver = self;
  v12.super_class = WFSpeechSynthesisVoice;
  v7 = [(WFSpeechSynthesisVoice *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_identifier, identifier);
    v9 = v8;
  }

  return v8;
}

+ (id)voiceFromAVVoice:(id)voice
{
  v12 = *MEMORY[0x277D85DE8];
  voiceCopy = voice;
  if (!voiceCopy)
  {
    v4 = getWFActionsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "+[WFSpeechSynthesisVoice voiceFromAVVoice:]";
      _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_ERROR, "%s Attempting to create a speech synthesis voice without a backing avVoice", &v10, 0xCu);
    }
  }

  v5 = [WFSpeechSynthesisVoice alloc];
  identifier = [voiceCopy identifier];
  v7 = [(WFSpeechSynthesisVoice *)v5 initWithIdentifier:identifier];

  [(WFSpeechSynthesisVoice *)v7 setAvVoice:voiceCopy];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)currentLanguageCode
{
  AVSpeechSynthesisVoiceClass = getAVSpeechSynthesisVoiceClass();

  return [AVSpeechSynthesisVoiceClass currentLanguageCode];
}

+ (id)availableLanguageCodes
{
  _speechVoicesIncludingSiri = [getAVSpeechSynthesisVoiceClass() _speechVoicesIncludingSiri];
  v3 = [_speechVoicesIncludingSiri if_compactMap:&__block_literal_global_181_6489];
  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

+ (id)defaultVoiceForLanguageCode:(id)code
{
  v32 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v5 = getAXSettingsClass_softClass;
  v28 = getAXSettingsClass_softClass;
  if (!getAXSettingsClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAXSettingsClass_block_invoke;
    v30 = &unk_278C222B8;
    v31 = &v25;
    __getAXSettingsClass_block_invoke(buf);
    v5 = v26[3];
  }

  v6 = v5;
  _Block_object_dispose(&v25, 8);
  sharedInstance = [v5 sharedInstance];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v8 = getAXSpeechSourceKeySpeechFeaturesSymbolLoc_ptr;
  v28 = getAXSpeechSourceKeySpeechFeaturesSymbolLoc_ptr;
  if (!getAXSpeechSourceKeySpeechFeaturesSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAXSpeechSourceKeySpeechFeaturesSymbolLoc_block_invoke;
    v30 = &unk_278C222B8;
    v31 = &v25;
    v9 = AccessibilityUtilitiesLibrary();
    v10 = dlsym(v9, "AXSpeechSourceKeySpeechFeatures");
    *(v31[1] + 24) = v10;
    getAXSpeechSourceKeySpeechFeaturesSymbolLoc_ptr = *(v31[1] + 24);
    v8 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAXSpeechSourceKeySpeechFeatures(void)"];
    [currentHandler handleFailureInFunction:v24 file:@"WFSpeechSynthesisVoice.m" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v11 = [sharedInstance speechVoiceIdentifierForLanguage:codeCopy sourceKey:*v8 exists:0];
  if (v11)
  {
    v12 = [getAVSpeechSynthesisVoiceClass() _voiceFromInternalVoiceListWithIdentifier:v11];
    firstObject = v12;
    if (v12)
    {
      language = [v12 language];
      v15 = language == codeCopy;

      if (v15)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  if (![codeCopy length])
  {
    v16 = +[WFSpeechSynthesisVoice currentLanguageCode];

    codeCopy = v16;
  }

  v17 = [getAVSpeechSynthesisVoiceClass() voiceWithLanguage:codeCopy];

  if (v17)
  {
    firstObject = v17;
  }

  else
  {
    speechVoices = [getAVSpeechSynthesisVoiceClass() speechVoices];
    firstObject = [speechVoices firstObject];

    if (!firstObject)
    {
      v19 = getWFActionsLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "+[WFSpeechSynthesisVoice defaultVoiceForLanguageCode:]";
        *&buf[12] = 2112;
        *&buf[14] = codeCopy;
        _os_log_impl(&dword_23DE30000, v19, OS_LOG_TYPE_ERROR, "%s Unable to get a default voice for language code: %@", buf, 0x16u);
      }

      firstObject = 0;
    }
  }

LABEL_19:
  v20 = [self voiceFromAVVoice:firstObject];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)voicesForLanguageCode:(id)code
{
  codeCopy = code;
  if (!codeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesisVoice.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"languageCode"}];
  }

  _speechVoicesIncludingSiri = [getAVSpeechSynthesisVoiceClass() _speechVoicesIncludingSiri];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__WFSpeechSynthesisVoice_voicesForLanguageCode___block_invoke;
  v12[3] = &unk_278C19D40;
  v13 = codeCopy;
  v7 = codeCopy;
  v8 = [_speechVoicesIncludingSiri if_compactMap:v12];
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_6497];

  return v9;
}

id __48__WFSpeechSynthesisVoice_voicesForLanguageCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 language];
  LODWORD(a1) = [v4 isEqualToString:*(a1 + 32)];

  if (a1 && [v3 isInstalled])
  {
    v5 = [WFSpeechSynthesisVoice voiceFromAVVoice:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __48__WFSpeechSynthesisVoice_voicesForLanguageCode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

+ (id)voiceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

  return v5;
}

@end