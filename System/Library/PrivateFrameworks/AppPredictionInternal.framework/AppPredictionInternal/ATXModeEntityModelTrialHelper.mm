@interface ATXModeEntityModelTrialHelper
- (ATXModeEntityModelTrialHelper)init;
- (id)loadCoreMLModelFromTrialWithName:(id)a3;
@end

@implementation ATXModeEntityModelTrialHelper

- (ATXModeEntityModelTrialHelper)init
{
  v6.receiver = self;
  v6.super_class = ATXModeEntityModelTrialHelper;
  v2 = [(ATXModeEntityModelTrialHelper *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB6A8] sharedInstance];
    modeEntityTrialClientWrapper = v2->_modeEntityTrialClientWrapper;
    v2->_modeEntityTrialClientWrapper = v3;
  }

  return v2;
}

- (id)loadCoreMLModelFromTrialWithName:(id)a3
{
  v4 = a3;
  v5 = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper directoryPathForTrialResource:v4];
  v17 = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5 isDirectory:&v17];

  if (v7)
  {
    v8 = v17 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v9 = objc_opt_new();
    [v9 setComputeUnits:0];
    v10 = MEMORY[0x277CBFF20];
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v16 = 0;
    v12 = [v10 modelWithContentsOfURL:v11 configuration:v9 error:&v16];
    v13 = v16;

    if (v13)
    {
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ATXModeEntityModelTrialHelper *)v4 loadCoreMLModelFromTrialWithName:v13, v14];
      }
    }
  }

  return v12;
}

- (void)loadCoreMLModelFromTrialWithName:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXModeEntityModelTrialHelper: Error initializing %@ model: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end