@interface WFPlayMusicAction
- (BOOL)attemptContextualPlayback;
- (BOOL)canOfferSuggestionsForParameterWithKey:(id)a3;
- (BOOL)hasPlaybackArchive;
- (id)disabledOnPlatforms;
- (id)mediaQueryFromMediaCollection:(id)a3;
- (id)serializedParametersForContextualActionMediaIntent:(id)a3;
- (id)serializedParametersForDonatedIntent:(id)a3 allowDroppingUnconfigurableValues:(BOOL)a4;
- (id)systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:(id)a3;
- (int64_t)repeatMode;
- (int64_t)shuffleMode;
- (void)executePlayMediaIntent:(id)a3;
- (void)fetchSuggestedEntitiesForParameterWithKey:(id)a3 completionHandler:(id)a4;
- (void)finishRunningWithError:(id)a3;
- (void)getContentWithCompletionHandler:(id)a3;
- (void)initializeParameters;
- (void)playContent:(id)a3 withMusicPlayer:(id)a4 completionHandler:(id)a5;
- (void)playContentViaMPCAssistant:(id)a3 routeDescriptor:(id)a4;
- (void)playContentViaMusicPlayer:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)sendPlaybackArchive:(id)a3 orPlaybackQueue:(id)a4 toDestination:(id)a5 completion:(id)a6;
- (void)setShuffleAndRepeatModesOnMusicPlayer:(id)a3;
@end

@implementation WFPlayMusicAction

- (void)executePlayMediaIntent:(id)a3
{
  v4 = MEMORY[0x277D7C538];
  v5 = a3;
  v6 = [[v4 alloc] initWithIntent:v5 donateInteraction:0 groupIdentifier:0];

  [v6 setSkipResolveAndConfirm:1];
  [(WFPlayMusicAction *)self setExecutor:v6];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__WFPlayMusicAction_executePlayMediaIntent___block_invoke;
  v7[3] = &unk_278C1AB80;
  v7[4] = self;
  [v6 startWithCompletionHandler:v7];
}

- (BOOL)attemptContextualPlayback
{
  v3 = [(WFPlayMusicAction *)self parameterValueForKey:@"WFMediaItems" ofClass:objc_opt_class()];
  v4 = v3;
  if (v3 && ([v3 intent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 intent];
    [(WFPlayMusicAction *)self executePlayMediaIntent:v6];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serializedParametersForContextualActionMediaIntent:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D7C638];
  v4 = a3;
  v5 = [[v3 alloc] initWithIntent:v4];

  v6 = [objc_alloc(MEMORY[0x277D7C640]) initWithValue:v5];
  v11 = @"WFMediaItems";
  v7 = [v6 serializedRepresentation];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)fetchSuggestedEntitiesForParameterWithKey:(id)a3 completionHandler:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WFPlayMusicAction *)self systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:v6];
  if (v8)
  {
    v9 = [MEMORY[0x277D7C840] sharedDataSource];
    [v9 loadEntriesFor:objc_opt_class() parameterKey:v6 limit:20 collectionIdentifier:v8 completionHandler:v7];
  }

  else
  {
    v9 = WFLocalizedString(@"Suggestions Not Found");
    v10 = WFLocalizedString(@"The specified action has no suggestions available");
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D7CB30];
    v13 = *MEMORY[0x277CCA450];
    v17[0] = *MEMORY[0x277CCA470];
    v17[1] = v13;
    v18[0] = v9;
    v18[1] = v10;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v15 = [v11 errorWithDomain:v12 code:5 userInfo:v14];

    (*(v7 + 2))(v7, 0, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)canOfferSuggestionsForParameterWithKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == @"WFMediaItems")
  {
    v6 = 1;
  }

  else if (v4)
  {
    v6 = [(__CFString *)v4 isEqualToString:@"WFMediaItems"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(WFPlayMusicAction *)self systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:v5];

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:(id)a3
{
  v3 = [(WFPlayMusicAction *)self parameterStateForKey:@"WFMediaItems"];
  v4 = [v3 variable];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 collectionFilter];

  v8 = [v7 namedQueryReference];

  if (v8)
  {
    v9 = [v8 topHitSystemEntityCollectionIdentifier];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializedParametersForDonatedIntent:(id)a3 allowDroppingUnconfigurableValues:(BOOL)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = 0;
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v6 _codableDescription];
  v8 = [v6 mediaContainer];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 mediaContainer];
    v11 = [v10 type];

    if (v11)
    {
      v12 = [v7 attributeByName:@"mediaContainer"];
      v13 = [(WFPlayMusicAction *)self parameterForKey:@"WFMediaItems"];
      v14 = [v6 mediaContainer];
      v15 = [v13 definition];
      v16 = [v12 wf_parameterStateForIntentValue:v14 parameterDefinition:v15];
      v17 = [v16 serializedRepresentation];
LABEL_8:

      if (v17 && ([v17 objectForKey:@"itemName"], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEB68], "null"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, v20, (v22 & 1) == 0))
      {
        v25 = @"WFMediaItems";
        v26[0] = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_13;
    }
  }

  v18 = [v6 mediaItems];

  if (v18)
  {
    v12 = [v7 attributeByName:@"mediaItems"];
    v13 = [(WFPlayMusicAction *)self parameterForKey:@"WFMediaItems"];
    v14 = [v6 mediaItems];
    v15 = [v14 firstObject];
    v16 = [v13 definition];
    v19 = [v12 wf_parameterStateForIntentValue:v15 parameterDefinition:v16];
    v17 = [v19 serializedRepresentation];

    goto LABEL_8;
  }

  v17 = 0;
