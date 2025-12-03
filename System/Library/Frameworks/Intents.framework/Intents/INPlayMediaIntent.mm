@interface INPlayMediaIntent
- ($F24F406B2B787EFB06265DBA3D28CBD5)_intents_preferredScaledImageSize;
- (INMediaItem)mediaContainer;
- (INMediaSearch)mediaSearch;
- (INPlayMediaIntent)initWithMediaItems:(NSArray *)mediaItems mediaContainer:(INMediaItem *)mediaContainer playShuffled:(NSNumber *)playShuffled playbackRepeatMode:(INPlaybackRepeatMode)playbackRepeatMode resumePlayback:(NSNumber *)resumePlayback playbackQueueLocation:(INPlaybackQueueLocation)playbackQueueLocation playbackSpeed:(NSNumber *)playbackSpeed mediaSearch:(INMediaSearch *)mediaSearch;
- (INPlaybackQueueLocation)playbackQueueLocation;
- (INPlaybackRepeatMode)playbackRepeatMode;
- (INPrivatePlayMediaIntentData)privatePlayMediaIntentData;
- (NSArray)alternativeResults;
- (NSArray)audioSearchResults;
- (NSArray)buckets;
- (NSArray)hashedRouteUIDs;
- (NSArray)mediaItems;
- (NSDate)expirationDate;
- (NSNumber)playShuffled;
- (NSNumber)playbackSpeed;
- (NSNumber)resumePlayback;
- (NSString)proxiedBundleIdentifier;
- (NSString)recoID;
- (id)_dictionaryRepresentation;
- (id)_keyCodableAttributes;
- (id)_metadata;
- (id)_titleWithLocalizer:(id)localizer fromBundleURL:(id)l;
- (id)_typedBackingStore;
- (id)_validParameterCombinationsWithSchema:(id)schema;
- (int64_t)_compareSubProducerOne:(id)one subProducerTwo:(id)two;
- (int64_t)parsecCategory;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAlternativeResults:(id)results;
- (void)setAudioSearchResults:(id)results;
- (void)setBuckets:(id)buckets;
- (void)setExpirationDate:(id)date;
- (void)setHashedRouteUIDs:(id)ds;
- (void)setMediaContainer:(id)container;
- (void)setMediaItems:(id)items;
- (void)setMediaSearch:(id)search;
- (void)setParsecCategory:(int64_t)category;
- (void)setPlayShuffled:(id)shuffled;
- (void)setPlaybackQueueLocation:(int64_t)location;
- (void)setPlaybackRepeatMode:(int64_t)mode;
- (void)setPlaybackSpeed:(id)speed;
- (void)setPrivatePlayMediaIntentData:(id)data;
- (void)setProxiedBundleIdentifier:(id)identifier;
- (void)setRecoID:(id)d;
- (void)setResumePlayback:(id)playback;
@end

@implementation INPlayMediaIntent

- (INPrivatePlayMediaIntentData)privatePlayMediaIntentData
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  privatePlayMediaIntentData = [_typedBackingStore privatePlayMediaIntentData];
  v4 = INIntentSlotValueTransformFromPrivatePlayMediaIntentData(privatePlayMediaIntentData);

  return v4;
}

- (id)_typedBackingStore
{
  backingStore = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = backingStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)_metadata
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (NSArray)hashedRouteUIDs
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  hashedRouteUIDs = [_typedBackingStore hashedRouteUIDs];
  v4 = INIntentSlotValueTransformFromStrings(hashedRouteUIDs);

  return v4;
}

- (int64_t)_compareSubProducerOne:(id)one subProducerTwo:(id)two
{
  oneCopy = one;
  twoCopy = two;
  _keyImage = [oneCopy _keyImage];
  _keyImage2 = [twoCopy _keyImage];

  if (_keyImage && _keyImage2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    if (_keyImage2)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (_keyImage)
    {
      v9 = 1;
    }

    else
    {
      v9 = v10;
    }
  }

  return v9;
}

