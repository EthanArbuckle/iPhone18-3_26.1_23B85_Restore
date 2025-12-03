@interface LSServerOpenStagingIOPersonality
- (id)mainSystemContainerURL;
- (id)mainUserContainerURL;
- (id)makeStagingDirectoryNodeInContainer:(id)container error:(id *)error;
- (optional<LaunchServices::StagingDirectoryInfo>)stagingDirectoryInfoForPersonaUniqueString:(SEL)string error:(id)error;
- (optional<unsigned)stagingDirectoryKeyForFileHandle:(id)handle error:(id *)error;
- (optional<unsigned)stagingDirectoryKeyForNode:(id)node error:(id *)error;
@end

@implementation LSServerOpenStagingIOPersonality

- (id)mainUserContainerURL
{
  SharedInstance = __LSDefaultsGetSharedInstance();

  return [SharedInstance userContainerURL];
}

- (id)mainSystemContainerURL
{
  SharedInstance = __LSDefaultsGetSharedInstance();

  return [SharedInstance systemContainerURL];
}

- (id)makeStagingDirectoryNodeInContainer:(id)container error:(id *)error
{
  v5 = makeStagingDirectoryURLInContainer(container);
  if (v5)
  {
    v10 = 0;
    v6 = [[FSNode alloc] initWithURL:v5 flags:8 error:&v10];
    v7 = v10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (error && !v6)
  {
    v8 = v7;
    *error = v7;
  }

  return v6;
}

- (optional<LaunchServices::StagingDirectoryInfo>)stagingDirectoryInfoForPersonaUniqueString:(SEL)string error:(id)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v24 = errorCopy;
  retstr->var0.var0 = 0;
  retstr->var1 = 0;
  container_query_create();
  container_query_set_class();
  [errorCopy UTF8String];
  container_query_set_persona_unique_string();
  container_query_operation_set_flags();
  if (!container_query_get_single_result())
  {
    container_query_get_last_error();
    v15 = container_error_copy_unlocalized_description();
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];
    free(v15);
    LODWORD(v15) = container_error_get_posix_errno();
    v27 = @"ContainerErrorDescription";
    v28[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v15, v11, "[LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 126);
    goto LABEL_20;
  }

  path = container_get_path();
  if (path)
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:v9 error:?];
    }

    v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:path isDirectory:1 relativeToURL:0];
    v11 = makeStagingDirectoryURLInContainer(v10);
    if (v11)
    {
      v23 = -1;
      v12 = container_copy_sandbox_token();
      if (v12)
      {
        v23 = sandbox_extension_consume();
        if (v23 < 0)
        {
          v16 = *__error();
          v17 = _LSDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:v16 error:v17];
          }

          v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], v16, 0, "[LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 142);
          free(v12);
          goto LABEL_20;
        }

        free(v12);
      }

      v21 = 0;
      v13 = [[FSNode alloc] initWithURL:v11 flags:8 error:&v21];
      v14 = v21;
      v22 = v13;
      if (v13)
      {
        std::optional<LaunchServices::OpenStaging::StagingDirectoryInfo>::emplace[abi:nn200100]<NSString * {__strong}&,FSNode * {__strong}&,long long &,void>(retstr, &v24, &v22, &v23);
      }

      if (!retstr->var1 && (v23 & 0x8000000000000000) == 0)
      {
        sandbox_extension_release();
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_20:

    goto LABEL_21;
  }

  v25 = *MEMORY[0x1E696A278];
  v26 = @"No path in container";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 96, v10, "[LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 158);
LABEL_21:

  if (a5 && !retstr->var1)
  {
    v18 = v14;
    *a5 = v14;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (optional<unsigned)stagingDirectoryKeyForNode:(id)node error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  v17 = 0;
  v6 = [nodeCopy getFileSystemRepresentation:v18 error:&v17];
  v7 = v17;
  if (v6)
  {
    if (!statfs(v18, &v19))
    {
      v11 = v19.f_fsid.val[0] & 0xFFFFFFFFFFFFFF00;
      v13 = LOBYTE(v19.f_fsid.val[0]);
      v12 = 1;
      goto LABEL_8;
    }

    v8 = __error();
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v8, 0, "[LSServerOpenStagingIOPersonality stagingDirectoryKeyForNode:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 194);

    v7 = v9;
  }

  if (error)
  {
    v10 = v7;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    *error = v7;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
  v15.__val_ = v13 | v11;
  v16 = v12;
  result.__engaged_ = v16;
  result.var0 = v15;
  return result;
}

- (optional<unsigned)stagingDirectoryKeyForFileHandle:(id)handle error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (fstatfs([handleCopy fileDescriptor], &v14))
  {
    v6 = __error();
    v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v6, 0, "[LSServerOpenStagingIOPersonality stagingDirectoryKeyForFileHandle:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 211);
    if (error)
    {
      v7 = v7;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      *error = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = v14.f_fsid.val[0] & 0xFFFFFFFFFFFFFF00;
    v10 = LOBYTE(v14.f_fsid.val[0]);
    v9 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  v12.__val_ = v10 | v8;
  v13 = v9;
  result.__engaged_ = v13;
  result.var0 = v12;
  return result;
}

- (void)stagingDirectoryInfoForPersonaUniqueString:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446467;
  v4 = "[LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:error:]";
  v5 = 2081;
  v6 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "%{public}s: got user container URL %{private}s from containermanagerd", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)stagingDirectoryInfoForPersonaUniqueString:(int)a1 error:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = "[LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:error:]";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "%{public}s: Failed to consume container sandbox token, errno = %{darwin.errno}d", &v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

@end