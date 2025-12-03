@interface ASDTIOPAudioVTDebugProperty
+ (id)configDictForService:(id)service;
- (ASDTIOPAudioVTDebugProperty)initWithConfig:(id)config;
- (BOOL)retrieveUInt32Value:(unsigned int *)value;
@end

@implementation ASDTIOPAudioVTDebugProperty

+ (id)configDictForService:(id)service
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFC38];
  v9[0] = *MEMORY[0x277CEFC58];
  v9[1] = v3;
  v10[0] = @"ASDTIOPAudioVTDebugProperty";
  v10[1] = service;
  v4 = MEMORY[0x277CBEAC0];
  serviceCopy = service;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (ASDTIOPAudioVTDebugProperty)initWithConfig:(id)config
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:config];
  v10 = *MEMORY[0x277CEFC28];
  v11[0] = &unk_285359BF8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 asdtAddMissingEntriesFromDictionary:v5];

  v9.receiver = self;
  v9.super_class = ASDTIOPAudioVTDebugProperty;
  v6 = [(ASDTIOPAudioVTUInt32Property *)&v9 initWithConfig:v4];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)retrieveUInt32Value:(unsigned int *)value
{
  vtDevice = [(ASDTIOPAudioVTProperty *)self vtDevice];
  LOBYTE(value) = [vtDevice getDebugEnabled:value];

  return value;
}

@end