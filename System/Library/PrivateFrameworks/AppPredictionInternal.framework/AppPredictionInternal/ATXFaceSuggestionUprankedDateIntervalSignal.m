@interface ATXFaceSuggestionUprankedDateIntervalSignal
- (ATXFaceSuggestionUprankedDateIntervalSignal)initWithParameters:(id)a3;
- (double)valueForDescriptor:(id)a3;
@end

@implementation ATXFaceSuggestionUprankedDateIntervalSignal

- (ATXFaceSuggestionUprankedDateIntervalSignal)initWithParameters:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXFaceSuggestionUprankedDateIntervalSignal;
  v5 = [(ATXFaceSuggestionUprankedDateIntervalSignal *)&v9 init];
  if (v5)
  {
    v6 = [v4 uprankedDateIntervals];
    uprankedDateIntervals = v5->_uprankedDateIntervals;
    v5->_uprankedDateIntervals = v6;
  }

  return v5;
}

- (double)valueForDescriptor:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  uprankedDateIntervals = self->_uprankedDateIntervals;
  if (uprankedDateIntervals)
  {
    v7 = [v4 extensionBundleIdentifier];
    v8 = [(NSDictionary *)uprankedDateIntervals objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = objc_opt_new();
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __66__ATXFaceSuggestionUprankedDateIntervalSignal_valueForDescriptor___block_invoke;
      v17[3] = &unk_27859CF70;
      v10 = v9;
      v18 = v10;
      v11 = [v8 bs_firstObjectPassingTest:v17];
      if (v11)
      {
        v12 = v11;
        v13 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v20 = "[ATXFaceSuggestionUprankedDateIntervalSignal valueForDescriptor:]";
          v21 = 2112;
          v22 = v12;
          v23 = 2112;
          v24 = v5;
          _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%s: descriptor has valid interval: %@, %@", buf, 0x20u);
        }

        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }
    }

    else
    {
      v14 = 0.0;
    }
  }

  else
  {
    v8 = __atxlog_handle_lock_screen();
    v14 = 0.0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceSuggestionUprankedDateIntervalSignal valueForDescriptor:v8];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)valueForDescriptor:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXFaceSuggestionUprankedDateIntervalSignal valueForDescriptor:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: no upranked date intervals found", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end