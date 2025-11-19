@interface UISolariumEnabledSymbolLoc
@end

@implementation UISolariumEnabledSymbolLoc

void *__get_UISolariumEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!UIKitCoreLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __UIKitCoreLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7F3AFB0;
    v7 = 0;
    UIKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = UIKitCoreLibraryCore_frameworkLibrary;
    if (UIKitCoreLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = UIKitCoreLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "_UISolariumEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_UISolariumEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end