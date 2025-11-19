@interface ATXFakeModeEntityScorer
- (ATXFakeModeEntityScorer)init;
- (void)rankedAppsForDenyListForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedAppsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedAppsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedAppsForNotificationsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedContactsForDenyListForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedContactsForDenyListForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedContactsForNotificationsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedNotificationsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedNotificationsForMode:(unint64_t)a3 reply:(id)a4;
- (void)scoreApps:(id)a3 mode:(unint64_t)a4;
- (void)scoreApps:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreAppsForDenyList:(id)a3 mode:(unint64_t)a4;
- (void)scoreAppsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreContacts:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreContactsForDenyList:(id)a3 mode:(unint64_t)a4;
- (void)scoreContactsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreNotifications:(id)a3 mode:(unint64_t)a4;
- (void)scoreNotifications:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreUserNotifications:(id)a3 mode:(unint64_t)a4;
- (void)scoreUserNotifications:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)setScoreForBundleId:(id)a3 score:(double)a4;
- (void)setScoreForContactId:(id)a3 score:(double)a4;
- (void)setScoreForEntity:(id)a3 score:(double)a4;
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

- (void)setScoreForEntity:(id)a3 score:(double)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithDouble:a4];
  [(NSMutableDictionary *)self->_entityToScoreMapping setObject:v8 forKeyedSubscript:v7];
}

- (void)setScoreForBundleId:(id)a3 score:(double)a4
{
  v6 = a3;
  v8 = [[ATXAppModeEntity alloc] initWithBundleId:v6];

  v7 = [(ATXAppModeEntity *)v8 identifier];
  [(ATXFakeModeEntityScorer *)self setScoreForEntity:v7 score:a4];
}

- (void)setScoreForContactId:(id)a3 score:(double)a4
{
  v6 = a3;
  v8 = [[ATXContactModeEntity alloc] initWithDisplayName:0 rawIdentifier:0 cnContactId:v6];

  v7 = [(ATXContactModeEntity *)v8 cnContactId];
  [(ATXFakeModeEntityScorer *)self setScoreForEntity:v7 score:a4];
}

- (void)scoreApps:(id)a3 mode:(unint64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
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
        v11 = [v9 identifier];
        v12 = [(NSMutableDictionary *)entityToScoreMapping objectForKeyedSubscript:v11];
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

- (void)scoreNotifications:(id)a3 mode:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_75];
  [(ATXFakeModeEntityScorer *)self scoreApps:v7 mode:a4];
  v8 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_18_1];
  [(ATXFakeModeEntityScorer *)self scoreContacts:v8 mode:a4 reply:&__block_literal_global_21_0];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
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
        v15 = [v14 appEntity];
        v16 = [v15 scoreMetadata];

        v17 = [v14 contactEntity];
        v18 = [v17 scoreMetadata];

        if (v16)
        {
          v19 = v18 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          if (v16)
          {
            v20 = v16;
          }

          else
          {
            v20 = v18;
          }
        }

        else
        {
          [v16 score];
          v22 = v21;
          [v18 score];
          if (v22 <= v23)
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }
        }

        [v14 setScoreMetadata:v20];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }
}

- (void)scoreUserNotifications:(id)a3 mode:(unint64_t)a4
{
  v19 = a3;
  v6 = [v19 _pas_mappedArrayWithTransform:&__block_literal_global_24_1];
  [(ATXFakeModeEntityScorer *)self scoreNotifications:v6 mode:a4];
  if ([v19 count])
  {
    v7 = 0;
    do
    {
      v8 = [ATXUserNotificationModelScore alloc];
      v9 = [v6 objectAtIndexedSubscript:v7];
      v10 = [v9 scoreMetadata];
      [v10 score];
      v12 = v11;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v14 = v13;
      v15 = objc_opt_new();
      v16 = [(ATXUserNotificationModelScore *)v8 initFromModelScoreData:@"ATXModeEntityScorer" modelVersion:0 score:v15 scoreTimestamp:0 scoreUUID:v12 scoreInfo:v14];

      v17 = [v19 objectAtIndexedSubscript:v7];
      v18 = [v17 derivedData];
      [v18 addScore:v16];

      ++v7;
    }

    while (v7 < [v19 count]);
  }
}

