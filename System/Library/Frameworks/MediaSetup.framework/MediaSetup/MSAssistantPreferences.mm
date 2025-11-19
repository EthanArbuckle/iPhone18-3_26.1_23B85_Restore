@interface MSAssistantPreferences
+ (BOOL)isMultiUserEnabledForSiri;
+ (id)intentExamples;
+ (id)sharedPreferences;
+ (id)supportedMediaIntents;
- (MSAssistantPreferences)init;
- (void)getHomeUserIDForSpeaker:(id)a3 completion:(id)a4;
- (void)getSharedUserIDForHomeUser:(id)a3 completion:(id)a4;
@end

@implementation MSAssistantPreferences

+ (id)sharedPreferences
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MSAssistantPreferences_sharedPreferences__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedPreferences_onceToken != -1)
  {
    dispatch_once(&sharedPreferences_onceToken, block);
  }

  v2 = sharedPreferences_sharedInstance;

  return v2;
}

uint64_t __43__MSAssistantPreferences_sharedPreferences__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedPreferences_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (MSAssistantPreferences)init
{
  v6.receiver = self;
  v6.super_class = MSAssistantPreferences;
  v2 = [(MSAssistantPreferences *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CEF318]);
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

- (void)getHomeUserIDForSpeaker:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  connection = self->_connection;
  if (connection)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__MSAssistantPreferences_getHomeUserIDForSpeaker_completion___block_invoke;
    v11[3] = &unk_278AA2C88;
    v12 = v7;
    [(AFMultiUserConnection *)connection getSharedUserInfoForSharedUserID:v6 completion:v11];
  }

  else if (v7)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4099 userInfo:0];
    (v8)[2](v8, 0, v10);
  }
}

void __61__MSAssistantPreferences_getHomeUserIDForSpeaker_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 homeUserId];
    (*(v2 + 16))(v2, v3, 0);
  }
}

- (void)getSharedUserIDForHomeUser:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  connection = self->_connection;
  if (connection)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__MSAssistantPreferences_getSharedUserIDForHomeUser_completion___block_invoke;
    v11[3] = &unk_278AA2CB0;
    v12 = v7;
    [(AFMultiUserConnection *)connection getSharedUserIdForHomeUserId:v6 completion:v11];
  }

  else if (v7)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4099 userInfo:0];
    (v8)[2](v8, 0, v10);
  }
}

uint64_t __64__MSAssistantPreferences_getSharedUserIDForHomeUser_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (BOOL)isMultiUserEnabledForSiri
{
  v2 = AFPreferencesSupportedMultiUserLanguages();
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 languageCode];

  LOBYTE(v3) = [v2 containsObject:v4];
  return v3;
}

+ (id)intentExamples
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 preferredLocalizations];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [MEMORY[0x277CCA8D8] mainBundle];
        v11 = [v10 pathForResource:@"AppIntentVocabulary" ofType:@"plist" inDirectory:&stru_284C4B358 forLocalization:v9];

        if (v11)
        {
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v11];
          v14 = [v13 valueForKeyPath:@"IntentPhrases"];
          v15 = [v14 valueForKeyPath:@"IntentExamples"];

          v12 = [v15 firstObject];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)supportedMediaIntents
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"INSupportedMediaCategories"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  v7 = MEMORY[0x277CBEB98];
  v8 = [v6 copy];
  v9 = [v7 setWithArray:v8];

  return v9;
}

@end