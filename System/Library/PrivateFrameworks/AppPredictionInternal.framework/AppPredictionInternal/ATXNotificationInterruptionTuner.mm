@interface ATXNotificationInterruptionTuner
- (ATXNotificationInterruptionTuner)init;
- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store;
- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client;
- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client interruptionManager:(id)manager;
- (ATXNotificationInterruptionTuner)initWithNotificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client interruptionManager:(id)manager;
- (BOOL)appWithBundleId:(id)id isRecommendedByAllowListModel:(id)model;
- (BOOL)appWithBundleId:(id)id isRecommendedByDenyListModel:(id)model;
- (BOOL)contactWithIdentifier:(id)identifier isRecommendedByAllowListModel:(id)model;
- (BOOL)contactWithIdentifier:(id)identifier isRecommendedByDenyListModel:(id)model;
- (BOOL)validateNotificationUrgency:(id)urgency;
- (id)activeNotificationSuggestionsForMode:(unint64_t)mode;
- (id)activeNotificationSuggestionsForMode:(unint64_t)mode candidateNotifications:(id)notifications;
- (id)dndModeUUID:(unint64_t)d;
@end

@implementation ATXNotificationInterruptionTuner

- (ATXNotificationInterruptionTuner)init
{
  v3 = objc_alloc(MEMORY[0x277CEB6A0]);
  v4 = +[ATXModeEntityScorerServer sharedInstance];
  v5 = [v3 initWithModeEntityScorerClient:v4];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [(ATXNotificationInterruptionTuner *)self initWithModesModels:v5 notificationSettingsReader:v6 dataStore:v7];

  return v8;
}

- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store
{
  v8 = MEMORY[0x277CEB440];
  storeCopy = store;
  readerCopy = reader;
  modelsCopy = models;
  sharedInstance = [v8 sharedInstance];
  v13 = [(ATXNotificationInterruptionTuner *)self initWithModesModels:modelsCopy notificationSettingsReader:readerCopy dataStore:storeCopy modeConfigClient:sharedInstance];

  return v13;
}

- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client
{
  v10 = MEMORY[0x277CEB5F0];
  clientCopy = client;
  storeCopy = store;
  readerCopy = reader;
  modelsCopy = models;
  v15 = [[v10 alloc] initWithModesModels:modelsCopy notificationSettingsReader:readerCopy modeConfigurationClient:clientCopy];
  v16 = [(ATXNotificationInterruptionTuner *)self initWithModesModels:modelsCopy notificationSettingsReader:readerCopy dataStore:storeCopy modeConfigClient:clientCopy interruptionManager:v15];

  return v16;
}

- (ATXNotificationInterruptionTuner)initWithModesModels:(id)models notificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client interruptionManager:(id)manager
{
  modelsCopy = models;
  readerCopy = reader;
  storeCopy = store;
  clientCopy = client;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = ATXNotificationInterruptionTuner;
  v17 = [(ATXNotificationInterruptionTuner *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_modesModels, models);
    objc_storeStrong(&v18->_notificationSettingsReader, reader);
    objc_storeStrong(&v18->_dataStore, store);
    objc_storeStrong(&v18->_modeConfigClient, client);
    mEMORY[0x277CEB710] = [MEMORY[0x277CEB710] sharedInstance];
    constants = v18->_constants;
    v18->_constants = mEMORY[0x277CEB710];

    objc_storeStrong(&v18->_interruptionManager, manager);
  }

  return v18;
}

- (ATXNotificationInterruptionTuner)initWithNotificationSettingsReader:(id)reader dataStore:(id)store modeConfigClient:(id)client interruptionManager:(id)manager
{
  readerCopy = reader;
  storeCopy = store;
  clientCopy = client;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = ATXNotificationInterruptionTuner;
  v15 = [(ATXNotificationInterruptionTuner *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notificationSettingsReader, reader);
    objc_storeStrong(&v16->_dataStore, store);
    objc_storeStrong(&v16->_modeConfigClient, client);
    mEMORY[0x277CEB710] = [MEMORY[0x277CEB710] sharedInstance];
    constants = v16->_constants;
    v16->_constants = mEMORY[0x277CEB710];

    objc_storeStrong(&v16->_interruptionManager, manager);
  }

  return v16;
}

