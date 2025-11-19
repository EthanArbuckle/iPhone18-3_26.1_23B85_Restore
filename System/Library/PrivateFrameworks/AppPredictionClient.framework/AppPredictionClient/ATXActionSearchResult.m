@interface ATXActionSearchResult
+ (BOOL)shouldDisplayRecentActionsOnHomeScreen;
+ (BOOL)shouldDisplayValidParameterCombinations;
+ (id)_demoModeActionResponse;
+ (id)_recentDonationProactiveSuggestionFromScoredAction:(id)a3 withClientModelId:(id)a4;
+ (id)_unarchiveATXHeroDataFromSuggestion:(id)a3;
+ (id)_unarchiveObjectFromSuggestion:(id)a3;
+ (id)actionResponseForDeveloperMode;
+ (id)actionResponseForDeveloperModeWithClientId:(id)a3 shouldShowRecentDonations:(BOOL)a4;
+ (id)actionResponseForDeveloperModeWithShouldShowRecentDonations:(BOOL)a3 shouldShowParameterCombinations:(BOOL)a4 shouldShowUpcomingMedia:(BOOL)a5 withClientModelId:(id)a6;
+ (id)actionSearchResultFromProactiveSuggestion:(id)a3 actionResponse:(id)a4 avRoutingSessionHelper:(id)a5 nowPlayingDataProvider:(id)a6;
+ (id)actionSearchResultFromScoredAction:(id)a3 actionResponse:(id)a4 avRoutingSessionHelper:(id)a5 nowPlayingDataProvider:(id)a6;
+ (id)generatedSearchResultForAction:(id)a3 actionResponse:(id)a4;
+ (id)generatedSearchResultForProactiveSuggestion:(id)a3 actionResponse:(id)a4;
+ (id)mostRecentDonationParameterCombinations;
+ (id)predictedActionSearchResultsWithLimit:(int64_t)a3 forBundleIdentifiers:(id)a4;
+ (id)recentDonationsStarting:(id)a3 end:(id)a4 number:(unint64_t)a5;
+ (id)recentUpcomingMedia;
- (ATXActionSearchResult)init;
- (ATXActionSearchResult)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActionSearchResult:(id)a3;
- (unint64_t)hash;
- (void)_updateInlineCardWithContent:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAtxAction:(id)a3;
- (void)setHeroApp:(id)a3;
@end

@implementation ATXActionSearchResult

+ (id)predictedActionSearchResultsWithLimit:(int64_t)a3 forBundleIdentifiers:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = __atxlog_handle_blending();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v45 = a3;
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "predictedActionSearchResultsWithLimit %lu.", buf, 0xCu);
  }

  if (!+[ATXDeviceClass shouldComputeActions])
  {
    v8 = 0;
    goto LABEL_41;
  }

  if ([a1 _demoModeEnabled])
  {
    v7 = [a1 _demoModeActionResponse];
    goto LABEL_11;
  }

  if (([a1 shouldDisplayRecentDonationsForTesting] & 1) != 0 || (objc_msgSend(a1, "shouldDisplayUpcomingMediaForTesting") & 1) != 0 || objc_msgSend(a1, "shouldDisplayValidParameterCombinations"))
  {
    v7 = [a1 actionResponseForDeveloperMode];
LABEL_11:
    v9 = v7;
    if (v7)
    {
      goto LABEL_12;
    }

LABEL_39:
    v8 = 0;
    goto LABEL_40;
  }

  v30 = objc_opt_new();
  v31 = v30;
  if (a3 >= 3)
  {
    v32 = 3;
  }

  else
  {
    v32 = a3;
  }

  v9 = [v30 actionPredictionsForConsumerSubType:21 limit:v32];

  if (!v9)
  {
    goto LABEL_39;
  }

