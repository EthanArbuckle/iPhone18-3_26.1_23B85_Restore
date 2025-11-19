@interface LTTranslationGenderAlternative
@end

@implementation LTTranslationGenderAlternative

id __68___LTTranslationGenderAlternative_genderAlternativesFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [_LTTranslationGenderAlternative genderAlternativeFromDictionary:v3 withGroup:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end