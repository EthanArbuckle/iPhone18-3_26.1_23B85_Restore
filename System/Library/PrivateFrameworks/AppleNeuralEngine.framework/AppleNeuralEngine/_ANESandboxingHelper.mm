@interface _ANESandboxingHelper
+ (BOOL)canAccessPathAt:(id)at methodName:(id)name error:(id *)error;
+ (id)issueSandboxExtensionForModel:(id)model error:(id *)error;
+ (id)issueSandboxExtensionForPath:(id)path error:(id *)error;
+ (id)sandboxExtensionPathForModelURL:(id)l;
+ (int64_t)consumeSandboxExtension:(id)extension forModel:(id)model error:(id *)error;
+ (int64_t)consumeSandboxExtension:(id)extension forPath:(id)path error:(id *)error;
+ (void)initialize;
@end

@implementation _ANESandboxingHelper

+ (void)initialize
{
  gLogger_0 = +[_ANELog common];

  MEMORY[0x1EEE66BB8]();
}

+ (BOOL)canAccessPathAt:(id)at methodName:(id)name error:(id *)error
{
  nameCopy = name;
  v8 = MEMORY[0x1E696AC08];
  atCopy = at;
  defaultManager = [v8 defaultManager];
  v11 = [defaultManager fileExistsAtPath:atCopy];

  if (error && (v11 & 1) == 0)
  {
    *error = [_ANEErrors fileAccessErrorForMethod:nameCopy];
  }

  return v11;
}

+ (id)sandboxExtensionPathForModelURL:(id)l
{
  lCopy = l;
  if ([lCopy hasDirectoryPath])
  {
    v4 = MEMORY[0x1E696AEC0];
    path = [lCopy path];

    v6 = [v4 stringWithFormat:@"%@/", path];
  }

  else
  {
    path = [lCopy URLByDeletingLastPathComponent];

    v7 = MEMORY[0x1E696AEC0];
    v5Path = [path path];
    v6 = [v7 stringWithFormat:@"%@/", v5Path];
  }

  return v6;
}