LABEL_13:

LABEL_14:
  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)finishRunningWithError:(id)a3
{
  v4 = a3;
  v5 = [(WFPlayMusicAction *)self variableSource];
  v6 = objc_opt_new();
  [v5 setContent:v6 forVariableWithName:@"Has Played Music"];

  v7.receiver = self;
  v7.super_class = WFPlayMusicAction;
  [(WFPlayMusicAction *)&v7 finishRunningWithError:v4];
}

- (int64_t)repeatMode
{
  v2 = [(WFPlayMusicAction *)self parameterValueForKey:@"WFPlayMusicActionRepeat" ofClass:objc_opt_class()];
  if ([v2 isEqualToString:@"None"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"One"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"All"])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)shuffleMode
{
  v2 = [(WFPlayMusicAction *)self parameterValueForKey:@"WFPlayMusicActionShuffle" ofClass:objc_opt_class()];
  if ([v2 isEqualToString:@"Off"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"Songs"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"Albums"])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShuffleAndRepeatModesOnMusicPlayer:(id)a3
{
  v6 = a3;
  v4 = [(WFPlayMusicAction *)self shuffleMode];
  if (v4)
  {
    [v6 setShuffleMode:v4];
  }

  v5 = [(WFPlayMusicAction *)self repeatMode];
  if (v5)
  {
    [v6 setRepeatMode:v5];
  }
}

- (void)playContent:(id)a3 withMusicPlayer:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 storeIDs];

  if (v11)
  {
    v12 = [v8 storeIDs];
    [v9 setQueueWithStoreIDs:v12];
  }

  else
  {
    v13 = [v8 mediaCollection];

    if (v13)
    {
      v12 = [v8 mediaCollection];
      [v9 setQueueWithItemCollection:v12];
    }

    else
    {
      v15 = [v9 nowPlayingItem];

      if (v15)
      {
        goto LABEL_6;
      }

      v12 = [getMPMediaQueryClass() songsQuery];
      v16 = [v12 items];
      v17 = [v16 count];

      if (!v17)
      {
        v10[2](v10, 0);

        goto LABEL_7;
      }

      [v9 setQueueWithQuery:v12];
    }
  }

LABEL_6:
  v14 = [(WFPlayMusicAction *)self userInterface];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__WFPlayMusicAction_playContent_withMusicPlayer_completionHandler___block_invoke;
  v18[3] = &unk_278C21360;
  v19 = v9;
  v20 = self;
  v21 = v10;
  WFConfigureAudioRoutesForUserInterface(v14, v18);

LABEL_7:
}

void __67__WFPlayMusicAction_playContent_withMusicPlayer_completionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__WFPlayMusicAction_playContent_withMusicPlayer_completionHandler___block_invoke_2;
  v4[3] = &unk_278C1D0C0;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  [v2 prepareToPlayWithCompletionHandler:v4];
}

