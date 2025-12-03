@interface ATXUserEducationSuggestionExploreFacesServer
- (ATXUserEducationSuggestionExploreFacesServer)initWithConnector:(id)connector;
- (BOOL)shouldNeverShowSuggestionAgain;
- (id)backlightEventSink;
- (id)suggestion;
- (int64_t)gracePeriod;
- (int64_t)maxHour;
- (int64_t)minHour;
- (int64_t)numBacklightOffEventsBeforeDismissSuggestion;
- (int64_t)tryAgainIntervalSeconds;
- (void)backlightEventHandler:(id)handler;
- (void)cancelBacklightEventSubscription;
- (void)scheduleNextTry;
- (void)sendSuggestionWithEventType:(unint64_t)type;
- (void)startUpSubscriberToBacklightBiomeStreamForTheFirstTime;
- (void)startUpSubscriberToBacklightBiomeStreamIfSubscribed;
- (void)tryToSendSuggestion;
@end

@implementation ATXUserEducationSuggestionExploreFacesServer

- (ATXUserEducationSuggestionExploreFacesServer)initWithConnector:(id)connector
{
  v18 = *MEMORY[0x277D85DE8];
  connectorCopy = connector;
  v15.receiver = self;
  v15.super_class = ATXUserEducationSuggestionExploreFacesServer;
  v6 = [(ATXUserEducationSuggestionBaseServer *)&v15 init];
  if (v6)
  {
    v7 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[ATXUserEducationSuggestionExploreFacesServer initWithConnector:]";
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: starting server", buf, 0xCu);
    }

    objc_storeStrong(&v6->_connector, connector);
    v8 = objc_alloc(MEMORY[0x277CBEBD0]);
    v9 = [v8 initWithSuiteName:*MEMORY[0x277CEBD00]];
    defaults = v6->_defaults;
    v6->_defaults = v9;

    mEMORY[0x277CEB710] = [MEMORY[0x277CEB710] sharedInstance];
    constants = v6->_constants;
    v6->_constants = mEMORY[0x277CEB710];

    [(ATXUserEducationSuggestionExploreFacesServer *)v6 scheduleNextTry];
    [(ATXUserEducationSuggestionExploreFacesServer *)v6 startUpSubscriberToBacklightBiomeStreamIfSubscribed];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)shouldNeverShowSuggestionAgain
{
  v12 = *MEMORY[0x277D85DE8];
  suggestion = [(ATXUserEducationSuggestionExploreFacesServer *)self suggestion];
  suggestionWasAlreadyShown = [suggestion suggestionWasAlreadyShown];

  if (suggestionWasAlreadyShown)
  {
    v5 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[ATXUserEducationSuggestionExploreFacesServer shouldNeverShowSuggestionAgain]";
      v6 = "%s: Will never show suggestion again because it was already shown";
LABEL_7:
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, v6, &v10, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = [(NSUserDefaults *)self->_defaults BOOLForKey:*MEMORY[0x277CEBDB0]];
  if (v7)
  {
    v5 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[ATXUserEducationSuggestionExploreFacesServer shouldNeverShowSuggestionAgain]";
      v6 = "%s: Will never show suggestion again because user has already seen gallery";
      goto LABEL_7;
    }

LABEL_8:

    LOBYTE(v7) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)suggestion
{
  suggestion = self->_suggestion;
  if (!suggestion)
  {
    initWithRandomUUID = [objc_alloc(MEMORY[0x277CEB940]) initWithRandomUUID];
    v5 = self->_suggestion;
    self->_suggestion = initWithRandomUUID;

    suggestion = self->_suggestion;
  }

  v6 = suggestion;

  return v6;
}

- (void)scheduleNextTry
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__ATXUserEducationSuggestionExploreFacesServer_scheduleNextTry__block_invoke;
  v2[3] = &unk_278596BB8;
  v2[4] = self;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v2];
}