- (id)activeNotificationSuggestionsForMode:(unint64_t)mode
{
  v5 = [(ATXNotificationAndSuggestionDatastore *)self->_dataStore getTopOfProminentStackNotificationsWithLimit:10];
  v6 = [(ATXNotificationAndSuggestionDatastore *)self->_dataStore getTopOfNonProminentStackNotificationsWithLimit:10];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];
  v8 = [(ATXNotificationInterruptionTuner *)self activeNotificationSuggestionsForMode:mode candidateNotifications:v7];

  return v8;
}

- (id)activeNotificationSuggestionsForMode:(unint64_t)mode candidateNotifications:(id)notifications
{
  v229 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  if (mode <= 0xF && ((1 << mode) & 0xB021) != 0)
  {
    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_4;
  }

  v142 = notificationsCopy;
  modeCopy = mode;
  v10 = [(ATXNotificationInterruptionTuner *)self dndModeUUID:mode];
  if (v10)
  {
    v137 = objc_opt_new();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v210[0] = MEMORY[0x277D85DD0];
    v210[1] = 3221225472;
    v210[2] = __96__ATXNotificationInterruptionTuner_activeNotificationSuggestionsForMode_candidateNotifications___block_invoke;
    v210[3] = &unk_278598640;
    v158 = dictionary;
    v211 = v158;
    v157 = dictionary2;
    v212 = v157;
    [v142 enumerateObjectsUsingBlock:v210];
    v209 = 0;
    v165 = v10;
    v13 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader applicationConfigurationTypeForDNDModeUUID:v10 success:&v209];
    selfCopy = self;
    if (v209 != 1)
    {
      v38 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:v38 candidateNotifications:?];
      }

      v7 = v137;
      v39 = v10;
LABEL_88:

      v209 = 0;
      v71 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader senderConfigurationTypeForDNDModeUUID:v39 success:&v209];
      if (v209 != 1)
      {
        v99 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          [ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:v99 candidateNotifications:?];
        }

        goto LABEL_177;
      }

      v136 = v71;
      if (![v157 count])
      {
        v99 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v220 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
          _os_log_impl(&dword_2263AA000, v99, OS_LOG_TYPE_DEFAULT, "%s: None of the notifications had associated contacts, so not returning any contact suggestions", buf, 0xCu);
        }

        goto LABEL_177;
      }

      interruptionManager = self->_interruptionManager;
      v73 = +[ATXModeEntityScorerServer sharedInstance];
      v74 = [v73 rankedContactsForMode:modeCopy options:1];
      v75 = [(ATXInterruptionManager *)interruptionManager recommendedAllowedContactsForContactScores:v74];

      v156 = [(ATXInterruptionManager *)self->_interruptionManager recommendedDeniedContactsForMode:modeCopy options:1];
      v167 = objc_opt_new();
      v141 = v75;
      if (v136 == 2)
      {
        v76 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v122 = ATXModeToString();
          v123 = DNDStringFromConfigurationType();
          *buf = 136315650;
          v220 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
          v221 = 2114;
          v222 = v122;
          v223 = 2114;
          v224 = v123;
          _os_log_impl(&dword_2263AA000, v76, OS_LOG_TYPE_DEFAULT, "%s: Not returning any notification adjacent suggestions for contacts because mode: %{public}@ is in an unconfigured state: %{public}@", buf, 0x20u);
        }

LABEL_165:

        v124 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
        {
          v125 = [v167 count];
          v126 = DNDStringFromConfigurationType();
          *buf = 136315650;
          v220 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
          v221 = 2048;
          v222 = v125;
          v223 = 2112;
          v224 = v126;
          _os_log_impl(&dword_2263AA000, v124, OS_LOG_TYPE_INFO, "%s: Created %ld contact suggestions for DND configuration type: %@", buf, 0x20u);
        }

        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        v127 = v167;
        v128 = [v127 countByEnumeratingWithState:&v169 objects:v213 count:16];
        if (v128)
        {
          v129 = v128;
          v130 = *v170;
          do
          {
            for (i = 0; i != v129; ++i)
            {
              if (*v170 != v130)
              {
                objc_enumerationMutation(v127);
              }

              v132 = *(*(&v169 + 1) + 8 * i);
              v133 = __atxlog_handle_notification_management();
              if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v220 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
                v221 = 2112;
                v222 = v132;
                _os_log_debug_impl(&dword_2263AA000, v133, OS_LOG_TYPE_DEBUG, "%s: %@", buf, 0x16u);
              }
            }

            v129 = [v127 countByEnumeratingWithState:&v169 objects:v213 count:16];
          }

          while (v129);
        }

        v7 = v137;
        [v137 addObjectsFromArray:v127];

        v99 = v141;
