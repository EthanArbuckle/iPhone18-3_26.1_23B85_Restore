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
- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4;
- (id)_typedBackingStore;
- (id)_validParameterCombinationsWithSchema:(id)a3;
- (int64_t)_compareSubProducerOne:(id)a3 subProducerTwo:(id)a4;
- (int64_t)parsecCategory;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAlternativeResults:(id)a3;
- (void)setAudioSearchResults:(id)a3;
- (void)setBuckets:(id)a3;
- (void)setExpirationDate:(id)a3;
- (void)setHashedRouteUIDs:(id)a3;
- (void)setMediaContainer:(id)a3;
- (void)setMediaItems:(id)a3;
- (void)setMediaSearch:(id)a3;
- (void)setParsecCategory:(int64_t)a3;
- (void)setPlayShuffled:(id)a3;
- (void)setPlaybackQueueLocation:(int64_t)a3;
- (void)setPlaybackRepeatMode:(int64_t)a3;
- (void)setPlaybackSpeed:(id)a3;
- (void)setPrivatePlayMediaIntentData:(id)a3;
- (void)setProxiedBundleIdentifier:(id)a3;
- (void)setRecoID:(id)a3;
- (void)setResumePlayback:(id)a3;
@end

@implementation INPlayMediaIntent

- (INPrivatePlayMediaIntentData)privatePlayMediaIntentData
{
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 privatePlayMediaIntentData];
  v4 = INIntentSlotValueTransformFromPrivatePlayMediaIntentData(v3);

  return v4;
}

- (id)_typedBackingStore
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 intentMetadata];

  return v3;
}

- (NSArray)hashedRouteUIDs
{
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 hashedRouteUIDs];
  v4 = INIntentSlotValueTransformFromStrings(v3);

  return v4;
}

- (int64_t)_compareSubProducerOne:(id)a3 subProducerTwo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _keyImage];
  v8 = [v6 _keyImage];

  if (v7 && v8)
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
    if (v8)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (v7)
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

- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = INPlayMediaIntent;
  v7 = [(INIntent *)&v24 _titleWithLocalizer:v6 fromBundleURL:a4];
  v8 = [(INIntent *)self _intents_launchIdForCurrentPlatform];
  v23 = 0;
  INExtractAppInfoFromSiriLaunchId(v8, &v23, 0);
  v9 = v23;

  if ([v9 hasPrefix:@"com.apple."])
  {
    v10 = [(INPlayMediaIntent *)self mediaContainer];
    if (v10)
    {
      v11 = v10;
      v12 = [(INPlayMediaIntent *)self mediaContainer];
      v13 = [v12 type];

      if (v13 == 9)
      {
        v14 = [(INPlayMediaIntent *)self resumePlayback];
        v15 = [v14 BOOLValue];

        v16 = MEMORY[0x1E696AEC0];
        if (v15)
        {
          v17 = @"Resume %@ radio station";
        }

        else
        {
          v17 = @"Play %@ radio station";
        }

        v18 = INLocalizedStringWithLocalizer(v17, 0, v6);
        v19 = [(INPlayMediaIntent *)self mediaContainer];
        v20 = [v19 title];
        v21 = [v16 stringWithFormat:v18, v20];

        v7 = v21;
      }
    }
  }

  return v7;
}

