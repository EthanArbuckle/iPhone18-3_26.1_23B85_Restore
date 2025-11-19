@interface AddCryptorToJar
@end

@implementation AddCryptorToJar

void __audioHoseManagerBuffered_AddCryptorToJar_block_invoke(uint64_t a1)
{
  if (!CFDictionaryContainsKey(*(*(a1 + 40) + 448), *(a1 + 48)) && (CMNotificationCenterGetDefaultLocalCenter(), (*(*(*(a1 + 32) + 8) + 24) = FigNotificationCenterAddWeakListener()) != 0))
  {
    __audioHoseManagerBuffered_AddCryptorToJar_block_invoke_cold_1();
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 40) + 448);
    v4 = *(a1 + 64);

    CFDictionarySetValue(v3, v2, v4);
  }
}

@end