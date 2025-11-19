__CFString *ATXNEventTypeToString(unint64_t a1)
{
  if (a1 < 0x1C)
  {
    return off_278C8F488[a1];
  }

  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ATXNEventTypeToString_cold_1();
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"ATXNEventTypeToString called with invalid ATXNEventType value of %lu", a1}];
  return @"Error";
}

uint64_t ATXNEventTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Receive"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"DefaultAction"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"SuppAction"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Clear"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"ClearAll"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"IndirectClear"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Hidden"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Orb"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"Dismiss"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"AppLaunch"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"Expired"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"Pulldown"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"TapCoalesce"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"TapExpand"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"Deduped"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"DevActivated"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"DevUnlocked"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"ReceivedAndDeliveredProminently"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"ReceivedAndDeliveredNonprominently"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"Modified"])
  {
    v2 = 18;
  }

  else
  {
    if (([v1 isEqualToString:@"Undefined"] & 1) == 0)
    {
      v3 = __atxlog_handle_default();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        ATXNEventTypeFromString_cold_1();
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"ATXNEventTypeFromString called with invalid string %@", v1}];
    }

    v2 = 27;
  }

  return v2;
}

__CFString *ATXNSettingResponseToString(unint64_t a1)
{
  if (a1 < 5)
  {
    return off_278C8F568[a1];
  }

  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ATXNSettingResponseToString_cold_1();
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"ATXNSettingResponseToString called with invalid ATXNSettingResponse value of %lu", a1}];
  return @"Error";
}

uint64_t ATXNRTOutcomeToSettingResponse(unint64_t a1)
{
  if (a1 < 5)
  {
    return qword_24001FD60[a1];
  }

  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ATXNRTOutcomeToSettingResponse_cold_1();
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"ATXNRTOutcomeToSettingResponse called with invalid ATXNotificationsRTOutcome value of %lu", a1}];
  return 4;
}

uint64_t ATXNSettingResponseToNEvent(unint64_t a1)
{
  if (a1 < 5)
  {
    return qword_24001FD88[a1];
  }

  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ATXNSettingResponseToNEvent_cold_1();
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"ATXNSettingResponseToNEvent called with invalid ATXNSettingResponse value of %lu", a1}];
  return 27;
}

__CFString *ATXUserNotificationDeliveryReasonToString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_278C8F590[a1 & 7];
  }

  return v2;
}

uint64_t ATXUserNotificationDeliveryReasonFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"None"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Other"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Application"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Contact"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"MatchedContact"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Urgency"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"MessageBreakthrough"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Total"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *ATXNotificationDeliveryUIToString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_278C8F5D0[a1 & 7];
  }

  return v2;
}

uint64_t ATXNotificationDeliveryUIFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Digest"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"MissedNotificationBundle"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"NotificationCenter"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Banner"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"LockScreen"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Other"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"PriorityNotification"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Total"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id __atxlog_handle_default()
{
  if (__atxlog_handle_default_onceToken != -1)
  {
    __atxlog_handle_default_cold_1();
  }

  v1 = __atxlog_handle_default_log;

  return v1;
}

