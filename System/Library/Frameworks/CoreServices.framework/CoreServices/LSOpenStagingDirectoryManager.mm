@interface LSOpenStagingDirectoryManager
+ (id)sharedServerInstance;
- (LSOpenStagingDirectoryManager)initWithIOPersonality:(id)a3;
- (id).cxx_construct;
- (id)_locked_stagingDirectoryForKey:(unint64_t)a3;
- (id)_stagingDirectoryForKeyRefreshingIfNecessary:(unint64_t)a3;
- (id)mainDataVolumeStagingURLWithError:(id *)a3;
- (id)stagingDirectoryForCloningFileHandle:(id)a3 error:(id *)a4;
- (id)stagingDirectoryForCloningURL:(id)a3 error:(id *)a4;
- (optional<unsigned)bootstrapBaseStagingDirectoryNode:(id)a3 error:(id *)a4;
- (void)_locked_updatePersonaStagingDirectories;
@end

@implementation LSOpenStagingDirectoryManager

- (optional<unsigned)bootstrapBaseStagingDirectoryNode:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  LOBYTE(v20) = 0;
  LOBYTE(v21) = 0;
  v20 = [(LSOpenStagingDirectoryManagerIOPersonality *)self->_ioPersonality stagingDirectoryKeyForNode:v6 error:a4];
  LOBYTE(v21) = v7;
  if (v7)
  {
    v8 = v6;
    *buf = 0;
    *&buf[8] = v8;
    *&buf[16] = -1;
    v9 = std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,LaunchServices::OpenStaging::StagingDirectoryInfo>(&self->_stagingDirectoryInfoMap.__table_.__bucket_list_.__ptr_, &v20);
    v11 = v10;
    LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo(buf);
    if (v11)
    {
      v12 = _LSDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", v20];
        v14 = [v8 URL];
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Configured open staging directory for key %@ at %@", buf, 0x16u);
      }
    }

    else
    {
      v12 = _LSDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", v20];
        v16 = [v9[4] URL];
        *buf = 138412546;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Already have a staging directory for key %@ at %@", buf, 0x16u);
      }
    }
  }

  v17.__val_ = v20;
  v18 = v21;
  v19 = *MEMORY[0x1E69E9840];
  result.__engaged_ = v18;
  result.var0 = v17;
  return result;
}

- (LSOpenStagingDirectoryManager)initWithIOPersonality:(id)a3
{
  v5 = a3;
  v33.receiver = self;
  v33.super_class = LSOpenStagingDirectoryManager;
  v6 = [(LSOpenStagingDirectoryManager *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ioPersonality, a3);
    v7->_personaGeneration = 0;
    if (v7->_mainStagingDirectoryKey.__engaged_)
    {
      v7->_mainStagingDirectoryKey.__engaged_ = 0;
    }

    ioPersonality = v7->_ioPersonality;
    v32 = 0;
    v9 = ioPersonality;
    v10 = [(LSOpenStagingDirectoryManagerIOPersonality *)v9 mainUserContainerURL];
    v11 = [(LSOpenStagingDirectoryManagerIOPersonality *)v9 makeStagingDirectoryNodeInContainer:v10 error:&v32];

    v12 = v32;
    v13 = v12;
    if (v11)
    {
      v31 = v12;
      v14 = [(LSOpenStagingDirectoryManager *)v7 bootstrapBaseStagingDirectoryNode:v11 error:&v31];
      v16 = v15;
      v17 = v31;

      v7->_mainStagingDirectoryKey.var0.__val_ = v14;
      v7->_mainStagingDirectoryKey.__engaged_ = v16;
      if (v16)
      {
        goto LABEL_12;
      }

      v18 = _LSDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [LSOpenStagingDirectoryManager initWithIOPersonality:];
      }
    }

    else
    {
      v18 = _LSDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [LSOpenStagingDirectoryManager initWithIOPersonality:?];
      }

      v17 = v13;
    }

LABEL_12:
    v19 = v7->_ioPersonality;
    v30 = v17;
    v20 = v19;
    v21 = [(LSOpenStagingDirectoryManagerIOPersonality *)v20 mainSystemContainerURL];
    v22 = [(LSOpenStagingDirectoryManagerIOPersonality *)v20 makeStagingDirectoryNodeInContainer:v21 error:&v30];

    v23 = v30;
    if (v22)
    {
      v29 = v23;
      [(LSOpenStagingDirectoryManager *)v7 bootstrapBaseStagingDirectoryNode:v22 error:&v29];
      v25 = v24;
      v26 = v29;

      if (v25)
      {
LABEL_20:

        [(LSOpenStagingDirectoryManager *)v7 _locked_updatePersonaStagingDirectories];
        goto LABEL_21;
      }

      v27 = _LSDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [LSOpenStagingDirectoryManager initWithIOPersonality:];
      }
    }

    else
    {
      v27 = _LSDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [LSOpenStagingDirectoryManager initWithIOPersonality:?];
      }

      v26 = v23;
    }

    goto LABEL_20;
  }