LABEL_177:

        v10 = v165;
        goto LABEL_178;
      }

      if (v136 != 1)
      {
        if (!v136)
        {
          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v76 = v75;
          v77 = [v76 countByEnumeratingWithState:&v185 objects:v217 count:16];
          if (!v77)
          {
            goto LABEL_165;
          }

          v79 = v77;
          v80 = *v186;
          *&v78 = 138412290;
          v134 = v78;
          v152 = v76;
          v139 = *v186;
          while (1)
          {
            v81 = 0;
            v144 = v79;
            do
            {
              if (*v186 != v80)
              {
                objc_enumerationMutation(v76);
              }

              v82 = *(*(&v185 + 1) + 8 * v81);
              if (v82)
              {
                cnContactId = [v82 cnContactId];
                if (cnContactId)
                {
                  if ([(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader contactIsOnAllowList:cnContactId dndModeUUID:v165])
                  {
                    logb = __atxlog_handle_notification_management();
                    if (os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = v134;
                      v220 = cnContactId;
                      _os_log_debug_impl(&dword_2263AA000, logb, OS_LOG_TYPE_DEBUG, "Not suggesting contact: %@ for allow list because it's already there", buf, 0xCu);
                    }

                    goto LABEL_120;
                  }

                  if (![(ATXNotificationInterruptionTuner *)self contactWithIdentifier:cnContactId isRecommendedByDenyListModel:v156])
                  {
                    v183 = 0u;
                    v184 = 0u;
                    v181 = 0u;
                    v182 = 0u;
                    logb = [v157 objectForKeyedSubscript:cnContactId];
                    v85 = [logb countByEnumeratingWithState:&v181 objects:v216 count:16];
                    if (!v85)
                    {
                      goto LABEL_120;
                    }

                    v86 = v85;
                    v149 = v81;
                    v87 = *v182;
                    v89 = logb;
                    v88 = v165;
                    while (1)
                    {
                      for (j = 0; j != v86; ++j)
                      {
                        if (*v182 != v87)
                        {
                          objc_enumerationMutation(v89);
                        }

                        v91 = *(*(&v181 + 1) + 8 * j);
                        bundleID = [v91 bundleID];
                        if ([(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader appIsOnAllowList:bundleID dndModeUUID:v88])
                        {
                          v93 = __atxlog_handle_notification_management();
                          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138412546;
                            v220 = cnContactId;
                            v221 = 2112;
                            v222 = bundleID;
                            _os_log_impl(&dword_2263AA000, v93, OS_LOG_TYPE_INFO, "Not suggesting contact: %@ because app: %@ is already allowed so no reason to suggest allowing the contact as well.", buf, 0x16u);
                          }
                        }

                        else
                        {
                          if (![(ATXNotificationInterruptionTuner *)self validateNotificationUrgency:v91])
                          {
                            goto LABEL_117;
                          }

                          v93 = [objc_alloc(MEMORY[0x277CEB5F8]) initWithSuggestionType:1];
                          v94 = objc_alloc(MEMORY[0x277CEB6F0]);
                          v95 = objc_opt_new();
                          v96 = objc_opt_new();
                          uuid = [v91 uuid];
                          v98 = [v94 initWithInterruptionManagerTuningSuggestion:v93 scope:3 entityIdentifier:cnContactId uuid:v95 timestamp:v96 triggerNotificationUUID:uuid];

                          self = selfCopy;
                          v88 = v165;
                          [v167 addObject:v98];

                          v89 = logb;
                        }

LABEL_117:
                      }

                      v86 = [v89 countByEnumeratingWithState:&v181 objects:v216 count:16];
                      if (!v86)
                      {
                        v81 = v149;
                        v76 = v152;
                        v80 = v139;
                        v79 = v144;
                        goto LABEL_120;
                      }
                    }
                  }
                }

                else
                {
                  v84 = __atxlog_handle_notification_management();
                  logb = v84;
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v220 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
                    _os_log_impl(&dword_2263AA000, v84, OS_LOG_TYPE_INFO, "%s: Contact doesn't have a cnContactId. Skipping.", buf, 0xCu);
                  }

LABEL_120:
                }
              }

              ++v81;
            }

            while (v81 != v79);
            v79 = [v76 countByEnumeratingWithState:&v185 objects:v217 count:16];
            if (!v79)
            {
              goto LABEL_165;
            }
          }
        }

        v76 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:v136 candidateNotifications:v76];
        }

        goto LABEL_165;
      }

      v179 = 0u;
      v180 = 0u;
      v177 = 0u;
      v178 = 0u;
      v76 = v156;
      v100 = [v76 countByEnumeratingWithState:&v177 objects:v215 count:16];
      if (!v100)
      {
        goto LABEL_165;
      }

      v102 = v100;
      v103 = *v178;
      *&v101 = 138412290;
      v135 = v101;
      v153 = v76;
      v140 = *v178;
