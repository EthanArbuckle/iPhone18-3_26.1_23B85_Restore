@interface PSSiriNLLoggerClass
@end

@implementation PSSiriNLLoggerClass

Class __get_PSSiriNLLoggerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PeopleSuggesterLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PeopleSuggesterLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CD6A00;
    v5 = 0;
    PeopleSuggesterLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PeopleSuggesterLibraryCore_frameworkLibrary)
  {
    __get_PSSiriNLLoggerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("_PSSiriNLLogger");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_PSSiriNLLoggerClass_block_invoke_cold_1();
  }

  get_PSSiriNLLoggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end