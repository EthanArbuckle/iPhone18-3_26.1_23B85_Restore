@interface ANDefaults
+ (id)sharedInstance;
- (ANDefaults)init;
- (BOOL)BOOLForDefault:(id)default;
- (id)numberForDefault:(id)default;
- (id)objectForDefault:(id)default;
@end

@implementation ANDefaults

- (ANDefaults)init
{
  v67[56] = *MEMORY[0x277D85DE8];
  v65.receiver = self;
  v65.super_class = ANDefaults;
  v2 = [(ANDefaults *)&v65 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.announce"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v66[0] = @"announce_enabled";
    v64 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Announce Enabled for the Local Device (Only valid when HPSFeatureStatus.isLocalSettingsEnabled == true)"];
    v67[0] = v64;
    v66[1] = @"announcement_receipt_expiration";
    v63 = [ANDefaultsItem itemWithValue:&unk_2836E1E88 userInfo:@"[Int] Announcement Receipt Expiration in Seconds"];
    v67[1] = v63;
    v66[2] = @"ids_server_message_timeout";
    v62 = [ANDefaultsItem itemWithValue:&unk_2836E1DB0 userInfo:@"[Int] IDS Server Message Timeout in Seconds"];
    v67[2] = v62;
    v66[3] = @"announcement_user_notification_expiration";
    v61 = [ANDefaultsItem itemWithValue:&unk_2836E1E98 userInfo:@"[Int] Announcement User Notification Expiration in Seconds"];
    v67[3] = v61;
    v66[4] = @"allow_announcement_to_accessory_physically_in_target_home";
    v60 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Allow Announcements to Accessory if the Accessory is physically located in the target home"];
    v67[4] = v60;
    v66[5] = @"relay_announcements_through_resident";
    v59 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Relay Announcements through a Resident HomePod"];
    v67[5] = v59;
    v66[6] = @"send_transaction_active_memory_timeout";
    v58 = [ANDefaultsItem itemWithValue:&unk_2836E1EA8 userInfo:@"[Double] How long (in seconds) to stay in active memory when sending an announcement"];
    v67[6] = v58;
    v66[7] = @"use_rapport";
    v57 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Use Rapport (when available) in addition to IDS"];
    v67[7] = v57;
    v66[8] = @"rapport_scan_timeout";
    v56 = [ANDefaultsItem itemWithValue:&unk_2836E1EB8 userInfo:@"[Double] How long to wait after starting a scan before checking active devices"];
    v67[8] = v56;
    v66[9] = @"rapport_scan_duration";
    v55 = [ANDefaultsItem itemWithValue:&unk_2836E1EC8 userInfo:@"[Double] How long to continue scanning before deactivating the link client"];
    v67[9] = v55;
    v66[10] = @"rapport_scan_interval";
    v54 = [ANDefaultsItem itemWithValue:&unk_2836E1EA8 userInfo:@"[Double] How often to scan for devices"];
    v67[10] = v54;
    v66[11] = @"rapport_send_message_timeout";
    v53 = [ANDefaultsItem itemWithValue:&unk_2836E1ED8 userInfo:@"[Double] Send Message Timeout"];
    v67[11] = v53;
    v66[12] = @"rapport_send_home_location_status_request_timeout";
    v52 = [ANDefaultsItem itemWithValue:&unk_2836E1EE8 userInfo:@"[Double] Send Home Location Status Request Timeout in seconds"];
    v67[12] = v52;
    v66[13] = @"announcement_deadline";
    v51 = [ANDefaultsItem itemWithValue:&unk_2836E1EF8 userInfo:@"[Double] Announcement deadline"];
    v67[13] = v51;
    v66[14] = @"announcement_playback_minimum_delay";
    v50 = [ANDefaultsItem itemWithValue:&unk_2836E1EE8 userInfo:@"[Double] Minimum Delay Before Playing an Announcement in seconds"];
    v67[14] = v50;
    v66[15] = @"silence_between_tracks_ms";
    v49 = [ANDefaultsItem itemWithValue:&unk_2836E1DE0 userInfo:@"[Int] Silence to insert between each track in milliseconds"];
    v67[15] = v49;
    v66[16] = @"previous_goes_to_previous_ms";
    v48 = [ANDefaultsItem itemWithValue:&unk_2836E1DF8 userInfo:@"[Int] Amount of time into a track where previous goes back to beginning in milliseconds"];
    v67[16] = v48;
    v66[17] = @"start_tone_trim";
    v47 = [ANDefaultsItem itemWithValue:&unk_2836E1F08 userInfo:@"[Double] Amount to trim off the start tone tail in seconds"];
    v67[17] = v47;
    v66[18] = @"transition_tone_trim";
    v46 = [ANDefaultsItem itemWithValue:&unk_2836E1F18 userInfo:@"[Double] Amount to trim off the transition tone tail in seconds"];
    v67[18] = v46;
    v66[19] = @"force_allow_announce_for_all_users";
    v45 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Forces Announce Access Allowed to be true for any HMUser"];
    v67[19] = v45;
    v66[20] = @"force_allow_announce_for_all_accessories";
    v44 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Forces Announce Access Allowed to be true for all Accessories"];
    v67[20] = v44;
    v66[21] = @"force_supports_announce_for_all_accessories";
    v43 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Forces Announce Supported to be true for all Accessories"];
    v67[21] = v43;
    v66[22] = @"force_allow_announce_notifications_for_all_users";
    v42 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Forces Announce Notifications for any HMUser"];
    v67[22] = v42;
    v66[23] = @"force_send_failures";
    v41 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Force Announcement Send Failures"];
    v67[23] = v41;
    v66[24] = @"force_delivery_failures";
    v40 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Force Announcement Delivery Failures"];
    v67[24] = v40;
    v66[25] = @"audio_session_wait_for_call_end_timeout";
    v39 = [ANDefaultsItem itemWithValue:&unk_2836E1F28 userInfo:@"[Double] Audio Session Wait For Call End Timeout in Seconds"];
    v67[25] = v39;
    v66[26] = @"audio_session_activation_retry_delay";
    v38 = [ANDefaultsItem itemWithValue:&unk_2836E1F28 userInfo:@"[Double] Audio Session Activation Retry Delay in Seconds"];
    v67[26] = v38;
    v66[27] = @"audio_session_deactivation_timeout";
    v37 = [ANDefaultsItem itemWithValue:&unk_2836E1E10 userInfo:@"[Int] Audio Session Deactivation Timeout in Seconds"];
    v67[27] = v37;
    v66[28] = @"audio_session_resume_after_interruption_delay";
    v36 = [ANDefaultsItem itemWithValue:&unk_2836E1F38 userInfo:@"[Double] Audio Session Resume after Interruption Delay in Seconds"];
    v67[28] = v36;
    v66[29] = @"resume_playback_after_interruption_timeout";
    v35 = [ANDefaultsItem itemWithValue:&unk_2836E1EA8 userInfo:@"[Double] Playback Audio Session Interruption Resume Timeout in Seconds"];
    v67[29] = v35;
    v66[30] = @"normalize_audio";
    v34 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Normalize Audio in Announcement before sending"];
    v67[30] = v34;
    v66[31] = @"send_analytics";
    v33 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Fire events to CoreAnalytics"];
    v67[31] = v33;
    v66[32] = @"use_coordinated_alerts";
    v32 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Scan devices to find the best one to prominently alert an Announcement Notification"];
    v67[32] = v32;
    v66[33] = @"announcement_entry_age_limit";
    v31 = [ANDefaultsItem itemWithValue:&unk_2836E1E28 userInfo:@"[Int] An announcement's age in seconds that is considered too old for it to be accepted"];
    v67[33] = v31;
    v66[34] = @"announcement_storage_age_limit";
    v30 = [ANDefaultsItem itemWithValue:&unk_2836E1E40 userInfo:@"[Int] An announcement's age in seconds that is considered too old for it to be kept around"];
    v67[34] = v30;
    v66[35] = @"siri_interruption_stops_playback";
    v29 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Siri should explicitly stop playback. When false, playback will be stopped by audio session interruption."];
    v67[35] = v29;
    v66[36] = @"playback_status_returns_immediately";
    v28 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Return playback status immediately after starting playback"];
    v67[36] = v28;
    v66[37] = @"analytics_daily_background_activity";
    v27 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Start a 24 hour interval to run a background task for collecting daily metrics"];
    v67[37] = v27;
    v66[38] = @"analytics_daily_background_activity_ts";
    v26 = [ANDefaultsItem itemWithValue:&unk_2836E1F48 userInfo:@"[Double] A timestamp of when the activity was last triggered"];
    v67[38] = v26;
    v66[39] = @"daily_home_announcements_count";
    v25 = [ANDefaultsItem itemWithValue:MEMORY[0x277CBEC10] userInfo:@"[NSDictionary] A dictionary of the number of announcements sent/received per home per location group"];
    v67[39] = v25;
    v66[40] = @"use_original_audio_file_on_process_failure";
    v24 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Use Original Audio Files if Audio Processing Fails or produces a bad output"];
    v67[40] = v24;
    v66[41] = @"keep_sent_audio_files";
    v23 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Keep Sent Audio Files"];
    v67[41] = v23;
    v66[42] = @"keep_received_audio_files";
    v22 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Keep Received Audio Files"];
    v67[42] = v22;
    v66[43] = @"play_sound_on_critical_failure";
    v21 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Play a Sound when a critical failure occurs. Useful on HomePod, which does not contain a display"];
    v67[43] = v21;
    v66[44] = @"audio_accessory_db_boost";
    v20 = [ANDefaultsItem itemWithValue:&unk_2836E1F58 userInfo:@"[Float] Playback dB Boost for Audio Accessories"];
    v67[44] = v20;
    v66[45] = @"transcription_timeout";
    v19 = [ANDefaultsItem itemWithValue:&unk_2836E1F68 userInfo:@"[Double] On-device transcription wait timeout in seconds"];
    v67[45] = v19;
    v66[46] = @"user_notification_include_transcription";
    v18 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Include transcription in User Notification Body"];
    v67[46] = v18;
    v66[47] = @"user_notification_unified_banner";
    v5 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Post a single user notification for all announcements for each Home"];
    v67[47] = v5;
    v66[48] = @"user_notification_include_recipients";
    v6 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Include recipients in communication user notificaitons"];
    v67[48] = v6;
    v66[49] = @"enable_save_announcement_meta_data";
    v7 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Enable Save Announcement Meta Data in User Defaults"];
    v67[49] = v7;
    v66[50] = @"check_residents_for_ids";
    v8 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Perform Resident-level checks when sending over IDS"];
    v67[50] = v8;
    v66[51] = @"track_player_playback_timeout";
    v9 = [ANDefaultsItem itemWithValue:&unk_2836E1F78 userInfo:@"[Double] Track Player Playback Timeout Value in seconds"];
    v67[51] = v9;
    v66[52] = @"accessory_settings_refresh_interval";
    v10 = [ANDefaultsItem itemWithValue:&unk_2836E1F88 userInfo:@"[Double] Accessory settings refresh interval in seconds"];
    v67[52] = v10;
    v66[53] = @"accessory_settings_update_timeout";
    v11 = [ANDefaultsItem itemWithValue:&unk_2836E1E58 userInfo:@"[Double] Accessory setting update timeout in seconds"];
    v67[53] = v11;
    v66[54] = @"disable_homekit_caching";
    v12 = [ANDefaultsItem itemWithValue:MEMORY[0x277CBEC28] userInfo:@"[BOOL] Disable HomeKit Caching"];
    v67[54] = v12;
    v66[55] = @"homekit_refresh_timeout";
    v13 = [ANDefaultsItem itemWithValue:&unk_2836E1F28 userInfo:@"[Double] Duration to wait for HomeKit refresh in seconds"];
    v67[55] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:56];
    defaultsItems = v2->_defaultsItems;
    v2->_defaultsItems = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ANDefaults_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedDefaults;

  return v2;
}

