@interface AFSpeakableUtteranceParser(AssistantUIAdditions)
+ (id)_domainsForStringWithFormat:()AssistantUIAdditions;
+ (id)afui_speakableUtteranceParserForCurrentLanguage;
- (id)_builtInDomains;
- (uint64_t)afui_hasExternalDomainsForStringWithFormat:()AssistantUIAdditions;
@end

@implementation AFSpeakableUtteranceParser(AssistantUIAdditions)

- (id)_builtInDomains
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([self handleTTSCodes])
  {
    [v2 addObject:@"tts"];
  }

  if ([self handlesFunctions])
  {
    [v2 addObject:@"fn"];
  }

  return v2;
}

+ (id)afui_speakableUtteranceParserForCurrentLanguage
{
  v0 = objc_alloc(MEMORY[0x277CBEAF8]);
  v2 = AFUIGetLanguageCode(v0, v1);
  v3 = [v0 initWithLocaleIdentifier:v2];

  v4 = [objc_alloc(MEMORY[0x277CEF430]) initWithLocale:v3];

  return v4;
}

- (uint64_t)afui_hasExternalDomainsForStringWithFormat:()AssistantUIAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() _domainsForStringWithFormat:v4];
  if (v5)
  {
    _builtInDomains = [self _builtInDomains];
    v7 = [v5 isSubsetOfSet:_builtInDomains] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[AFSpeakableUtteranceParser(AssistantUIAdditions) afui_hasExternalDomainsForStringWithFormat:]";
    v12 = 2112;
    v13 = v4;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_INFO, "%s Format string: %@ has external domains: %d", &v10, 0x1Cu);
  }

  return v7;
}

+ (id)_domainsForStringWithFormat:()AssistantUIAdditions
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy_;
  v24[4] = __Block_byref_object_dispose_;
  v25 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [v3 length];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__AFSpeakableUtteranceParser_AssistantUIAdditions___domainsForStringWithFormat___block_invoke;
  v11[3] = &unk_278CD6B18;
  v13 = &v20;
  v14 = &v16;
  v15 = v24;
  v6 = v4;
  v12 = v6;
  [v3 enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v11}];
  if ((v21[3] & 1) != 0 || *(v17 + 24) == 1)
  {

    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(AFSpeakableUtteranceParser(AssistantUIAdditions) *)v3 _domainsForStringWithFormat:v7];
    }

    v6 = 0;
  }

  v8 = v12;
  v9 = v6;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v24, 8);

  return v9;
}

@end