- (id)_titleWithLocalizer:(id)localizer fromBundleURL:(id)l
{
  localizerCopy = localizer;
  v24.receiver = self;
  v24.super_class = INPlayMediaIntent;
  v7 = [(INIntent *)&v24 _titleWithLocalizer:localizerCopy fromBundleURL:l];
  _intents_launchIdForCurrentPlatform = [(INIntent *)self _intents_launchIdForCurrentPlatform];
  v23 = 0;
  INExtractAppInfoFromSiriLaunchId(_intents_launchIdForCurrentPlatform, &v23, 0);
  v9 = v23;

  if ([v9 hasPrefix:@"com.apple."])
  {
    mediaContainer = [(INPlayMediaIntent *)self mediaContainer];
    if (mediaContainer)
    {
      v11 = mediaContainer;
      mediaContainer2 = [(INPlayMediaIntent *)self mediaContainer];
      type = [mediaContainer2 type];

      if (type == 9)
      {
        resumePlayback = [(INPlayMediaIntent *)self resumePlayback];
        bOOLValue = [resumePlayback BOOLValue];

        v16 = MEMORY[0x1E696AEC0];
        if (bOOLValue)
        {
          v17 = @"Resume %@ radio station";
        }

        else
        {
          v17 = @"Play %@ radio station";
        }

        v18 = INLocalizedStringWithLocalizer(v17, 0, localizerCopy);
        mediaContainer3 = [(INPlayMediaIntent *)self mediaContainer];
        title = [mediaContainer3 title];
        v21 = [v16 stringWithFormat:v18, title];

        v7 = v21;
      }
    }
  }

  return v7;
}

- (id)_validParameterCombinationsWithSchema:(id)schema
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = INPlayMediaIntent;
  v4 = [(INIntent *)&v24 _validParameterCombinationsWithSchema:schema];
  mediaContainer = [(INPlayMediaIntent *)self mediaContainer];

  if (mediaContainer)
  {
    v6 = INDictionaryWithObjectsForKeysPassingTest(v4, &__block_literal_global_105620);

    v4 = v6;
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  proxiedBundleIdentifier = [(INPlayMediaIntent *)self proxiedBundleIdentifier];

  if (proxiedBundleIdentifier)
  {
    [v7 addObject:@"proxiedBundleIdentifier"];
  }

  if ([v7 count])
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    allKeys = [v4 allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v4 objectForKey:v15];
          v17 = [v15 setByAddingObjectsFromSet:v7];
          [v9 setObject:v16 forKey:v17];
        }

        v12 = [allKeys countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = v4;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __59__INPlayMediaIntent__validParameterCombinationsWithSchema___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 containsObject:@"mediaContainer"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 containsObject:@"buckets"];
  }

  return v3;
}

- (id)_keyCodableAttributes
{
  _codableDescription = [(INIntent *)self _codableDescription];
  v3 = MEMORY[0x1E695DEC8];
  keyAttribute = [_codableDescription keyAttribute];
  v5 = [_codableDescription attributeByName:@"mediaContainer"];
  v6 = [v3 arrayWithObjects:{keyAttribute, v5, 0}];

  return v6;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INPlayMediaIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v26[7] = *MEMORY[0x1E69E9840];
  v25[0] = @"mediaItems";
  mediaItems = [(INPlayMediaIntent *)self mediaItems];
  v4 = mediaItems;
  if (!mediaItems)
  {
    mediaItems = [MEMORY[0x1E695DFB0] null];
  }

  v24 = mediaItems;
  v26[0] = mediaItems;
  v25[1] = @"mediaContainer";
  mediaContainer = [(INPlayMediaIntent *)self mediaContainer];
  v6 = mediaContainer;
  if (!mediaContainer)
  {
    mediaContainer = [MEMORY[0x1E695DFB0] null];
  }

  v23 = mediaContainer;
  v26[1] = mediaContainer;
  v25[2] = @"playShuffled";
  playShuffled = [(INPlayMediaIntent *)self playShuffled];
  v8 = playShuffled;
  if (!playShuffled)
  {
    playShuffled = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = playShuffled;
  v25[3] = @"playbackRepeatMode";
  playbackRepeatMode = [(INPlayMediaIntent *)self playbackRepeatMode];
  if ((playbackRepeatMode - 1) > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = *(&off_1E7285EE8 + playbackRepeatMode - 1);
  }

  v11 = v10;
  v26[3] = v11;
  v25[4] = @"resumePlayback";
  resumePlayback = [(INPlayMediaIntent *)self resumePlayback];
  null = resumePlayback;
  if (!resumePlayback)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null;
  v25[5] = @"playbackQueueLocation";
  playbackQueueLocation = [(INPlayMediaIntent *)self playbackQueueLocation];
  if ((playbackQueueLocation - 1) > 2)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = off_1E7286878[playbackQueueLocation - 1];
  }

  v16 = v15;
  v26[5] = v16;
  v25[6] = @"playbackSpeed";
  playbackSpeed = [(INPlayMediaIntent *)self playbackSpeed];
  null2 = playbackSpeed;
  if (!playbackSpeed)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null2;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (!playbackSpeed)
  {
  }

  if (!resumePlayback)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)setPrivatePlayMediaIntentData:(id)data
{
  dataCopy = data;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPrivatePlayMediaIntentData(dataCopy);

  [_typedBackingStore setPrivatePlayMediaIntentData:v5];
}

