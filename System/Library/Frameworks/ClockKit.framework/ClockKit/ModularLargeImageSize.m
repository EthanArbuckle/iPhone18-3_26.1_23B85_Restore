@interface ModularLargeImageSize
@end

@implementation ModularLargeImageSize

double ___ModularLargeImageSize_block_invoke(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = &unk_284A34110;
  v2 = MEMORY[0x277CCAE60];
  v3 = a2;
  v4 = [v2 valueWithCGSize:{32.0, 11.0}];
  v10[1] = &unk_284A34128;
  v11[0] = v4;
  v5 = [MEMORY[0x277CCAE60] valueWithCGSize:{42.0, 14.0}];
  v11[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v3 scaledSize:v6 withOverrides:{37.0, 12.0}];
  v8 = v7;

  return v8;
}

@end