@interface NSDictionary(TranslationAdditions)
- (uint64_t)lt_ensureTypesForKeys:()TranslationAdditions values:;
@end

@implementation NSDictionary(TranslationAdditions)

- (uint64_t)lt_ensureTypesForKeys:()TranslationAdditions values:
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__NSDictionary_TranslationAdditions__lt_ensureTypesForKeys_values___block_invoke;
  v6[3] = &unk_278B6E400;
  v6[5] = a3;
  v6[6] = a4;
  v6[4] = &v7;
  [self enumerateKeysAndObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

@end