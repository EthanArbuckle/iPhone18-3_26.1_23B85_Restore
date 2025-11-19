@interface ATXWidgetDwellTracker
- (ATXWidgetDwellTracker)init;
- (ATXWidgetDwellTrackerDelegate)delegate;
- (void)widgetDidAppear:(id)a3 date:(id)a4;
- (void)widgetDidDisappear:(id)a3 date:(id)a4;
@end

@implementation ATXWidgetDwellTracker

- (ATXWidgetDwellTracker)init
{
  v6.receiver = self;
  v6.super_class = ATXWidgetDwellTracker;
  v2 = [(ATXWidgetDwellTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetUniqueIdToAppearDateMap = v2->_widgetUniqueIdToAppearDateMap;
    v2->_widgetUniqueIdToAppearDateMap = v3;
  }

  return v2;
}

- (void)widgetDidAppear:(id)a3 date:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 widgetUniqueId];

  v9 = __atxlog_handle_home_screen();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 compactDescription];
      v12 = [v6 widgetUniqueId];
      v18 = 136315650;
      v19 = "[ATXWidgetDwellTracker widgetDidAppear:date:]";
      v20 = 2112;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "RAS: %s: widget: %@ (widgetID %{public}@)", &v18, 0x20u);
    }

    widgetUniqueIdToAppearDateMap = self->_widgetUniqueIdToAppearDateMap;
    v14 = [v6 widgetUniqueId];
    v15 = [(NSMutableDictionary *)widgetUniqueIdToAppearDateMap objectForKeyedSubscript:v14];

    if (v15)
    {
      v16 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [ATXWidgetDwellTracker widgetDidAppear:v6 date:?];
      }
    }

    v17 = self->_widgetUniqueIdToAppearDateMap;
    v10 = [v6 widgetUniqueId];
    [(NSMutableDictionary *)v17 setObject:v7 forKeyedSubscript:v10];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [ATXWidgetDwellTracker widgetDidAppear:v6 date:?];
  }
}

- (void)widgetDidDisappear:(id)a3 date:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 widgetUniqueId];

  v9 = __atxlog_handle_home_screen();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 compactDescription];
      v12 = [v6 widgetUniqueId];
      v19 = 136315650;
      v20 = "[ATXWidgetDwellTracker widgetDidDisappear:date:]";
      v21 = 2112;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "RAS: %s: widget: %@ (widgetID %{public}@)", &v19, 0x20u);
    }

    widgetUniqueIdToAppearDateMap = self->_widgetUniqueIdToAppearDateMap;
    v14 = [v6 widgetUniqueId];
    v10 = [(NSMutableDictionary *)widgetUniqueIdToAppearDateMap objectForKeyedSubscript:v14];

    if (v10)
    {
      [v7 timeIntervalSinceDate:v10];
      if (v15 <= 3.5)
      {
LABEL_12:
        v17 = self->_widgetUniqueIdToAppearDateMap;
        v18 = [v6 widgetUniqueId];
        [(NSMutableDictionary *)v17 removeObjectForKey:v18];

        goto LABEL_13;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained significantDwellDetectedForWidget:v6 date:v7];
    }

    else
    {
      WeakRetained = __atxlog_handle_home_screen();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_FAULT))
      {
        [ATXWidgetDwellTracker widgetDidDisappear:v6 date:?];
      }
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [ATXWidgetDwellTracker widgetDidDisappear:v6 date:?];
  }

LABEL_13:
}

- (ATXWidgetDwellTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)widgetDidAppear:(void *)a1 date:.cold.1(void *a1)
{
  v1 = [a1 widgetUniqueId];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_13(&dword_1BF549000, v2, v3, "RAS: %s: widget ID %{public}@ seems to have already appeared. Overriding appear date.", v4, v5, v6, v7, 2u);
}

- (void)widgetDidAppear:(void *)a1 date:.cold.2(void *a1)
{
  v1 = [a1 compactDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_13(&dword_1BF549000, v2, v3, "RAS: %s: widget %@ unexpectedly has null unique ID. Dwell tracking will not work for this widget.", v4, v5, v6, v7, 2u);
}

- (void)widgetDidDisappear:(void *)a1 date:.cold.1(void *a1)
{
  v1 = [a1 widgetUniqueId];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_13(&dword_1BF549000, v2, v3, "RAS: %s: No appearing date on record for widget ID %{public}@.", v4, v5, v6, v7, 2u);
}

- (void)widgetDidDisappear:(void *)a1 date:.cold.2(void *a1)
{
  v1 = [a1 compactDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_13(&dword_1BF549000, v2, v3, "RAS: %s: widget %@ unexpectedly has null unique ID. Dwell tracking will not work for this widget.", v4, v5, v6, v7, 2u);
}

@end