LABEL_12:
  v10 = [ATXAVRoutingSessionHelper alloc];
  LODWORD(v11) = 0.5;
  v12 = [(ATXAVRoutingSessionHelper *)v10 initWithAcceptThreshold:0 avRoutingSessionManager:v11];
  v13 = objc_opt_new();
  v14 = objc_alloc(MEMORY[0x1E695DF70]);
  v15 = [v9 scoredActions];
  v16 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];

  v17 = [v9 scoredActions];
  if (v17)
  {
  }

  else
  {
    v24 = [v9 proactiveSuggestions];

    if (v24)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v18 = [v9 proactiveSuggestions];
      v25 = [v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v39;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(v18);
            }

            v29 = [a1 actionSearchResultFromProactiveSuggestion:*(*(&v38 + 1) + 8 * i) actionResponse:v9 avRoutingSessionHelper:v12 nowPlayingDataProvider:v13];
            if (v29)
            {
              [v16 addObject:v29];
            }
          }

          v26 = [v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v26);
      }

      goto LABEL_34;
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = [v9 scoredActions];
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [a1 actionSearchResultFromScoredAction:*(*(&v34 + 1) + 8 * j) actionResponse:v9 avRoutingSessionHelper:v12 nowPlayingDataProvider:v13];
        if (v23)
        {
          [v16 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v20);
  }

LABEL_34:

  v8 = [v16 copy];
LABEL_40:

LABEL_41:

  return v8;
}

+ (id)actionSearchResultFromScoredAction:(id)a3 actionResponse:(id)a4 avRoutingSessionHelper:(id)a5 nowPlayingDataProvider:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 predictedItem];
  v14 = [v13 bundleId];
  v15 = [ATXApplicationRecord isDeviceManagementPolicyOkForBundleId:v14];

  if (!v15)
  {
    v23 = 0;
    goto LABEL_17;
  }

  v16 = [v9 predictedItem];
  if ([v16 isTVWhiteListedLongFormMedia])
  {
    if (([v12 isTVExperienceAppNowPlaying] & 1) == 0)
    {
      v17 = [v11 predictedRouteInfo];
      v18 = [v16 actionWithRouteInfo:v17];

      if (([v10 containsExternalRoute] & 1) == 0)
      {
        v19 = [v11 predictedRouteInfo];
        if (v19)
        {
          v20 = v19;
          v21 = [v11 predictedRouteInfo];
          v22 = [v21 isExternalRoute];

          if (v22)
          {
            [v10 setContainsExternalRoute:1];
          }
        }
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (![v16 isTVAction])
    {
      v18 = v16;
LABEL_15:
      v23 = [ATXActionSearchResult generatedSearchResultForAction:v18 actionResponse:v10];
      v16 = v18;
      goto LABEL_16;
    }

    v24 = __atxlog_handle_default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ATXActionSearchResult actionSearchResultFromScoredAction:v24 actionResponse:? avRoutingSessionHelper:? nowPlayingDataProvider:?];
    }
  }

  v23 = 0;
LABEL_16:

LABEL_17:

  return v23;
}

+ (id)generatedSearchResultForAction:(id)a3 actionResponse:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(ATXActionSearchResult);
  [(ATXActionSearchResult *)v7 setAtxAction:v6];

  [(ATXActionSearchResult *)v7 setActionResponse:v5];

  return v7;
}

