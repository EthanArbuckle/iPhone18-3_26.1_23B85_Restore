@interface ATXFakeModeEntityScorer
- (ATXFakeModeEntityScorer)init;
- (void)rankedAppsForDenyListForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedAppsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedAppsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedAppsForNotificationsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedContactsForDenyListForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedContactsForDenyListForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedContactsForNotificationsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedNotificationsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedNotificationsForMode:(unint64_t)mode reply:(id)reply;
- (void)scoreApps:(id)apps mode:(unint64_t)mode;
- (void)scoreApps:(id)apps mode:(unint64_t)mode reply:(id)reply;
- (void)scoreAppsForDenyList:(id)list mode:(unint64_t)mode;
- (void)scoreAppsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply;
- (void)scoreContacts:(id)contacts mode:(unint64_t)mode reply:(id)reply;
- (void)scoreContactsForDenyList:(id)list mode:(unint64_t)mode;
- (void)scoreContactsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply;
- (void)scoreNotifications:(id)notifications mode:(unint64_t)mode;
- (void)scoreNotifications:(id)notifications mode:(unint64_t)mode reply:(id)reply;
- (void)scoreUserNotifications:(id)notifications mode:(unint64_t)mode;
- (void)scoreUserNotifications:(id)notifications mode:(unint64_t)mode reply:(id)reply;
- (void)setScoreForBundleId:(id)id score:(double)score;
- (void)setScoreForContactId:(id)id score:(double)score;
- (void)setScoreForEntity:(id)entity score:(double)score;
@end

@implementation ATXFakeModeEntityScorer

- (ATXFakeModeEntityScorer)init
{
  v8.receiver = self;
  v8.super_class = ATXFakeModeEntityScorer;
  v2 = [(ATXFakeModeEntityScorer *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    entityToScoreMapping = v2->_entityToScoreMapping;
    v2->_entityToScoreMapping = v3;

    v5 = objc_opt_new();
    entityToScoreMappingForDenyList = v2->_entityToScoreMappingForDenyList;
    v2->_entityToScoreMappingForDenyList = v5;
  }

  return v2;
}

- (void)setScoreForEntity:(id)entity score:(double)score
{
  v6 = MEMORY[0x1E696AD98];
  entityCopy = entity;
  v8 = [v6 numberWithDouble:score];
  [(NSMutableDictionary *)self->_entityToScoreMapping setObject:v8 forKeyedSubscript:entityCopy];
}

- (void)setScoreForBundleId:(id)id score:(double)score
{
  idCopy = id;
  v8 = [[ATXAppModeEntity alloc] initWithBundleId:idCopy];

  identifier = [(ATXAppModeEntity *)v8 identifier];
  [(ATXFakeModeEntityScorer *)self setScoreForEntity:identifier score:score];
}

- (void)setScoreForContactId:(id)id score:(double)score
{
  idCopy = id;
  v8 = [[ATXContactModeEntity alloc] initWithDisplayName:0 rawIdentifier:0 cnContactId:idCopy];

  cnContactId = [(ATXContactModeEntity *)v8 cnContactId];
  [(ATXFakeModeEntityScorer *)self setScoreForEntity:cnContactId score:score];
}

- (void)scoreApps:(id)apps mode:(unint64_t)mode
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = apps;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        entityToScoreMapping = self->_entityToScoreMapping;
        identifier = [v9 identifier];
        v12 = [(NSMutableDictionary *)entityToScoreMapping objectForKeyedSubscript:identifier];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_defaultAppScore];
        }

        v15 = v14;

        v16 = [ATXModeEntityScore alloc];
        [v15 doubleValue];
        v18 = v17;
        v19 = objc_opt_new();
        v20 = [(ATXModeEntityScore *)v16 initWithScore:0 featureVector:v19 uuid:v18];

        [v9 setScoreMetadata:v20];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }
}

- (void)scoreNotifications:(id)notifications mode:(unint64_t)mode
{
  v29 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  v7 = [notificationsCopy _pas_mappedArrayWithTransform:&__block_literal_global_75];
  [(ATXFakeModeEntityScorer *)self scoreApps:v7 mode:mode];
  v8 = [notificationsCopy _pas_mappedArrayWithTransform:&__block_literal_global_18_1];
  [(ATXFakeModeEntityScorer *)self scoreContacts:v8 mode:mode reply:&__block_literal_global_21_0];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = notificationsCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        appEntity = [v14 appEntity];
        scoreMetadata = [appEntity scoreMetadata];

        contactEntity = [v14 contactEntity];
        scoreMetadata2 = [contactEntity scoreMetadata];

        if (scoreMetadata)
        {
          v19 = scoreMetadata2 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          if (scoreMetadata)
          {
            v20 = scoreMetadata;
          }

          else
          {
            v20 = scoreMetadata2;
          }
        }

        else
        {
          [scoreMetadata score];
          v22 = v21;
          [scoreMetadata2 score];
          if (v22 <= v23)
          {
            v20 = scoreMetadata2;
          }

          else
          {
            v20 = scoreMetadata;
          }
        }

        [v14 setScoreMetadata:v20];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }
}

- (void)scoreUserNotifications:(id)notifications mode:(unint64_t)mode
{
  notificationsCopy = notifications;
  v6 = [notificationsCopy _pas_mappedArrayWithTransform:&__block_literal_global_24_1];
  [(ATXFakeModeEntityScorer *)self scoreNotifications:v6 mode:mode];
  if ([notificationsCopy count])
  {
    v7 = 0;
    do
    {
      v8 = [ATXUserNotificationModelScore alloc];
      v9 = [v6 objectAtIndexedSubscript:v7];
      scoreMetadata = [v9 scoreMetadata];
      [scoreMetadata score];
      v12 = v11;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v14 = v13;
      v15 = objc_opt_new();
      v16 = [(ATXUserNotificationModelScore *)v8 initFromModelScoreData:@"ATXModeEntityScorer" modelVersion:0 score:v15 scoreTimestamp:0 scoreUUID:v12 scoreInfo:v14];

      v17 = [notificationsCopy objectAtIndexedSubscript:v7];
      derivedData = [v17 derivedData];
      [derivedData addScore:v16];

      ++v7;
    }

    while (v7 < [notificationsCopy count]);
  }
}