- (id)_validParameterCombinationsWithSchema:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = INPlayMediaIntent;
  v4 = [(INIntent *)&v24 _validParameterCombinationsWithSchema:a3];
  v5 = [(INPlayMediaIntent *)self mediaContainer];

  if (v5)
  {
    v6 = INDictionaryWithObjectsForKeysPassingTest(v4, &__block_literal_global_105620);

    v4 = v6;
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [(INPlayMediaIntent *)self proxiedBundleIdentifier];

  if (v8)
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
    v10 = [v4 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v4 objectForKey:v15];
          v17 = [v15 setByAddingObjectsFromSet:v7];
          [v9 setObject:v16 forKey:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
  v2 = [(INIntent *)self _codableDescription];
  v3 = MEMORY[0x1E695DEC8];
  v4 = [v2 keyAttribute];
  v5 = [v2 attributeByName:@"mediaContainer"];
  v6 = [v3 arrayWithObjects:{v4, v5, 0}];

  return v6;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INPlayMediaIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v26[7] = *MEMORY[0x1E69E9840];
  v25[0] = @"mediaItems";
  v3 = [(INPlayMediaIntent *)self mediaItems];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v26[0] = v3;
  v25[1] = @"mediaContainer";
  v5 = [(INPlayMediaIntent *)self mediaContainer];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v5;
  v26[1] = v5;
  v25[2] = @"playShuffled";
  v7 = [(INPlayMediaIntent *)self playShuffled];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v7;
  v25[3] = @"playbackRepeatMode";
  v9 = [(INPlayMediaIntent *)self playbackRepeatMode];
  if ((v9 - 1) > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = *(&off_1E7285EE8 + v9 - 1);
  }

  v11 = v10;
  v26[3] = v11;
  v25[4] = @"resumePlayback";
  v12 = [(INPlayMediaIntent *)self resumePlayback];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v13;
  v25[5] = @"playbackQueueLocation";
  v14 = [(INPlayMediaIntent *)self playbackQueueLocation];
  if ((v14 - 1) > 2)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = off_1E7286878[v14 - 1];
  }

  v16 = v15;
  v26[5] = v16;
  v25[6] = @"playbackSpeed";
  v17 = [(INPlayMediaIntent *)self playbackSpeed];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (!v17)
  {
  }

  if (!v12)
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

- (void)setPrivatePlayMediaIntentData:(id)a3
{
  v4 = a3;
  v6 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPrivatePlayMediaIntentData(v4);

  [v6 setPrivatePlayMediaIntentData:v5];
}

- (void)setProxiedBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INPlayMediaIntent *)self _typedBackingStore];
  [v5 setProxiedBundleIdentifier:v4];
}

- (NSString)proxiedBundleIdentifier
{
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 proxiedBundleIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (void)setParsecCategory:(int64_t)a3
{
  v4 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 > 8)
  {
    [v4 setHasParsecCategory:0];
  }

  else
  {
    [v4 setParsecCategory:a3];
  }
}

- (int64_t)parsecCategory
{
  v3 = [(INPlayMediaIntent *)self _typedBackingStore];
  v4 = [v3 hasParsecCategory];
  v5 = [(INPlayMediaIntent *)self _typedBackingStore];
  v6 = [v5 parsecCategory];
  if (((v6 - 1 < 8) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAlternativeResults:(id)a3
{
  v4 = a3;
  v6 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemGroups(v4);

  [v6 setAlternativeResults:v5];
}

- (NSArray)alternativeResults
{
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 alternativeResults];
  v4 = INIntentSlotValueTransformFromMediaItemGroups(v3);

  return v4;
}

- (void)setAudioSearchResults:(id)a3
{
  v4 = a3;
  v6 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemGroups(v4);

  [v6 setAudioSearchResults:v5];
}

- (NSArray)audioSearchResults
{
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 audioSearchResults];
  v4 = INIntentSlotValueTransformFromMediaItemGroups(v3);

  return v4;
}

- (void)setHashedRouteUIDs:(id)a3
{
  v4 = a3;
  v6 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStrings(v4);

  [v6 setHashedRouteUIDs:v5];
}

- (void)setMediaSearch:(id)a3
{
  v4 = a3;
  v6 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaSearch(v4);

  [v6 setMediaSearch:v5];
}

- (INMediaSearch)mediaSearch
{
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 mediaSearch];
  v4 = INIntentSlotValueTransformFromMediaSearch(v3);

  return v4;
}

- (void)setPlaybackSpeed:(id)a3
{
  v5 = a3;
  v4 = [(INPlayMediaIntent *)self _typedBackingStore];
  if (v5)
  {
    [v5 doubleValue];
    [v4 setPlaybackSpeed:?];
  }

  else
  {
    [v4 setHasPlaybackSpeed:0];
  }
}