void __63__ATXUserEducationSuggestionExploreFacesServer_scheduleNextTry__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) shouldNeverShowSuggestionAgain])
  {
    v2 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "[ATXUserEducationSuggestionExploreFacesServer scheduleNextTry]_block_invoke";
      v3 = "%s: Not scheduling attempt to show suggestion because it should never be shown again.";
      v4 = v2;
      v5 = 12;
LABEL_13:
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
    }
  }

  else
  {
    v6 = [*(a1 + 32) minHour];
    v7 = [*(a1 + 32) maxHour];
    if (v6 >= v7)
    {
      v2 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = "[ATXUserEducationSuggestionExploreFacesServer scheduleNextTry]_block_invoke";
        v23 = 2048;
        v24 = v6;
        v25 = 2048;
        v26 = v7;
        v3 = "%s: Not scheduling attempt to show suggestion because minHour (%ld) >= maxHour (%ld)";
        v4 = v2;
        v5 = 32;
        goto LABEL_13;
      }
    }

    else
    {
      v2 = [MEMORY[0x277CBEA80] currentCalendar];
      v8 = objc_opt_new();
      v9 = -[NSObject dateByAddingUnit:value:toDate:options:](v2, "dateByAddingUnit:value:toDate:options:", 128, [*(a1 + 32) tryAgainIntervalSeconds], v8, 0);
      v10 = [v2 component:32 fromDate:v9];
      if (v10 < v6 || v10 > v7)
      {
        v12 = v10;
        v13 = [v2 dateBySettingHour:v6 minute:0 second:0 ofDate:v9 options:0];

        if (v12 <= v7)
        {
          v9 = v13;
        }

        else
        {
          v9 = [v2 dateByAddingUnit:16 value:1 toDate:v13 options:0];
        }
      }

      [v9 timeIntervalSinceDate:v8];
      v15 = v14;
      v16 = [*(a1 + 32) gracePeriod];
      v17 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v17, *MEMORY[0x277D86380], 1);
      xpc_dictionary_set_BOOL(v17, *MEMORY[0x277D86360], 0);
      xpc_dictionary_set_BOOL(v17, *MEMORY[0x277D86230], 1);
      xpc_dictionary_set_int64(v17, *MEMORY[0x277D86250], v15);
      xpc_dictionary_set_int64(v17, *MEMORY[0x277D86270], v16);
      xpc_dictionary_set_string(v17, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
      v18 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v22 = "[ATXUserEducationSuggestionExploreFacesServer scheduleNextTry]_block_invoke";
        v23 = 2048;
        v24 = v15;
        v25 = 2048;
        v26 = v16;
        v27 = 2114;
        v28 = v9;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "%s: Registering XPC activity with delay: %llds and gracePeriod: %llds. Expecting the next attempt to send the suggestion to occur at %{public}@", buf, 0x2Au);
      }

      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __63__ATXUserEducationSuggestionExploreFacesServer_scheduleNextTry__block_invoke_29;
      handler[3] = &unk_278598500;
      handler[4] = *(a1 + 32);
      xpc_activity_register("com.apple.duetexpertd.ATXUserEducationSuggestionExploreFacesServer", v17, handler);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __63__ATXUserEducationSuggestionExploreFacesServer_scheduleNextTry__block_invoke_29(uint64_t a1, xpc_activity_t activity)
{
  xpc_activity_set_state(activity, 5);
  v3 = *(a1 + 32);

  return [v3 tryToSendSuggestion];
}

