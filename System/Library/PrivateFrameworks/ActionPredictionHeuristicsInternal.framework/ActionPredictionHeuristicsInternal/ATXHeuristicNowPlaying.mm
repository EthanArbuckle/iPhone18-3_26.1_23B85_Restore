@interface ATXHeuristicNowPlaying
+ (id)_defaults;
- (ATXHeuristicNowPlaying)initWithPersistenceIdentifier:(id)a3;
- (id)_expirationDate;
- (id)_expirationDateKey;
- (id)_produceSuggestions;
- (id)heuristicResultWithEnvironment:(id)a3;
- (id)permanentRefreshTriggers;
- (void)_setExpirationDate:(uint64_t)a1;
@end

@implementation ATXHeuristicNowPlaying

- (ATXHeuristicNowPlaying)initWithPersistenceIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(ATXHeuristicNowPlaying *)a2 initWithPersistenceIdentifier:?];
  }

  v11.receiver = self;
  v11.super_class = ATXHeuristicNowPlaying;
  v7 = [(ATXHeuristicNowPlaying *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_9];
    mediaRemoteNowPlaying = v7->_mediaRemoteNowPlaying;
    v7->_mediaRemoteNowPlaying = v8;

    objc_storeStrong(&v7->_persistenceIdentifier, a3);
  }

  return v7;
}

id __56__ATXHeuristicNowPlaying_initWithPersistenceIdentifier___block_invoke()
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__12;
  v14 = __Block_byref_object_dispose__12;
  v15 = 0;
  v0 = dispatch_semaphore_create(0);
  v1 = [MEMORY[0x277D279B8] proactiveEndpointController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ATXHeuristicNowPlaying_initWithPersistenceIdentifier___block_invoke_28;
  v7[3] = &unk_278C3D3A8;
  v9 = &v10;
  v2 = v0;
  v8 = v2;
  [v1 performRequestWithCompletion:v7];

  v3 = v2;
  v4 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v3, v4);

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __56__ATXHeuristicNowPlaying_initWithPersistenceIdentifier___block_invoke_28(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)permanentRefreshTriggers
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v4 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"com.apple.MediaRemote.lockScreenControlsDidChange" type:1];
  v5 = [v3 initWithObjects:{v4, 0}];

  objc_autoreleasePoolPop(v2);

  return v5;
}

- (id)heuristicResultWithEnvironment:(id)a3
{
  v4 = [ATXContextHeuristicResult alloc];
  v5 = [(ATXHeuristicNowPlaying *)&self->super.isa _produceSuggestions];
  v6 = [MEMORY[0x277CBEB98] set];
  v7 = [(ATXContextHeuristicResult *)v4 initWithSuggestions:v5 additionalRefreshTriggers:v6];

  return v7;
}

+ (id)_defaults
{
  objc_opt_self();
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x277CEBD00]];

  return v1;
}

- (id)_produceSuggestions
{
  if (a1)
  {
    v2 = [a1[2] result];
    v3 = [v2 playerPath];
    v4 = [v3 origin];
    v5 = [v4 isLocal];

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v7 = [v2 playerPath];
      v8 = [v7 origin];
      v6 = [v8 displayName];
    }

    v9 = [(ATXHeuristicNowPlaying *)a1 _expirationDate];
    v10 = [v2 playbackState];
    switch(v10)
    {
      case 5:
        goto LABEL_8;
      case 2:
        if (!v9)
        {
          v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
          [(ATXHeuristicNowPlaying *)a1 _setExpirationDate:v9];
LABEL_11:
          v11 = [v2 playbackQueue];
          v12 = [v11 contentItems];
          v13 = [v12 firstObject];

          if (!v13)
          {
            goto LABEL_20;
          }

          v14 = [v2 playerPath];
          v15 = [v14 client];
          v16 = [v15 bundleIdentifier];
          v17 = [v16 hasPrefix:@"com.apple."];

          if (v17)
          {
            v18 = [[ATXContextMediaSuggestionProducer alloc] initWithMediaRemoteContentItem:v13 destDisplayName:v6 expirationDate:v9];
            v19 = objc_opt_new();
            v20 = OUTLINED_FUNCTION_0_7();
            v22 = [v21 suggestionForTrackWithReason:v20 score:?];
            if (v22)
            {
              [v19 addObject:v22];
            }

            v23 = OUTLINED_FUNCTION_0_7();
            v25 = [v24 suggestionForArtistWithReason:v23 score:?];
            if (v25)
            {
              [v19 addObject:v25];
            }

            v26 = OUTLINED_FUNCTION_0_7();
            v28 = [v27 suggestionForAlbumWithReason:v26 score:?];
            if (v28)
            {
              [v19 addObject:v28];
            }
          }

          else
          {
LABEL_20:
            v19 = MEMORY[0x277CBEBF8];
          }

          goto LABEL_25;
        }

        [v9 timeIntervalSinceNow];
        break;
      case 1:
LABEL_8:
        if (v9)
        {

          [(ATXHeuristicNowPlaying *)a1 _setExpirationDate:?];
        }

        v9 = 0;
        goto LABEL_11;
    }

    v19 = MEMORY[0x277CBEBF8];
LABEL_25:

    goto LABEL_26;
  }

  v19 = 0;
LABEL_26:

  return v19;
}

- (id)_expirationDateKey
{
  if (a1)
  {
    a1 = [a1[1] stringByAppendingString:@"Expiration"];
    v1 = vars8;
  }

  return a1;
}

- (id)_expirationDate
{
  v1 = a1;
  if (a1)
  {
    v2 = +[ATXHeuristicNowPlaying _defaults];
    v3 = [v1[1] stringByAppendingString:@"Expiration"];
    v1 = [v2 objectForKey:v3];
  }

  return v1;
}

- (void)_setExpirationDate:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    v5 = +[ATXHeuristicNowPlaying _defaults];
    v4 = [*(a1 + 8) stringByAppendingString:@"Expiration"];
    [v5 setObject:v3 forKey:v4];
  }
}

- (void)initWithPersistenceIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXHeuristicNowPlaying.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"persistenceIdentifier"}];
}

@end