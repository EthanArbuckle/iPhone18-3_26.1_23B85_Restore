@interface AXResourceLoader
+ (id)loadImageWithIdentifier:(id)identifier orPath:(id)path principalClass:(Class *)class error:(id *)error;
+ (id)loadResource:(unint64_t)resource principalClass:(Class *)class error:(id *)error;
+ (void)_path:(id *)_path bundleID:(id *)d forRescource:(unint64_t)rescource;
@end

@implementation AXResourceLoader

+ (id)loadImageWithIdentifier:(id)identifier orPath:(id)path principalClass:(Class *)class error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  pathCopy = path;
  if (identifierCopy && ([MEMORY[0x1E696AAE8] bundleWithIdentifier:identifierCopy], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
  }

  else
  {
    v12 = [MEMORY[0x1E696AAE8] bundleWithPath:pathCopy];
    if (!v12)
    {
      v15 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXResourceLoader" description:{@"Bundle was nil. Tried ID:%@ and Path:%@", identifierCopy, pathCopy}];
LABEL_12:
      v14 = v15;
      if (!class)
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
  if (class)
  {
LABEL_13:
    *class = [v12 principalClass];
  }

LABEL_14:
  if (error)
  {
    v16 = v14;
    *error = v14;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)loadResource:(unint64_t)resource principalClass:(Class *)class error:(id *)error
{
  v12 = 0;
  v13 = 0;
  [self _path:&v13 bundleID:&v12 forRescource:resource];
  v8 = v13;
  v9 = v12;
  v10 = 0;
  if (v8 | v9)
  {
    v10 = [self loadImageWithIdentifier:v9 orPath:v8 principalClass:class error:error];
  }

  return v10;
}

+ (void)_path:(id *)_path bundleID:(id *)d forRescource:(unint64_t)rescource
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (rescource == 1)
  {
    goto LABEL_7;
  }

  if (rescource != 2)
  {
    if (rescource == 3)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = AXAccessibilityBundlesDirectory();
      v15[0] = v8;
      v15[1] = @"QuickSpeak.bundle";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      v10 = [v7 pathWithComponents:v9];

      v11 = @"com.apple.QuickSpeak";
      if (!_path)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
      *_path = 0;
      *d = 0;
    }

LABEL_11:
    v12 = v10;
    *_path = v10;
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
  if (_path)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (d)
  {
    *d = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end