+ (id)actionSearchResultFromProactiveSuggestion:(id)a3 actionResponse:(id)a4 avRoutingSessionHelper:(id)a5 nowPlayingDataProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 executableSpecification];
  v15 = [v14 executableClassString];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 isEqualToString:v17];

  if (v18)
  {
    v19 = [v10 atxActionExecutableObject];
    if (v19)
    {
      v20 = [ATXScoredPrediction alloc];
      v21 = [v10 scoreSpecification];
      [v21 rawScore];
      *&v22 = v22;
      v23 = [(ATXScoredPrediction *)v20 initWithPredictedItem:v19 score:v22];

      v24 = [a1 actionSearchResultFromScoredAction:v23 actionResponse:v11 avRoutingSessionHelper:v12 nowPlayingDataProvider:v13];
      [(ATXSuggestionSearchResult *)v24 setProactiveSuggestion:v10];

LABEL_8:
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v27 = [v15 isEqualToString:v26];

  if (v27)
  {
    v19 = [a1 _unarchiveATXHeroDataFromSuggestion:v10];
    if (v19)
    {
      v24 = objc_alloc_init(ATXActionSearchResult);
      [(ATXActionSearchResult *)v24 setHeroApp:v19];
      [(ATXActionSearchResult *)v24 setActionResponse:v11];
      [(ATXSuggestionSearchResult *)v24 setProactiveSuggestion:v10];
      goto LABEL_8;
    }

LABEL_7:
    v24 = 0;
    goto LABEL_8;
  }

  v24 = [a1 generatedSearchResultForProactiveSuggestion:v10 actionResponse:v11];
LABEL_10:

  return v24;
}

+ (id)_unarchiveObjectFromSuggestion:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E696ACD0];
  v6 = [v3 executableSpecification];
  v7 = [v6 executableClassString];
  v8 = NSClassFromString(v7);
  v9 = [v3 executableSpecification];
  v10 = [v9 executable];
  v16 = 0;
  v11 = [v5 unarchivedObjectOfClass:v8 fromData:v10 error:&v16];
  v12 = v16;

  objc_autoreleasePoolPop(v4);
  if (v11 || !v12)
  {
    v14 = v11;
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXActionSearchResult *)v12 _unarchiveObjectFromSuggestion:v13];
    }

    v14 = 0;
  }

  return v14;
}

+ (id)_unarchiveATXHeroDataFromSuggestion:(id)a3
{
  v3 = [a1 _unarchiveObjectFromSuggestion:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)generatedSearchResultForProactiveSuggestion:(id)a3 actionResponse:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(ATXActionSearchResult);
  [(ATXSuggestionSearchResult *)v7 setProactiveSuggestion:v6];

  [(ATXActionSearchResult *)v7 setActionResponse:v5];

  return v7;
}

- (ATXActionSearchResult)init
{
  v6.receiver = self;
  v6.super_class = ATXActionSearchResult;
  v2 = [(ATXActionSearchResult *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    [(ATXActionSearchResult *)v2 setIdentifier:v4];
  }

  return v2;
}

- (void)setAtxAction:(id)a3
{
  v5 = a3;
  if (self->_atxAction != v5)
  {
    objc_storeStrong(&self->_atxAction, a3);
    v6 = [(ATXAction *)self->_atxAction _bundleIdForDisplay];
    [(ATXActionSearchResult *)self setApplicationBundleIdentifier:v6];

    [(ATXActionSearchResult *)self _updateInlineCardWithContent:self->_atxAction];
    v7 = [(ATXAction *)self->_atxAction _spotlightContentType];
    [(ATXActionSearchResult *)self setContentType:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69CA320]);
    [(ATXActionSearchResult *)self setPunchout:v8];

    v9 = [(ATXAction *)self->_atxAction actionType];
    atxAction = self->_atxAction;
    if (v9 == 1)
    {
      v11 = [(ATXAction *)atxAction userActivityString];
      [(ATXActionSearchResult *)self setUserActivityRequiredString:v11];
LABEL_6:

      goto LABEL_7;
    }

    v12 = [(ATXAction *)atxAction intent];

    v13 = self->_atxAction;
    if (v12)
    {
      v11 = [(ATXAction *)v13 intent];
      v14 = [v11 _supportsBackgroundExecution];
      v15 = [(ATXActionSearchResult *)self punchout];
      [v15 setIsRunnableInBackground:v14];

      goto LABEL_6;
    }

    if ([(ATXAction *)v13 actionType]== 5)
    {
      v16 = [(ATXActionSearchResult *)self punchout];
      [v16 setIsRunnableInBackground:1];
    }

    else
    {
      v16 = __atxlog_handle_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [ATXActionSearchResult setAtxAction:v16];
      }
    }
  }

LABEL_7:
}