uint64_t __28__ANDefaults_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedDefaults = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)objectForDefault:(id)default
{
  defaultCopy = default;
  defaultValue = [(NSUserDefaults *)self->_defaults objectForKey:defaultCopy];
  if (!defaultValue)
  {
    v6 = [(NSDictionary *)self->_defaultsItems objectForKeyedSubscript:defaultCopy];
    defaultValue = [v6 defaultValue];
  }

  return defaultValue;
}

- (id)numberForDefault:(id)default
{
  defaultCopy = default;
  defaultValue = [(NSUserDefaults *)self->_defaults objectForKey:defaultCopy];
  if (!defaultValue)
  {
    v6 = [(NSDictionary *)self->_defaultsItems objectForKeyedSubscript:defaultCopy];
    defaultValue = [v6 defaultValue];
  }

  return defaultValue;
}

- (BOOL)BOOLForDefault:(id)default
{
  defaultCopy = default;
  defaultValue = [(NSUserDefaults *)self->_defaults objectForKey:defaultCopy];
  if (!defaultValue)
  {
    v6 = [(NSDictionary *)self->_defaultsItems objectForKeyedSubscript:defaultCopy];
    defaultValue = [v6 defaultValue];
  }

  bOOLValue = [defaultValue BOOLValue];

  return bOOLValue;
}

@end