- (void)setProxiedBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  [_typedBackingStore setProxiedBundleIdentifier:identifierCopy];
}

- (NSString)proxiedBundleIdentifier
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  proxiedBundleIdentifier = [_typedBackingStore proxiedBundleIdentifier];
  v4 = [proxiedBundleIdentifier copy];

  return v4;
}

- (void)setParsecCategory:(int64_t)category
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (category > 8)
  {
    [_typedBackingStore setHasParsecCategory:0];
  }

  else
  {
    [_typedBackingStore setParsecCategory:category];
  }
}

- (int64_t)parsecCategory
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  hasParsecCategory = [_typedBackingStore hasParsecCategory];
  _typedBackingStore2 = [(INPlayMediaIntent *)self _typedBackingStore];
  parsecCategory = [_typedBackingStore2 parsecCategory];
  if (((parsecCategory - 1 < 8) & hasParsecCategory) != 0)
  {
    v7 = parsecCategory;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAlternativeResults:(id)results
{
  resultsCopy = results;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemGroups(resultsCopy);

  [_typedBackingStore setAlternativeResults:v5];
}

- (NSArray)alternativeResults
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  alternativeResults = [_typedBackingStore alternativeResults];
  v4 = INIntentSlotValueTransformFromMediaItemGroups(alternativeResults);

  return v4;
}

- (void)setAudioSearchResults:(id)results
{
  resultsCopy = results;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemGroups(resultsCopy);

  [_typedBackingStore setAudioSearchResults:v5];
}

- (NSArray)audioSearchResults
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  audioSearchResults = [_typedBackingStore audioSearchResults];
  v4 = INIntentSlotValueTransformFromMediaItemGroups(audioSearchResults);

  return v4;
}

- (void)setHashedRouteUIDs:(id)ds
{
  dsCopy = ds;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStrings(dsCopy);

  [_typedBackingStore setHashedRouteUIDs:v5];
}

- (void)setMediaSearch:(id)search
{
  searchCopy = search;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaSearch(searchCopy);

  [_typedBackingStore setMediaSearch:v5];
}

- (INMediaSearch)mediaSearch
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  mediaSearch = [_typedBackingStore mediaSearch];
  v4 = INIntentSlotValueTransformFromMediaSearch(mediaSearch);

  return v4;
}

- (void)setPlaybackSpeed:(id)speed
{
  speedCopy = speed;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  if (speedCopy)
  {
    [speedCopy doubleValue];
    [_typedBackingStore setPlaybackSpeed:?];
  }

  else
  {
    [_typedBackingStore setHasPlaybackSpeed:0];
  }
}

- (NSNumber)playbackSpeed
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasPlaybackSpeed])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INPlayMediaIntent *)self _typedBackingStore];
    [_typedBackingStore2 playbackSpeed];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPlaybackQueueLocation:(int64_t)location
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (location > 3)
  {
    [_typedBackingStore setHasPlaybackQueueLocation:0];
  }

  else
  {
    [_typedBackingStore setPlaybackQueueLocation:location];
  }
}

- (INPlaybackQueueLocation)playbackQueueLocation
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  hasPlaybackQueueLocation = [_typedBackingStore hasPlaybackQueueLocation];
  _typedBackingStore2 = [(INPlayMediaIntent *)self _typedBackingStore];
  playbackQueueLocation = [_typedBackingStore2 playbackQueueLocation];
  if (((playbackQueueLocation - 1 < 3) & hasPlaybackQueueLocation) != 0)
  {
    v7 = playbackQueueLocation;
  }

  else
  {
    v7 = INPlaybackQueueLocationUnknown;
  }

  return v7;
}

- (void)setRecoID:(id)d
{
  dCopy = d;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  [_typedBackingStore setRecoID:dCopy];
}

- (NSString)recoID
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  recoID = [_typedBackingStore recoID];
  v4 = [recoID copy];

  return v4;
}

- (void)setBuckets:(id)buckets
{
  bucketsCopy = buckets;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataStrings(bucketsCopy);

  [_typedBackingStore setBuckets:v5];
}

