@interface LTCombinedTranslationResult
@end

@implementation LTCombinedTranslationResult

void *__46___LTCombinedTranslationResult_translatedText__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() _translatedTextWithAttributesForResult:v3];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void *__44___LTCombinedTranslationResult_romanization__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 translations];
  v3 = [v2 firstObject];
  v4 = [v3 romanization];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end