- (void)setHeroApp:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_heroApp != v5)
  {
    objc_storeStrong(&self->_heroApp, a3);
    v6 = [(ATXHeroData *)v5 clipMetadata];

    if (v6)
    {
      [(ATXActionSearchResult *)self setApplicationBundleIdentifier:@"com.apple.application"];
      v7 = MEMORY[0x1E696AEC0];
      v8 = [(ATXHeroData *)self->_heroApp clipMetadata];
      v9 = [v8 webClipID];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = &stru_1F3E050C8;
      }

      v12 = [v7 stringWithFormat:@"com.apple.appclip-%@", v11];
      [(ATXActionSearchResult *)self setIdentifier:v12];

      [(ATXActionSearchResult *)self setType:23];
      [(ATXActionSearchResult *)self _updateInlineCardWithContent:self->_heroApp];
      v13 = objc_alloc_init(MEMORY[0x1E69CA320]);
      [(ATXActionSearchResult *)self setPunchout:v13];

      v14 = [(ATXHeroData *)v5 clipMetadata];
      v15 = [v14 clipURL];
      v21[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v17 = [(ATXActionSearchResult *)self punchout];
      [v17 setUrls:v16];

      v18 = [(ATXActionSearchResult *)self punchout];
      [v18 setHasClip:1];

      v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"Nearby" value:&stru_1F3E050C8 table:0];
      [(ATXActionSearchResult *)self setNearbyBusinessesString:v20];
    }
  }
}

- (void)_updateInlineCardWithContent:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v5 = getAPUIRegisterCardServicesIfNeededSymbolLoc_ptr;
  v24 = getAPUIRegisterCardServicesIfNeededSymbolLoc_ptr;
  if (!getAPUIRegisterCardServicesIfNeededSymbolLoc_ptr)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getAPUIRegisterCardServicesIfNeededSymbolLoc_block_invoke;
    v19 = &unk_1E80C0758;
    v20 = &v21;
    v6 = AppPredictionUILibrary();
    v22[3] = dlsym(v6, "APUIRegisterCardServicesIfNeeded");
    getAPUIRegisterCardServicesIfNeededSymbolLoc_ptr = *(v20[1] + 24);
    v5 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v5)
  {
    [ATXActionSearchResult _updateInlineCardWithContent:];
  }

  v5();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v7 = getAPUIRegisterCardKitProvidersIfNeededSymbolLoc_ptr;
  v24 = getAPUIRegisterCardKitProvidersIfNeededSymbolLoc_ptr;
  if (!getAPUIRegisterCardKitProvidersIfNeededSymbolLoc_ptr)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getAPUIRegisterCardKitProvidersIfNeededSymbolLoc_block_invoke;
    v19 = &unk_1E80C0758;
    v20 = &v21;
    v8 = AppPredictionUILibrary();
    v22[3] = dlsym(v8, "APUIRegisterCardKitProvidersIfNeeded");
    getAPUIRegisterCardKitProvidersIfNeededSymbolLoc_ptr = *(v20[1] + 24);
    v7 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v7)
  {
    [ATXActionSearchResult _updateInlineCardWithContent:];
  }

  v7();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v9 = getCRSCardRequestClass_softClass;
  v24 = getCRSCardRequestClass_softClass;
  if (!getCRSCardRequestClass_softClass)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getCRSCardRequestClass_block_invoke;
    v19 = &unk_1E80C0758;
    v20 = &v21;
    __getCRSCardRequestClass_block_invoke(&v16);
    v9 = v22[3];
  }

  v10 = v9;
  _Block_object_dispose(&v21, 8);
  v11 = objc_opt_new();
  [v11 setFormat:2];
  [v11 setContent:v4];
  [v11 setLoadsBundleServices:0];
  v12 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__ATXActionSearchResult__updateInlineCardWithContent___block_invoke;
  v14[3] = &unk_1E80C2760;
  v14[4] = self;
  v15 = v12;
  v13 = v12;
  [v11 startWithReply:v14];
  [MEMORY[0x1E69C5D10] waitForSemaphore:v13 timeoutSeconds:5.0];
}

intptr_t __54__ATXActionSearchResult__updateInlineCardWithContent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 card];
  [*(a1 + 32) setInlineCard:v3];

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