LABEL_131:
      v104 = 0;
      v145 = v102;
      while (1)
      {
        if (*v178 != v103)
        {
          objc_enumerationMutation(v76);
        }

        v105 = *(*(&v177 + 1) + 8 * v104);
        if (!v105)
        {
          goto LABEL_158;
        }

        cnContactId2 = [v105 cnContactId];
        if (!cnContactId2)
        {
          v107 = __atxlog_handle_notification_management();
          logc = v107;
          if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v220 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
            _os_log_impl(&dword_2263AA000, v107, OS_LOG_TYPE_INFO, "%s: Contact doesn't have a cnContactId. Skipping.", buf, 0xCu);
          }

          goto LABEL_156;
        }

        if ([(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader contactIsOnDenyList:cnContactId2 dndModeUUID:v165])
        {
          logc = __atxlog_handle_notification_management();
          if (os_log_type_enabled(logc, OS_LOG_TYPE_DEBUG))
          {
            *buf = v135;
            v220 = cnContactId2;
            _os_log_debug_impl(&dword_2263AA000, logc, OS_LOG_TYPE_DEBUG, "Not suggesting contact: %@ for deny list because it's already there", buf, 0xCu);
          }

LABEL_156:

          goto LABEL_157;
        }

        if (![(ATXNotificationInterruptionTuner *)self contactWithIdentifier:cnContactId2 isRecommendedByAllowListModel:v75])
        {
          break;
        }

LABEL_157:

LABEL_158:
        if (++v104 == v102)
        {
          v102 = [v76 countByEnumeratingWithState:&v177 objects:v215 count:16];
          if (!v102)
          {
            goto LABEL_165;
          }

          goto LABEL_131;
        }
      }

      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      logc = [v157 objectForKeyedSubscript:cnContactId2];
      v108 = [logc countByEnumeratingWithState:&v173 objects:v214 count:16];
      if (!v108)
      {
        goto LABEL_156;
      }

      v109 = v108;
      v150 = v104;
      v110 = *v174;
      v112 = logc;
      v111 = v165;