uint64_t ____atxlog_handle_default_block_invoke()
{
  __atxlog_handle_default_log = os_log_create("com.apple.duetexpertd.atx", "general");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_xpc()
{
  if (__atxlog_handle_xpc_onceToken != -1)
  {
    __atxlog_handle_xpc_cold_1();
  }

  v1 = __atxlog_handle_xpc_log;

  return v1;
}

uint64_t ____atxlog_handle_xpc_block_invoke()
{
  __atxlog_handle_xpc_log = os_log_create("com.apple.duetexpertd.atx", "xpc");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_heuristic()
{
  if (__atxlog_handle_heuristic_onceToken != -1)
  {
    __atxlog_handle_heuristic_cold_1();
  }

  v1 = __atxlog_handle_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_heuristic_block_invoke()
{
  __atxlog_handle_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notifications()
{
  if (__atxlog_handle_notifications_onceToken != -1)
  {
    __atxlog_handle_notifications_cold_1();
  }

  v1 = __atxlog_handle_notifications_log;

  return v1;
}

uint64_t ____atxlog_handle_notifications_block_invoke()
{
  __atxlog_handle_notifications_log = os_log_create("com.apple.duetexpertd.atx", "notifications");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_pmm()
{
  if (__atxlog_handle_pmm_onceToken != -1)
  {
    __atxlog_handle_pmm_cold_1();
  }

  v1 = __atxlog_handle_pmm_log;

  return v1;
}

uint64_t ____atxlog_handle_pmm_block_invoke()
{
  __atxlog_handle_pmm_log = os_log_create("com.apple.duetexpertd.mm", "GENERAL");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_dailyroutines()
{
  if (__atxlog_handle_dailyroutines_onceToken != -1)
  {
    __atxlog_handle_dailyroutines_cold_1();
  }

  v1 = __atxlog_handle_dailyroutines_log;

  return v1;
}

uint64_t ____atxlog_handle_dailyroutines_block_invoke()
{
  __atxlog_handle_dailyroutines_log = os_log_create("com.apple.duetexpertd.atx", "dailyroutines");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_feedback()
{
  if (__atxlog_handle_feedback_onceToken != -1)
  {
    __atxlog_handle_feedback_cold_1();
  }

  v1 = __atxlog_handle_feedback_log;

  return v1;
}

uint64_t ____atxlog_handle_feedback_block_invoke()
{
  __atxlog_handle_feedback_log = os_log_create("com.apple.duetexpertd.atx", "feedback");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_modes()
{
  if (__atxlog_handle_modes_onceToken != -1)
  {
    __atxlog_handle_modes_cold_1();
  }

  v1 = __atxlog_handle_modes_log;

  return v1;
}

uint64_t ____atxlog_handle_modes_block_invoke()
{
  __atxlog_handle_modes_log = os_log_create("com.apple.duetexpertd.atx", "modes");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_hero()
{
  if (__atxlog_handle_hero_onceToken != -1)
  {
    __atxlog_handle_hero_cold_1();
  }

  v1 = __atxlog_handle_hero_log;

  return v1;
}

uint64_t ____atxlog_handle_hero_block_invoke()
{
  __atxlog_handle_hero_log = os_log_create("com.apple.duetexpertd.atx", "hero");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_deletions()
{
  if (__atxlog_handle_deletions_onceToken != -1)
  {
    __atxlog_handle_deletions_cold_1();
  }

  v1 = __atxlog_handle_deletions_log;

  return v1;
}

uint64_t ____atxlog_handle_deletions_block_invoke()
{
  __atxlog_handle_deletions_log = os_log_create("com.apple.duetexpertd.atx", "deletions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_gi()
{
  if (__atxlog_handle_gi_onceToken != -1)
  {
    __atxlog_handle_gi_cold_1();
  }

  v1 = __atxlog_handle_gi_log;

  return v1;
}

uint64_t ____atxlog_handle_gi_block_invoke()
{
  __atxlog_handle_gi_log = os_log_create("com.apple.duetexpertd.atx", "information");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_timeline()
{
  if (__atxlog_handle_timeline_onceToken != -1)
  {
    __atxlog_handle_timeline_cold_1();
  }

  v1 = __atxlog_handle_timeline_log;

  return v1;
}

uint64_t ____atxlog_handle_timeline_block_invoke()
{
  __atxlog_handle_timeline_log = os_log_create("com.apple.duetexpertd.atx", "timeline");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevant_shortcut()
{
  if (__atxlog_handle_relevant_shortcut_onceToken != -1)
  {
    __atxlog_handle_relevant_shortcut_cold_1();
  }

  v1 = __atxlog_handle_relevant_shortcut_log;

  return v1;
}

uint64_t ____atxlog_handle_relevant_shortcut_block_invoke()
{
  __atxlog_handle_relevant_shortcut_log = os_log_create("com.apple.duetexpertd.atx", "relevant_shortcut");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevance_model()
{
  if (__atxlog_handle_relevance_model_onceToken != -1)
  {
    __atxlog_handle_relevance_model_cold_1();
  }

  v1 = __atxlog_handle_relevance_model_log;

  return v1;
}

uint64_t ____atxlog_handle_relevance_model_block_invoke()
{
  __atxlog_handle_relevance_model_log = os_log_create("com.apple.duetexpertd.atx", "relevance_model");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_watch()
{
  if (__atxlog_handle_watch_onceToken != -1)
  {
    __atxlog_handle_watch_cold_1();
  }

  v1 = __atxlog_handle_watch_log;

  return v1;
}

uint64_t ____atxlog_handle_watch_block_invoke()
{
  __atxlog_handle_watch_log = os_log_create("com.apple.duetexpertd.atx", "watch");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ui()
{
  if (__atxlog_handle_ui_onceToken != -1)
  {
    __atxlog_handle_ui_cold_1();
  }

  v1 = __atxlog_handle_ui_log;

  return v1;
}

uint64_t ____atxlog_handle_ui_block_invoke()
{
  __atxlog_handle_ui_log = os_log_create("com.apple.duetexpertd.atx", "UI");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending()
{
  if (__atxlog_handle_blending_onceToken != -1)
  {
    __atxlog_handle_blending_cold_1();
  }

  v1 = __atxlog_handle_blending_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_block_invoke()
{
  __atxlog_handle_blending_log = os_log_create("com.apple.duetexpertd.atx", "blending");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_internal_cache()
{
  if (__atxlog_handle_blending_internal_cache_onceToken != -1)
  {
    __atxlog_handle_blending_internal_cache_cold_1();
  }

  v1 = __atxlog_handle_blending_internal_cache_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_internal_cache_block_invoke()
{
  __atxlog_handle_blending_internal_cache_log = os_log_create("com.apple.duetexpertd.atx", "blending_internal_cache");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_ecosystem()
{
  if (__atxlog_handle_blending_ecosystem_onceToken != -1)
  {
    __atxlog_handle_blending_ecosystem_cold_1();
  }

  v1 = __atxlog_handle_blending_ecosystem_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_ecosystem_block_invoke()
{
  __atxlog_handle_blending_ecosystem_log = os_log_create("com.apple.duetexpertd.atx", "blending_ecosystem");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_home_screen()
{
  if (__atxlog_handle_home_screen_onceToken != -1)
  {
    __atxlog_handle_home_screen_cold_1();
  }

  v1 = __atxlog_handle_home_screen_log;

  return v1;
}

uint64_t ____atxlog_handle_home_screen_block_invoke()
{
  __atxlog_handle_home_screen_log = os_log_create("com.apple.duetexpertd.atx", "homescreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_sleep_schedule()
{
  if (__atxlog_handle_sleep_schedule_onceToken != -1)
  {
    __atxlog_handle_sleep_schedule_cold_1();
  }

  v1 = __atxlog_handle_sleep_schedule_log;

  return v1;
}

uint64_t ____atxlog_handle_sleep_schedule_block_invoke()
{
  __atxlog_handle_sleep_schedule_log = os_log_create("com.apple.duetexpertd.atx", "sleepschedule");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_lock_screen()
{
  if (__atxlog_handle_lock_screen_onceToken != -1)
  {
    __atxlog_handle_lock_screen_cold_1();
  }

  v1 = __atxlog_handle_lock_screen_log;

  return v1;
}

uint64_t ____atxlog_handle_lock_screen_block_invoke()
{
  __atxlog_handle_lock_screen_log = os_log_create("com.apple.duetexpertd.atx", "lockscreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_anchor()
{
  if (__atxlog_handle_anchor_onceToken != -1)
  {
    __atxlog_handle_anchor_cold_1();
  }

  v1 = __atxlog_handle_anchor_log;

  return v1;
}

uint64_t ____atxlog_handle_anchor_block_invoke()
{
  __atxlog_handle_anchor_log = os_log_create("com.apple.duetexpertd.atx", "anchor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_prediction()
{
  if (__atxlog_handle_app_prediction_onceToken != -1)
  {
    __atxlog_handle_app_prediction_cold_1();
  }

  v1 = __atxlog_handle_app_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_app_prediction_block_invoke()
{
  __atxlog_handle_app_prediction_log = os_log_create("com.apple.duetexpertd.atx", "app_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_action_prediction()
{
  if (__atxlog_handle_action_prediction_onceToken != -1)
  {
    __atxlog_handle_action_prediction_cold_1();
  }

  v1 = __atxlog_handle_action_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_action_prediction_block_invoke()
{
  __atxlog_handle_action_prediction_log = os_log_create("com.apple.duetexpertd.atx", "action_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_library()
{
  if (__atxlog_handle_app_library_onceToken != -1)
  {
    __atxlog_handle_app_library_cold_1();
  }

  v1 = __atxlog_handle_app_library_log;

  return v1;
}

uint64_t ____atxlog_handle_app_library_block_invoke()
{
  __atxlog_handle_app_library_log = os_log_create("com.apple.duetexpertd.atx", "app_library");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_install()
{
  if (__atxlog_handle_app_install_onceToken != -1)
  {
    __atxlog_handle_app_install_cold_1();
  }

  v1 = __atxlog_handle_app_install_log;

  return v1;
}

uint64_t ____atxlog_handle_app_install_block_invoke()
{
  __atxlog_handle_app_install_log = os_log_create("com.apple.duetexpertd.atx", "app_install");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_backup()
{
  if (__atxlog_handle_backup_onceToken != -1)
  {
    __atxlog_handle_backup_cold_1();
  }

  v1 = __atxlog_handle_backup_log;

  return v1;
}

uint64_t ____atxlog_handle_backup_block_invoke()
{
  __atxlog_handle_backup_log = os_log_create("com.apple.duetexpertd.atx", "backup");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_metrics()
{
  if (__atxlog_handle_metrics_onceToken != -1)
  {
    __atxlog_handle_metrics_cold_1();
  }

  v1 = __atxlog_handle_metrics_log;

  return v1;
}

uint64_t ____atxlog_handle_metrics_block_invoke()
{
  __atxlog_handle_metrics_log = os_log_create("com.apple.duetexpertd.atx", "metrics");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_trial_assets()
{
  if (__atxlog_handle_trial_assets_onceToken != -1)
  {
    __atxlog_handle_trial_assets_cold_1();
  }

  v1 = __atxlog_handle_trial_assets_log;

  return v1;
}

uint64_t ____atxlog_handle_trial_assets_block_invoke()
{
  __atxlog_handle_trial_assets_log = os_log_create("com.apple.duetexpertd.atx", "trial_assets");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_management()
{
  if (__atxlog_handle_notification_management_onceToken != -1)
  {
    __atxlog_handle_notification_management_cold_1();
  }

  v1 = __atxlog_handle_notification_management_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_management_block_invoke()
{
  __atxlog_handle_notification_management_log = os_log_create("com.apple.duetexpertd.atx", "notification_management");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_actions()
{
  if (__atxlog_handle_contextual_actions_onceToken != -1)
  {
    __atxlog_handle_contextual_actions_cold_1();
  }

  v1 = __atxlog_handle_contextual_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_actions_block_invoke()
{
  __atxlog_handle_contextual_actions_log = os_log_create("com.apple.duetexpertd.atx", "contextual_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_intents_helper()
{
  if (__atxlog_handle_intents_helper_onceToken != -1)
  {
    __atxlog_handle_intents_helper_cold_1();
  }

  v1 = __atxlog_handle_intents_helper_log;

  return v1;
}

uint64_t ____atxlog_handle_intents_helper_block_invoke()
{
  __atxlog_handle_intents_helper_log = os_log_create("com.apple.duetexpertd.atx", "intents_helper");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_heuristic()
{
  if (__atxlog_handle_context_heuristic_onceToken != -1)
  {
    __atxlog_handle_context_heuristic_cold_1();
  }

  v1 = __atxlog_handle_context_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_context_heuristic_block_invoke()
{
  __atxlog_handle_context_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "context_heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_zkw_hide()
{
  if (__atxlog_handle_zkw_hide_onceToken != -1)
  {
    __atxlog_handle_zkw_hide_cold_1();
  }

  v1 = __atxlog_handle_zkw_hide_log;

  return v1;
}

uint64_t ____atxlog_handle_zkw_hide_block_invoke()
{
  __atxlog_handle_zkw_hide_log = os_log_create("com.apple.duetexpertd.atx", "zkw_hide");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_user_education_suggestions()
{
  if (__atxlog_handle_context_user_education_suggestions_onceToken != -1)
  {
    __atxlog_handle_context_user_education_suggestions_cold_1();
  }

  v1 = __atxlog_handle_context_user_education_suggestions_log;

  return v1;
}

uint64_t ____atxlog_handle_context_user_education_suggestions_block_invoke()
{
  __atxlog_handle_context_user_education_suggestions_log = os_log_create("com.apple.duetexpertd.atx", "user_education_suggestions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_time_intelligence()
{
  if (__atxlog_handle_time_intelligence_onceToken != -1)
  {
    __atxlog_handle_time_intelligence_cold_1();
  }

  v1 = __atxlog_handle_time_intelligence_log;

  return v1;
}

uint64_t ____atxlog_handle_time_intelligence_block_invoke()
{
  __atxlog_handle_time_intelligence_log = os_log_create("com.apple.duetexpertd.atx", "time");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_engine()
{
  if (__atxlog_handle_contextual_engine_onceToken != -1)
  {
    __atxlog_handle_contextual_engine_cold_1();
  }

  v1 = __atxlog_handle_contextual_engine_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_engine_block_invoke()
{
  __atxlog_handle_contextual_engine_log = os_log_create("com.apple.duetexpertd.atx", "contextualengine");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_usage_insights()
{
  if (__atxlog_handle_usage_insights_onceToken != -1)
  {
    __atxlog_handle_usage_insights_cold_1();
  }

  v1 = __atxlog_handle_usage_insights_log;

  return v1;
}

uint64_t ____atxlog_handle_usage_insights_block_invoke()
{
  __atxlog_handle_usage_insights_log = os_log_create("com.apple.duetexpertd.atx", "usage_insights");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_categorization()
{
  if (__atxlog_handle_notification_categorization_onceToken != -1)
  {
    __atxlog_handle_notification_categorization_cold_1();
  }

  v1 = __atxlog_handle_notification_categorization_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_categorization_block_invoke()
{
  __atxlog_handle_notification_categorization_log = os_log_create("com.apple.duetexpertd.atx", "notification_categorization");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_settings_actions()
{
  if (__atxlog_handle_settings_actions_onceToken != -1)
  {
    __atxlog_handle_settings_actions_cold_1();
  }

  v1 = __atxlog_handle_settings_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_settings_actions_block_invoke()
{
  __atxlog_handle_settings_actions_log = os_log_create("com.apple.duetexpertd.atx", "settings_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_client_donations()
{
  if (__atxlog_handle_client_donations_onceToken != -1)
  {
    __atxlog_handle_client_donations_cold_1();
  }

  v1 = __atxlog_handle_client_donations_log;

  return v1;
}

uint64_t ____atxlog_handle_client_donations_block_invoke()
{
  __atxlog_handle_client_donations_log = os_log_create("com.apple.duetexpertd.atx", "client_donations");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_carPlay_widgets()
{
  if (__atxlog_handle_carPlay_widgets_onceToken != -1)
  {
    __atxlog_handle_carPlay_widgets_cold_1();
  }

  v1 = __atxlog_handle_carPlay_widgets_log;

  return v1;
}

uint64_t ____atxlog_handle_carPlay_widgets_block_invoke()
{
  __atxlog_handle_carPlay_widgets_log = os_log_create("com.apple.duetexpertd.atx", "carPlay");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_screen_entities()
{
  if (__atxlog_handle_screen_entities_onceToken != -1)
  {
    __atxlog_handle_screen_entities_cold_1();
  }

  v1 = __atxlog_handle_screen_entities_log;

  return v1;
}

uint64_t ____atxlog_handle_screen_entities_block_invoke()
{
  __atxlog_handle_screen_entities_log = os_log_create("com.apple.duetexpertd.atx", "screenEntities");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_document_predictor()
{
  if (__atxlog_handle_document_predictor_onceToken != -1)
  {
    __atxlog_handle_document_predictor_cold_1();
  }

  v1 = __atxlog_handle_document_predictor_log;

  return v1;
}

uint64_t ____atxlog_handle_document_predictor_block_invoke()
{
  __atxlog_handle_document_predictor_log = os_log_create("com.apple.duetexpertd.atx", "documentPredictor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ml_inference()
{
  if (__atxlog_handle_ml_inference_onceToken != -1)
  {
    __atxlog_handle_ml_inference_cold_1();
  }

  v1 = __atxlog_handle_ml_inference_log;

  return v1;
}

uint64_t ____atxlog_handle_ml_inference_block_invoke()
{
  __atxlog_handle_ml_inference_log = os_log_create("com.apple.duetexpertd.atx", "inference");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_menu_items()
{
  if (__atxlog_handle_menu_items_onceToken != -1)
  {
    __atxlog_handle_menu_items_cold_1();
  }

  v1 = __atxlog_handle_menu_items_log;

  return v1;
}

uint64_t ____atxlog_handle_menu_items_block_invoke()
{
  __atxlog_handle_menu_items_log = os_log_create("com.apple.duetexpertd.atx", "menuItems");

  return MEMORY[0x2821F96F8]();
}

id ATXNotificationsLoggingInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2851FF958];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_activeSuggestionsWithReply_ argumentIndex:0 ofReply:1];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_logNotificationEvent_notification_ argumentIndex:1 ofReply:0];

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_logNotificationEvent_notification_reason_ argumentIndex:1 ofReply:0];

  v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_logNotificationEvent_notification_reason_interactionUI_ argumentIndex:1 ofReply:0];

  v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:sel_logNotificationGroupEvent_eventIdentifier_ argumentIndex:1 ofReply:0];

  v8 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_logNotificationGroupEvent_eventIdentifier_timestamp_ argumentIndex:1 ofReply:0];

  v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_logSuggestionEvent_suggestionType_suggestionIdentifier_timestamp_ argumentIndex:2 ofReply:0];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v0 setClasses:v12 forSelector:sel_logNotificationDeliveryUI_notificationUUIDs_ argumentIndex:1 ofReply:0];

  return v0;
}

void sub_24001D630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void ATXNEventTypeToString_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "ATXNEventTypeToString called with invalid ATXNEventType value of %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ATXNEventTypeFromString_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "ATXNEventTypeFromString called with invalid string %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ATXNSettingResponseToString_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "ATXNSettingResponseToString called with invalid ATXNSettingResponse value of %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ATXNRTOutcomeToSettingResponse_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "ATXNRTOutcomeToSettingResponse called with invalid ATXNotificationsRTOutcome value of %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ATXNSettingResponseToNEvent_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "ATXNSettingResponseToNEvent called with invalid ATXNSettingResponse value of %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}