- (void)tryToSendSuggestion
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke;
  v2[3] = &unk_278596BB8;
  v2[4] = self;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v2];
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) scheduleNextTry];
  v2 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Attempting to send suggestion", buf, 0xCu);
  }

  if (![*(a1 + 32) shouldNeverShowSuggestionAgain])
  {
    v3 = [MEMORY[0x277CBEA80] currentCalendar];
    v4 = objc_opt_new();
    v5 = [v3 component:32 fromDate:v4];
    if (v5 < [*(a1 + 32) minHour] || v5 > objc_msgSend(*(a1 + 32), "maxHour"))
    {
      v6 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) minHour];
        v8 = [*(a1 + 32) maxHour];
        *buf = 136315906;
        *&buf[4] = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = v5;
        *&buf[22] = 2048;
        v62 = *&v7;
        v63 = 2048;
        v64 = v8;
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%s: Not sending suggestion because the current hour, %ld, is not between %ld to %ld.", buf, 0x2Au);
      }

      goto LABEL_42;
    }

    [*(*(a1 + 32) + 40) doubleForKey:*MEMORY[0x277CEBD40]];
    v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v9];
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v6];
    v12 = v11;

    if (v12 < 172800.0)
    {
      v13 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v6;
        *&buf[22] = 2048;
        v62 = v12;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%s: Not sending suggestion since user likely upgraded less than 48 hours ago. Will be eligbile after 48 hours. Approximate date of last upgrade was %{public}@ (%f seconds ago)", buf, 0x20u);
      }

      goto LABEL_42;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v62) = 1;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v14 = BiomeLibrary();
    v15 = [v14 UserFocus];
    v16 = [v15 ComputedMode];
    v17 = [v16 atx_publisherWithStartTime:0 endTime:0 maxEvents:&unk_283A55820 lastN:&unk_283A55820 reversed:0];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_33;
    v53[3] = &unk_278597540;
    v53[4] = &v54;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_35;
    v52[3] = &unk_278599858;
    v52[4] = &v54;
    v52[5] = buf;
    v18 = [v17 sinkWithCompletion:v53 receiveInput:v52];

    if (*(v55 + 24) == 1)
    {
      v19 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v27 = v19;
        __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
LABEL_20:
        v19 = v27;
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    if (*(*&buf[8] + 24) == 1)
    {
      v19 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v27 = v19;
        __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_cold_1(v19, v28, v29, v30, v31, v32, v33, v34);
        goto LABEL_20;
      }

LABEL_41:

      _Block_object_dispose(&v54, 8);
      _Block_object_dispose(buf, 8);
LABEL_42:

      goto LABEL_43;
    }

    v35 = +[ATXPosterDescriptorCache sharedInstance];
    v47 = [v35 descriptors];

    if (!v47)
    {
      v37 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v59 = 136315138;
        v60 = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
        _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "%s: Not sending suggestion. Unable to get all descriptors from ATXPosterDescriptorCache.", v59, 0xCu);
      }

      goto LABEL_40;
    }

    v36 = [v47 objectForKeyedSubscript:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
    v46 = v36;
    if (v36)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v37 = v36;
      v38 = [v37 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v38)
      {
        v39 = *v49;
        while (2)
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v49 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v41 = [*(*(&v48 + 1) + 8 * i) galleryOptions];
            v42 = [v41 isHero];

            if ((v42 & 1) == 0)
            {

              [*(a1 + 32) sendSuggestionWithEventType:0];
              goto LABEL_40;
            }
          }

          v38 = [v37 countByEnumeratingWithState:&v48 objects:v58 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      v43 = __atxlog_handle_context_user_education_suggestions();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      *v59 = 136315138;
      v60 = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
      v44 = "%s: Not sending suggestion. Found 0 non-hero row ATXPosterDescriptors, possibly indicating that photos hasn't finished donating their posters to us.";
    }

    else
    {
      v43 = __atxlog_handle_context_user_education_suggestions();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
LABEL_39:

        v37 = v46;
LABEL_40:

        v19 = v47;
        goto LABEL_41;
      }

      *v59 = 136315138;
      v60 = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
      v44 = "%s: Not sending suggestion. Unable to get list of photos descriptors from ATXPosterDescriptorCache.";
    }

    _os_log_impl(&dword_2263AA000, v43, OS_LOG_TYPE_DEFAULT, v44, v59, 0xCu);
    goto LABEL_39;
  }

  xpc_activity_unregister("com.apple.duetexpertd.ATXUserEducationSuggestionExploreFacesServer");
  v3 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%s: Not sending suggestion because we should never show it again. See logs above. Unregistered all future XPC activities to try and show the suggestion again.", buf, 0xCu);
  }

