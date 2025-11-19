@interface SFAppAutoFillPasswordViewControllerClass
@end

@implementation SFAppAutoFillPasswordViewControllerClass

Class __get_SFAppAutoFillPasswordViewControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SafariServicesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8424920;
    v7 = 0;
    SafariServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (SafariServicesLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_SFAppAutoFillPasswordViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_SFAppAutoFillPasswordViewControllerClass_block_invoke_cold_1();
  }

  get_SFAppAutoFillPasswordViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end