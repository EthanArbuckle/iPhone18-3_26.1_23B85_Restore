@interface ATXNotificationModeEntityModelWeights
- (ATXNotificationModeEntityModelWeights)init;
- (double)appCategoryScoreComponent;
- (double)appClassConditionalProbabilityComponent;
- (double)appGlobalOccurrencesComponent;
- (double)appGlobalPopularityComponent;
- (double)appModePopularityComponent;
- (double)appPosteriorProbabilityComponent;
- (double)bias;
- (double)clearClassConditionalProbabilityComponent;
- (double)clearGlobalPopularityComponent;
- (double)clearModePopularityComponent;
- (double)clearPosteriorProbabilityComponent;
- (double)contactClassConditionalProbabilityComponent;
- (double)contactGlobalOccurrencesComponent;
- (double)contactGlobalPopularityComponent;
- (double)contactIsFavoriteComponent;
- (double)contactIsVIPComponent;
- (double)contactPosteriorProbabilityComponent;
- (double)dismissClassConditionalProbabilityComponent;
- (double)dismissGlobalPopularityComponent;
- (double)dismissModePopularityComponent;
- (double)dismissPosteriorProbabilityComponent;
- (double)engagementClassConditionalProbabilityComponent;
- (double)engagementGlobalPopularityComponent;
- (double)engagementModePopularityComponent;
- (double)engagementPosteriorProbabilityComponent;
- (double)hiddenClassConditionalProbabilityComponent;
- (double)hiddenGlobalPopularityComponent;
- (double)hiddenModePopularityComponent;
- (double)hiddenPosteriorProbabilityComponent;
- (id)abGroup;
- (int)numOfDays;
- (void)init;
@end

@implementation ATXNotificationModeEntityModelWeights

- (ATXNotificationModeEntityModelWeights)init
{
  v13.receiver = self;
  v13.super_class = ATXNotificationModeEntityModelWeights;
  v2 = [(ATXNotificationModeEntityModelWeights *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB6A8] sharedInstance];
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = [*(v2 + 2) notificationModeEntityModelWeights];
    v6 = [v5 count];

    if (v6)
    {
      v7 = __atxlog_handle_modes();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(ATXNotificationModeEntityModelWeights *)v7 init];
      }

      v8 = [*(v2 + 2) notificationModeEntityModelWeights];
      v9 = *(v2 + 1);
      *(v2 + 1) = v8;

      v10 = __atxlog_handle_modes();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(ATXNotificationModeEntityModelWeights *)v2 + 1 init];
      }
    }

    else
    {
      v11 = [MEMORY[0x277CEB3C0] dictionaryForResource:@"ATXNotificationModeEntityModelWeights" ofType:@"plist" specifiedABGroup:0];
      v10 = *(v2 + 1);
      *(v2 + 1) = v11;
    }
  }

  return v2;
}

- (double)appCategoryScoreComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"appCategoryScoreComponent"];
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

- (double)appClassConditionalProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"appClassConditionalProbabilityComponent"];
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

- (double)appGlobalPopularityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"appGlobalPopularityComponent"];
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

- (double)appModePopularityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"appModePopularityComponent"];
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

- (double)appPosteriorProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"appPosteriorProbabilityComponent"];
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

- (double)appGlobalOccurrencesComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"appGlobalOccurrencesComponent"];
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

- (double)contactClassConditionalProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"contactClassConditionalProbabilityComponent"];
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

- (double)contactGlobalPopularityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"contactGlobalPopularityComponent"];
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

- (double)contactPosteriorProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"contactPosteriorProbabilityComponent"];
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

- (double)contactGlobalOccurrencesComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"contactGlobalOccurrencesComponent"];
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

- (double)contactIsFavoriteComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"contactIsFavoriteComponent"];
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

- (double)contactIsVIPComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"contactIsVIPComponent"];
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

- (double)engagementGlobalPopularityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"engagementGlobalPopularityComponent"];
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

- (double)engagementModePopularityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"engagementModePopularityComponent"];
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

- (double)engagementClassConditionalProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"engagementClassConditionalProbabilityComponent"];
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

- (double)engagementPosteriorProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"engagementPosteriorProbabilityComponent"];
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

- (double)clearGlobalPopularityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"clearGlobalPopularityComponent"];
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

- (double)clearModePopularityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"clearModePopularityComponent"];
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

- (double)clearClassConditionalProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"clearClassConditionalProbabilityComponent"];
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

- (double)clearPosteriorProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"clearPosteriorProbabilityComponent"];
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

- (double)hiddenGlobalPopularityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"hiddenGlobalPopularityComponent"];
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

- (double)hiddenModePopularityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"hiddenModePopularityComponent"];
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

- (double)hiddenClassConditionalProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"hiddenClassConditionalProbabilityComponent"];
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

- (double)hiddenPosteriorProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"hiddenPosteriorProbabilityComponent"];
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

- (double)dismissGlobalPopularityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"dismissGlobalPopularityComponent"];
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

- (double)dismissModePopularityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"dismissModePopularityComponent"];
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

- (double)dismissClassConditionalProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"dismissClassConditionalProbabilityComponent"];
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

- (double)dismissPosteriorProbabilityComponent
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"dismissPosteriorProbabilityComponent"];
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
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"numOfDays"];
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

- (double)bias
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"bias"];
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

- (id)abGroup
{
  v2 = [(NSDictionary *)self->_notificationModeEntityModelWeights objectForKeyedSubscript:@"abGroup"];
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
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXNotificationModeEntityModelWeights: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end