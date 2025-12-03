@interface NSAttributedString(TranslationAdditions)
- (uint64_t)lt_containsSubstringWithAttribute:()TranslationAdditions;
@end

@implementation NSAttributedString(TranslationAdditions)

- (uint64_t)lt_containsSubstringWithAttribute:()TranslationAdditions
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [self length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__NSAttributedString_TranslationAdditions__lt_containsSubstringWithAttribute___block_invoke;
  v8[3] = &unk_278B6E3D8;
  v8[4] = &v9;
  [self enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{0, v8}];
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end