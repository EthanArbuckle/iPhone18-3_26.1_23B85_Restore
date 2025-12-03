@interface ATXSuggestedPagesHomeScreenModificationsMetrics
- (id)coreAnalyticsDictionary;
- (id)description;
- (id)metricsSourceToStringWithSource:(int)source;
- (void)logToCoreAnalytics;
@end

@implementation ATXSuggestedPagesHomeScreenModificationsMetrics

- (id)coreAnalyticsDictionary
{
  v28[8] = *MEMORY[0x1E69E9840];
  v27[0] = @"suggestedPageType";
  suggestedPageType = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self suggestedPageType];
  v4 = suggestedPageType;
  if (!suggestedPageType)
  {
    suggestedPageType = [MEMORY[0x1E695DFB0] null];
  }

  v24 = suggestedPageType;
  v28[0] = suggestedPageType;
  v27[1] = @"eventType";
  eventType = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self eventType];
  v6 = eventType;
  if (!eventType)
  {
    eventType = [MEMORY[0x1E695DFB0] null];
  }

  v23 = eventType;
  v28[1] = eventType;
  v27[2] = @"widgetBundleId";
  widgetBundleId = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetBundleId];
  v8 = widgetBundleId;
  if (!widgetBundleId)
  {
    widgetBundleId = [MEMORY[0x1E695DFB0] null];
  }

  v22 = widgetBundleId;
  v28[2] = widgetBundleId;
  v27[3] = @"widgetKind";
  widgetKind = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetKind];
  v10 = widgetKind;
  if (!widgetKind)
  {
    widgetKind = [MEMORY[0x1E695DFB0] null];
  }

  v21 = widgetKind;
  v28[3] = widgetKind;
  v27[4] = @"appBundleId";
  appBundleId = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self appBundleId];
  v12 = appBundleId;
  if (!appBundleId)
  {
    appBundleId = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v4;
  v20 = appBundleId;
  v28[4] = appBundleId;
  v27[5] = @"widgetSize";
  widgetSize = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetSize];
  null = widgetSize;
  if (!widgetSize)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null;
  v27[6] = @"isSuggestedWidget";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[ATXSuggestedPagesHomeScreenModificationsMetrics isSuggestedWidget](self, "isSuggestedWidget")}];
  null2 = v15;
  if (!v15)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = null2;
  v27[7] = @"source";
  v17 = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self metricsSourceToStringWithSource:[(ATXSuggestedPagesHomeScreenModificationsMetrics *)self source]];
  null3 = v17;
  if (!v17)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = null3;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (!v17)
  {
  }

  if (!v15)
  {
  }

  if (!widgetSize)
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
  suggestedPageType = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self suggestedPageType];
  eventType = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self eventType];
  widgetBundleId = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetBundleId];
  widgetKind = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetKind];
  appBundleId = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self appBundleId];
  widgetSize = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self widgetSize];
  v10 = [v3 stringWithFormat:@"ATXSuggestedPagesHomeScreenModificationsMetrics\nsuggestedPageType:%@\neventType:%@\nwidgetBundleId%@\nwidgetKind:%@\nappBundleId:%@\nwidgetSize:%@\nisSuggestedWidget:%d", suggestedPageType, eventType, widgetBundleId, widgetKind, appBundleId, widgetSize, -[ATXSuggestedPagesHomeScreenModificationsMetrics isSuggestedWidget](self, "isSuggestedWidget")];

  return v10;
}

- (id)metricsSourceToStringWithSource:(int)source
{
  if (source == 1)
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
  metricName = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self metricName];
  coreAnalyticsDictionary = [(ATXSuggestedPagesHomeScreenModificationsMetrics *)self coreAnalyticsDictionary];
  AnalyticsSendEvent();
}

@end