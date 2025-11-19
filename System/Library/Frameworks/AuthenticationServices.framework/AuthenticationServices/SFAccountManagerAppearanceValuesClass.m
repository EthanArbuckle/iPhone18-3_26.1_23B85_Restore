@interface SFAccountManagerAppearanceValuesClass
@end

@implementation SFAccountManagerAppearanceValuesClass

Class __get_SFAccountManagerAppearanceValuesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SafariServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7AF79E8;
    v6 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    __get_SFAccountManagerAppearanceValuesClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("_SFAccountManagerAppearanceValues");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_SFAccountManagerAppearanceValuesClass_block_invoke_cold_1();
  }

  get_SFAccountManagerAppearanceValuesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __get_SFAccountManagerAppearanceValuesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SFAccountManagerAppearanceValuesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:34 description:{@"Unable to find class %s", "_SFAccountManagerAppearanceValues"}];

  __break(1u);
}

void __get_SFAccountManagerAppearanceValuesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:33 description:{@"%s", *a1}];

  __break(1u);
}

@end