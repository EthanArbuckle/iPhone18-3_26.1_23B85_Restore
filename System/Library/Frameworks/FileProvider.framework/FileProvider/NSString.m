@interface NSString
@end

@implementation NSString

uint64_t __40__NSString_FPAdditions__fp_getCrashDate__block_invoke()
{
  fp_getCrashDate_regexp = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"([0-9][0-9][0-9][0-9])-([0-1][0-9])-([0-3][0-9])-([0-2][0-9])([0-5][0-9])([0-5][0-9])" options:1 error:0];

  return MEMORY[0x1EEE66BB8]();
}

void __56__NSString_FPAdditions__fp_commonParentPathForItemURLs___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v12 = a2;
  if ([*(*(*(a1 + 40) + 8) + 40) count] > a3)
  {
    v7 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a3];
    v8 = [v12 isEqualToString:v7];

    if (v8)
    {
      goto LABEL_5;
    }

    v9 = [*(a1 + 32) subarrayWithRange:{0, a3}];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  *a4 = 1;
LABEL_5:
}

uint64_t __54__NSString_FPAdditions__fp_prettyPathWithObfuscation___block_invoke()
{
  fp_prettyPathWithObfuscation__temporaryDirectory = NSTemporaryDirectory();

  return MEMORY[0x1EEE66BB8]();
}

CFStringTokenizerRef __41__NSString_FPAdditions__fp_wordTokenizer__block_invoke()
{
  System = CFLocaleGetSystem();
  v2.location = 0;
  v2.length = 0;
  result = CFStringTokenizerCreate(0, &stru_1F1F94B20, v2, 0, System);
  fp_wordTokenizer_tokenizerRef = result;
  return result;
}

void __51__NSString_FPAdditions__fp_isCJKLanguageIdentifier__block_invoke()
{
  v0 = fp_isCJKLanguageIdentifier_cjkLanguages;
  fp_isCJKLanguageIdentifier_cjkLanguages = &unk_1F1FC9BA8;
}

@end