ATXNotificationModeEntity *__55__ATXFakeModeEntityScorer_scoreUserNotifications_mode___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXNotificationModeEntity alloc] initWithUserNotification:v2];

  return v3;
}

- (void)scoreAppsForDenyList:(id)a3 mode:(unint64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
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
        v11 = [v9 identifier];
        v12 = [(NSMutableDictionary *)entityToScoreMappingForDenyList objectForKeyedSubscript:v11];
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

- (void)scoreContactsForDenyList:(id)a3 mode:(unint64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
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
        v11 = [v9 identifier];
        v12 = [(NSMutableDictionary *)entityToScoreMappingForDenyList objectForKeyedSubscript:v11];
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

- (void)rankedAppsForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  v8 = [(ATXFakeModeEntityScorer *)self rankedAppsForMode:a3];
  (*(a4 + 2))(v7, v8, 0);
}

- (void)rankedAppsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  v9 = [(ATXFakeModeEntityScorer *)self rankedAppsForMode:a3];
  (*(a5 + 2))(v8, v9, 0);
}

- (void)rankedAppsForNotificationsForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  v8 = [(ATXFakeModeEntityScorer *)self rankedAppsForNotificationsForMode:a3];
  (*(a4 + 2))(v7, v8, 0);
}

- (void)rankedContactsForNotificationsForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  v8 = [(ATXFakeModeEntityScorer *)self rankedContactsForNotificationsForMode:a3];
  (*(a4 + 2))(v7, v8, 0);
}

- (void)rankedNotificationsForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  v8 = [(ATXFakeModeEntityScorer *)self rankedNotificationsForMode:a3];
  (*(a4 + 2))(v7, v8, 0);
}

- (void)rankedNotificationsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  v9 = [(ATXFakeModeEntityScorer *)self rankedNotificationsForMode:a3];
  (*(a5 + 2))(v8, v9, 0);
}

- (void)rankedAppsForDenyListForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  v8 = [(ATXFakeModeEntityScorer *)self rankedAppsForDenyListForMode:a3];
  (*(a4 + 2))(v7, v8, 0);
}

- (void)rankedContactsForDenyListForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  v8 = [(ATXFakeModeEntityScorer *)self rankedContactsForDenyListForMode:a3];
  (*(a4 + 2))(v7, v8, 0);
}

- (void)rankedContactsForDenyListForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v9 = a5;
  v10 = [(ATXFakeModeEntityScorer *)self rankedContactsForDenyListForMode:a3 options:a4];
  (*(a5 + 2))(v9, v10, 0);
}

- (void)scoreApps:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  [(ATXFakeModeEntityScorer *)self scoreApps:a3 mode:a4];
  v8[2](v8, 0);
}

- (void)scoreContacts:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v24 = a5;
  obj = v7;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
        v14 = [v12 identifier];
        v15 = [(NSMutableDictionary *)entityToScoreMapping objectForKeyedSubscript:v14];
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

  v24[2](v24, 0);
}

- (void)scoreNotifications:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  [(ATXFakeModeEntityScorer *)self scoreNotifications:a3 mode:a4];
  v8[2](v8, 0);
}

- (void)scoreUserNotifications:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  [(ATXFakeModeEntityScorer *)self scoreUserNotifications:a3 mode:a4];
  v8[2](v8, 0);
}

- (void)scoreAppsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  [(ATXFakeModeEntityScorer *)self scoreAppsForDenyList:a3 mode:a4];
  v8[2](v8, 0);
}

- (void)scoreContactsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  [(ATXFakeModeEntityScorer *)self scoreContactsForDenyList:a3 mode:a4];
  v8[2](v8, 0);
}

@end