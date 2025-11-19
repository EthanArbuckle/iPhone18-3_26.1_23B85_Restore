@interface ABDynamicLoader
+ (BOOL)loadFrameworkAtPath:(id)a3 andStoreHandle:(void *)a4 bundle:(id *)a5 logging:(BOOL)a6;
@end

@implementation ABDynamicLoader

+ (BOOL)loadFrameworkAtPath:(id)a3 andStoreHandle:(void *)a4 bundle:(id *)a5 logging:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v10 = *a4;
  v11 = [CPSystemRootDirectory() stringByAppendingPathComponent:a3];
  v12 = getenv("DYLD_FRAMEWORK_PATH");
  v13 = [v11 stringByDeletingLastPathComponent];
  if (v12)
  {
    v35 = v10;
    v36 = a5;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{v12), "componentsSeparatedByString:", @":"}];
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v33 = v8;
      v34 = v6;
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
      v6 = v34;
      v8 = v33;
    }

    v20 = [v11 fileSystemRepresentation];
    v21 = strlen(v12);
    v22 = v21 + strlen(v20);
    v23 = malloc_type_calloc(1uLL, v22 + 2, 0x7DF51AA6uLL);
    strlcat(v23, v12, v22 + 2);
    strlcat(v23, "/", v22 + 2);
    strlcat(v23, [objc_msgSend(v13 "lastPathComponent")], v22 + 2);
    strlcat(v23, "/", v22 + 2);
    strlcat(v23, [objc_msgSend(a3 "lastPathComponent")], v22 + 2);
    v24 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{v12), "stringByAppendingPathComponent:", objc_msgSend(v13, "lastPathComponent")}];
    a5 = v36;
    if (v35)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v23 = [v11 fileSystemRepresentation];
    v20 = 0;
    v24 = v13;
    v13 = 0;
    if (v10)
    {
LABEL_14:
      v25 = 1;
      goto LABEL_25;
    }
  }

  v26 = dlopen(v23, 2);
  *v8 = v26;
  if (v20 && !v26)
  {
    v26 = dlopen(v20, 2);
    *v8 = v26;
  }

  v25 = v26 != 0;
  if (!v26 && v6)
  {
    ABDiagnosticsEnabled();
    if (v20)
    {
      v30 = v20;
    }

    else
    {
      v30 = v23;
    }

    _ABLog2(3, "+[ABDynamicLoader loadFrameworkAtPath:andStoreHandle:bundle:logging:]", 69, 0, @"Could not load framework at path: %s", v27, v28, v29, v30);
    v25 = 0;
  }

LABEL_25:
  if (a5)
  {
    v31 = [MEMORY[0x1E696AAE8] bundleWithPath:v24];
    *a5 = v31;
    if (!v31)
    {
      if (v13)
      {
        *a5 = [MEMORY[0x1E696AAE8] bundleWithPath:v13];
      }
    }
  }

  if (v23 && v20)
  {
    free(v23);
  }

  return v25;
}

@end