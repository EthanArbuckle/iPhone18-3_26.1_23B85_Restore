@interface EXUIKit
@end

@implementation EXUIKit

void __43__EXUIKit_Subsystem_beginUsing_withBundle___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    v2 = [*(a1 + 40) bundleInfoDictionary];
    [*(a1 + 32) setInfoDictionary:v2];

    v3 = [*(*(a1 + 32) + 16) objectForKey:@"NSExtension"];
    v4 = [v3 mutableCopy];

    v5 = [v4 objectForKey:@"NSExtensionMainStoryboard"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v4 objectForKey:@"NSExtensionMainStoryboard~ipad"];
    }

    v8 = v7;

    v9 = [v4 objectForKey:@"NSExtensionPrincipalClass"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [MEMORY[0x1E696AAE8] mainBundle];
      v13 = [v12 infoDictionary];
      v11 = [v13 objectForKey:@"NSExtensionPrincipalClass"];
    }

    if (v8)
    {
      goto LABEL_9;
    }

    v14 = NSClassFromString(v11);
    if (!v14)
    {
      v15 = _EXLegacyLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        __43__EXUIKit_Subsystem_beginUsing_withBundle___block_invoke_cold_1(v15);
      }
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [(objc_class *)v14 _initializedByViewServices])
    {
LABEL_9:
      [NSClassFromString(&cfstr_Uiviewservices.isa) startViewServiceSessionManagerAsPlugin:1];
    }

    +[EXConcreteExtensionContextVendor _startListening];
    *(*(a1 + 32) + 8) = 1;
  }
}

uint64_t __35__EXUIKit_Subsystem_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

@end