void __67__WFPlayMusicAction_playContent_withMusicPlayer_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = getWFActionsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315394;
      v7 = "[WFPlayMusicAction playContent:withMusicPlayer:completionHandler:]_block_invoke_2";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_FAULT, "%s Error preparing to play music: %@", &v6, 0x16u);
    }
  }

  [*(a1 + 32) setShuffleAndRepeatModesOnMusicPlayer:*(a1 + 40)];
  [*(a1 + 40) play];
  (*(*(a1 + 48) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)playContentViaMusicPlayer:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v5 = getMPMusicPlayerControllerClass_softClass;
  v17 = getMPMusicPlayerControllerClass_softClass;
  if (!getMPMusicPlayerControllerClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getMPMusicPlayerControllerClass_block_invoke;
    v13[3] = &unk_278C222B8;
    v13[4] = &v14;
    __getMPMusicPlayerControllerClass_block_invoke(v13);
    v5 = v15[3];
  }

  v6 = v5;
  _Block_object_dispose(&v14, 8);
  v7 = [v5 systemMusicPlayer];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__WFPlayMusicAction_playContentViaMusicPlayer___block_invoke;
  v10[3] = &unk_278C1FF80;
  v10[4] = self;
  v11 = v7;
  v12 = v4;
  v8 = v4;
  v9 = v7;
  [(WFPlayMusicAction *)self playContent:v8 withMusicPlayer:v9 completionHandler:v10];
}

void __47__WFPlayMusicAction_playContentViaMusicPlayer___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__WFPlayMusicAction_playContentViaMusicPlayer___block_invoke_2;
    block[3] = &unk_278C21F68;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v8 = v4;
    v9 = v5;
    v10 = *(a1 + 48);
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6 = *(a1 + 32);

    [v6 finishRunningWithError:0];
  }
}

uint64_t __47__WFPlayMusicAction_playContentViaMusicPlayer___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackState];
  v3 = *(a1 + 40);
  if (v2 == 1)
  {

    return [v3 finishRunningWithError:0];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__WFPlayMusicAction_playContentViaMusicPlayer___block_invoke_3;
    v7[3] = &unk_278C1AB58;
    v7[4] = v3;
    return [v3 playContent:v5 withMusicPlayer:v6 completionHandler:v7];
  }
}

- (void)sendPlaybackArchive:(id)a3 orPlaybackQueue:(id)a4 toDestination:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(WFPlayMusicAction *)self userInterface];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__WFPlayMusicAction_sendPlaybackArchive_orPlaybackQueue_toDestination_completion___block_invoke;
  v19[3] = &unk_278C21268;
  v20 = v10;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  v15 = v11;
  v16 = v13;
  v17 = v12;
  v18 = v10;
  WFConfigureAudioRoutesForUserInterface(v14, v19);
}

void __82__WFPlayMusicAction_sendPlaybackArchive_orPlaybackQueue_toDestination_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(getMPCAssistantCommandClass());
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__WFPlayMusicAction_sendPlaybackArchive_orPlaybackQueue_toDestination_completion___block_invoke_2;
    v13[3] = &unk_278C1AB30;
    v5 = &v16;
    v6 = &v14;
    v16 = *(a1 + 56);
    v14 = v2;
    v7 = &v15;
    v15 = *(a1 + 40);
    [v2 sendPlaybackArchive:v3 toDestination:v4 completion:v13];
  }

  else
  {
    v8 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__WFPlayMusicAction_sendPlaybackArchive_orPlaybackQueue_toDestination_completion___block_invoke_3;
    v9[3] = &unk_278C1AB30;
    v5 = &v12;
    v6 = &v10;
    v12 = *(a1 + 56);
    v10 = v2;
    v7 = &v11;
    v11 = *(a1 + 40);
    [v2 sendPlaybackQueue:v8 toDestination:v4 completion:v9];
  }
}

uint64_t __82__WFPlayMusicAction_sendPlaybackArchive_orPlaybackQueue_toDestination_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) sendCommand:0 toDestination:*(a1 + 40) withOptions:0 completion:*(a1 + 48)];
  }
}

uint64_t __82__WFPlayMusicAction_sendPlaybackArchive_orPlaybackQueue_toDestination_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) sendCommand:0 toDestination:*(a1 + 40) withOptions:0 completion:*(a1 + 48)];
  }
}

