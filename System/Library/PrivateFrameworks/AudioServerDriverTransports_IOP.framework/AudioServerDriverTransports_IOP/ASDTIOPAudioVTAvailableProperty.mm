@interface ASDTIOPAudioVTAvailableProperty
+ (id)configDictForService:(id)service;
- (ASDTIOPAudioVTAvailableProperty)initWithConfig:(id)config;
@end

@implementation ASDTIOPAudioVTAvailableProperty

+ (id)configDictForService:(id)service
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFC38];
  v9[0] = *MEMORY[0x277CEFC58];
  v9[1] = v3;
  v10[0] = @"ASDTIOPAudioVTAvailableProperty";
  v10[1] = service;
  v4 = MEMORY[0x277CBEAC0];
  serviceCopy = service;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (ASDTIOPAudioVTAvailableProperty)initWithConfig:(id)config
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:config];
  v5 = *MEMORY[0x277CEFC00];
  v11[0] = *MEMORY[0x277CEFC28];
  v11[1] = v5;
  v12[0] = &unk_285359AF0;
  v12[1] = MEMORY[0x277CBEC28];
  v11[2] = *MEMORY[0x277CEFC10];
  v12[2] = *MEMORY[0x277CEFC60];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v4 asdtAddMissingEntriesFromDictionary:v6];

  v10.receiver = self;
  v10.super_class = ASDTIOPAudioVTAvailableProperty;
  v7 = [(ASDTIOPAudioVTUInt32Property *)&v10 initWithConfig:v4];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

@end