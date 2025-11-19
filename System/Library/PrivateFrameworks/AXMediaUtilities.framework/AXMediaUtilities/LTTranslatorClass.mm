@interface LTTranslatorClass
@end

@implementation LTTranslatorClass

void __get_LTTranslatorClass_block_invoke(uint64_t a1)
{
  TranslationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_LTTranslator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_LTTranslatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_LTTranslatorClass_block_invoke_cold_1();
    TranslationLibrary();
  }
}

@end