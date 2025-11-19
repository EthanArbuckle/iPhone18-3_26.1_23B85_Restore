@interface AXResourceLoader
+ (id)loadImageWithIdentifier:(id)a3 orPath:(id)a4 principalClass:(Class *)a5 error:(id *)a6;
+ (id)loadResource:(unint64_t)a3 principalClass:(Class *)a4 error:(id *)a5;
+ (void)_path:(id *)a3 bundleID:(id *)a4 forRescource:(unint64_t)a5;
@end

@implementation AXResourceLoader

+ (id)loadImageWithIdentifier:(id)a3 orPath:(id)a4 principalClass:(Class *)a5 error:(id *)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (v9 && ([MEMORY[0x1E696AAE8] bundleWithIdentifier:v9], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
  }

  else
  {
    v12 = [MEMORY[0x1E696AAE8] bundleWithPath:v10];
    if (!v12)
    {
      v15 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXResourceLoader" description:{@"Bundle was nil. Tried ID:%@ and Path:%@", v9, v10}];
LABEL_12:
      v14 = v15;
      if (!a5)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v13 = AXLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v12;
    _os_log_impl(&dword_19159B000, v13, OS_LOG_TYPE_INFO, "Loading resource: %@", buf, 0xCu);
  }

  if (([v12 isLoaded] & 1) == 0)
  {
    v19 = 0;
    [v12 loadAndReturnError:&v19];
    v15 = v19;
    goto LABEL_12;
  }

  v14 = 0;
  if (a5)
  {
LABEL_13:
    *a5 = [v12 principalClass];
  }

LABEL_14:
  if (a6)
  {
    v16 = v14;
    *a6 = v14;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)loadResource:(unint64_t)a3 principalClass:(Class *)a4 error:(id *)a5
{
  v12 = 0;
  v13 = 0;
  [a1 _path:&v13 bundleID:&v12 forRescource:a3];
  v8 = v13;
  v9 = v12;
  v10 = 0;
  if (v8 | v9)
  {
    v10 = [a1 loadImageWithIdentifier:v9 orPath:v8 principalClass:a4 error:a5];
  }

  return v10;
}

+ (void)_path:(id *)a3 bundleID:(id *)a4 forRescource:(unint64_t)a5
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a5 == 1)
  {
    goto LABEL_7;
  }

  if (a5 != 2)
  {
    if (a5 == 3)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = AXAccessibilityBundlesDirectory();
      v15[0] = v8;
      v15[1] = @"QuickSpeak.bundle";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      v10 = [v7 pathWithComponents:v9];

      v11 = @"com.apple.QuickSpeak";
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
      *a3 = 0;
      *a4 = 0;
    }

LABEL_11:
    v12 = v10;
    *a3 = v10;
    goto LABEL_12;
  }

  if (_AXSClarityBoardEnabled())
  {
LABEL_7:
    v10 = 0;
  }

  else
  {
    v14 = AXAccessibilityPrivateFrameworksDirectory();
    v10 = [v14 stringByAppendingPathComponent:@"AXSpringBoardServerInstance.framework"];
  }

  v11 = 0;
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (a4)
  {
    *a4 = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end