- (NSArray)buckets
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  buckets = [_typedBackingStore buckets];
  v4 = INIntentSlotValueTransformFromDataStrings(buckets);

  return v4;
}

- (void)setExpirationDate:(id)date
{
  dateCopy = date;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTimestamp(dateCopy);

  [_typedBackingStore setExpirationDate:v5];
}

- (NSDate)expirationDate
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  expirationDate = [_typedBackingStore expirationDate];
  v4 = INIntentSlotValueTransformFromTimestamp(expirationDate);

  return v4;
}

- (void)setResumePlayback:(id)playback
{
  playbackCopy = playback;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  if (playbackCopy)
  {
    [_typedBackingStore setResumePlayback:{objc_msgSend(playbackCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasResumePlayback:0];
  }
}

- (NSNumber)resumePlayback
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasResumePlayback])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INPlayMediaIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "resumePlayback")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPlaybackRepeatMode:(int64_t)mode
{
  v3 = mode - 1;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 2)
  {
    [_typedBackingStore setHasPlaybackRepeatMode:0];
  }

  else
  {
    [_typedBackingStore setPlaybackRepeatMode:v3];
  }
}

- (INPlaybackRepeatMode)playbackRepeatMode
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  hasPlaybackRepeatMode = [_typedBackingStore hasPlaybackRepeatMode];
  _typedBackingStore2 = [(INPlayMediaIntent *)self _typedBackingStore];
  playbackRepeatMode = [_typedBackingStore2 playbackRepeatMode];
  if (((playbackRepeatMode < 3) & hasPlaybackRepeatMode) != 0)
  {
    v7 = playbackRepeatMode + 1;
  }

  else
  {
    v7 = INPlaybackRepeatModeUnknown;
  }

  return v7;
}

- (void)setPlayShuffled:(id)shuffled
{
  shuffledCopy = shuffled;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  if (shuffledCopy)
  {
    [_typedBackingStore setPlayShuffled:{objc_msgSend(shuffledCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasPlayShuffled:0];
  }
}

- (NSNumber)playShuffled
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasPlayShuffled])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INPlayMediaIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "playShuffled")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setMediaContainer:(id)container
{
  containerCopy = container;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemValue(containerCopy);

  [_typedBackingStore setMediaContainer:v5];
}

- (INMediaItem)mediaContainer
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  mediaContainer = [_typedBackingStore mediaContainer];
  v4 = INIntentSlotValueTransformFromMediaItemValue(mediaContainer);

  return v4;
}

- (void)setMediaItems:(id)items
{
  itemsCopy = items;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemValues(itemsCopy);

  [_typedBackingStore setMediaItems:v5];
}

- (NSArray)mediaItems
{
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  mediaItems = [_typedBackingStore mediaItems];
  v4 = INIntentSlotValueTransformFromMediaItemValues(mediaItems);

  return v4;
}

- (INPlayMediaIntent)initWithMediaItems:(NSArray *)mediaItems mediaContainer:(INMediaItem *)mediaContainer playShuffled:(NSNumber *)playShuffled playbackRepeatMode:(INPlaybackRepeatMode)playbackRepeatMode resumePlayback:(NSNumber *)resumePlayback playbackQueueLocation:(INPlaybackQueueLocation)playbackQueueLocation playbackSpeed:(NSNumber *)playbackSpeed mediaSearch:(INMediaSearch *)mediaSearch
{
  v16 = mediaItems;
  v17 = mediaContainer;
  v18 = playShuffled;
  v19 = resumePlayback;
  v20 = playbackSpeed;
  v21 = mediaSearch;
  v25.receiver = self;
  v25.super_class = INPlayMediaIntent;
  v22 = [(INIntent *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(INPlayMediaIntent *)v22 setMediaItems:v16];
    [(INPlayMediaIntent *)v23 setMediaContainer:v17];
    [(INPlayMediaIntent *)v23 setPlayShuffled:v18];
    [(INPlayMediaIntent *)v23 setPlaybackRepeatMode:playbackRepeatMode];
    [(INPlayMediaIntent *)v23 setResumePlayback:v19];
    [(INPlayMediaIntent *)v23 setPlaybackQueueLocation:playbackQueueLocation];
    [(INPlayMediaIntent *)v23 setPlaybackSpeed:v20];
    [(INPlayMediaIntent *)v23 setMediaSearch:v21];
  }

  return v23;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INPlayMediaIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_intents_preferredScaledImageSize
{
  v2 = 390.0;
  v3 = 390.0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end