LABEL_43:

  v45 = *MEMORY[0x277D85DE8];
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v4 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_33_cold_1(v3);
    }
  }
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];

  if (v4)
  {
    v5 = [v3 eventBody];
    *(*(*(a1 + 40) + 8) + 24) = [v5 starting];
  }

  else
  {
    v6 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_35_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (void)sendSuggestionWithEventType:(unint64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CEB938]);
  suggestion = [(ATXUserEducationSuggestionExploreFacesServer *)self suggestion];
  v7 = [v5 initWithUserEducationSuggestion:suggestion userEducationSuggestionEventType:type];

  v8 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[ATXUserEducationSuggestionExploreFacesServer sendSuggestionWithEventType:]";
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Sending suggestion event: %{public}@", &v11, 0x16u);
  }

  remoteObjectProxy = [(ATXUserEducationSuggestionConnector *)self->_connector remoteObjectProxy];
  [remoteObjectProxy didReceiveUserEducationSuggestionEvent:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startUpSubscriberToBacklightBiomeStreamForTheFirstTime
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke;
  v2[3] = &unk_278596BB8;
  v2[4] = self;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v2];
}

void __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) isSubscribedForBacklightEvents])
  {
    v2 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke_cold_2(v2);
    }
  }

  else
  {
    v3 = *v1;
    if (*(*v1 + 7) || v3[6])
    {
      v4 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke_cold_1(v1, 56, v4);
      }
    }

    else
    {
      v5 = v3[5];
      v6 = [MEMORY[0x277CBEAA8] now];
      [v6 timeIntervalSinceReferenceDate];
      [v5 setDouble:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_TimestampFirstSubscribedToBackLightStream" forKey:?];

      [*v1 setIsSubscribedForBacklightEvents:1];
      v7 = *v1;

      [v7 startUpSubscriberToBacklightBiomeStreamIfSubscribed];
    }
  }
}

- (void)startUpSubscriberToBacklightBiomeStreamIfSubscribed
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __99__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamIfSubscribed__block_invoke;
  v2[3] = &unk_278596BB8;
  v2[4] = self;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v2];
}

void __99__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamIfSubscribed__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isSubscribedForBacklightEvents])
  {
    v2 = [*(a1 + 32) suggestion];
    v3 = [v2 suggestionWasAlreadyDismissed];

    if (v3)
    {
      v4 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[ATXUserEducationSuggestionExploreFacesServer startUpSubscriberToBacklightBiomeStreamIfSubscribed]_block_invoke";
        _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: Suggestion has already been dismissed, no need to start the backlight subscriber.", &v8, 0xCu);
      }

      [*(a1 + 32) setIsSubscribedForBacklightEvents:0];
    }

    else
    {
      v6 = [*(a1 + 32) backlightEventSink];
    }
  }

  else
  {
    v5 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[ATXUserEducationSuggestionExploreFacesServer startUpSubscriberToBacklightBiomeStreamIfSubscribed]_block_invoke";
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: Not subscribed to the backlight stream so don't set it up.", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)backlightEventSink
{
  v24 = *MEMORY[0x277D85DE8];
  backlightEventSink = self->_backlightEventSink;
  if (backlightEventSink)
  {
    v3 = backlightEventSink;
  }

  else
  {
    v5 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventSink]";
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: Setting up the backlight subscriber", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v6 = objc_alloc(MEMORY[0x277CF1918]);
    serialQueue = [(ATXUserEducationSuggestionBaseServer *)self serialQueue];
    v8 = [v6 initWithIdentifier:@"ATXUserEducationSuggestionExploreFacesServer.Backlight" targetQueue:serialQueue];
    backlightEventScheduler = self->_backlightEventScheduler;
    self->_backlightEventScheduler = v8;

    v10 = BiomeLibrary();
    device = [v10 Device];
    screenLocked = [device ScreenLocked];
    atx_DSLPublisher = [screenLocked atx_DSLPublisher];
    v14 = [atx_DSLPublisher filterWithKeyPath:@"eventBody.starting" value:MEMORY[0x277CBEC28]];
    v15 = [v14 subscribeOn:self->_backlightEventScheduler];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __66__ATXUserEducationSuggestionExploreFacesServer_backlightEventSink__block_invoke_49;
    v20[3] = &unk_2785977D8;
    objc_copyWeak(&v21, buf);
    v16 = [v15 sinkWithCompletion:&__block_literal_global_54 receiveInput:v20];
    v17 = self->_backlightEventSink;
    self->_backlightEventSink = v16;

    v3 = self->_backlightEventSink;
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

void __66__ATXUserEducationSuggestionExploreFacesServer_backlightEventSink__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_context_user_education_suggestions();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__ATXUserEducationSuggestionExploreFacesServer_backlightEventSink__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventSink]_block_invoke";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: Done listening to backlight events", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __66__ATXUserEducationSuggestionExploreFacesServer_backlightEventSink__block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained backlightEventHandler:v3];
}

