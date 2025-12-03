@interface EXSwiftUI_Subsystem
+ (id)sharedInstance;
- (EXSwiftUI_Subsystem)init;
- (void)beginUsing:(id)using withBundle:(id)bundle;
- (void)init;
@end

@implementation EXSwiftUI_Subsystem

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EXSwiftUI_Subsystem_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = __instance;

  return v2;
}

- (EXSwiftUI_Subsystem)init
{
  v19.receiver = self;
  v19.super_class = EXSwiftUI_Subsystem;
  v2 = [(EXSwiftUI_Subsystem *)&v19 init];
  if (!v2)
  {
    return v2;
  }

  v3 = _EXLegacyLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [EXSwiftUI_Subsystem init];
  }

  size = 0;
  prog_image_header = _dyld_get_prog_image_header();
  if (!prog_image_header)
  {
    v8 = _EXLegacyLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EXSwiftUI_Subsystem init];
    }

    goto LABEL_13;
  }

  v5 = getsectiondata(prog_image_header, "__TEXT", "__swift5_entry", &size);
  if (!v5 || size <= 3)
  {
LABEL_13:
    v9 = _EXLegacyLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [EXSwiftUI_Subsystem init];
    }

    goto LABEL_16;
  }

  v6 = *v5;
  if (v6)
  {
    v7 = &v5[v6];
    if (&v5[v6])
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = _EXLegacyLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [EXSwiftUI_Subsystem init];
  }

LABEL_19:
  v11 = _EXLegacyLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [EXSwiftUI_Subsystem init];
  }

  v7 = dlsym(0xFFFFFFFFFFFFFFFBLL, "main");
  if (!v7)
  {
    v17 = _EXLegacyLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [EXSwiftUI_Subsystem init];
    }

    goto LABEL_34;
  }

LABEL_22:
  v12 = _EXLegacyLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [EXSwiftUI_Subsystem init];
  }

  v13 = _NSGetArgc();
  v14 = _NSGetArgv();
  if (v13)
  {
    v15 = *v13;
    if (v14)
    {
LABEL_26:
      v16 = *v14;
      goto LABEL_31;
    }
  }

  else
  {
    v15 = 0;
    if (v14)
    {
      goto LABEL_26;
    }
  }

  v16 = 0;
LABEL_31:
  if ((v7)(v15, v16) == 1)
  {
    v17 = _EXLegacyLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [EXSwiftUI_Subsystem init];
    }

LABEL_34:
  }

  return v2;
}

- (void)beginUsing:(id)using withBundle:(id)bundle
{
  v16 = *MEMORY[0x1E69E9840];
  usingCopy = using;
  bundleCopy = bundle;
  v8 = _EXLegacyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138543874;
    selfCopy = self;
    v12 = 2112;
    v13 = bundleCopy;
    v14 = 2112;
    v15 = usingCopy;
    _os_log_debug_impl(&dword_1847D1000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ - Begin using bunde %@ with personality: %@ personality.", &v10, 0x20u);
  }

  +[EXConcreteExtensionContextVendor _startListening];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)init
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end