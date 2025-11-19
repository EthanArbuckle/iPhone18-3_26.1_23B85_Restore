@interface LTInstallRequestClass
@end

@implementation LTInstallRequestClass

Class __get_LTInstallRequestClass_block_invoke(uint64_t a1)
{
  TranslationLibrary();
  result = objc_getClass("_LTInstallRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_LTInstallRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_LTInstallRequestClass_block_invoke_cold_1();
    return __get_LTTextTranslationRequestClass_block_invoke(v3);
  }

  return result;
}

@end