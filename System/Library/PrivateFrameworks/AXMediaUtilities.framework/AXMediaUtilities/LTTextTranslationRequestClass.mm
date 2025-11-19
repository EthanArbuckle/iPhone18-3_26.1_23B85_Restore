@interface LTTextTranslationRequestClass
@end

@implementation LTTextTranslationRequestClass

AXMVisionResult *__get_LTTextTranslationRequestClass_block_invoke(uint64_t a1)
{
  TranslationLibrary();
  result = objc_getClass("_LTTextTranslationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_LTTextTranslationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_LTTextTranslationRequestClass_block_invoke_cold_1();
    return [(AXMVisionResult *)v3 resultWithImage:v4 features:v5 orientation:v6 metricSession:v7, v8];
  }

  return result;
}

@end