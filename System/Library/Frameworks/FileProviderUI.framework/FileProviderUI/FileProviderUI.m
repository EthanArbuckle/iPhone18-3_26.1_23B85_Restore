id FPUILogHandle()
{
  v0 = fpuiLogHandle;
  if (!fpuiLogHandle)
  {
    FPUIInitLogging();
    v0 = fpuiLogHandle;
  }

  return v0;
}

id FPProviderDomainIDToDomainIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"/"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v1 substringFromIndex:v2 + v3];
  }

  return v4;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id FPNavBarButton(void *a1, int a2, void *a3, uint64_t a4)
{
  v7 = 2 * (a2 == 0);
  v8 = a3;
  v9 = a1;
  if (_UISolariumEnabled())
  {
    if (a2)
    {
      v10 = @"xmark";
    }

    else
    {
      v10 = @"checkmark";
    }

    v11 = [MEMORY[0x277D755B8] systemImageNamed:v10];
    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v11 style:v7 target:v8 action:a4];

    [v12 setTitle:v9];
    v8 = v9;
    v9 = v11;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v9 style:v7 target:v8 action:a4];
  }

  return v12;
}

void sub_23835BBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *FPUILoc(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = FPUILocalizationBundle();
  v11 = [v10 localizedStringForKey:v9 value:@"FILEPROVIDER_UI_LOCALIZED_STRING_UNAVAILABLE" table:@"FileProviderUI"];

  if ([v11 isEqualToString:@"FILEPROVIDER_UI_LOCALIZED_STRING_UNAVAILABLE"])
  {
    v12 = fpuiLogHandle;
    if (!fpuiLogHandle)
    {
      FPUIInitLogging();
      v12 = fpuiLogHandle;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      FPUILoc_cold_1(v9, v12);
    }

    v13 = @"FILEPROVIDER_UI_LOCALIZED_STRING_UNAVAILABLE";
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v11 arguments:&a9];
  }

  return v13;
}

id FPUILocalizationBundle()
{
  if (FPUILocalizationBundle_onceToken != -1)
  {
    FPUILocalizationBundle_cold_1();
  }

  v1 = FPUILocalizationBundle_bundle;

  return v1;
}

uint64_t __FPUILocalizationBundle_block_invoke()
{
  FPUILocalizationBundle_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void FPUIInitLogging()
{
  if (FPUIInitLogging_once != -1)
  {
    FPUIInitLogging_cold_1();
  }
}

uint64_t __FPUIInitLogging_block_invoke()
{
  fpuiLogHandle = os_log_create("com.apple.FileProviderUI", "FileProviderUI");

  return MEMORY[0x2821F96F8]();
}

void CallBlockOnMainThread(void *a1)
{
  block = a1;
  if (pthread_main_np())
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_23835E5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void FPUILoc_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = FPUILocalizationBundle();
  v5 = [v4 bundlePath];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_238356000, v3, OS_LOG_TYPE_ERROR, "Localized key '%@' missing from table 'FileProviderUI' (bundlePath:%@)", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}