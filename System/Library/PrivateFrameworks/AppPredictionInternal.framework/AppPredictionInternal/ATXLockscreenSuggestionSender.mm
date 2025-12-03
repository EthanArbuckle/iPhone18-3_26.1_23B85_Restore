@interface ATXLockscreenSuggestionSender
- (ATXLockscreenSuggestionSender)init;
- (ATXLockscreenSuggestionSender)initWithLockscreenBlacklist:(id)blacklist actionNotificationServer:(id)server userDefaults:(id)defaults;
- (void)_updateCachedExecutableIdentifierWithSuggestion:(id)suggestion;
- (void)blendingLayerDidUpdateLockscreenUICache:(id)cache;
@end

@implementation ATXLockscreenSuggestionSender

- (ATXLockscreenSuggestionSender)init
{
  v3 = +[ATXLockscreenBlacklist sharedInstance];
  v4 = +[ATXActionNotificationServer sharedInstance];
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v7 = [(ATXLockscreenSuggestionSender *)self initWithLockscreenBlacklist:v3 actionNotificationServer:v4 userDefaults:v6];

  return v7;
}

- (ATXLockscreenSuggestionSender)initWithLockscreenBlacklist:(id)blacklist actionNotificationServer:(id)server userDefaults:(id)defaults
{
  blacklistCopy = blacklist;
  serverCopy = server;
  defaultsCopy = defaults;
  v15.receiver = self;
  v15.super_class = ATXLockscreenSuggestionSender;
  v12 = [(ATXLockscreenSuggestionSender *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lockscreenBlacklist, blacklist);
    objc_storeStrong(&v13->_actionNotificationServer, server);
    objc_storeStrong(&v13->_userDefaults, defaults);
  }

  return v13;
}

- (void)blendingLayerDidUpdateLockscreenUICache:(id)cache
{
  v40 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v36 = 138412546;
    v37 = v7;
    v38 = 2112;
    v39 = cacheCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - received new ui cache: %@", &v36, 0x16u);
  }

  allSuggestionsInLayout = [cacheCopy allSuggestionsInLayout];
  firstObject = [allSuggestionsInLayout firstObject];
  executableSpecification = [firstObject executableSpecification];
  executableIdentifier = [executableSpecification executableIdentifier];

  _cachedExecutableIdentifier = [(ATXLockscreenSuggestionSender *)self _cachedExecutableIdentifier];
  [(ATXLockscreenSuggestionSender *)self _updateCachedExecutableIdentifierWithSuggestion:firstObject];
  if (![(ATXLockscreenBlacklist *)self->_lockscreenBlacklist isPredictionGloballyDisabled])
  {
    LOBYTE(v36) = 0;
    v16 = *MEMORY[0x277CEBD00];
    if (CFPreferencesGetAppBooleanValue(@"displayDonationsOnLockscreen", *MEMORY[0x277CEBD00], &v36) || (LOBYTE(v36) = 0, CFPreferencesGetAppBooleanValue(@"displayLastDonationOnCoverSheet", v16, &v36)))
    {
      uuid = __atxlog_handle_blending();
      if (os_log_type_enabled(uuid, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v36 = 138412290;
        v37 = v19;
        _os_log_impl(&dword_2263AA000, uuid, OS_LOG_TYPE_DEFAULT, "%@ - not forwarding predictions to lockscreen because demo or developer switch was on", &v36, 0xCu);
      }

LABEL_11:

      goto LABEL_12;
    }

    if (_cachedExecutableIdentifier)
    {
      v21 = executableIdentifier;
      if (v21)
      {
        v22 = [_cachedExecutableIdentifier isEqualToString:v21];

        if (v22)
        {
          v23 = _cachedExecutableIdentifier;
          goto LABEL_20;
        }
      }

      v24 = __atxlog_handle_blending();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v36 = 138412290;
        v37 = v26;
        _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_INFO, "%@ - revoke needed for old lock screen predictions", &v36, 0xCu);
      }

      [(ATXActionNotificationServer *)self->_actionNotificationServer removeAllActionPredictionNotificationsAndTrackEvent:1 recordFeedback:1];
      v27 = _cachedExecutableIdentifier;
      if (v21)
      {
LABEL_20:
        v28 = [v21 isEqualToString:_cachedExecutableIdentifier];

        if (v28)
        {
          goto LABEL_12;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v29 = __atxlog_handle_blending();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v36 = 138412290;
        v37 = v31;
        _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_INFO, "%@ - revoking, although no old lock screen predictions detected", &v36, 0xCu);
      }

      [(ATXActionNotificationServer *)self->_actionNotificationServer removeAllActionPredictionNotificationsAndTrackEvent:0 recordFeedback:0];
      if (executableIdentifier)
      {
LABEL_25:
        v32 = __atxlog_handle_blending();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v36 = 138412290;
          v37 = v34;
          _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_INFO, "%@ - post needed for new lock screen predictions", &v36, 0xCu);
        }

        actionNotificationServer = self->_actionNotificationServer;
        uuid = [cacheCopy uuid];
        [(ATXActionNotificationServer *)actionNotificationServer postNotificationForProactiveSuggestion:firstObject blendingCacheUpdateUUID:uuid];
        goto LABEL_11;
      }
    }

    goto LABEL_12;
  }

  v13 = __atxlog_handle_blending();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v36 = 138412290;
    v37 = v15;
    _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%@ - not forwarding predictions to lockscreen because predictions are globally disabled", &v36, 0xCu);
  }

  [(ATXActionNotificationServer *)self->_actionNotificationServer removeAllActionPredictionNotificationsAndTrackEvent:0 recordFeedback:0];
LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateCachedExecutableIdentifierWithSuggestion:(id)suggestion
{
  userDefaults = self->_userDefaults;
  executableSpecification = [suggestion executableSpecification];
  executableIdentifier = [executableSpecification executableIdentifier];
  [(NSUserDefaults *)userDefaults setObject:executableIdentifier forKey:@"lockscreen_prediction"];
}

@end