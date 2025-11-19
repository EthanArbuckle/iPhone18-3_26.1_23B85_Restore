@interface AlternatePunctuationAttributes
@end

@implementation AlternatePunctuationAttributes

void ___AlternatePunctuationAttributes_block_invoke()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D74338];
  v0 = *MEMORY[0x277D74388];
  v5[0] = *MEMORY[0x277D74398];
  v5[1] = v0;
  v6[0] = &unk_284A34AE8;
  v6[1] = &unk_284A34B00;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v7 = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  v9[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = _AlternatePunctuationAttributes___altPunctAttr;
  _AlternatePunctuationAttributes___altPunctAttr = v3;
}

@end