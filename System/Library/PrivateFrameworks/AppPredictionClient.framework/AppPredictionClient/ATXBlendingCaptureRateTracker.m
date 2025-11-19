@interface ATXBlendingCaptureRateTracker
+ (void)logAppDirectoryCaptureWithTracker:(id)a3;
+ (void)logAppDirectoryDiversionWithCaptureType:(int)a3 tracker:(id)a4;
+ (void)logHomeScreenCaptureWithTracker:(id)a3;
+ (void)logHomeScreenDiversionWithCaptureType:(int)a3 tracker:(id)a4;
+ (void)logSpotlightActionCaptureWithTracker:(id)a3;
+ (void)logSpotlightActionDiversionWithCaptureType:(int)a3 tracker:(id)a4;
+ (void)logSpotlightAppCaptureWithTracker:(id)a3;
+ (void)logSpotlightAppDiversionWithCaptureType:(int)a3 tracker:(id)a4;
@end

@implementation ATXBlendingCaptureRateTracker

+ (void)logAppDirectoryCaptureWithTracker:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E698B028] stringForConsumerSubtype:35];
  [v4 setConsumerSubType:v5];

  [v4 setCaptured:1];
  [v4 setCaptureType:1];
  v6 = [MEMORY[0x1E69C5BC8] stringForExecutableType:1];
  [v4 setExecutableType:v6];

  [v3 trackScalarForMessage:v4];
  v7 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[ATXBlendingCaptureRateTracker logAppDirectoryCaptureWithTracker:];
  }
}

+ (void)logAppDirectoryDiversionWithCaptureType:(int)a3 tracker:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:35];
  [v6 setConsumerSubType:v7];

  [v6 setCaptured:0];
  [v6 setCaptureType:v4];
  v8 = [MEMORY[0x1E69C5BC8] stringForExecutableType:1];
  [v6 setExecutableType:v8];

  [v5 trackScalarForMessage:v6];
  v9 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[ATXBlendingCaptureRateTracker logAppDirectoryDiversionWithCaptureType:tracker:];
  }
}

+ (void)logHomeScreenCaptureWithTracker:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E698B028] stringForConsumerSubtype:34];
  [v4 setConsumerSubType:v5];

  [v4 setCaptured:1];
  [v4 setCaptureType:1];
  v6 = [MEMORY[0x1E69C5BC8] stringForExecutableType:1];
  [v4 setExecutableType:v6];

  [v3 trackScalarForMessage:v4];
  v7 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[ATXBlendingCaptureRateTracker logHomeScreenCaptureWithTracker:];
  }
}

+ (void)logHomeScreenDiversionWithCaptureType:(int)a3 tracker:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:34];
  [v6 setConsumerSubType:v7];

  [v6 setCaptured:0];
  [v6 setCaptureType:v4];
  v8 = [MEMORY[0x1E69C5BC8] stringForExecutableType:1];
  [v6 setExecutableType:v8];

  [v5 trackScalarForMessage:v6];
  v9 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[ATXBlendingCaptureRateTracker logHomeScreenDiversionWithCaptureType:tracker:];
  }
}

+ (void)logSpotlightAppCaptureWithTracker:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E698B028] stringForConsumerSubtype:9];
  [v4 setConsumerSubType:v5];

  [v4 setCaptured:1];
  [v4 setCaptureType:1];
  v6 = [MEMORY[0x1E69C5BC8] stringForExecutableType:1];
  [v4 setExecutableType:v6];

  [v3 trackScalarForMessage:v4];
  v7 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[ATXBlendingCaptureRateTracker logSpotlightAppCaptureWithTracker:];
  }
}

+ (void)logSpotlightAppDiversionWithCaptureType:(int)a3 tracker:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:9];
  [v6 setConsumerSubType:v7];

  [v6 setCaptured:0];
  [v6 setCaptureType:v4];
  v8 = [MEMORY[0x1E69C5BC8] stringForExecutableType:1];
  [v6 setExecutableType:v8];

  [v5 trackScalarForMessage:v6];
  v9 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[ATXBlendingCaptureRateTracker logSpotlightAppDiversionWithCaptureType:tracker:];
  }
}

+ (void)logSpotlightActionCaptureWithTracker:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E698B028] stringForConsumerSubtype:21];
  [v4 setConsumerSubType:v5];

  [v4 setCaptured:1];
  [v4 setCaptureType:1];
  v6 = [MEMORY[0x1E69C5BC8] stringForExecutableType:2];
  [v4 setExecutableType:v6];

  [v3 trackScalarForMessage:v4];
  v7 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[ATXBlendingCaptureRateTracker logSpotlightActionCaptureWithTracker:];
  }
}