LABEL_144:
      v113 = 0;
      while (1)
      {
        if (*v174 != v110)
        {
          objc_enumerationMutation(v112);
        }

        v114 = *(*(&v173 + 1) + 8 * v113);
        bundleID2 = [v114 bundleID];
        if ([(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader appIsOnDenyList:bundleID2 dndModeUUID:v111])
        {
          break;
        }

        if ([(ATXNotificationInterruptionTuner *)self validateNotificationUrgency:v114])
        {
          v116 = [objc_alloc(MEMORY[0x277CEB5F8]) initWithSuggestionType:3];
          v117 = objc_alloc(MEMORY[0x277CEB6F0]);
          v118 = objc_opt_new();
          v119 = objc_opt_new();
          uuid2 = [v114 uuid];
          v121 = [v117 initWithInterruptionManagerTuningSuggestion:v116 scope:3 entityIdentifier:cnContactId2 uuid:v118 timestamp:v119 triggerNotificationUUID:uuid2];

          v111 = v165;
          self = selfCopy;
          [v167 addObject:v121];

          v112 = logc;
LABEL_152:
        }

        if (v109 == ++v113)
        {
          v109 = [v112 countByEnumeratingWithState:&v173 objects:v214 count:16];
          if (!v109)
          {
            v103 = v140;
            v75 = v141;
            v104 = v150;
            v76 = v153;
            v102 = v145;
            goto LABEL_156;
          }

          goto LABEL_144;
        }
      }

      v116 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v220 = cnContactId2;
        v221 = 2112;
        v222 = bundleID2;
        _os_log_impl(&dword_2263AA000, v116, OS_LOG_TYPE_INFO, "Not suggesting contact: %@ because app: %@ is already denied so no reason to suggest denying the contact as well.", buf, 0x16u);
      }

      goto LABEL_152;
    }

    v138 = v13;
    v14 = [(ATXInterruptionManager *)self->_interruptionManager recommendedAllowedAppsForMode:modeCopy];
    v15 = [(ATXInterruptionManager *)self->_interruptionManager recommendedDeniedAppsForMode:modeCopy];
    v166 = objc_opt_new();
    v151 = v14;
    v146 = v15;
    if (v138 == 2)
    {
      v16 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v59 = ATXModeToString();
        v60 = DNDStringFromConfigurationType();
        *buf = 136315650;
        v220 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
        v221 = 2114;
        v222 = v59;
        v223 = 2114;
        v224 = v60;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "%s: Not returning any notification adjacent suggestions for apps because mode: %{public}@ is in an unconfigured state: %{public}@", buf, 0x20u);
      }

LABEL_76:

      v61 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = [v166 count];
        v63 = DNDStringFromConfigurationType();
        *buf = 136315650;
        v220 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
        v221 = 2048;
        v222 = v62;
        v223 = 2112;
        v224 = v63;
        _os_log_impl(&dword_2263AA000, v61, OS_LOG_TYPE_INFO, "%s: Created %ld app suggestions for DND configuration type: %@", buf, 0x20u);
      }

      v191 = 0u;
      v192 = 0u;
      v189 = 0u;
      v190 = 0u;
      v64 = v166;
      v65 = [v64 countByEnumeratingWithState:&v189 objects:v218 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v190;
        do
        {
          for (k = 0; k != v66; ++k)
          {
            if (*v190 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v69 = *(*(&v189 + 1) + 8 * k);
            v70 = __atxlog_handle_notification_management();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v220 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
              v221 = 2112;
              v222 = v69;
              _os_log_debug_impl(&dword_2263AA000, v70, OS_LOG_TYPE_DEBUG, "%s: %@", buf, 0x16u);
            }
          }

          v66 = [v64 countByEnumeratingWithState:&v189 objects:v218 count:16];
        }

        while (v66);
      }

      v7 = v137;
      [v137 addObjectsFromArray:v64];

      v39 = v165;
      self = selfCopy;
      v38 = v151;
      goto LABEL_88;
    }

    if (v138 != 1)
    {
      if (!v138)
      {
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v205 objects:v228 count:16];
        if (!v17)
        {
          goto LABEL_76;
        }

        v18 = v17;
        v19 = *v206;
        v159 = v16;
        v147 = *v206;
        while (1)
        {
          v20 = 0;
          v154 = v18;
          do
          {
            if (*v206 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v205 + 1) + 8 * v20);
            if (v21)
            {
              bundleId = [v21 bundleId];
              if ([(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader appIsOnAllowList:bundleId dndModeUUID:v165])
              {
                v23 = __atxlog_handle_notification_management();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v220 = bundleId;
                  v24 = v23;
                  v25 = "Not suggesting app: %@ for allow list because it's already there";
                  goto LABEL_21;
                }

                goto LABEL_37;
              }

              if (![(ATXNotificationInterruptionTuner *)self appWithBundleId:bundleId isRecommendedByDenyListModel:v15])
              {
                if ([(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader doesAppSendNotificationsToDigest:bundleId])
                {
                  v23 = __atxlog_handle_notification_management();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v220 = bundleId;
                    v24 = v23;
                    v25 = "Not suggesting app: %@ for allow list because app is configured to go to digest";
LABEL_21:
                    _os_log_debug_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEBUG, v25, buf, 0xCu);
                  }
                }

                else
                {
                  v203 = 0u;
                  v204 = 0u;
                  v201 = 0u;
                  v202 = 0u;
                  v26 = bundleId;
                  v23 = [v158 objectForKeyedSubscript:bundleId];
                  v27 = [v23 countByEnumeratingWithState:&v201 objects:v227 count:16];
                  if (v27)
                  {
                    v28 = v27;
                    log = v20;
                    v29 = *v202;
                    do
                    {
                      for (m = 0; m != v28; ++m)
                      {
                        if (*v202 != v29)
                        {
                          objc_enumerationMutation(v23);
                        }

                        v31 = *(*(&v201 + 1) + 8 * m);
                        if ([(ATXNotificationInterruptionTuner *)self validateNotificationUrgency:v31])
                        {
                          v32 = [objc_alloc(MEMORY[0x277CEB5F8]) initWithSuggestionType:1];
                          v33 = objc_alloc(MEMORY[0x277CEB6F0]);
                          v34 = objc_opt_new();
                          v35 = objc_opt_new();
                          uuid3 = [v31 uuid];
                          v37 = [v33 initWithInterruptionManagerTuningSuggestion:v32 scope:1 entityIdentifier:v26 uuid:v34 timestamp:v35 triggerNotificationUUID:uuid3];

                          [v166 addObject:v37];
                          self = selfCopy;
                        }
                      }

                      v28 = [v23 countByEnumeratingWithState:&v201 objects:v227 count:16];
                    }

                    while (v28);
                    v15 = v146;
                    v16 = v159;
                    v19 = v147;
                    v18 = v154;
                    v20 = log;
                  }

                  bundleId = v26;
                }

LABEL_37:
              }
            }

            v20 = (v20 + 1);
          }

          while (v20 != v18);
          v18 = [v16 countByEnumeratingWithState:&v205 objects:v228 count:16];
          if (!v18)
          {
            goto LABEL_76;
          }
        }
      }

      v16 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:v138 candidateNotifications:v16];
      }

      goto LABEL_76;
    }

    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v16 = v15;
    v40 = [v16 countByEnumeratingWithState:&v197 objects:v226 count:16];
    if (!v40)
    {
      goto LABEL_76;
    }

    v41 = v40;
    v42 = *v198;
    v43 = v165;
    v160 = v16;
    v148 = *v198;