- (NSNumber)playbackSpeed
{
  v3 = [(INPlayMediaIntent *)self _typedBackingStore];
  if ([v3 hasPlaybackSpeed])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INPlayMediaIntent *)self _typedBackingStore];
    [v5 playbackSpeed];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPlaybackQueueLocation:(int64_t)a3
{
  v4 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 > 3)
  {
    [v4 setHasPlaybackQueueLocation:0];
  }

  else
  {
    [v4 setPlaybackQueueLocation:a3];
  }
}

- (INPlaybackQueueLocation)playbackQueueLocation
{
  v3 = [(INPlayMediaIntent *)self _typedBackingStore];
  v4 = [v3 hasPlaybackQueueLocation];
  v5 = [(INPlayMediaIntent *)self _typedBackingStore];
  v6 = [v5 playbackQueueLocation];
  if (((v6 - 1 < 3) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = INPlaybackQueueLocationUnknown;
  }

  return v7;
}

- (void)setRecoID:(id)a3
{
  v4 = a3;
  v5 = [(INPlayMediaIntent *)self _typedBackingStore];
  [v5 setRecoID:v4];
}

- (NSString)recoID
{
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 recoID];
  v4 = [v3 copy];

  return v4;
}

- (void)setBuckets:(id)a3
{
  v4 = a3;
  v6 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataStrings(v4);

  [v6 setBuckets:v5];
}

- (NSArray)buckets
{
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 buckets];
  v4 = INIntentSlotValueTransformFromDataStrings(v3);

  return v4;
}

- (void)setExpirationDate:(id)a3
{
  v4 = a3;
  v6 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTimestamp(v4);

  [v6 setExpirationDate:v5];
}

- (NSDate)expirationDate
{
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 expirationDate];
  v4 = INIntentSlotValueTransformFromTimestamp(v3);

  return v4;
}

- (void)setResumePlayback:(id)a3
{
  v5 = a3;
  v4 = [(INPlayMediaIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setResumePlayback:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasResumePlayback:0];
  }
}

- (NSNumber)resumePlayback
{
  v3 = [(INPlayMediaIntent *)self _typedBackingStore];
  if ([v3 hasResumePlayback])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INPlayMediaIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "resumePlayback")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPlaybackRepeatMode:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 2)
  {
    [v4 setHasPlaybackRepeatMode:0];
  }

  else
  {
    [v4 setPlaybackRepeatMode:v3];
  }
}

- (INPlaybackRepeatMode)playbackRepeatMode
{
  v3 = [(INPlayMediaIntent *)self _typedBackingStore];
  v4 = [v3 hasPlaybackRepeatMode];
  v5 = [(INPlayMediaIntent *)self _typedBackingStore];
  v6 = [v5 playbackRepeatMode];
  if (((v6 < 3) & v4) != 0)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = INPlaybackRepeatModeUnknown;
  }

  return v7;
}

- (void)setPlayShuffled:(id)a3
{
  v5 = a3;
  v4 = [(INPlayMediaIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setPlayShuffled:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasPlayShuffled:0];
  }
}

- (NSNumber)playShuffled
{
  v3 = [(INPlayMediaIntent *)self _typedBackingStore];
  if ([v3 hasPlayShuffled])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INPlayMediaIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "playShuffled")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setMediaContainer:(id)a3
{
  v4 = a3;
  v6 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemValue(v4);

  [v6 setMediaContainer:v5];
}

- (INMediaItem)mediaContainer
{
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 mediaContainer];
  v4 = INIntentSlotValueTransformFromMediaItemValue(v3);

  return v4;
}

- (void)setMediaItems:(id)a3
{
  v4 = a3;
  v6 = [(INPlayMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemValues(v4);

  [v6 setMediaItems:v5];
}

- (NSArray)mediaItems
{
  v2 = [(INPlayMediaIntent *)self _typedBackingStore];
  v3 = [v2 mediaItems];
  v4 = INIntentSlotValueTransformFromMediaItemValues(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INPlayMediaIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
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