+ (void)logSpotlightActionDiversionWithCaptureType:(int)a3 tracker:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:21];
  [v6 setConsumerSubType:v7];

  [v6 setCaptured:0];
  [v6 setCaptureType:v4];
  v8 = [MEMORY[0x1E69C5BC8] stringForExecutableType:2];
  [v6 setExecutableType:v8];

  [v5 trackScalarForMessage:v6];
  v9 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[ATXBlendingCaptureRateTracker logSpotlightActionDiversionWithCaptureType:tracker:];
  }
}

+ (void)logAppDirectoryCaptureWithTracker:.cold.1()
{
  OUTLINED_FUNCTION_2_9();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_4_7() consumerSubType];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_3_7();
  if (!v7 & v6)
  {
    switch(v4)
    {
      case 4000:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch";
        break;
      case 4001:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview";
        break;
      case 4002:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory";
        break;
      case 4003:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents";
        break;
      case 4004:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch_Deduped";
        break;
      case 4005:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview_Deduped";
        break;
      case 4006:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory_Deduped";
        break;
      case 4007:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents_Deduped";
        break;
      default:
        switch(v4)
        {
          case 1:
            v8 = @"Captured";
            break;
          case 0xBB9:
            v8 = @"SpotlightDiverted_ActionExecutedFromSearch";
            break;
          case 0x7D0:
            v8 = @"SpotlightDiverted_AppLaunchedFromShortcutExecution";
            break;
          case 0x7D1:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearch";
            break;
          case 0x7D2:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearchMatchingPredictedApp";
            break;
          case 0xBB8:
            v8 = @"SpotlightDiverted_ActionDonatedAfterSpotlightAppLaunch";
            break;
          case 0x3E8:
            v8 = @"Diverted";
            break;
          default:
            v15 = v4;
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)"];
            break;
        }

        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreen";
        break;
      case 1:
        v8 = @"HomeScreenDiverted_AppLaunchedFromShortcutExecution";
        break;
      case 2:
        v8 = @"HomeScreenDiverted_AppLaunchedFromWidgetTap";
        break;
      case 3:
        v8 = @"HomeScreenDiverted_AppLaunchedFromSuggestionsWidget";
        break;
      case 4:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDock";
        break;
      case 5:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePage";
        break;
      case 6:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePageFolder";
        break;
      case 7:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPage";
        break;
      case 8:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPageFolder";
        break;
      default:
        JUMPOUT(0);
    }
  }

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_19(&dword_1BF549000, v9, v10, "LOGGED: %@ - ATXMPBBlendingCaptureRateTracker with consumerSubType: %@ captureType: %@", v11, v12, v13, v14, v15, v16, v17);
}

+ (void)logAppDirectoryDiversionWithCaptureType:tracker:.cold.1()
{
  OUTLINED_FUNCTION_2_9();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_4_7() consumerSubType];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_3_7();
  if (!v7 & v6)
  {
    switch(v4)
    {
      case 4000:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch";
        break;
      case 4001:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview";
        break;
      case 4002:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory";
        break;
      case 4003:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents";
        break;
      case 4004:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch_Deduped";
        break;
      case 4005:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview_Deduped";
        break;
      case 4006:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory_Deduped";
        break;
      case 4007:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents_Deduped";
        break;
      default:
        switch(v4)
        {
          case 1:
            v8 = @"Captured";
            break;
          case 0xBB9:
            v8 = @"SpotlightDiverted_ActionExecutedFromSearch";
            break;
          case 0x7D0:
            v8 = @"SpotlightDiverted_AppLaunchedFromShortcutExecution";
            break;
          case 0x7D1:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearch";
            break;
          case 0x7D2:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearchMatchingPredictedApp";
            break;
          case 0xBB8:
            v8 = @"SpotlightDiverted_ActionDonatedAfterSpotlightAppLaunch";
            break;
          case 0x3E8:
            v8 = @"Diverted";
            break;
          default:
            v15 = v4;
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)"];
            break;
        }

        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreen";
        break;
      case 1:
        v8 = @"HomeScreenDiverted_AppLaunchedFromShortcutExecution";
        break;
      case 2:
        v8 = @"HomeScreenDiverted_AppLaunchedFromWidgetTap";
        break;
      case 3:
        v8 = @"HomeScreenDiverted_AppLaunchedFromSuggestionsWidget";
        break;
      case 4:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDock";
        break;
      case 5:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePage";
        break;
      case 6:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePageFolder";
        break;
      case 7:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPage";
        break;
      case 8:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPageFolder";
        break;
      default:
        JUMPOUT(0);
    }
  }

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_19(&dword_1BF549000, v9, v10, "LOGGED: %@ - ATXMPBBlendingCaptureRateTracker with consumerSubType: %@ captureType: %@", v11, v12, v13, v14, v15, v16, v17);
}

