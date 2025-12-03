@interface ATXTimelineRelevancePersonalizedConfig
- (ATXTimelineRelevancePersonalizedConfig)init;
- (ATXTimelineRelevancePersonalizedConfig)initWithPersonalizedConfiguration:(id)configuration;
- (id)_readPersonalizedConfiguration;
- (id)personalizedValueForParameter:(id)parameter forWidgetBundleIdentifier:(id)identifier kind:(id)kind;
- (void)_readPersonalizedConfiguration;
@end

@implementation ATXTimelineRelevancePersonalizedConfig

- (ATXTimelineRelevancePersonalizedConfig)init
{
  v7.receiver = self;
  v7.super_class = ATXTimelineRelevancePersonalizedConfig;
  v2 = [(ATXTimelineRelevancePersonalizedConfig *)&v7 init];
  v3 = v2;
  if (v2)
  {
    _readPersonalizedConfiguration = [(ATXTimelineRelevancePersonalizedConfig *)v2 _readPersonalizedConfiguration];
    personalizedConfiguration = v3->_personalizedConfiguration;
    v3->_personalizedConfiguration = _readPersonalizedConfiguration;
  }

  return v3;
}

- (ATXTimelineRelevancePersonalizedConfig)initWithPersonalizedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = ATXTimelineRelevancePersonalizedConfig;
  v6 = [(ATXTimelineRelevancePersonalizedConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personalizedConfiguration, configuration);
  }

  return v7;
}

- (id)personalizedValueForParameter:(id)parameter forWidgetBundleIdentifier:(id)identifier kind:(id)kind
{
  parameterCopy = parameter;
  personalizedConfiguration = self->_personalizedConfiguration;
  kindCopy = kind;
  v11 = [(NSDictionary *)personalizedConfiguration objectForKeyedSubscript:identifier];
  v12 = [v11 objectForKeyedSubscript:kindCopy];

  v13 = v12;
  if (v12 || (v13 = v11) != 0)
  {
    v14 = [v13 objectForKeyedSubscript:parameterCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_readPersonalizedConfiguration
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"ATXTimelineRelevancePersonalizedConfig"];
  v3 = objc_autoreleasePoolPush();
  v18 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v2 options:0 error:&v18];
  v5 = v18;
  if (v4)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = objc_autoreleasePoolPush();
    v17 = v5;
    v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v9 fromData:v4 error:&v17];
    v12 = v17;

    objc_autoreleasePoolPop(v10);
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v14 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(ATXTimelineRelevancePersonalizedConfig *)v2 _readPersonalizedConfiguration];
      }
    }
  }

  else
  {
    v9 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v20 = v2;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "ATXTimelineRelevancePersonalizedConfig does not exist at path: %{public}@: %{public}@", buf, 0x16u);
    }

    v11 = 0;
    v12 = v5;
  }

  objc_autoreleasePoolPop(v3);
  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_readPersonalizedConfiguration
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  selfCopy = self;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Failed to read personalized configuration at path: %{public}@. Error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end