+ (id)_demoModeActionResponse
{
  v73[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.DuetExpertCenter.AppPredictionExpert"];
  v3 = [v2 stringForKey:@"demoActionContactName"];
  v4 = v3;
  v5 = @"Eddy Cue";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v2 stringForKey:@"demoActionContactEmail"];
  v8 = v7;
  v9 = @"eddy@example.com";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v2 stringForKey:@"demoActionMessageContent"];
  v12 = v11;
  v13 = @"Iʼm running late.";
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v15 = [v2 stringForKey:@"demoActionMessageSubtitle"];
  v16 = v15;
  v17 = @"“Shortcuts Launch Planning” starts at 3:00 PM.";
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [v2 stringForKey:@"demoActionAppBundleId"];
  v20 = v19;
  v21 = @"com.apple.MobileSMS";
  if (v19)
  {
    v21 = v19;
  }

  v22 = v21;

  v23 = [objc_alloc(MEMORY[0x1E696E948]) initWithValue:v10 type:1];
  v70 = v23;
  v24 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v23 nameComponents:0 displayName:v6 image:0 contactIdentifier:0 customIdentifier:0];
  v25 = objc_alloc(MEMORY[0x1E696E9E8]);
  v69 = v24;
  v73[0] = v24;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
  v27 = [v25 initWithRecipients:v26 outgoingMessageType:0 content:v14 speakableGroupName:0 conversationIdentifier:0 serviceName:0 sender:0 attachments:0];

  v28 = v27;
  [v27 _setLaunchId:v22];
  v29 = [(__CFString *)v6 componentsSeparatedByString:@" "];
  v30 = v6;
  v31 = v30;
  if ([v29 count])
  {
    v31 = [v29 objectAtIndexedSubscript:0];
  }

  v67 = v31;
  v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tell %@ “%@”", v31, v14];
  v68 = v30;
  v32 = [ATXAction alloc];
  v65 = v28;
  v66 = v29;
  v33 = objc_opt_new();
  LOBYTE(v59) = 0;
  v61 = [(ATXAction *)v32 initWithIntent:v28 actionUUID:v33 bundleId:v22 heuristic:@"runningLateText" heuristicMetadata:0 criteria:0 isFutureMedia:v59 title:v64 subtitle:v18];

  v34 = [v2 stringForKey:@"demoActionMessagePhone"];
  v35 = v34;
  v36 = @"1-888-555-1212";
  if (v34)
  {
    v36 = v34;
  }

  v63 = v22;
  v37 = v36;

  v38 = [v2 stringForKey:@"demoActionMeetingTitle"];
  v39 = v38;
  v40 = @"Call in to “Shortcuts Launch Planning”";
  if (v38)
  {
    v40 = v38;
  }

  v41 = v40;

  v42 = [v2 stringForKey:@"demoActionMeetingSubtitle"];
  v43 = v42;
  v44 = @"Event starts at 3:00 PM.";
  if (v42)
  {
    v44 = v42;
  }

  v62 = v14;
  v45 = v44;

  v46 = [objc_alloc(MEMORY[0x1E696E948]) initWithValue:v37 type:2];
  v47 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v46 nameComponents:0 displayName:v41 image:0 contactIdentifier:0 customIdentifier:v37];

  v48 = objc_alloc(MEMORY[0x1E696EA60]);
  v72 = v47;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  v50 = [v48 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 contacts:v49 callCapability:1];

  [v50 setPreferredCallProvider:1];
  [v50 setTTYType:1];
  [v50 _setLaunchId:@"com.apple.InCallService"];
  [v50 _setExtensionBundleId:@"com.apple.TelephonyUtilities.PhoneIntentHandler"];
  v51 = [ATXAction alloc];
  v52 = objc_opt_new();
  LOBYTE(v60) = 0;
  v53 = [(ATXAction *)v51 initWithIntent:v50 actionUUID:v52 bundleId:@"com.apple.InCallService" heuristic:@"conferenceCall" heuristicMetadata:0 criteria:0 isFutureMedia:v60 title:v41 subtitle:v45];

  v54 = [[ATXScoredPrediction alloc] initWithPredictedItem:v61 score:0.0];
  v71[0] = v54;
  v55 = [[ATXScoredPrediction alloc] initWithPredictedItem:v53 score:0.0];
  v71[1] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];

  v57 = [[ATXActionResponse alloc] initWithScoredActions:v56 cacheFileData:0 consumerSubType:0 error:0];

  return v57;
}