- (void)playContentViaMPCAssistant:(id)a3 routeDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 playbackArchive];
  v9 = [(WFPlayMusicAction *)self shuffleMode];
  v10 = [v6 storeIDs];

  if (v10)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v11 = getMPCAssistantStoreTracklistPlaybackQueueClass_softClass;
    v40 = getMPCAssistantStoreTracklistPlaybackQueueClass_softClass;
    if (!getMPCAssistantStoreTracklistPlaybackQueueClass_softClass)
    {
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __getMPCAssistantStoreTracklistPlaybackQueueClass_block_invoke;
      v35 = &unk_278C222B8;
      v36 = &v37;
      __getMPCAssistantStoreTracklistPlaybackQueueClass_block_invoke(&v32);
      v11 = v38[3];
    }

    v12 = v11;
    _Block_object_dispose(&v37, 8);
    v13 = [v11 alloc];
    v14 = [v6 storeIDs];
    v15 = [v13 initWithContextID:0 storeItemIDs:v14 collectionIdentifierSet:0];

    if ((v9 - 1) >= 3)
    {
      v16 = 1000;
    }

    else
    {
      v16 = v9 - 1;
    }

    [v15 setShuffleType:v16];
    goto LABEL_23;
  }

  v17 = [v6 mediaCollection];

  if (v17)
  {
    v18 = [v6 mediaCollection];
    v19 = [(WFPlayMusicAction *)self mediaQueryFromMediaCollection:v18];

    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v20 = getMPCAssistantQueryPlaybackQueueClass_softClass;
    v40 = getMPCAssistantQueryPlaybackQueueClass_softClass;
    if (!getMPCAssistantQueryPlaybackQueueClass_softClass)
    {
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __getMPCAssistantQueryPlaybackQueueClass_block_invoke;
      v35 = &unk_278C222B8;
      v36 = &v37;
      __getMPCAssistantQueryPlaybackQueueClass_block_invoke(&v32);
      v20 = v38[3];
    }

    v21 = v20;
    _Block_object_dispose(&v37, 8);
    v22 = [[v20 alloc] initWithContextID:0 query:v19];
    v15 = v22;
    if ((v9 - 1) >= 3)
    {
      v23 = 1000;
    }

    else
    {
      v23 = v9 - 1;
    }

    [v22 setShuffleType:v23];

    goto LABEL_23;
  }

  if (v8)
  {
    if ((v9 - 2) >= 2)
    {
      if (v9 != 1)
      {
LABEL_22:
        v15 = 0;
LABEL_23:
        v26 = objc_alloc_init(WFMediaPlaybackController);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __64__WFPlayMusicAction_playContentViaMPCAssistant_routeDescriptor___block_invoke;
        v28[3] = &unk_278C1AB08;
        v28[4] = self;
        v29 = v7;
        v30 = v6;
        v31 = v15;
        v27 = v15;
        [(WFMediaPlaybackController *)v26 getPreferredPlaybackDestinationForPlaybackArchive:v8 completionBlock:v28];

        goto LABEL_24;
      }

      v24 = v8;
      v25 = 0;
    }

    else
    {
      v24 = v8;
      v25 = 1;
    }

    [v24 setBOOLValue:v25 forOption:1];
    goto LABEL_22;
  }

  [(WFPlayMusicAction *)self finishRunningWithError:0];
LABEL_24:
}

