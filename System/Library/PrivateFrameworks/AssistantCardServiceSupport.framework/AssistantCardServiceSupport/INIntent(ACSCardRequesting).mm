@interface INIntent(ACSCardRequesting)
- (uint64_t)acs_needsTitleCardSection;
- (void)requestCard:()ACSCardRequesting reply:;
@end

@implementation INIntent(ACSCardRequesting)

- (uint64_t)acs_needsTitleCardSection
{
  extensionBundleId = [self extensionBundleId];
  v2 = [extensionBundleId isEqualToString:@"com.apple.PassKit.PassKitIntentsExtension"];

  return v2 ^ 1u;
}

- (void)requestCard:()ACSCardRequesting reply:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CF93E8];
  v15 = *MEMORY[0x277CCA068];
  v8 = MEMORY[0x277CCACA8];
  v9 = a4;
  content = [a3 content];
  v11 = [v8 stringWithFormat:@"Content %@ is incompatible with this service", content, v15];
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = [v6 errorWithDomain:v7 code:400 userInfo:v12];
  (a4)[2](v9, 0, v13);

  v14 = *MEMORY[0x277D85DE8];
}

@end