+ (id)actionResponseForDeveloperModeWithShouldShowRecentDonations:(BOOL)a3 shouldShowParameterCombinations:(BOOL)a4 shouldShowUpcomingMedia:(BOOL)a5 withClientModelId:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v10 = a6;
  v11 = __atxlog_handle_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "returning results for DEVELOPER switch", buf, 2u);
  }

  v12 = objc_opt_new();
  v13 = [v12 dateByAddingTimeInterval:-3600.0];
  v26 = v13;
  if (v8)
  {
    v14 = [a1 recentDonationsStarting:v13 end:v12 number:10];
    v15 = [v14 count];
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    v16 = [a1 mostRecentDonationParameterCombinations];
    v15 += [v16 count];
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v14 = 0;
  v15 = 0;
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  v16 = 0;
  if (!v6)
  {
LABEL_6:
    v17 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v17 = [a1 recentUpcomingMedia];
  v15 += [v17 count];
LABEL_10:
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
  if ([v14 count])
  {
    [v18 addObjectsFromArray:v14];
  }

  if ([v16 count])
  {
    [v18 addObjectsFromArray:v16];
  }

  if ([v17 count])
  {
    [v18 addObjectsFromArray:v17];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __159__ATXActionSearchResult_actionResponseForDeveloperModeWithShouldShowRecentDonations_shouldShowParameterCombinations_shouldShowUpcomingMedia_withClientModelId___block_invoke;
  v27[3] = &unk_1E80C2788;
  v28 = v10;
  v29 = a1;
  v19 = v10;
  v20 = [v18 _pas_mappedArrayWithTransform:v27];
  v21 = [ATXActionResponse alloc];
  v22 = objc_opt_new();
  v23 = objc_opt_new();
  v24 = [(ATXActionResponse *)v21 initWithScoredActions:0 cacheFileData:0 proactiveSuggestions:v20 blendingModelUICacheUpdateUUID:v22 consumerSubType:16 predictionDate:v23 error:0];

  return v24;
}

id __159__ATXActionSearchResult_actionResponseForDeveloperModeWithShouldShowRecentDonations_shouldShowParameterCombinations_shouldShowUpcomingMedia_withClientModelId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _recentDonationProactiveSuggestionFromScoredAction:v3 withClientModelId:*(a1 + 32)];

  return v4;
}