LABEL_21:

  return v7;
}

+ (id)sharedServerInstance
{
  _LSAssertRunningInServer("+[LSOpenStagingDirectoryManager sharedServerInstance]");
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__LSOpenStagingDirectoryManager_sharedServerInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[LSOpenStagingDirectoryManager sharedServerInstance]::onceToken != -1)
  {
    dispatch_once(&+[LSOpenStagingDirectoryManager sharedServerInstance]::onceToken, block);
  }

  v3 = +[LSOpenStagingDirectoryManager sharedServerInstance]::sharedInstance;

  return v3;
}

void __53__LSOpenStagingDirectoryManager_sharedServerInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = objc_alloc_init(LSServerOpenStagingIOPersonality);
  v2 = [v1 initWithIOPersonality:?];
  v3 = +[LSOpenStagingDirectoryManager sharedServerInstance]::sharedInstance;
  +[LSOpenStagingDirectoryManager sharedServerInstance]::sharedInstance = v2;
}

- (void)_locked_updatePersonaStagingDirectories
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEBUG, "Persona generation %llu of staging directory manager is current.", v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (id)_locked_stagingDirectoryForKey:(unint64_t)a3
{
  v5 = a3;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::find<unsigned long long>(&self->_stagingDirectoryInfoMap.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    v3 = [v3[4] URL];
  }

  return v3;
}

- (id)_stagingDirectoryForKeyRefreshingIfNecessary:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_mutex);
  [(LSOpenStagingDirectoryManager *)self _locked_updatePersonaStagingDirectories];
  v5 = [(LSOpenStagingDirectoryManager *)self _locked_stagingDirectoryForKey:a3];
  os_unfair_lock_unlock(&self->_mutex);

  return v5;
}

- (id)stagingDirectoryForCloningURL:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [[FSNode alloc] initWithURL:v6 flags:0 error:a4];
  v8 = [(LSOpenStagingDirectoryManagerIOPersonality *)self->_ioPersonality stagingDirectoryKeyForNode:v7 error:a4];
  if (v9)
  {
    v10 = [(LSOpenStagingDirectoryManager *)self _stagingDirectoryForKeyRefreshingIfNecessary:v8];
    if (v10)
    {
      goto LABEL_7;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find open staging directory for URL %@", v6];
    v12 = v11;
    if (a4)
    {
      v16 = *MEMORY[0x1E696A278];
      v17[0] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 2, v13, "[LSOpenStagingDirectoryManager stagingDirectoryForCloningURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 398);
    }
  }

  v10 = 0;
LABEL_7:

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)stagingDirectoryForCloningFileHandle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(LSOpenStagingDirectoryManagerIOPersonality *)self->_ioPersonality stagingDirectoryKeyForFileHandle:v6 error:a4];
  if (v8)
  {
    v9 = [(LSOpenStagingDirectoryManager *)self _stagingDirectoryForKeyRefreshingIfNecessary:v7];
    v10 = v9;
    if (a4 && !v9)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 2, 0, "[LSOpenStagingDirectoryManager stagingDirectoryForCloningFileHandle:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 410);
      *a4 = v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)mainDataVolumeStagingURLWithError:(id *)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_mutex);
  if (!self->_mainStagingDirectoryKey.__engaged_)
  {
    os_unfair_lock_unlock(&self->_mutex);
    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_6:
    v9 = *MEMORY[0x1E696A278];
    v10[0] = @"Could not find open staging directory for main data volume?";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 2, v6, "[LSOpenStagingDirectoryManager mainDataVolumeStagingURLWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 428);

    goto LABEL_7;
  }

  v5 = [(LSOpenStagingDirectoryManager *)self _locked_stagingDirectoryForKey:self->_mainStagingDirectoryKey.var0.__val_];
  os_unfair_lock_unlock(&self->_mutex);
  if (v5)
  {
    goto LABEL_8;
  }

  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 72) = 0;
  *(self + 80) = 0;
  return self;
}

- (void)initWithIOPersonality:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_4(&dword_18162D000, v0, v1, "Could not find volume identifier for main staging directory node %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithIOPersonality:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithIOPersonality:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_4(&dword_18162D000, v0, v1, "Could not find volume identifier for system staging directory node %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithIOPersonality:(uint64_t *)a1 .cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end