@interface NSLexiconIterateFormsOfWord
@end

@implementation NSLexiconIterateFormsOfWord

uint64_t ___NSLexiconIterateFormsOfWord_block_invoke_6(uint64_t a1)
{
  result = *(*(*(a1 + 48) + 8) + 40);
  if (!result)
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) lowercaseStringWithLocale:*(a1 + 40)];
    return *(*(*(a1 + 48) + 8) + 40);
  }

  return result;
}

uint64_t ___NSLexiconIterateFormsOfWord_block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 48) + 8) + 40);
  if (!result)
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) uppercaseStringWithLocale:*(a1 + 40)];
    return *(*(*(a1 + 48) + 8) + 40);
  }

  return result;
}

uint64_t ___NSLexiconIterateFormsOfWord_block_invoke_3(uint64_t a1)
{
  result = *(*(*(a1 + 48) + 8) + 40);
  if (!result)
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) capitalizedStringWithLocale:*(a1 + 40)];
    return *(*(*(a1 + 48) + 8) + 40);
  }

  return result;
}

@end