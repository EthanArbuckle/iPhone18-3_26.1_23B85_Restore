@interface LNAppShortcutDynamicOptionsProviderReference
@end

@implementation LNAppShortcutDynamicOptionsProviderReference

void __75__LNAppShortcutDynamicOptionsProviderReference_TopHits__appShortcutMapping__block_invoke()
{
  v16[5] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_28509B960;
  v13[1] = &unk_28509B978;
  v14[0] = @"WFStartCallActionCollectionIdentifierFavorites";
  v14[1] = @"WFStartCallActionCollectionIdentifierRecents";
  v15[0] = &unk_28509B948;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v0;
  v15[1] = &unk_28509B990;
  v11 = &unk_28509B960;
  v12 = *MEMORY[0x277D7A548];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v16[1] = v1;
  v15[2] = &unk_28509B9A8;
  v9 = &unk_28509B960;
  v10 = *MEMORY[0x277D7A550];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v16[2] = v2;
  v15[3] = &unk_28509B9C0;
  v7 = &unk_28509B960;
  v8 = @"WFStartCallActionCollectionIdentifierFaceTimeRecents";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v15[4] = &unk_28509B9D8;
  v16[3] = v3;
  v16[4] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
  v5 = appShortcutMapping_mapping;
  appShortcutMapping_mapping = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end