+ (void)logHomeScreenCaptureWithTracker:.cold.1()
{
  OUTLINED_FUNCTION_2_9();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_4_7() consumerSubType];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_3_7();
  if (!v7 & v6)
  {
    switch(v4)
    {
      case 4000:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch";
        break;
      case 4001:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview";
        break;
      case 4002:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory";
        break;
      case 4003:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents";
        break;
      case 4004:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch_Deduped";
        break;
      case 4005:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview_Deduped";
        break;
      case 4006:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory_Deduped";
        break;
      case 4007:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents_Deduped";
        break;
      default:
        switch(v4)
        {
          case 1:
            v8 = @"Captured";
            break;
          case 0xBB9:
            v8 = @"SpotlightDiverted_ActionExecutedFromSearch";
            break;
          case 0x7D0:
            v8 = @"SpotlightDiverted_AppLaunchedFromShortcutExecution";
            break;
          case 0x7D1:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearch";
            break;
          case 0x7D2:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearchMatchingPredictedApp";
            break;
          case 0xBB8:
            v8 = @"SpotlightDiverted_ActionDonatedAfterSpotlightAppLaunch";
            break;
          case 0x3E8:
            v8 = @"Diverted";
            break;
          default:
            v15 = v4;
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)"];
            break;
        }

        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreen";
        break;
      case 1:
        v8 = @"HomeScreenDiverted_AppLaunchedFromShortcutExecution";
        break;
      case 2:
        v8 = @"HomeScreenDiverted_AppLaunchedFromWidgetTap";
        break;
      case 3:
        v8 = @"HomeScreenDiverted_AppLaunchedFromSuggestionsWidget";
        break;
      case 4:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDock";
        break;
      case 5:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePage";
        break;
      case 6:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePageFolder";
        break;
      case 7:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPage";
        break;
      case 8:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPageFolder";
        break;
      default:
        JUMPOUT(0);
    }
  }

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_19(&dword_1BF549000, v9, v10, "LOGGED: %@ - ATXMPBBlendingCaptureRateTracker with consumerSubType: %@ captureType: %@", v11, v12, v13, v14, v15, v16, v17);
}

+ (void)logHomeScreenDiversionWithCaptureType:tracker:.cold.1()
{
  OUTLINED_FUNCTION_2_9();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_4_7() consumerSubType];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_3_7();
  if (!v7 & v6)
  {
    switch(v4)
    {
      case 4000:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch";
        break;
      case 4001:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview";
        break;
      case 4002:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory";
        break;
      case 4003:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents";
        break;
      case 4004:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch_Deduped";
        break;
      case 4005:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview_Deduped";
        break;
      case 4006:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory_Deduped";
        break;
      case 4007:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents_Deduped";
        break;
      default:
        switch(v4)
        {
          case 1:
            v8 = @"Captured";
            break;
          case 0xBB9:
            v8 = @"SpotlightDiverted_ActionExecutedFromSearch";
            break;
          case 0x7D0:
            v8 = @"SpotlightDiverted_AppLaunchedFromShortcutExecution";
            break;
          case 0x7D1:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearch";
            break;
          case 0x7D2:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearchMatchingPredictedApp";
            break;
          case 0xBB8:
            v8 = @"SpotlightDiverted_ActionDonatedAfterSpotlightAppLaunch";
            break;
          case 0x3E8:
            v8 = @"Diverted";
            break;
          default:
            v15 = v4;
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)"];
            break;
        }

        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreen";
        break;
      case 1:
        v8 = @"HomeScreenDiverted_AppLaunchedFromShortcutExecution";
        break;
      case 2:
        v8 = @"HomeScreenDiverted_AppLaunchedFromWidgetTap";
        break;
      case 3:
        v8 = @"HomeScreenDiverted_AppLaunchedFromSuggestionsWidget";
        break;
      case 4:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDock";
        break;
      case 5:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePage";
        break;
      case 6:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePageFolder";
        break;
      case 7:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPage";
        break;
      case 8:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPageFolder";
        break;
      default:
        JUMPOUT(0);
    }
  }

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_19(&dword_1BF549000, v9, v10, "LOGGED: %@ - ATXMPBBlendingCaptureRateTracker with consumerSubType: %@ captureType: %@", v11, v12, v13, v14, v15, v16, v17);
}

