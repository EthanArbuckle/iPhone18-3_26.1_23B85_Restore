@interface APAdvertiserCopyAssistedModeInfo
@end

@implementation APAdvertiserCopyAssistedModeInfo

uint64_t ___APAdvertiserCopyAssistedModeInfo_block_invoke(uint64_t a1)
{
  _APAdvertiserEnsureAssistedModeInfoCreated(*(a1 + 32), 0);
  if (*MEMORY[0x277CBED28])
  {
    v2 = *MEMORY[0x277CBED28];
  }

  else
  {
    v2 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(*(a1 + 40), @"AssistedOverAWDL", v2);
  CFDictionarySetCString();
  CFDictionarySetCString();

  return CFDictionarySetCString();
}

@end