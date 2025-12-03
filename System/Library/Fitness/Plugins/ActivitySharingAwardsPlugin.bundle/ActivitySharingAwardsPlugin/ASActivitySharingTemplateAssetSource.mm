@interface ASActivitySharingTemplateAssetSource
- (ACHTemplateAssetSourceDelegate)assetSourceDelegate;
- (ASActivitySharingTemplateAssetSource)initWithHealthStore:(id)store;
- (id)_competitionForVictoryTemplate:(id)template;
- (id)_friendForVictoryTemplate:(id)template;
- (id)_queue_friendWithUUID:(id)d;
- (id)customPlaceholderValuesForTemplate:(id)template error:(id *)error;
- (id)friendWithUUID:(id)d;
- (id)localizationBundleURLForTemplate:(id)template;
- (id)propertyListBundleURLForTemplate:(id)template;
- (id)resourceBundleURLForTemplate:(id)template;
- (void)_queue_updateWithFriends:(id)friends;
- (void)_startFriendsQuery;
- (void)_updateWithFriends:(id)friends;
@end

@implementation ASActivitySharingTemplateAssetSource

- (ASActivitySharingTemplateAssetSource)initWithHealthStore:(id)store
{
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = ASActivitySharingTemplateAssetSource;
  v6 = [(ASActivitySharingTemplateAssetSource *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = HKCreateSerialDispatchQueue();
    friendListQueue = v7->_friendListQueue;
    v7->_friendListQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CE9518]);
    activitySharingClient = v7->_activitySharingClient;
    v7->_activitySharingClient = v10;

    v12 = v7->_activitySharingClient;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23397B064;
    v14[3] = &unk_2789F67E8;
    v15 = v7;
    [(ASActivitySharingClient *)v12 activateWithCompletionHandler:v14];
  }

  return v7;
}

- (id)localizationBundleURLForTemplate:(id)template
{
  uniqueName = [template uniqueName];
  v4 = ASAchievementLocalizationPathForTemplate();

  return v4;
}

- (id)propertyListBundleURLForTemplate:(id)template
{
  templateCopy = template;
  uniqueName = [templateCopy uniqueName];
  v6 = ASIsCompetitionVictoryTemplate();

  if (v6)
  {
    v7 = [(ASActivitySharingTemplateAssetSource *)self _competitionForVictoryTemplate:templateCopy];
    v8 = v7;
    if (v7)
    {
      [v7 victoryBadgeStyle];
      v9 = ASCompetitionVictoryPropertyListPathForStyle();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = ASCompetitionParticipationResourcePath();
  }

  return v9;
}

- (id)resourceBundleURLForTemplate:(id)template
{
  templateCopy = template;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FC0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEBUG))
  {
    sub_23397BBD4(v5, templateCopy);
  }

  uniqueName = [templateCopy uniqueName];
  v7 = ASIsCompetitionVictoryTemplate();

  if (v7)
  {
    v8 = [(ASActivitySharingTemplateAssetSource *)self _competitionForVictoryTemplate:templateCopy];
    v9 = v8;
    if (v8)
    {
      [v8 victoryBadgeStyle];
      v10 = ASCompetitionVictoryResourcePathForStyle();
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = ASCompetitionParticipationResourcePath();
  }

  return v10;
}

- (id)customPlaceholderValuesForTemplate:(id)template error:(id *)error
{
  templateCopy = template;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uniqueName = [templateCopy uniqueName];
  v8 = ASIsCompetitionVictoryTemplate();

  if (v8)
  {
    v9 = [(ASActivitySharingTemplateAssetSource *)self _friendForVictoryTemplate:templateCopy];
    v10 = v9;
    if (v9)
    {
      displayName = [v9 displayName];
      [dictionary setObject:displayName forKeyedSubscript:*MEMORY[0x277CE9148]];

      currentCompetition = [v10 currentCompetition];

      if (currentCompetition)
      {
        currentCompetition2 = [v10 currentCompetition];
        lastDayOfCompetition = [currentCompetition2 lastDayOfCompetition];
        v15 = FILocalizedDayName();
        [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277CE9140]];
      }
    }
  }

  return dictionary;
}

- (void)_startFriendsQuery
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277CE9520]);
  activitySharingClient = self->_activitySharingClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23397B480;
  v7[3] = &unk_2789F6810;
  objc_copyWeak(&v8, &location);
  v5 = [v3 initWithActivitySharingClient:activitySharingClient updateHandler:v7];
  friendQuery = self->_friendQuery;
  self->_friendQuery = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_updateWithFriends:(id)friends
{
  friendsCopy = friends;
  friendListQueue = self->_friendListQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23397B5A8;
  v7[3] = &unk_2789F6838;
  v7[4] = self;
  v8 = friendsCopy;
  v6 = friendsCopy;
  dispatch_async(friendListQueue, v7);
}

- (void)_queue_updateWithFriends:(id)friends
{
  friendListQueue = self->_friendListQueue;
  friendsCopy = friends;
  dispatch_assert_queue_V2(friendListQueue);
  v6 = [friendsCopy copy];

  allFriends = self->_allFriends;
  self->_allFriends = v6;

  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FC0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_23397A000, v8, OS_LOG_TYPE_DEFAULT, "Friends updated, requesting asset source update", v10, 2u);
  }

  assetSourceDelegate = [(ASActivitySharingTemplateAssetSource *)self assetSourceDelegate];
  [assetSourceDelegate templateAssetSourceDidUpdateAssets:self];
}

- (id)friendWithUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_23397B788;
  v16 = sub_23397B798;
  v17 = 0;
  friendListQueue = self->_friendListQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23397B7A0;
  block[3] = &unk_2789F6860;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(friendListQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_queue_friendWithUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_friendListQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_allFriends;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        contact = [v9 contact];
        uUID = [contact UUID];
        v12 = [uUID isEqual:dCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_competitionForVictoryTemplate:(id)template
{
  v3 = [(ASActivitySharingTemplateAssetSource *)self _friendForVictoryTemplate:template];
  currentOrMostRecentCompetition = [v3 currentOrMostRecentCompetition];
  if (!currentOrMostRecentCompetition)
  {
    ASLoggingInitialize();
    v5 = *MEMORY[0x277CE8FC0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_ERROR))
    {
      sub_23397BCE0(v5, v3);
    }
  }

  return currentOrMostRecentCompetition;
}

- (id)_friendForVictoryTemplate:(id)template
{
  templateCopy = template;
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  predicate = [templateCopy predicate];
  v7 = [v5 initWithUUIDString:predicate];

  if (v7)
  {
    v8 = [(ASActivitySharingTemplateAssetSource *)self friendWithUUID:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_ERROR))
      {
        sub_23397BD98();
      }
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_ERROR))
    {
      sub_23397BE00();
    }

    v9 = 0;
  }

  return v9;
}

- (ACHTemplateAssetSourceDelegate)assetSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assetSourceDelegate);

  return WeakRetained;
}

@end