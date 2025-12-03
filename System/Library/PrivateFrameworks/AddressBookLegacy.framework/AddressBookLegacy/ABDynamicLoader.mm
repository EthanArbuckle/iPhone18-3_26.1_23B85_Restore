@interface ABDynamicLoader
+ (BOOL)loadFrameworkAtPath:(id)path andStoreHandle:(void *)handle bundle:(id *)bundle logging:(BOOL)logging;
@end

@implementation ABDynamicLoader

+ (BOOL)loadFrameworkAtPath:(id)path andStoreHandle:(void *)handle bundle:(id *)bundle logging:(BOOL)logging
{
  loggingCopy = logging;
  handleCopy = handle;
  v42 = *MEMORY[0x1E69E9840];
  v10 = *handle;
  v11 = [CPSystemRootDirectory() stringByAppendingPathComponent:path];
  v12 = getenv("DYLD_FRAMEWORK_PATH");
  stringByDeletingLastPathComponent = [v11 stringByDeletingLastPathComponent];
  if (v12)
  {
    v35 = v10;
    bundleCopy = bundle;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{v12), "componentsSeparatedByString:", @":"}];
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v33 = handleCopy;
      v34 = loggingCopy;
      v17 = *v38;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          if ([objc_msgSend(v19 "lowercaseString")])
          {
            v12 = [v19 cStringUsingEncoding:4];
            goto LABEL_12;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

LABEL_12:
      loggingCopy = v34;
      handleCopy = v33;
    }

    fileSystemRepresentation = [v11 fileSystemRepresentation];
    v21 = strlen(v12);
    v22 = v21 + strlen(fileSystemRepresentation);
    fileSystemRepresentation2 = malloc_type_calloc(1uLL, v22 + 2, 0x7DF51AA6uLL);
    strlcat(fileSystemRepresentation2, v12, v22 + 2);
    strlcat(fileSystemRepresentation2, "/", v22 + 2);
    strlcat(fileSystemRepresentation2, [objc_msgSend(stringByDeletingLastPathComponent "lastPathComponent")], v22 + 2);
    strlcat(fileSystemRepresentation2, "/", v22 + 2);
    strlcat(fileSystemRepresentation2, [objc_msgSend(path "lastPathComponent")], v22 + 2);
    v24 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{v12), "stringByAppendingPathComponent:", objc_msgSend(stringByDeletingLastPathComponent, "lastPathComponent")}];
    bundle = bundleCopy;
    if (v35)
    {
      goto LABEL_14;
    }
  }

  else
  {
    fileSystemRepresentation2 = [v11 fileSystemRepresentation];
    fileSystemRepresentation = 0;
    v24 = stringByDeletingLastPathComponent;
    stringByDeletingLastPathComponent = 0;
    if (v10)
    {
LABEL_14:
      v25 = 1;
      goto LABEL_25;
    }
  }

  v26 = dlopen(fileSystemRepresentation2, 2);
  *handleCopy = v26;
  if (fileSystemRepresentation && !v26)
  {
    v26 = dlopen(fileSystemRepresentation, 2);
    *handleCopy = v26;
  }

  v25 = v26 != 0;
  if (!v26 && loggingCopy)
  {
    ABDiagnosticsEnabled();
    if (fileSystemRepresentation)
    {
      v30 = fileSystemRepresentation;
    }

    else
    {
      v30 = fileSystemRepresentation2;
    }

    _ABLog2(3, "+[ABDynamicLoader loadFrameworkAtPath:andStoreHandle:bundle:logging:]", 69, 0, @"Could not load framework at path: %s", v27, v28, v29, v30);
    v25 = 0;
  }

LABEL_25:
  if (bundle)
  {
    v31 = [MEMORY[0x1E696AAE8] bundleWithPath:v24];
    *bundle = v31;
    if (!v31)
    {
      if (stringByDeletingLastPathComponent)
      {
        *bundle = [MEMORY[0x1E696AAE8] bundleWithPath:stringByDeletingLastPathComponent];
      }
    }
  }

  if (fileSystemRepresentation2 && fileSystemRepresentation)
  {
    free(fileSystemRepresentation2);
  }

  return v25;
}

@end