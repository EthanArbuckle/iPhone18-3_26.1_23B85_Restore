@interface ASDTIOPAudioVTOccurredProperty
+ (id)configDictForService:(id)service;
- (ASDTIOPAudioVTOccurredProperty)initWithConfig:(id)config;
- (void)phraseDetectEvent;
@end

@implementation ASDTIOPAudioVTOccurredProperty

+ (id)configDictForService:(id)service
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFC38];
  v9[0] = *MEMORY[0x277CEFC58];
  v9[1] = v3;
  v10[0] = @"ASDTIOPAudioVTOccurredProperty";
  v10[1] = service;
  v4 = MEMORY[0x277CBEAC0];
  serviceCopy = service;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (ASDTIOPAudioVTOccurredProperty)initWithConfig:(id)config
{
  v17[3] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:configCopy];
  v6 = *MEMORY[0x277CEFC00];
  v16[0] = *MEMORY[0x277CEFC28];
  v16[1] = v6;
  v17[0] = &unk_285359AC0;
  v17[1] = MEMORY[0x277CBEC28];
  v16[2] = *MEMORY[0x277CEFC10];
  v17[2] = *MEMORY[0x277CEFC60];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v5 asdtAddMissingEntriesFromDictionary:v7];

  v15.receiver = self;
  v15.super_class = ASDTIOPAudioVTOccurredProperty;
  v8 = [(ASDTIOPAudioVTProperty *)&v15 initWithConfig:v5 propertyDataType:1886155636 qualifierDataType:0];
  if (v8)
  {
    objc_initWeak(&location, v8);
    vtDevice = [(ASDTIOPAudioVTProperty *)v8 vtDevice];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__ASDTIOPAudioVTOccurredProperty_initWithConfig___block_invoke;
    v12[3] = &unk_278CE9C40;
    objc_copyWeak(&v13, &location);
    [vtDevice setPhraseDetectEventBlock:v12];

    [(ASDTCustomProperty *)v8 storePropertyValue:MEMORY[0x277CBEC10]];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void __49__ASDTIOPAudioVTOccurredProperty_initWithConfig___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained phraseDetectEvent];
}

- (void)phraseDetectEvent
{
  v7 = *MEMORY[0x277D85DE8];
  name = [self name];
  v5 = 138412290;
  v6 = name;
  _os_log_error_impl(&dword_2416E9000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to store phrase detection event data.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end