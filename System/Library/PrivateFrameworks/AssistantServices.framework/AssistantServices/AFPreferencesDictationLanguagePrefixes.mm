@interface AFPreferencesDictationLanguagePrefixes
@end

@implementation AFPreferencesDictationLanguagePrefixes

void ___AFPreferencesDictationLanguagePrefixes_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = _AFPreferencesDictationLanguagePrefixes_sLanguagePrefixes;
  _AFPreferencesDictationLanguagePrefixes_sLanguagePrefixes = v0;

  v2 = AFPreferencesSupportedDictationLanguages();
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_2024];
}

void ___AFPreferencesDictationLanguagePrefixes_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = _AFPreferencesDictationLanguagePrefixes_sLanguagePrefixes;
  v3 = AFLanguagePrefixForLanguageCode(a2);
  [v2 addObject:v3];
}

@end