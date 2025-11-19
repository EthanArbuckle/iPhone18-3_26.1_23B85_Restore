@interface ATXWidgetModeEntityModelWeights
- (ATXWidgetModeEntityModelWeights)init;
- (double)classConditionalProbability;
- (double)globalPopularity;
- (double)modePopularity;
- (double)posteriorProbability;
- (double)weightForWidgetProbability;
- (id)abGroup;
- (int)numOfDays;
- (void)init;
@end

@implementation ATXWidgetModeEntityModelWeights

- (ATXWidgetModeEntityModelWeights)init
{
  v13.receiver = self;
  v13.super_class = ATXWidgetModeEntityModelWeights;
  v2 = [(ATXWidgetModeEntityModelWeights *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB6A8] sharedInstance];
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = [*(v2 + 2) widgetModeEntityModelWeights];
    v6 = [v5 count];

    if (v6)
    {
      v7 = __atxlog_handle_modes();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(ATXWidgetModeEntityModelWeights *)v7 init];
      }

      v8 = [*(v2 + 2) widgetModeEntityModelWeights];
      v9 = *(v2 + 1);
      *(v2 + 1) = v8;

      v10 = __atxlog_handle_modes();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(ATXWidgetModeEntityModelWeights *)v2 + 1 init];
      }
    }

    else
    {
      v11 = [MEMORY[0x277CEB3C0] dictionaryForResource:@"ATXWidgetModeEntityModelWeights" ofType:@"plist" specifiedABGroup:0];
      v10 = *(v2 + 1);
      *(v2 + 1) = v11;
    }
  }

  return v2;
}

- (double)classConditionalProbability
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"classConditionalProbability"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)posteriorProbability
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"posteriorProbability"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)globalPopularity
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"globalPopularity"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)modePopularity
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"modePopularity"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)weightForWidgetProbability
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"weightForWidgetProbability"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (int)numOfDays
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"numOfDays"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)abGroup
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"abGroup"];
  v3 = [v2 stringValue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"default";
  }

  v6 = v5;

  return v5;
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXWidgetModeEntityModelWeights: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end