ATXNotificationModeEntity *__55__ATXFakeModeEntityScorer_scoreUserNotifications_mode___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXNotificationModeEntity alloc] initWithUserNotification:v2];

  return v3;
}

- (void)scoreAppsForDenyList:(id)list mode:(unint64_t)mode
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = list;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        entityToScoreMappingForDenyList = self->_entityToScoreMappingForDenyList;
        identifier = [v9 identifier];
        v12 = [(NSMutableDictionary *)entityToScoreMappingForDenyList objectForKeyedSubscript:identifier];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_defaultAppScore];
        }

        v15 = v14;

        v16 = [ATXModeEntityScore alloc];
        [v15 doubleValue];
        v18 = v17;
        v19 = objc_opt_new();
        v20 = [(ATXModeEntityScore *)v16 initWithScore:0 featureVector:v19 uuid:v18];

        [v9 setScoreMetadata:v20];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }
}

- (void)scoreContactsForDenyList:(id)list mode:(unint64_t)mode
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = list;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        entityToScoreMappingForDenyList = self->_entityToScoreMappingForDenyList;
        identifier = [v9 identifier];
        v12 = [(NSMutableDictionary *)entityToScoreMappingForDenyList objectForKeyedSubscript:identifier];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_defaultContactScore];
        }

        v15 = v14;

        v16 = [ATXModeEntityScore alloc];
        [v15 doubleValue];
        v18 = v17;
        v19 = objc_opt_new();
        v20 = [(ATXModeEntityScore *)v16 initWithScore:0 featureVector:v19 uuid:v18];

        [v9 setScoreMetadata:v20];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }
}

- (void)rankedAppsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v8 = [(ATXFakeModeEntityScorer *)self rankedAppsForMode:mode];
  (*(reply + 2))(replyCopy, v8, 0);
}

- (void)rankedAppsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  v9 = [(ATXFakeModeEntityScorer *)self rankedAppsForMode:mode];
  (*(reply + 2))(replyCopy, v9, 0);
}

- (void)rankedAppsForNotificationsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v8 = [(ATXFakeModeEntityScorer *)self rankedAppsForNotificationsForMode:mode];
  (*(reply + 2))(replyCopy, v8, 0);
}

- (void)rankedContactsForNotificationsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v8 = [(ATXFakeModeEntityScorer *)self rankedContactsForNotificationsForMode:mode];
  (*(reply + 2))(replyCopy, v8, 0);
}

- (void)rankedNotificationsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v8 = [(ATXFakeModeEntityScorer *)self rankedNotificationsForMode:mode];
  (*(reply + 2))(replyCopy, v8, 0);
}

- (void)rankedNotificationsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  v9 = [(ATXFakeModeEntityScorer *)self rankedNotificationsForMode:mode];
  (*(reply + 2))(replyCopy, v9, 0);
}

- (void)rankedAppsForDenyListForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v8 = [(ATXFakeModeEntityScorer *)self rankedAppsForDenyListForMode:mode];
  (*(reply + 2))(replyCopy, v8, 0);
}

- (void)rankedContactsForDenyListForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v8 = [(ATXFakeModeEntityScorer *)self rankedContactsForDenyListForMode:mode];
  (*(reply + 2))(replyCopy, v8, 0);
}

- (void)rankedContactsForDenyListForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  v10 = [(ATXFakeModeEntityScorer *)self rankedContactsForDenyListForMode:mode options:options];
  (*(reply + 2))(replyCopy, v10, 0);
}

- (void)scoreApps:(id)apps mode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  [(ATXFakeModeEntityScorer *)self scoreApps:apps mode:mode];
  replyCopy[2](replyCopy, 0);
}

- (void)scoreContacts:(id)contacts mode:(unint64_t)mode reply:(id)reply
{
  v31 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  replyCopy = reply;
  obj = contactsCopy;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [contactsCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        entityToScoreMapping = self->_entityToScoreMapping;
        identifier = [v12 identifier];
        v15 = [(NSMutableDictionary *)entityToScoreMapping objectForKeyedSubscript:identifier];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_defaultContactScore];
        }

        v18 = v17;

        v19 = [ATXModeEntityScore alloc];
        [v18 doubleValue];
        v21 = v20;
        v22 = objc_opt_new();
        v23 = [(ATXModeEntityScore *)v19 initWithScore:0 featureVector:v22 uuid:v21];

        [v12 setScoreMetadata:v23];
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  replyCopy[2](replyCopy, 0);
}

- (void)scoreNotifications:(id)notifications mode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  [(ATXFakeModeEntityScorer *)self scoreNotifications:notifications mode:mode];
  replyCopy[2](replyCopy, 0);
}

- (void)scoreUserNotifications:(id)notifications mode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  [(ATXFakeModeEntityScorer *)self scoreUserNotifications:notifications mode:mode];
  replyCopy[2](replyCopy, 0);
}

- (void)scoreAppsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  [(ATXFakeModeEntityScorer *)self scoreAppsForDenyList:list mode:mode];
  replyCopy[2](replyCopy, 0);
}

- (void)scoreContactsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  [(ATXFakeModeEntityScorer *)self scoreContactsForDenyList:list mode:mode];
  replyCopy[2](replyCopy, 0);
}

@end