+ (id)_recentDonationProactiveSuggestionFromScoredAction:(id)a3 withClientModelId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E69C5BC0]) initWithClientModelId:v6 clientModelVersion:@"1.0" engagementResetPolicy:0];
  v8 = [objc_alloc(MEMORY[0x1E69C5BD8]) initWithRawScore:4 suggestedConfidenceCategory:0.0];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v9 = getATXProactiveSuggestionBuilderClass_softClass;
  v37 = getATXProactiveSuggestionBuilderClass_softClass;
  if (!getATXProactiveSuggestionBuilderClass_softClass)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __getATXProactiveSuggestionBuilderClass_block_invoke;
    v33[3] = &unk_1E80C0758;
    v33[4] = &v34;
    __getATXProactiveSuggestionBuilderClass_block_invoke(v33);
    v9 = v35[3];
  }

  v10 = v9;
  _Block_object_dispose(&v34, 8);
  if (!v9)
  {
    +[ATXActionSearchResult _recentDonationProactiveSuggestionFromScoredAction:withClientModelId:];
  }

  v11 = [v9 _uiSpecForScoredAction:v5 scoreSpec:v8 clientModelSpec:v7 predictionReason:0 shouldClearOnEngagement:0 allowedOnLockscreen:1];
  v12 = [v5 predictedItem];
  v13 = [v12 archivedDataForAction];

  if (v13)
  {
    v32 = v6;
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [v5 predictedItem];
    v16 = [v15 json];
    v31 = [v14 initWithFormat:@"%@", v16];

    v17 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = [v5 predictedItem];
    v19 = [v18 actionKey];
    v20 = MEMORY[0x1E696AD98];
    [v5 predictedItem];
    v21 = v8;
    v23 = v22 = v7;
    v24 = [v20 numberWithUnsignedInteger:{objc_msgSend(v23, "paramHash")}];
    v25 = [v17 initWithFormat:@"%@:%lld", v19, objc_msgSend(v24, "longLongValue")];

    v26 = objc_alloc(MEMORY[0x1E69C5BC8]);
    v27 = [v5 predictedItem];
    v28 = [v26 initWithExecutableObject:v27 executableDescription:v31 executableIdentifier:v25 suggestionExecutableType:2];

    v7 = v22;
    v8 = v21;
    v29 = [objc_alloc(MEMORY[0x1E69C5BB0]) initWithClientModelSpecification:v7 executableSpecification:v28 uiSpecification:v11 scoreSpecification:v21];

    v6 = v32;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (id)actionResponseForDeveloperMode
{
  v3 = [a1 shouldDisplayRecentDonationsForTesting];
  v4 = [a1 shouldDisplayValidParameterCombinations];
  v5 = [a1 shouldDisplayUpcomingMediaForTesting];

  return [a1 actionResponseForDeveloperModeWithShouldShowRecentDonations:v3 shouldShowParameterCombinations:v4 shouldShowUpcomingMedia:v5 withClientModelId:@"developerModeRecentDonations"];
}

+ (id)actionResponseForDeveloperModeWithClientId:(id)a3 shouldShowRecentDonations:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 actionResponseForDeveloperModeWithShouldShowRecentDonations:v4 shouldShowParameterCombinations:objc_msgSend(a1 shouldShowUpcomingMedia:"shouldDisplayValidParameterCombinations") withClientModelId:{objc_msgSend(a1, "shouldDisplayUpcomingMediaForTesting"), v6}];

  return v7;
}

+ (id)recentDonationsStarting:(id)a3 end:(id)a4 number:(unint64_t)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(ATXCombinedIntentStream);
  v24 = v7;
  v10 = [(ATXCombinedIntentStream *)v9 getSortedCombinedIntentEventsBetweenStartDate:v7 endDate:v8 bundleIdFilter:0 comparator:&__block_literal_global_33];

  v11 = [v10 count];
  if (v11 >= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 subarrayWithRange:{0, v12}];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v25 + 1) + 8 * i) action];
        if (v20)
        {
          v21 = [[ATXScoredPrediction alloc] initWithPredictedItem:v20 score:0.0];
          [v14 addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  v22 = [v14 copy];

  return v22;
}

uint64_t __60__ATXActionSearchResult_recentDonationsStarting_end_number___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateInterval];
  v6 = [v4 dateInterval];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)mostRecentDonationParameterCombinations
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = [MEMORY[0x1E695DF00] date];
  v19 = [v20 dateByAddingTimeInterval:-7200.0];
  v18 = [a1 recentDonationsStarting:v19 end:v20 number:1];
  v3 = [v18 firstObject];
  v4 = [v3 predictedItem];

  v5 = objc_opt_new();
  if (v4)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v6 = get_ATXActionUtilsClass_softClass;
    v29 = get_ATXActionUtilsClass_softClass;
    if (!get_ATXActionUtilsClass_softClass)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __get_ATXActionUtilsClass_block_invoke;
      v25[3] = &unk_1E80C0758;
      v25[4] = &v26;
      __get_ATXActionUtilsClass_block_invoke(v25);
      v6 = v27[3];
    }

    v7 = v6;
    _Block_object_dispose(&v26, 8);
    v8 = [v6 slotSetsForAction:v4 intentCache:0];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v9)
    {
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [ATXScoredPrediction alloc];
          v14 = [v12 parameters];
          v15 = [v4 copyWithParameterWhitelist:v14];
          v16 = [(ATXScoredPrediction *)v13 initWithPredictedItem:v15 score:0.0];
          [v5 addObject:v16];
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

+ (id)recentUpcomingMedia
{
  v42 = *MEMORY[0x1E69E9840];
  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v30 = +[ATXUpcomingMediaQuery getAllUpcomingMedia];
  v2 = [v30 sortedUpcomingMedia];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v36 + 1) + 8 * i) first];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v6);
  }

  v29 = v4;

  v10 = [v3 count];
  if (v10 >= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v3 subarrayWithRange:{0, v11}];
  v13 = [v12 mutableCopy];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v32 + 1) + 8 * j);
        v20 = [v19 launchId];

        if (v20)
        {
          v21 = [ATXAction alloc];
          v22 = objc_opt_new();
          v23 = [v19 launchId];
          LOBYTE(v28) = 0;
          v24 = [(ATXAction *)v21 initWithIntent:v19 actionUUID:v22 bundleId:v23 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v28 title:0 subtitle:0, v29];

          if (v24)
          {
            v25 = [[ATXScoredPrediction alloc] initWithPredictedItem:v24 score:0.0];
            [v31 addObject:v25];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v16);
  }

  v26 = [v31 copy];

  return v26;
}

