@interface SOConfigurationManager
+ (id)defaultManager;
- (SOConfigurationManager)init;
- (void)saveConfigurationData:(id)a3 completion:(id)a4;
@end

@implementation SOConfigurationManager

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[SOConfigurationManager defaultManager];
  }

  v2 = defaultManager_manager;
  if (!defaultManager_manager)
  {
    v3 = SO_LOG_SOConfigurationManager();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[(SOConfigurationManager *)v3];
    }

    v2 = defaultManager_manager;
  }

  return v2;
}

uint64_t __40__SOConfigurationManager_defaultManager__block_invoke()
{
  defaultManager_manager = objc_alloc_init(SOConfigurationManager);

  return MEMORY[0x1EEE66BB8]();
}

- (SOConfigurationManager)init
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[SOConfigurationManager init]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = SOConfigurationManager;
  result = [(SOConfigurationManager *)&v6 init];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)saveConfigurationData:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOConfigurationManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOConfigurationManager saveConfigurationData:completion:]";
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9 = dispatch_get_global_queue(0, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__SOConfigurationManager_saveConfigurationData_completion___block_invoke;
  v13[3] = &unk_1E813E450;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __59__SOConfigurationManager_saveConfigurationData_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SOConfigurationHost);
  v3 = *(a1 + 32);
  v6 = 0;
  [(SOConfigurationHost *)v2 saveConfiguration:v3 error:&v6];
  v4 = v6;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4 == 0, v4);
  }
}

@end