+ (void)logSpotlightAppCaptureWithTracker:.cold.1()
{
  OUTLINED_FUNCTION_2_9();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_4_7() consumerSubType];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_3_7();
  if (!v7 & v6)
  {
    switch(v4)
    {
      case 4000:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch";
        break;
      case 4001:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview";
        break;
      case 4002:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory";
        break;
      case 4003:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents";
        break;
      case 4004:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch_Deduped";
        break;
      case 4005:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview_Deduped";
        break;
      case 4006:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory_Deduped";
        break;
      case 4007:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents_Deduped";
        break;
      default:
        switch(v4)
        {
          case 1:
            v8 = @"Captured";
            break;
          case 0xBB9:
            v8 = @"SpotlightDiverted_ActionExecutedFromSearch";
            break;
          case 0x7D0:
            v8 = @"SpotlightDiverted_AppLaunchedFromShortcutExecution";
            break;
          case 0x7D1:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearch";
            break;
          case 0x7D2:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearchMatchingPredictedApp";
            break;
          case 0xBB8:
            v8 = @"SpotlightDiverted_ActionDonatedAfterSpotlightAppLaunch";
            break;
          case 0x3E8:
            v8 = @"Diverted";
            break;
          default:
            v15 = v4;
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)"];
            break;
        }

        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreen";
        break;
      case 1:
        v8 = @"HomeScreenDiverted_AppLaunchedFromShortcutExecution";
        break;
      case 2:
        v8 = @"HomeScreenDiverted_AppLaunchedFromWidgetTap";
        break;
      case 3:
        v8 = @"HomeScreenDiverted_AppLaunchedFromSuggestionsWidget";
        break;
      case 4:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDock";
        break;
      case 5:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePage";
        break;
      case 6:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePageFolder";
        break;
      case 7:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPage";
        break;
      case 8:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPageFolder";
        break;
      default:
        JUMPOUT(0);
    }
  }

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_19(&dword_1BF549000, v9, v10, "LOGGED: %@ - ATXMPBBlendingCaptureRateTracker with consumerSubType: %@ captureType: %@", v11, v12, v13, v14, v15, v16, v17);
}

+ (void)logSpotlightAppDiversionWithCaptureType:tracker:.cold.1()
{
  OUTLINED_FUNCTION_2_9();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_4_7() consumerSubType];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_3_7();
  if (!v7 & v6)
  {
    switch(v4)
    {
      case 4000:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch";
        break;
      case 4001:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview";
        break;
      case 4002:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory";
        break;
      case 4003:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents";
        break;
      case 4004:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch_Deduped";
        break;
      case 4005:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview_Deduped";
        break;
      case 4006:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory_Deduped";
        break;
      case 4007:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents_Deduped";
        break;
      default:
        switch(v4)
        {
          case 1:
            v8 = @"Captured";
            break;
          case 0xBB9:
            v8 = @"SpotlightDiverted_ActionExecutedFromSearch";
            break;
          case 0x7D0:
            v8 = @"SpotlightDiverted_AppLaunchedFromShortcutExecution";
            break;
          case 0x7D1:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearch";
            break;
          case 0x7D2:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearchMatchingPredictedApp";
            break;
          case 0xBB8:
            v8 = @"SpotlightDiverted_ActionDonatedAfterSpotlightAppLaunch";
            break;
          case 0x3E8:
            v8 = @"Diverted";
            break;
          default:
            v15 = v4;
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)"];
            break;
        }

        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreen";
        break;
      case 1:
        v8 = @"HomeScreenDiverted_AppLaunchedFromShortcutExecution";
        break;
      case 2:
        v8 = @"HomeScreenDiverted_AppLaunchedFromWidgetTap";
        break;
      case 3:
        v8 = @"HomeScreenDiverted_AppLaunchedFromSuggestionsWidget";
        break;
      case 4:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDock";
        break;
      case 5:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePage";
        break;
      case 6:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePageFolder";
        break;
      case 7:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPage";
        break;
      case 8:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPageFolder";
        break;
      default:
        JUMPOUT(0);
    }
  }

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_19(&dword_1BF549000, v9, v10, "LOGGED: %@ - ATXMPBBlendingCaptureRateTracker with consumerSubType: %@ captureType: %@", v11, v12, v13, v14, v15, v16, v17);
}

