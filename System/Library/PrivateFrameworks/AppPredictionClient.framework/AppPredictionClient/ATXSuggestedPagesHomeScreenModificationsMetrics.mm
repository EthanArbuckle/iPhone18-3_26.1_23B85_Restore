@interface ATXSuggestedPagesHomeScreenModificationsMetrics
- (id)coreAnalyticsDictionary;
- (id)description;
- (id)metricsSourceToStringWithSource:(int)a3;
- (void)logToCoreAnalytics;
@end

@implementation ATXSuggestedPagesHomeScreenModificationsMetrics

- (id)coreAnalyticsDictionary
{
  v28[8] = *MEMORY[0x1E69E9840];
  v27[0] = @"suggestedPageType";
  v3 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self suggestedPageType];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v28[0] = v3;
  v27[1] = @"eventType";
  v5 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self eventType];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v5;
  v28[1] = v5;
  v27[2] = @"widgetBundleId";
  v7 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetBundleId];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v7;
  v28[2] = v7;
  v27[3] = @"widgetKind";
  v9 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetKind];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v9;
  v28[3] = v9;
  v27[4] = @"appBundleId";
  v11 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self appBundleId];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v4;
  v20 = v11;
  v28[4] = v11;
  v27[5] = @"widgetSize";
  v13 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetSize];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = v14;
  v27[6] = @"isSuggestedWidget";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[ATXSuggestedPagesHomeScreenModificationsMetrics isSuggestedWidget](self, "isSuggestedWidget")}];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = v16;
  v27[7] = @"source";
  v17 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self metricsSourceToStringWithSource:[(ATXSuggestedPagesHomeScreenModificationsMetrics *)self source]];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = v18;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (!v17)
  {
  }

  if (!v15)
  {
  }

  if (!v13)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v26)
  {
  }

  return v25;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self suggestedPageType];
  v5 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self eventType];
  v6 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetBundleId];
  v7 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetKind];
  v8 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self appBundleId];
  v9 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetSize];
  v10 = [v3 stringWithFormat:@"ATXSuggestedPagesHomeScreenModificationsMetrics\nsuggestedPageType:%@\neventType:%@\nwidgetBundleId%@\nwidgetKind:%@\nappBundleId:%@\nwidgetSize:%@\nisSuggestedWidget:%d", v4, v5, v6, v7, v8, v9, -[ATXSuggestedPagesHomeScreenModificationsMetrics isSuggestedWidget](self, "isSuggestedWidget")];

  return v10;
}

- (id)metricsSourceToStringWithSource:(int)a3
{
  if (a3 == 1)
  {
    return @"HomeScreen";
  }

  else
  {
    return @"Setup";
  }
}

- (void)logToCoreAnalytics
{
  v4 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self metricName];
  v3 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self coreAnalyticsDictionary];
  AnalyticsSendEvent();
}

@end