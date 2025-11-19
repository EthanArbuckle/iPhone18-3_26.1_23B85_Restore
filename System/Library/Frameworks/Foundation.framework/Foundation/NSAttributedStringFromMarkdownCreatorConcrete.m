@interface NSAttributedStringFromMarkdownCreatorConcrete
@end

@implementation NSAttributedStringFromMarkdownCreatorConcrete

uint64_t __81___NSAttributedStringFromMarkdownCreatorConcrete_finalizeWithLanguageIdentifier___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return [*(*(result + 32) + 8) addAttribute:@"NSLanguage" value:*(result + 40) range:{a3, a4}];
  }

  return result;
}

@end