- (void)backlightEventHandler:(id)handler
{
  *&v35[13] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(ATXUserEducationSuggestionExploreFacesServer *)self isSubscribedForBacklightEvents])
  {
    eventBody = [handlerCopy eventBody];
    v6 = eventBody;
    if (eventBody)
    {
      if (([eventBody hasStarting]& 1) != 0)
      {
        [(NSUserDefaults *)self->_defaults doubleForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_TimestampFirstSubscribedToBackLightStream"];
        v8 = v7;
        [handlerCopy timestamp];
        if (v9 >= v8)
        {
          v25 = MEMORY[0x277CBEAA8];
          [handlerCopy timestamp];
          v10 = [v25 dateWithTimeIntervalSinceReferenceDate:?];
          v26 = __atxlog_handle_context_user_education_suggestions();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 136315650;
            v33 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:]";
            v34 = 1024;
            *v35 = [v6 starting];
            v35[2] = 2114;
            *&v35[3] = v10;
            _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "%s: Backlight on: %{BOOL}d Date: %{public}@", &v32, 0x1Cu);
          }

          v27 = [(NSUserDefaults *)self->_defaults integerForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_BacklightOffCount"]+ 1;
          [(NSUserDefaults *)self->_defaults setInteger:v27 forKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_BacklightOffCount"];
          numBacklightOffEventsBeforeDismissSuggestion = [(ATXUserEducationSuggestionExploreFacesServer *)self numBacklightOffEventsBeforeDismissSuggestion];
          v29 = numBacklightOffEventsBeforeDismissSuggestion - v27;
          if (numBacklightOffEventsBeforeDismissSuggestion <= v27)
          {
            [(ATXUserEducationSuggestionExploreFacesServer *)self cancelBacklightEventSubscription];
            [(ATXUserEducationSuggestionExploreFacesServer *)self setIsSubscribedForBacklightEvents:0];
            [(ATXUserEducationSuggestionExploreFacesServer *)self sendSuggestionWithEventType:1];
          }

          else
          {
            v30 = __atxlog_handle_context_user_education_suggestions();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v32 = 136315394;
              v33 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:]";
              v34 = 2048;
              *v35 = v29;
              _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "%s: %ld more backlight off events required before dismissing the suggestion.", &v32, 0x16u);
            }
          }
        }

        else
        {
          v10 = __atxlog_handle_context_user_education_suggestions();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            [ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:v10];
          }
        }
      }

      else
      {
        v10 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(ATXUserEducationSuggestionExploreFacesServer *)v10 backlightEventHandler:v18, v19, v20, v21, v22, v23, v24];
        }
      }
    }

    else
    {
      v10 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(ATXUserEducationSuggestionExploreFacesServer *)v10 backlightEventHandler:v11, v12, v13, v14, v15, v16, v17];
      }
    }
  }

  else
  {
    v6 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:v6];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)cancelBacklightEventSubscription
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __80__ATXUserEducationSuggestionExploreFacesServer_cancelBacklightEventSubscription__block_invoke;
  v2[3] = &unk_278596BB8;
  v2[4] = self;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v2];
}

