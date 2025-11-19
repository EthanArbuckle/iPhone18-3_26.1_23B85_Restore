@interface WFShowNoteAction
- (id)localizedKeywordsWithContext:(id)a3;
- (id)serializationKeysByParameter;
@end

@implementation WFShowNoteAction

- (id)localizedKeywordsWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"show|apple", @"show|apple");
  v5 = [v3 localize:v4];

  v6 = [v5 componentsSeparatedByString:@"|"];

  return v6;
}

- (id)serializationKeysByParameter
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D7CD70];
  v6[0] = *MEMORY[0x277D7CD78];
  v6[1] = v2;
  v7[0] = @"WFInput";
  v7[1] = @"WFInput";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end