LABEL_48:
    v44 = 0;
    v155 = v41;
    while (1)
    {
      if (*v198 != v42)
      {
        objc_enumerationMutation(v16);
      }

      v45 = *(*(&v197 + 1) + 8 * v44);
      if (!v45)
      {
        goto LABEL_69;
      }

      bundleId2 = [v45 bundleId];
      if ([(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader appIsOnDenyList:bundleId2 dndModeUUID:v43])
      {
        break;
      }

      if (![(ATXNotificationInterruptionTuner *)self appWithBundleId:bundleId2 isRecommendedByAllowListModel:v14])
      {
        loga = v44;
        v195 = 0u;
        v196 = 0u;
        v193 = 0u;
        v194 = 0u;
        v47 = [v158 objectForKeyedSubscript:bundleId2];
        v48 = [v47 countByEnumeratingWithState:&v193 objects:v225 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v194;
          do
          {
            for (n = 0; n != v49; ++n)
            {
              if (*v194 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v193 + 1) + 8 * n);
              if ([(ATXNotificationInterruptionTuner *)self validateNotificationUrgency:v52])
              {
                v53 = [objc_alloc(MEMORY[0x277CEB5F8]) initWithSuggestionType:3];
                v54 = objc_alloc(MEMORY[0x277CEB6F0]);
                v55 = objc_opt_new();
                v56 = objc_opt_new();
                uuid4 = [v52 uuid];
                v58 = [v54 initWithInterruptionManagerTuningSuggestion:v53 scope:1 entityIdentifier:bundleId2 uuid:v55 timestamp:v56 triggerNotificationUUID:uuid4];

                self = selfCopy;
                [v166 addObject:v58];
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v193 objects:v225 count:16];
          }

          while (v49);
          v43 = v165;
          v42 = v148;
          v14 = v151;
          v16 = v160;
          v41 = v155;
        }

        v44 = loga;
        goto LABEL_67;
      }

LABEL_68:

LABEL_69:
      v44 = (v44 + 1);
      if (v44 == v41)
      {
        v41 = [v16 countByEnumeratingWithState:&v197 objects:v226 count:16];
        if (!v41)
        {
          goto LABEL_76;
        }

        goto LABEL_48;
      }
    }

    v47 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v220 = bundleId2;
      _os_log_debug_impl(&dword_2263AA000, v47, OS_LOG_TYPE_DEBUG, "Not suggesting app: %@ for deny list because it's already there", buf, 0xCu);
    }