void __80__ATXUserEducationSuggestionExploreFacesServer_cancelBacklightEventSubscription__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ATXUserEducationSuggestionExploreFacesServer cancelBacklightEventSubscription]_block_invoke";
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Cancelling backlight biome subscription", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) backlightEventSink];
  [v3 cancel];

  v4 = *MEMORY[0x277D85DE8];
}

- (int64_t)minHour
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_minHour"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = [(ATXNotificationManagementMAConstants *)self->_constants ATXUserEducationSuggestionExploreFacesServer_minHour];
  }

  v6 = integerValue;

  return v6;
}

- (int64_t)maxHour
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_maxHour"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = [(ATXNotificationManagementMAConstants *)self->_constants ATXUserEducationSuggestionExploreFacesServer_maxHour];
  }

  v6 = integerValue;

  return v6;
}

- (int64_t)tryAgainIntervalSeconds
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_tryAgainIntervalSeconds"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = [(ATXNotificationManagementMAConstants *)self->_constants ATXUserEducationSuggestionExploreFacesServer_tryAgainIntervalSeconds];
  }

  v6 = integerValue;

  return v6;
}

- (int64_t)gracePeriod
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_gracePeriod"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = [(ATXNotificationManagementMAConstants *)self->_constants ATXUserEducationSuggestionExploreFacesServer_gracePeriod];
  }

  v6 = integerValue;

  return v6;
}

- (int64_t)numBacklightOffEventsBeforeDismissSuggestion
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_numBacklightOffEventsBeforeDismissSuggestion"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = [(ATXNotificationManagementMAConstants *)self->_constants ATXUserEducationSuggestionExploreFacesServer_numBacklightOffEventsBeforeDismissSuggestion];
  }

  v6 = integerValue;

  return v6;
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: Not sending suggestion because user is in a mode.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: Not sending suggestion because there was an error while fetching the mode. See logs above.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_33_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a1 error];
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v1, v2, "%s: error fetching latest mode change event from biome %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_35_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: Missing eventBody on biome event. Unable to determine if user is in a mode.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + a2);
  v4 = *(*a1 + 48);
  v6 = 136315650;
  v7 = "[ATXUserEducationSuggestionExploreFacesServer startUpSubscriberToBacklightBiomeStreamForTheFirstTime]_block_invoke";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "%s: Trying to start up the backlight subscriber for the first time, but found that the internal biome objects have already been allocated and initialized. This shouldn't happen. Returning early. %@ %@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXUserEducationSuggestionExploreFacesServer startUpSubscriberToBacklightBiomeStreamForTheFirstTime]_block_invoke";
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "%s: Trying to start up the backlight subscriber for the first time, but found that it's already subscribed. This shouldn't happen. Returning early.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __66__ATXUserEducationSuggestionExploreFacesServer_backlightEventSink__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a1 error];
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v1, v2, "%s: Error listening to backlight events: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)backlightEventHandler:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:]";
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "%s: Not responding to backlight event. Handler called even though we're no longer subscribed to the biome stream.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)backlightEventHandler:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)backlightEventHandler:(os_log_t)log .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:]";
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "%s: Ignoring backlight event that happened before the time that we first subscribed to the biome stream.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)backlightEventHandler:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: eventBody missing from event. Returning early.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end