+ (BOOL)shouldDisplayValidParameterCombinations
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.DuetExpertCenter.AppPredictionExpert"];
  v3 = [v2 BOOLForKey:@"ShowValidParameterCombinations"];

  return v3;
}

+ (BOOL)shouldDisplayRecentActionsOnHomeScreen
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.DuetExpertCenter.AppPredictionExpert"];
  v3 = [v2 BOOLForKey:@"ATXRecentActionsOnHomeScreen"];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(ATXActionResponse *)self->_actionResponse uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActionSearchResult *)self isEqualToActionSearchResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToActionSearchResult:(id)a3
{
  v5 = a3;
  v6 = [(ATXSuggestionSearchResult *)self proactiveSuggestion];
  if (v6 || ([v5 proactiveSuggestion], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(ATXSuggestionSearchResult *)self proactiveSuggestion];
    v8 = [v5 proactiveSuggestion];
    v9 = [v7 isEqual:v8];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_7:
  if ([(ATXAction *)self->_atxAction isEqual:v5[103]])
  {
    v10 = [(ATXActionResponse *)self->_actionResponse isEqual:v5[102]]& v9;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (ATXActionSearchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXActionSearchResult;
  v5 = [(ATXSuggestionSearchResult *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_atxAction"];
    atxAction = v5->_atxAction;
    v5->_atxAction = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_atxActionResponse"];
    actionResponse = v5->_actionResponse;
    v5->_actionResponse = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  atxAction = self->_atxAction;
  v5 = a3;
  [v5 encodeObject:atxAction forKey:@"_atxAction"];
  [v5 encodeObject:self->_actionResponse forKey:@"_atxActionResponse"];
  v6.receiver = self;
  v6.super_class = ATXActionSearchResult;
  [(ATXSuggestionSearchResult *)&v6 encodeWithCoder:v5];
}

+ (void)_unarchiveObjectFromSuggestion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "error unarchiving data for suggestion: %@", &v2, 0xCu);
}

- (void)_updateInlineCardWithContent:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void soft_APUIRegisterCardKitProvidersIfNeeded(void)"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionSearchResult.m" lineNumber:61 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_updateInlineCardWithContent:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void soft_APUIRegisterCardServicesIfNeeded(void)"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionSearchResult.m" lineNumber:60 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)_recentDonationProactiveSuggestionFromScoredAction:withClientModelId:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[ATXActionSearchResult _recentDonationProactiveSuggestionFromScoredAction:withClientModelId:]"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionSearchResult.m" lineNumber:491 description:@"Expected ATXProactiveSuggestionBuilder to not be nil"];
}

@end