void __64__WFPlayMusicAction_playContentViaMPCAssistant_routeDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (([*(a1 + 40) isLocalDevice] & 1) == 0)
    {
      v4 = [*(a1 + 40) routeUID];
      v12[0] = v4;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      [v3 setOutputDeviceUIDs:v5];
    }

    v6 = *(a1 + 32);
    v7 = [*(a1 + 48) playbackArchive];
    v8 = *(a1 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__WFPlayMusicAction_playContentViaMPCAssistant_routeDescriptor___block_invoke_2;
    v10[3] = &unk_278C1AAE0;
    v10[4] = *(a1 + 32);
    v11 = v3;
    [v6 sendPlaybackArchive:v7 orPlaybackQueue:v8 toDestination:v11 completion:v10];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __64__WFPlayMusicAction_playContentViaMPCAssistant_routeDescriptor___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *MEMORY[0x277D85DE8];

    return [v3 finishRunningWithError:a2];
  }

  else
  {
    v6 = [v3 repeatMode];
    if (v6)
    {
      v7 = v6;
      v8 = objc_alloc_init(getMPCAssistantCommandClass());
      v12 = *MEMORY[0x277D27DC8];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      v13[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

      [v8 sendCommand:25 toDestination:*(a1 + 40) withOptions:v10 completion:&__block_literal_global_208_12363];
    }

    result = [*(a1 + 32) finishRunningWithError:0];
    v11 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void __64__WFPlayMusicAction_playContentViaMPCAssistant_routeDescriptor___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = getWFActionsLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v5 = 136315394;
      v6 = "[WFPlayMusicAction playContentViaMPCAssistant:routeDescriptor:]_block_invoke_3";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_23DE30000, v3, OS_LOG_TYPE_FAULT, "%s Error when trying to change repeat mode which is expected for certain content e.g. radio stations: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)mediaQueryFromMediaCollection:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 itemsQuery];

  if (v4)
  {
    v5 = [v3 itemsQuery];
  }

  else
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v6 = getMPMediaPropertyPredicateClass_softClass_12367;
    v36 = getMPMediaPropertyPredicateClass_softClass_12367;
    if (!getMPMediaPropertyPredicateClass_softClass_12367)
    {
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __getMPMediaPropertyPredicateClass_block_invoke_12368;
      v31 = &unk_278C222B8;
      v32 = &v33;
      __getMPMediaPropertyPredicateClass_block_invoke_12368(&v28);
      v6 = v34[3];
    }

    v7 = v6;
    _Block_object_dispose(&v33, 8);
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v8 = getMPMediaItemPropertyIsPlayableSymbolLoc_ptr;
    v36 = getMPMediaItemPropertyIsPlayableSymbolLoc_ptr;
    if (!getMPMediaItemPropertyIsPlayableSymbolLoc_ptr)
    {
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __getMPMediaItemPropertyIsPlayableSymbolLoc_block_invoke;
      v31 = &unk_278C222B8;
      v32 = &v33;
      v9 = MediaPlayerLibrary_12333();
      v10 = dlsym(v9, "MPMediaItemPropertyIsPlayable");
      *(v32[1] + 24) = v10;
      getMPMediaItemPropertyIsPlayableSymbolLoc_ptr = *(v32[1] + 24);
      v8 = v34[3];
    }

    _Block_object_dispose(&v33, 8);
    if (!v8)
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyIsPlayable(void)"];
      [v22 handleFailureInFunction:v23 file:@"WFPlayMusicAction.m" lineNumber:36 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v11 = *v8;
    v12 = [v6 predicateWithValue:MEMORY[0x277CBEC38] forProperty:v11];
    v38[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];

    v14 = objc_alloc(getMPMediaQueryClass());
    v15 = [v3 items];
    v5 = [v14 initWithEntities:v15 entityType:0];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v37 count:16];
    if (v17)
    {
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v16);
          }

          [v5 addFilterPredicate:*(*(&v24 + 1) + 8 * i)];
        }

        v17 = [v16 countByEnumeratingWithState:&v24 objects:v37 count:16];
      }

      while (v17);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)getContentWithCompletionHandler:(id)a3
{
  v26[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFPlayMusicAction *)self parameterValueForKey:@"WFMediaItems" ofClass:objc_opt_class()];
  v6 = [v5 playbackArchiveData];
  if (v6)
  {
    v7 = MEMORY[0x277CCAAC8];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v8 = getMPPlaybackArchiveClass_softClass;
    v25 = getMPPlaybackArchiveClass_softClass;
    if (!getMPPlaybackArchiveClass_softClass)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __getMPPlaybackArchiveClass_block_invoke;
      v21[3] = &unk_278C222B8;
      v21[4] = &v22;
      __getMPPlaybackArchiveClass_block_invoke(v21);
      v8 = v23[3];
    }

    v9 = v8;
    _Block_object_dispose(&v22, 8);
    v20 = 0;
    v10 = [v7 unarchivedObjectOfClass:v8 fromData:v6 error:&v20];
    v11 = v20;
    v12 = [[WFPlayMusicActionContent alloc] initWithPlaybackArchive:v10];
    v4[2](v4, v12, v11);
  }

  else if (v5)
  {
    v13 = [v5 collectionForPlayback];
    v14 = [[WFPlayMusicActionContent alloc] initWithMediaCollection:v13];
    v4[2](v4, v14, 0);
  }

  else
  {
    v15 = [(WFPlayMusicAction *)self parameterValueForKey:@"WFMediaItems" ofClass:objc_opt_class()];
    if (v15)
    {
      v26[0] = objc_opt_class();
      v26[1] = objc_opt_class();
      v26[2] = objc_opt_class();
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __53__WFPlayMusicAction_getContentWithCompletionHandler___block_invoke;
      v18[3] = &unk_278C1EE80;
      v19 = v4;
      [v15 generateCollectionByCoercingToItemClasses:v16 completionHandler:v18];
    }

    else
    {
      v4[2](v4, 0, 0);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __53__WFPlayMusicAction_getContentWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v30 = v9;
  v10 = [v9 collectionByFilteringToItemClass:objc_opt_class() excludedItems:&v30];
  v11 = v30;

  v29 = v11;
  v12 = [v11 collectionByFilteringToItemClass:objc_opt_class() excludedItems:&v29];
  v13 = v29;

  v28 = v13;
  v14 = [v13 collectionByFilteringToItemClass:objc_opt_class() excludedItems:&v28];
  v15 = v28;

  if ([v12 numberOfItems])
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __53__WFPlayMusicAction_getContentWithCompletionHandler___block_invoke_2;
    v26[3] = &unk_278C1F398;
    v27 = *(a1 + 32);
    [v12 getObjectRepresentations:v26 forClass:objc_opt_class()];
  }

  else if ([v14 numberOfItems])
  {
    v16 = [v14 items];
    v17 = [v16 if_map:&__block_literal_global_201];

    if (v17)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x2050000000;
      v18 = getMPMediaItemCollectionClass_softClass;
      v35 = getMPMediaItemCollectionClass_softClass;
      if (!getMPMediaItemCollectionClass_softClass)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __getMPMediaItemCollectionClass_block_invoke;
        v31[3] = &unk_278C222B8;
        v31[4] = &v32;
        __getMPMediaItemCollectionClass_block_invoke(v31);
        v18 = v33[3];
      }

      v19 = v18;
      _Block_object_dispose(&v32, 8);
      v20 = [v18 collectionWithItems:v17];
    }

    else
    {
      v20 = 0;
    }

    v25 = [[WFPlayMusicActionContent alloc] initWithMediaCollection:v20];
    (*(*(a1 + 32) + 16))();
  }

  else if ([v10 numberOfItems])
  {
    v21 = [v10 items];
    v22 = [v21 firstObject];

    v23 = [v22 collection];
    v24 = [[WFPlayMusicActionContent alloc] initWithMediaCollection:v23];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __53__WFPlayMusicAction_getContentWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = [a2 if_compactMap:&__block_literal_global_12381];
  v7 = [[WFPlayMusicActionContent alloc] initWithStoreIDs:v8];
  (*(*(a1 + 32) + 16))();
}

