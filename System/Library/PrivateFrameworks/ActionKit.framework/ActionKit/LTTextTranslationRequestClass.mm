@interface LTTextTranslationRequestClass
@end

@implementation LTTextTranslationRequestClass

void __get_LTTextTranslationRequestClass_block_invoke(uint64_t a1)
{
  TranslationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_LTTextTranslationRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_LTTextTranslationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_LTTextTranslationRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFTranslateTextAction.m" lineNumber:20 description:{@"Unable to find class %s", "_LTTextTranslationRequest"}];

    __break(1u);
  }
}

@end