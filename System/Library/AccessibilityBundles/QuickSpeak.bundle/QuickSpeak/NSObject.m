@interface NSObject
@end

@implementation NSObject

void __58__NSObject_QSExtras__accessibilitySpeakLanguageSelection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) specificLanguageID];
  [v1 speakAction:v2 withPreferredLanguage:v3];
}

uint64_t __64__NSObject_QSExtras__accessibilitySystemShouldShowSpeakSpellOut__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isEqualToString:*MEMORY[0x29EDB9ED0]];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

@end