- (BOOL)hasPlaybackArchive
{
  v2 = [(WFPlayMusicAction *)self parameterStateForKey:@"WFMediaItems"];
  v3 = [v2 value];
  v4 = [v3 type];

  LOBYTE(v3) = [v4 isEqualToString:*MEMORY[0x277D7CD88]];
  return v3;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = [(WFPlayMusicAction *)self parameterValueForKey:@"WFMediaRoute" ofClass:objc_opt_class()];
  if (!v4)
  {
    v4 = [[WFMediaRouteDescriptor alloc] initWithRouteUID:0 groupUID:0 routeName:0 isLocalDevice:1];
  }

  if (![(WFPlayMusicAction *)self attemptContextualPlayback])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__WFPlayMusicAction_runAsynchronouslyWithInput___block_invoke;
    v5[3] = &unk_278C1AA58;
    v5[4] = self;
    v6 = v4;
    [(WFPlayMusicAction *)self getContentWithCompletionHandler:v5];
  }
}

void __48__WFPlayMusicAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v7 && v5)
  {
    [*(a1 + 32) finishRunningWithError:v5];
    goto LABEL_9;
  }

  v6 = [v7 playbackArchive];
  if (v6)
  {
  }

  else if ([*(a1 + 40) isLocalDevice])
  {
    [*(a1 + 32) playContentViaMusicPlayer:v7];
    goto LABEL_9;
  }

  [*(a1 + 32) playContentViaMPCAssistant:v7 routeDescriptor:*(a1 + 40)];
LABEL_9:
}

- (void)initializeParameters
{
  v6.receiver = self;
  v6.super_class = WFPlayMusicAction;
  [(WFPlayMusicAction *)&v6 initializeParameters];
  v3 = [(WFPlayMusicAction *)self parameterForKey:@"WFMediaItems"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setAction:self];
}

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFPlayMusicAction;
  v2 = [(WFPlayMusicAction *)&v5 disabledOnPlatforms];
  v3 = [v2 arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

@end