LABEL_67:

    goto LABEL_68;
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_178:

  notificationsCopy = v142;
LABEL_4:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __96__ATXNotificationInterruptionTuner_activeNotificationSuggestionsForMode_candidateNotifications___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 bundleID];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

    if (!v4)
    {
      v5 = objc_opt_new();
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v3];
    }

    v6 = [*(a1 + 32) objectForKeyedSubscript:v3];
    [v6 addObject:v13];
  }

  v7 = [objc_alloc(MEMORY[0x277CEB720]) initWithUserNotification:v13];
  v8 = [v7 contactEntity];
  v9 = [v8 cnContactId];

  if (v9)
  {
    v10 = [*(a1 + 40) objectForKeyedSubscript:v9];

    if (!v10)
    {
      v11 = objc_opt_new();
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v9];
    }

    v12 = [*(a1 + 40) objectForKeyedSubscript:v9];
    [v12 addObject:v13];
  }
}

- (BOOL)validateNotificationUrgency:(id)urgency
{
  urgencyCopy = urgency;
  if ([urgencyCopy urgency] && objc_msgSend(urgencyCopy, "urgency") != 1)
  {
    v5 = 1;
  }

  else
  {
    v4 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(ATXNotificationInterruptionTuner *)urgencyCopy validateNotificationUrgency:v4];
    }

    v5 = 0;
  }

  return v5;
}

- (id)dndModeUUID:(unint64_t)d
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(ATXDNDModeConfigurationClient *)self->_modeConfigClient dndModeForATXMode:?];
  if (!v3)
  {
    v4 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = ATXModeToString();
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Unable to retrieve dndModeUUID for ATXMode: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)appWithBundleId:(id)id isRecommendedByAllowListModel:(id)model
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  modelCopy = model;
  v7 = [modelCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(modelCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        bundleId = [v10 bundleId];
        if (bundleId)
        {
          v12 = bundleId;
          bundleId2 = [v10 bundleId];
          v14 = [bundleId2 isEqualToString:idCopy];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [modelCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)appWithBundleId:(id)id isRecommendedByDenyListModel:(id)model
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  modelCopy = model;
  v7 = [modelCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(modelCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        bundleId = [v10 bundleId];
        if (bundleId)
        {
          v12 = bundleId;
          bundleId2 = [v10 bundleId];
          v14 = [bundleId2 isEqualToString:idCopy];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [modelCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)contactWithIdentifier:(id)identifier isRecommendedByAllowListModel:(id)model
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  modelCopy = model;
  v7 = [modelCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(modelCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        cnContactId = [v10 cnContactId];
        if (cnContactId)
        {
          v12 = cnContactId;
          cnContactId2 = [v10 cnContactId];
          v14 = [cnContactId2 isEqualToString:identifierCopy];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [modelCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)contactWithIdentifier:(id)identifier isRecommendedByDenyListModel:(id)model
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  modelCopy = model;
  v7 = [modelCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(modelCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        cnContactId = [v10 cnContactId];
        if (cnContactId)
        {
          v12 = cnContactId;
          cnContactId2 = [v10 cnContactId];
          v14 = [cnContactId2 isEqualToString:identifierCopy];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [modelCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)activeNotificationSuggestionsForMode:(os_log_t)log candidateNotifications:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Failed to get the DND allow/silence list configuration for apps", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)activeNotificationSuggestionsForMode:(uint64_t)a1 candidateNotifications:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unknown configuration type: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)activeNotificationSuggestionsForMode:(os_log_t)log candidateNotifications:.cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXNotificationInterruptionTuner activeNotificationSuggestionsForMode:candidateNotifications:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Failed to get the DND allow/silence list configuration for contacts", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)validateNotificationUrgency:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleID];
  v5 = 136315394;
  v6 = "[ATXNotificationInterruptionTuner validateNotificationUrgency:]";
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Not sending suggestion for critical/time sensitive notification from app: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end