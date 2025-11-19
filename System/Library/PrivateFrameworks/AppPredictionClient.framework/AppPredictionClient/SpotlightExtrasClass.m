@interface SpotlightExtrasClass
@end

@implementation SpotlightExtrasClass

Class __getSFSearchResult_SpotlightExtrasClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SpotlightServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SpotlightServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80C5EF0;
    v5 = 0;
    SpotlightServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpotlightServicesLibraryCore_frameworkLibrary)
  {
    __getSFSearchResult_SpotlightExtrasClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SFSearchResult_SpotlightExtras");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFSearchResult_SpotlightExtrasClass_block_invoke_cold_1();
  }

  getSFSearchResult_SpotlightExtrasClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getSFSearchResult_SpotlightExtrasClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFSearchResult_SpotlightExtrasClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXSearchFeedbackListener.m" lineNumber:48 description:{@"Unable to find class %s", "SFSearchResult_SpotlightExtras"}];

  __break(1u);
}

void __getSFSearchResult_SpotlightExtrasClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpotlightServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXSearchFeedbackListener.m" lineNumber:47 description:{@"%s", *a1}];

  __break(1u);
}

@end