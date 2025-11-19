@interface SODebugHints
+ (id)sharedInstance;
- (SODebugHints)debugHintsWithCompletion:(id)a3;
@end

@implementation SODebugHints

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SODebugHints sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __30__SODebugHints_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(SODebugHints);

  return MEMORY[0x1EEE66BB8]();
}

- (SODebugHints)debugHintsWithCompletion:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (SO_LOG_SODebugConfiguration_once != -1)
  {
    [SODebugHints debugHintsWithCompletion:];
  }

  v5 = SO_LOG_SODebugConfiguration_log;
  if (os_log_type_enabled(SO_LOG_SODebugConfiguration_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SODebugHints debugHintsWithCompletion:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (v4)
  {
    if ([getSOUtilsClass() isInternalBuild])
    {
      v6 = +[SOConfigurationHost defaultManager];
      v33 = 0;
      v7 = [v6 configurationForClientWithError:&v33];
      v8 = v33;

      if (v8)
      {
        v4[2](v4, 0, v8);
      }

      else
      {
        SOUtilsClass = getSOUtilsClass();
        v12 = +[SOExtensionManager sharedInstance];
        v13 = [v12 loadedExtensions];
        v32 = [SOUtilsClass mapArray:v13 usingBlock:&__block_literal_global_27];

        v14 = +[SOConfigurationHost defaultManager];
        v15 = [v14 realms];

        v38[0] = @"Configuration";
        v16 = [v7 description];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = @"(null)";
        }

        v19 = v32;
        if (!v32)
        {
          v19 = @"(null)";
        }

        v39[0] = v18;
        v39[1] = v19;
        v38[1] = @"Plugins";
        v38[2] = @"Realms";
        if (v15)
        {
          v20 = v15;
        }

        else
        {
          v20 = @"(null)";
        }

        v39[2] = v20;
        v38[3] = @"Signature Validated";
        if (+[SOPreferences isExtensionSignatureValidated])
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v39[3] = v21;
        v38[4] = @"Associated Domains Validated";
        if (+[SOPreferences isAssociatedDomainValidated])
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        v39[4] = v22;
        v38[5] = @"Requests";
        v23 = +[SORequestQueue debugDescription];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = @"(null)";
        }

        v39[5] = v25;
        v38[6] = @"Config Version";
        v26 = MEMORY[0x1E696AEC0];
        v27 = +[SOConfigurationHost defaultManager];
        v28 = [v26 stringWithFormat:@"0x%016llX", objc_msgSend(v27, "configVersion")];
        v39[6] = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:7];

        (v4)[2](v4, v29, 0);
      }
    }

    else
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2050000000;
      v9 = getSOErrorHelperClass_softClass_3;
      v37 = getSOErrorHelperClass_softClass_3;
      if (!getSOErrorHelperClass_softClass_3)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getSOErrorHelperClass_block_invoke_3;
        v41 = &unk_1E813E230;
        v42 = &v34;
        __getSOErrorHelperClass_block_invoke_3(buf);
        v9 = v35[3];
      }

      v10 = v9;
      _Block_object_dispose(&v34, 8);
      v8 = [v9 internalErrorWithMessage:@"not internal build"];
      v4[2](v4, 0, v8);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

@end