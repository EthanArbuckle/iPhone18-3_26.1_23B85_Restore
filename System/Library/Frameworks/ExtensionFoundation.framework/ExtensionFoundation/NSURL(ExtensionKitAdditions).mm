@interface NSURL(ExtensionKitAdditions)
- (id)_EX_containingApplicationBundleURL;
- (uint64_t)_EX_isApplication;
- (uint64_t)_EX_isContainedInDirectory:()ExtensionKitAdditions;
- (uint64_t)_EX_isDirectory;
- (void)_EX_isApplication;
- (void)_EX_isDirectory;
@end

@implementation NSURL(ExtensionKitAdditions)

- (uint64_t)_EX_isDirectory
{
  uRLByResolvingSymlinksInPath = [self URLByResolvingSymlinksInPath];
  v10 = 0;
  v2 = *MEMORY[0x1E695DB78];
  v9 = 0;
  v3 = [uRLByResolvingSymlinksInPath getResourceValue:&v10 forKey:v2 error:&v9];
  v4 = v10;
  v5 = v9;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    v7 = _EXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(ExtensionKitAdditions) _EX_isDirectory];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)_EX_isApplication
{
  v9 = 0;
  v1 = *MEMORY[0x1E695DB70];
  v8 = 0;
  v2 = [self getResourceValue:&v9 forKey:v1 error:&v8];
  v3 = v9;
  v4 = v8;
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    v6 = _EXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(ExtensionKitAdditions) _EX_isApplication];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_EX_containingApplicationBundleURL
{
  absoluteURL = [self absoluteURL];
  uRLByDeletingLastPathComponent = [absoluteURL URLByDeletingLastPathComponent];

  v3 = objc_autoreleasePoolPush();
  path = [uRLByDeletingLastPathComponent path];
  v5 = [path length];

  if (v5)
  {
    while (![uRLByDeletingLastPathComponent _EX_isApplication])
    {
      v2URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];

      path2 = [v2URLByDeletingLastPathComponent path];
      v5 = [path2 length];

      uRLByDeletingLastPathComponent = v2URLByDeletingLastPathComponent;
      if (!v5)
      {
        uRLByDeletingLastPathComponent = v2URLByDeletingLastPathComponent;
        goto LABEL_6;
      }
    }

    uRLByDeletingLastPathComponent = uRLByDeletingLastPathComponent;
    v5 = uRLByDeletingLastPathComponent;
  }

LABEL_6:
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (uint64_t)_EX_isContainedInDirectory:()ExtensionKitAdditions
{
  v9 = 2;
  v4 = MEMORY[0x1E696AC08];
  v5 = a3;
  defaultManager = [v4 defaultManager];
  v7 = [defaultManager getRelationship:&v9 ofDirectoryAtURL:v5 toItemAtURL:self error:0];

  if (v9)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (void)_EX_isDirectory
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1847D1000, v0, v1, "Failed to get NSURLIsDirectoryKey property for URL '%@' with error '%{public}@'");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_EX_isApplication
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1847D1000, v0, v1, "Failed to get NSURLIsApplicationKey property for URL '%@' with error '%{public}@'");
  v2 = *MEMORY[0x1E69E9840];
}

@end