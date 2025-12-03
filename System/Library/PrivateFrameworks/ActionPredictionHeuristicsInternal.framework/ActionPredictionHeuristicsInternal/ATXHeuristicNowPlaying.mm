@interface ATXHeuristicNowPlaying
+ (id)_defaults;
- (ATXHeuristicNowPlaying)initWithPersistenceIdentifier:(id)identifier;
- (id)_expirationDate;
- (id)_expirationDateKey;
- (id)_produceSuggestions;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
- (void)_setExpirationDate:(uint64_t)date;
@end

@implementation ATXHeuristicNowPlaying

- (ATXHeuristicNowPlaying)initWithPersistenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
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

    objc_storeStrong(&v7->_persistenceIdentifier, identifier);
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

- (id)heuristicResultWithEnvironment:(id)environment
{
  v4 = [ATXContextHeuristicResult alloc];
  _produceSuggestions = [(ATXHeuristicNowPlaying *)&self->super.isa _produceSuggestions];
  v6 = [MEMORY[0x277CBEB98] set];
  v7 = [(ATXContextHeuristicResult *)v4 initWithSuggestions:_produceSuggestions additionalRefreshTriggers:v6];

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
  if (self)
  {
    result = [self[2] result];
    playerPath = [result playerPath];
    origin = [playerPath origin];
    isLocal = [origin isLocal];

    if (isLocal)
    {
      displayName = 0;
    }

    else
    {
      playerPath2 = [result playerPath];
      origin2 = [playerPath2 origin];
      displayName = [origin2 displayName];
    }

    _expirationDate = [(ATXHeuristicNowPlaying *)self _expirationDate];
    playbackState = [result playbackState];
    switch(playbackState)
    {
      case 5:
        goto LABEL_8;
      case 2:
        if (!_expirationDate)
        {
          _expirationDate = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
          [(ATXHeuristicNowPlaying *)self _setExpirationDate:_expirationDate];
LABEL_11:
          playbackQueue = [result playbackQueue];
          contentItems = [playbackQueue contentItems];
          firstObject = [contentItems firstObject];

          if (!firstObject)
          {
            goto LABEL_20;
          }

          playerPath3 = [result playerPath];
          client = [playerPath3 client];
          bundleIdentifier = [client bundleIdentifier];
          v17 = [bundleIdentifier hasPrefix:@"com.apple."];

          if (v17)
          {
            v18 = [[ATXContextMediaSuggestionProducer alloc] initWithMediaRemoteContentItem:firstObject destDisplayName:displayName expirationDate:_expirationDate];
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

        [_expirationDate timeIntervalSinceNow];
        break;
      case 1:
LABEL_8:
        if (_expirationDate)
        {

          [(ATXHeuristicNowPlaying *)self _setExpirationDate:?];
        }

        _expirationDate = 0;
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
  if (self)
  {
    self = [self[1] stringByAppendingString:@"Expiration"];
    v1 = vars8;
  }

  return self;
}

- (id)_expirationDate
{
  selfCopy = self;
  if (self)
  {
    v2 = +[ATXHeuristicNowPlaying _defaults];
    v3 = [selfCopy[1] stringByAppendingString:@"Expiration"];
    selfCopy = [v2 objectForKey:v3];
  }

  return selfCopy;
}

- (void)_setExpirationDate:(uint64_t)date
{
  if (date)
  {
    v3 = a2;
    v5 = +[ATXHeuristicNowPlaying _defaults];
    v4 = [*(date + 8) stringByAppendingString:@"Expiration"];
    [v5 setObject:v3 forKey:v4];
  }
}

- (void)initWithPersistenceIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXHeuristicNowPlaying.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"persistenceIdentifier"}];
}

@end