+ (id)issueSandboxExtensionForPath:(id)path error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = +[_ANEStrings systemLibraryPath];
  v8 = [pathCopy hasPrefix:v7];

  if (+[_ANEDeviceInfo isInternalBuild])
  {
    v9 = +[_ANEStrings internalLibraryPath];
    v10 = [pathCopy hasPrefix:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = +[_ANEStrings noSandboxExtension];
  v12 = objc_opt_class();
  v13 = NSStringFromSelector(a2);
  v29 = 0;
  v14 = [v12 canAccessPathAt:pathCopy methodName:v13 error:&v29];
  v15 = v29;

  if (!v14)
  {
    v19 = gLogger_0;
    if (os_log_type_enabled(gLogger_0, OS_LOG_TYPE_ERROR))
    {
      v27 = v19;
      v28 = NSStringFromSelector(a2);
      *buf = 138412802;
      v31 = v28;
      v32 = 2112;
      v33 = pathCopy;
      v34 = 2112;
      v35 = v15;
      _os_log_error_impl(&dword_1AD246000, v27, OS_LOG_TYPE_ERROR, "%@: Inaccessible file (%@) : error=%@", buf, 0x20u);

      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
      goto LABEL_13;
    }

    v20 = v15;
    *error = v15;
    goto LABEL_13;
  }

  if (((v8 | v10) & 1) == 0)
  {
    [pathCopy UTF8String];
    v16 = sandbox_extension_issue_file();
    if (v16)
    {
      v17 = v16;
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];

      free(v17);
      v11 = v18;
    }

    else
    {
      v21 = gLogger_0;
      if (os_log_type_enabled(gLogger_0, OS_LOG_TYPE_ERROR))
      {
        [_ANESandboxingHelper issueSandboxExtensionForPath:v21 error:a2];
      }
    }
  }

LABEL_13:
  v22 = gLogger_0;
  if (os_log_type_enabled(gLogger_0, OS_LOG_TYPE_DEBUG))
  {
    v25 = v22;
    v26 = NSStringFromSelector(a2);
    *buf = 138412802;
    v31 = v26;
    v32 = 2112;
    v33 = pathCopy;
    v34 = 2112;
    v35 = v11;
    _os_log_debug_impl(&dword_1AD246000, v25, OS_LOG_TYPE_DEBUG, "%@: pathStr=%@ sandboxExtension=%@", buf, 0x20u);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)issueSandboxExtensionForModel:(id)model error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v7 = objc_opt_class();
  modelURL = [modelCopy modelURL];
  v9 = [v7 sandboxExtensionPathForModelURL:modelURL];

  v10 = gLogger_0;
  if (os_log_type_enabled(gLogger_0, OS_LOG_TYPE_DEBUG))
  {
    v17 = v10;
    v18 = NSStringFromSelector(a2);
    v21 = 138412802;
    v22 = v18;
    v23 = 2112;
    v24 = modelCopy;
    v25 = 2112;
    v26 = v9;
    _os_log_debug_impl(&dword_1AD246000, v17, OS_LOG_TYPE_DEBUG, "%@: model=%@ modelPathStr=%@", &v21, 0x20u);
  }

  v11 = [objc_opt_class() issueSandboxExtensionForPath:v9 error:error];
  v12 = +[_ANEStrings noSandboxExtension];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    v14 = gLogger_0;
    if (os_log_type_enabled(gLogger_0, OS_LOG_TYPE_DEBUG))
    {
      v19 = v14;
      v20 = NSStringFromSelector(a2);
      v21 = 138412802;
      v22 = v20;
      v23 = 2112;
      v24 = modelCopy;
      v25 = 2112;
      v26 = v11;
      _os_log_debug_impl(&dword_1AD246000, v19, OS_LOG_TYPE_DEBUG, "%@: model=%@ sandboxExtension=%@", &v21, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (int64_t)consumeSandboxExtension:(id)extension forModel:(id)model error:(id *)error
{
  modelCopy = model;
  extensionCopy = extension;
  v9 = objc_opt_class();
  modelURL = [modelCopy modelURL];

  v11 = [v9 sandboxExtensionPathForModelURL:modelURL];

  v12 = [objc_opt_class() consumeSandboxExtension:extensionCopy forPath:v11 error:error];
  return v12;
}

+ (int64_t)consumeSandboxExtension:(id)extension forPath:(id)path error:(id *)error
{
  v34[2] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  pathCopy = path;
  if ([extensionCopy length])
  {
    [extensionCopy UTF8String];
    v10 = sandbox_extension_consume();
    v11 = gLogger_0;
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (os_log_type_enabled(gLogger_0, OS_LOG_TYPE_DEBUG))
      {
        [_ANESandboxingHelper consumeSandboxExtension:v11 forPath:a2 error:?];
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(gLogger_0, OS_LOG_TYPE_INFO))
    {
      v13 = v11;
      v14 = NSStringFromSelector(a2);
      v15 = *__error();
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 138413058;
      v30 = v14;
      v31 = 2112;
      v32 = extensionCopy;
      v33 = 1024;
      LODWORD(v34[0]) = v15;
      WORD2(v34[0]) = 2080;
      *(v34 + 6) = v17;
      _os_log_impl(&dword_1AD246000, v13, OS_LOG_TYPE_INFO, "%@: Sandbox extension(%@) consume failed (errno=%d) : %s", buf, 0x26u);
    }

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(a2);
    v28 = 0;
    v20 = [v18 canAccessPathAt:pathCopy methodName:v19 error:&v28];
    v21 = v28;

    if ((v20 & 1) == 0 && (v22 = gLogger_0, os_log_type_enabled(gLogger_0, OS_LOG_TYPE_ERROR)))
    {
      v26 = v22;
      v27 = NSStringFromSelector(a2);
      *buf = 138412802;
      v30 = v27;
      v31 = 2112;
      v32 = extensionCopy;
      v33 = 2112;
      v34[0] = v21;
      _os_log_error_impl(&dword_1AD246000, v26, OS_LOG_TYPE_ERROR, "%@: Inaccessible file (%@) : error=%@", buf, 0x20u);

      if (!error)
      {
        goto LABEL_14;
      }
    }

    else if (!error)
    {
LABEL_14:

      goto LABEL_15;
    }

    v23 = v21;
    *error = v21;
    goto LABEL_14;
  }

  v12 = gLogger_0;
  if (os_log_type_enabled(gLogger_0, OS_LOG_TYPE_DEBUG))
  {
    [_ANESandboxingHelper consumeSandboxExtension:v12 forPath:a2 error:?];
  }

  v10 = -1;
LABEL_15:

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (void)issueSandboxExtensionForPath:(void *)a1 error:(const char *)a2 .cold.1(void *a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(&dword_1AD246000, v3, OS_LOG_TYPE_ERROR, "%@: sandbox_extension_issue_file() returned NULL. path=%@", v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)consumeSandboxExtension:(void *)a1 forPath:(const char *)a2 error:.cold.1(void *a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(&dword_1AD246000, v3, OS_LOG_TYPE_DEBUG, "%@: Sandbox extension(%@) consumed", v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)consumeSandboxExtension:(void *)a1 forPath:(const char *)a2 error:.cold.2(void *a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_1AD246000, v3, OS_LOG_TYPE_DEBUG, "%@: Sandbox extension is nil/not valid", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end