+ (void)logSpotlightActionCaptureWithTracker:.cold.1()
{
  OUTLINED_FUNCTION_2_9();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_4_7() consumerSubType];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_3_7();
  if (!v7 & v6)
  {
    switch(v4)
    {
      case 4000:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch";
        break;
      case 4001:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview";
        break;
      case 4002:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory";
        break;
      case 4003:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents";
        break;
      case 4004:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch_Deduped";
        break;
      case 4005:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview_Deduped";
        break;
      case 4006:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory_Deduped";
        break;
      case 4007:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents_Deduped";
        break;
      default:
        switch(v4)
        {
          case 1:
            v8 = @"Captured";
            break;
          case 0xBB9:
            v8 = @"SpotlightDiverted_ActionExecutedFromSearch";
            break;
          case 0x7D0:
            v8 = @"SpotlightDiverted_AppLaunchedFromShortcutExecution";
            break;
          case 0x7D1:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearch";
            break;
          case 0x7D2:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearchMatchingPredictedApp";
            break;
          case 0xBB8:
            v8 = @"SpotlightDiverted_ActionDonatedAfterSpotlightAppLaunch";
            break;
          case 0x3E8:
            v8 = @"Diverted";
            break;
          default:
            v15 = v4;
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)"];
            break;
        }

        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreen";
        break;
      case 1:
        v8 = @"HomeScreenDiverted_AppLaunchedFromShortcutExecution";
        break;
      case 2:
        v8 = @"HomeScreenDiverted_AppLaunchedFromWidgetTap";
        break;
      case 3:
        v8 = @"HomeScreenDiverted_AppLaunchedFromSuggestionsWidget";
        break;
      case 4:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDock";
        break;
      case 5:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePage";
        break;
      case 6:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePageFolder";
        break;
      case 7:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPage";
        break;
      case 8:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPageFolder";
        break;
      default:
        JUMPOUT(0);
    }
  }

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_19(&dword_1BF549000, v9, v10, "LOGGED: %@ - ATXMPBBlendingCaptureRateTracker with consumerSubType: %@ captureType: %@", v11, v12, v13, v14, v15, v16, v17);
}

+ (void)logSpotlightActionDiversionWithCaptureType:tracker:.cold.1()
{
  OUTLINED_FUNCTION_2_9();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_4_7() consumerSubType];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_3_7();
  if (!v7 & v6)
  {
    switch(v4)
    {
      case 4000:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch";
        break;
      case 4001:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview";
        break;
      case 4002:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory";
        break;
      case 4003:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents";
        break;
      case 4004:
        v8 = @"AppLibraryDiverted_AppLaunchedFromSearch_Deduped";
        break;
      case 4005:
        v8 = @"AppLibraryDiverted_AppLaunchedFromCategoryPreview_Deduped";
        break;
      case 4006:
        v8 = @"AppLibraryDiverted_AppLaunchedFromExpandedCategory_Deduped";
        break;
      case 4007:
        v8 = @"AppLibraryDiverted_AppLaunchedFromRecents_Deduped";
        break;
      default:
        switch(v4)
        {
          case 1:
            v8 = @"Captured";
            break;
          case 0xBB9:
            v8 = @"SpotlightDiverted_ActionExecutedFromSearch";
            break;
          case 0x7D0:
            v8 = @"SpotlightDiverted_AppLaunchedFromShortcutExecution";
            break;
          case 0x7D1:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearch";
            break;
          case 0x7D2:
            v8 = @"SpotlightDiverted_AppLaunchedFromSearchMatchingPredictedApp";
            break;
          case 0xBB8:
            v8 = @"SpotlightDiverted_ActionDonatedAfterSpotlightAppLaunch";
            break;
          case 0x3E8:
            v8 = @"Diverted";
            break;
          default:
            v15 = v4;
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)"];
            break;
        }

        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreen";
        break;
      case 1:
        v8 = @"HomeScreenDiverted_AppLaunchedFromShortcutExecution";
        break;
      case 2:
        v8 = @"HomeScreenDiverted_AppLaunchedFromWidgetTap";
        break;
      case 3:
        v8 = @"HomeScreenDiverted_AppLaunchedFromSuggestionsWidget";
        break;
      case 4:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDock";
        break;
      case 5:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePage";
        break;
      case 6:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenSamePageFolder";
        break;
      case 7:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPage";
        break;
      case 8:
        v8 = @"HomeScreenDiverted_AppLaunchedFromHomeScreenDiffPageFolder";
        break;
      default:
        JUMPOUT(0);
    }
  }

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_19(&dword_1BF549000, v9, v10, "LOGGED: %@ - ATXMPBBlendingCaptureRateTracker with consumerSubType: %@ captureType: %@", v11, v12, v13, v14, v15, v16, v17);
}

@end