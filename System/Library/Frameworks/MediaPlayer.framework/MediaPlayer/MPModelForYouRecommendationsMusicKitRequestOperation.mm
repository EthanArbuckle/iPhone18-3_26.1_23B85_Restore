@interface MPModelForYouRecommendationsMusicKitRequestOperation
- (BOOL)isOnboardingRequired:(id)required;
- (id)_personalizeRecommendationGroup:(id)group flatPersonalizedSectionedItems:(id)items;
- (id)_produceResultsWithItemsArray:(id)array;
- (id)_produceResultsWithRecommendationsArray:(id)array recentlyPlayedArray:(id)playedArray;
- (id)_recommendationGroupBuilder;
- (id)_recommendationGroupBuilderWithFlatSectionedItems:(id)items;
- (id)_responseWithResults:(id)results personalizationResponse:(id)response;
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error;
- (id)displayFilterKindsValueForOptions:(int64_t)options;
- (id)itemProperties;
- (id)queryItemsWithStoreURLBag:(id)bag;
- (id)recentlyPlayedURLWithStoreURLBag:(id)bag;
- (id)recommendationsQueryItemsWithStoreURLBag:(id)bag;
- (id)recommendationsURLWithStoreURLBag:(id)bag;
- (id)sectionProperties;
- (id)typesArrayWithTypes:(int64_t)types;
- (int64_t)displayFilterKinds;
- (int64_t)subscriptionStatusType;
- (int64_t)types;
- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion;
@end

@implementation MPModelForYouRecommendationsMusicKitRequestOperation

- (id)displayFilterKindsValueForOptions:(int64_t)options
{
  optionsCopy = options;
  v4 = objc_opt_new();
  v5 = v4;
  if ((optionsCopy & 2) != 0)
  {
    [v4 addObject:@"MusicCoverShelf"];
    if ((optionsCopy & 4) == 0)
    {
LABEL_3:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((optionsCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"MusicNotesHeroShelf"];
  if ((optionsCopy & 8) == 0)
  {
LABEL_4:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v5 addObject:@"MusicSuperHeroShelf"];
  if ((optionsCopy & 0x10) == 0)
  {
LABEL_5:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v5 addObject:@"MusicUpsellShelf"];
  if ((optionsCopy & 0x20) == 0)
  {
LABEL_6:
    if ((optionsCopy & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v5 addObject:@"MusicCardShelf"];
  if ((optionsCopy & 0x40) != 0)
  {
LABEL_7:
    [v5 addObject:@"MusicHorizontalLockupGrid"];
  }

LABEL_8:
  v6 = [v5 copy];

  return v6;
}

- (id)typesArrayWithTypes:(int64_t)types
{
  typesCopy = types;
  v4 = objc_opt_new();
  v5 = v4;
  if ((typesCopy & 2) != 0)
  {
    [v4 addObject:@"artists"];
    if ((typesCopy & 4) == 0)
    {
LABEL_3:
      if ((typesCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((typesCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"albums"];
  if ((typesCopy & 8) == 0)
  {
LABEL_4:
    if ((typesCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 addObject:@"apple-curators"];
  if ((typesCopy & 0x10) == 0)
  {
LABEL_5:
    if ((typesCopy & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v5 addObject:@"curators"];
  if ((typesCopy & 0x20) == 0)
  {
LABEL_6:
    if ((typesCopy & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v5 addObject:@"playlists"];
  if ((typesCopy & 0x40) == 0)
  {
LABEL_7:
    if ((typesCopy & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v5 addObject:@"stations"];
  if ((typesCopy & 0x80) == 0)
  {
LABEL_8:
    if ((typesCopy & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v5 addObject:@"editorial-items"];
  if ((typesCopy & 0x100) == 0)
  {
LABEL_9:
    if ((typesCopy & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v5 addObject:@"music-videos"];
  if ((typesCopy & 0x200) == 0)
  {
LABEL_10:
    if ((typesCopy & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v5 addObject:@"music-movies"];
  if ((typesCopy & 0x400) == 0)
  {
LABEL_11:
    if ((typesCopy & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v5 addObject:@"social-profiles"];
  if ((typesCopy & 0x800) == 0)
  {
LABEL_12:
    if ((typesCopy & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v5 addObject:@"social-upsells"];
  if ((typesCopy & 0x1000) == 0)
  {
LABEL_13:
    if ((typesCopy & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v5 addObject:@"tv-shows"];
  if ((typesCopy & 0x2000) == 0)
  {
LABEL_14:
    if ((typesCopy & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v5 addObject:@"uploaded-audios"];
  if ((typesCopy & 0x4000) == 0)
  {
LABEL_15:
    if ((typesCopy & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v5 addObject:@"uploaded-videos"];
  if ((typesCopy & 0x8000) == 0)
  {
LABEL_16:
    if ((typesCopy & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  [v5 addObject:@"library-playlists"];
  if ((typesCopy & 0x10000) != 0)
  {
LABEL_17:
    [v5 addObject:@"library-albums"];
  }

LABEL_18:
  v6 = [v5 copy];

  return v6;
}

- (int64_t)subscriptionStatusType
{
  v2 = +[MPCloudServiceStatusController sharedController];
  musicSubscriptionStatus = [v2 musicSubscriptionStatus];
  statusType = [musicSubscriptionStatus statusType];

  return statusType;
}

- (int64_t)displayFilterKinds
{
  request = [(MPStoreModelRequestOperation *)self request];
  displayFilterKinds = [request displayFilterKinds];

  return displayFilterKinds;
}

- (int64_t)types
{
  request = [(MPStoreModelRequestOperation *)self request];
  types = [request types];

  return types;
}

- (BOOL)isOnboardingRequired:(id)required
{
  requiredCopy = required;
  if (_NSIsNSDictionary())
  {
    v4 = [requiredCopy objectForKey:@"meta"];
    if (_NSIsNSDictionary())
    {
      v5 = [v4 objectForKey:@"account"];
      if (_NSIsNSString())
      {
        v6 = [v5 isEqualToString:@"OnboardingRequired"];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)recentlyPlayedURLWithStoreURLBag:(id)bag
{
  v3 = MusicURLComponentsWithURLBag(bag, 0);
  [v3 setPath:@"/v1/me/recent/played"];
  v4 = [v3 URL];

  return v4;
}

- (id)recommendationsURLWithStoreURLBag:(id)bag
{
  bagCopy = bag;
  request = [(MPStoreModelRequestOperation *)self request];
  v6 = MusicURLComponentsWithURLBag(bagCopy, [request mode] == 1);
  [v6 setPath:@"/v1/me/recommendations"];
  v7 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self recommendationsQueryItemsWithStoreURLBag:bagCopy];

  [v6 setQueryItems:v7];
  percentEncodedQuery = [v6 percentEncodedQuery];
  v9 = [percentEncodedQuery stringByReplacingOccurrencesOfString:@"+" withString:@"%2B"];
  [v6 setPercentEncodedQuery:v9];

  v10 = [v6 URL];

  return v10;
}

- (id)recommendationsQueryItemsWithStoreURLBag:(id)bag
{
  bagCopy = bag;
  request = [(MPStoreModelRequestOperation *)self request];
  mode = [request mode];
  array = [MEMORY[0x1E695DF70] array];
  if ([(MPModelForYouRecommendationsMusicKitRequestOperation *)self shouldRequestSocialAndFriendsMixWithValues])
  {
    [array addObject:@"friendsMix"];
    if ([request withSocial])
    {
      [array addObject:@"social"];
    }
  }

  [array addObject:@"voice"];
  v8 = MEMORY[0x1E695DF70];
  v9 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self queryItemsWithStoreURLBag:bagCopy];

  v10 = [v8 arrayWithArray:v9];

  v11 = MEMORY[0x1E696AF60];
  v12 = [array componentsJoinedByString:{@", "}];
  v13 = [v11 queryItemWithName:@"with" value:v12];
  [v10 addObject:v13];

  if (mode == 1)
  {
    v14 = [MEMORY[0x1E696AF60] queryItemWithName:@"name" value:@"listen-now"];
    [v10 addObject:v14];

    v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"omit[resource]" value:@"autos"];
    [v10 addObject:v15];

    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"api", 0}];
    v17 = MEMORY[0x1E696AF60];
    v18 = [v16 copy];
    v19 = [v18 componentsJoinedByString:{@", "}];
    v20 = [v17 queryItemWithName:@"meta" value:v19];
    [v10 addObject:v20];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  if ([request filteringPolicy] == 1)
  {
    [array2 addObject:@"emphasize"];
    [array2 addObject:@"expand"];
    [array2 addObject:@"versionHash"];
  }

  if (mode == 1 && [request withPlainEditorialNotes])
  {
    [array2 addObject:@"plainEditorialNotes"];
  }

  [array2 addObject:@"editorialArtwork"];
  if ([array2 count])
  {
    v22 = MEMORY[0x1E696AF60];
    v23 = [array2 componentsJoinedByString:{@", "}];
    v24 = [v22 queryItemWithName:@"extend" value:v23];
    [v10 addObject:v24];
  }

  v25 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self typesArrayWithTypes:[(MPModelForYouRecommendationsMusicKitRequestOperation *)self types]];
  v26 = v25;
  if (mode == 1 && [v25 count])
  {
    v27 = MEMORY[0x1E696AF60];
    v28 = [v26 componentsJoinedByString:{@", "}];
    v29 = [v27 queryItemWithName:@"types" value:v28];
    [v10 addObject:v29];
  }

  v30 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self displayFilterKindsValueForOptions:[(MPModelForYouRecommendationsMusicKitRequestOperation *)self displayFilterKinds]];
  v31 = v30;
  if (mode == 1 && [v30 count])
  {
    v32 = MEMORY[0x1E696AF60];
    v33 = [v31 componentsJoinedByString:{@", "}];
    v34 = [v32 queryItemWithName:@"displayFilter[kind]" value:v33];
    [v10 addObject:v34];
  }

  v35 = [v10 copy];

  return v35;
}

- (id)queryItemsWithStoreURLBag:(id)bag
{
  v21[3] = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  v5 = objc_opt_new();
  v6 = MEMORY[0x1E696AF60];
  request = [(MPStoreModelRequestOperation *)self request];
  clientPlatformIdentifier = [request clientPlatformIdentifier];
  v9 = clientPlatformIdentifier;
  if (clientPlatformIdentifier)
  {
    v10 = clientPlatformIdentifier;
  }

  else
  {
    v10 = @"iphone";
  }

  v11 = [v6 queryItemWithName:@"platform" value:v10];
  v12 = MEMORY[0x1E696AF60];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  iSO8601TimeZoneOffsetFromUTC = [localTimeZone ISO8601TimeZoneOffsetFromUTC];
  v15 = [v12 queryItemWithName:@"timezone" value:iSO8601TimeZoneOffsetFromUTC];
  v21[1] = v15;
  v16 = [MEMORY[0x1E696AF60] queryItemWithName:@"art[url]" value:@"f"];
  v21[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  [v5 addObjectsFromArray:v17];

  v18 = MusicURLQueryItemLanguageWithURLBag(bagCopy);

  if (v18)
  {
    [v5 addObject:v18];
  }

  v19 = [v5 copy];

  return v19;
}

- (id)_personalizeRecommendationGroup:(id)group flatPersonalizedSectionedItems:(id)items
{
  groupCopy = group;
  itemsCopy = items;
  identifiers = [groupCopy identifiers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __119__MPModelForYouRecommendationsMusicKitRequestOperation__personalizeRecommendationGroup_flatPersonalizedSectionedItems___block_invoke;
  v13[3] = &unk_1E767CFD8;
  v14 = itemsCopy;
  v15 = groupCopy;
  selfCopy = self;
  v9 = groupCopy;
  v10 = itemsCopy;
  v11 = [v9 copyWithIdentifiers:identifiers block:v13];

  return v11;
}

void __119__MPModelForYouRecommendationsMusicKitRequestOperation__personalizeRecommendationGroup_flatPersonalizedSectionedItems___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setSectionedItems:*(a1 + 32)];
  v4 = [*(a1 + 40) subgroups];
  if (v4)
  {
    v5 = objc_opt_new();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(a1 + 48) _personalizeRecommendationGroup:*(*(&v12 + 1) + 8 * v10) flatPersonalizedSectionedItems:{*(a1 + 32), v12}];
          if (v11)
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [v3 setSubgroups:v5];
  }
}

- (id)_responseWithResults:(id)results personalizationResponse:(id)response
{
  responseCopy = response;
  resultsCopy = results;
  v8 = objc_opt_new();
  results = [responseCopy results];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__MPModelForYouRecommendationsMusicKitRequestOperation__responseWithResults_personalizationResponse___block_invoke;
  v16[3] = &unk_1E767D000;
  v16[4] = self;
  v17 = results;
  v18 = v8;
  v10 = v8;
  v11 = results;
  [resultsCopy enumerateSectionsUsingBlock:v16];

  v12 = [MPModelForYouRecommendationsResponse alloc];
  request = [(MPStoreModelRequestOperation *)self request];
  v14 = [(MPModelResponse *)v12 initWithRequest:request];

  [(MPModelResponse *)v14 setResults:v10];

  return v14;
}

void __101__MPModelForYouRecommendationsMusicKitRequestOperation__responseWithResults_personalizationResponse___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _personalizeRecommendationGroup:a2 flatPersonalizedSectionedItems:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 48) appendSection:v3];
    v3 = v4;
  }
}

- (id)_produceResultsWithRecommendationsArray:(id)array recentlyPlayedArray:(id)playedArray
{
  v40 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  playedArrayCopy = playedArray;
  v8 = objc_opt_new();
  v31 = objc_opt_new();
  v9 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self _recommendationGroupBuilderWithFlatSectionedItems:?];
  if ([playedArrayCopy count])
  {
    userIdentity = [(MPAsyncOperation *)self userIdentity];
    v11 = [v9 modelObjectForRecentlyPlayedArray:playedArrayCopy userIdentity:userIdentity];

    [v8 appendSection:v11];
  }

  v32 = playedArrayCopy;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = arrayCopy;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      v16 = 0;
      v33 = v14;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        if (_NSIsNSDictionary())
        {
          v18 = v17;
          userIdentity2 = [(MPAsyncOperation *)self userIdentity];
          v20 = [v9 modelObjectForRecommendationDictionary:v18 userIdentity:userIdentity2];

          if (v20)
          {
            request = [(MPStoreModelRequestOperation *)self request];
            if ([request filteringPolicy] != 1)
            {

              goto LABEL_15;
            }

            v22 = v15;
            selfCopy = self;
            v24 = v12;
            v25 = v9;
            v26 = v8;
            groupType = [v20 groupType];

            v28 = groupType == 12;
            v8 = v26;
            v9 = v25;
            v12 = v24;
            self = selfCopy;
            v15 = v22;
            v14 = v33;
            if (!v28)
            {
LABEL_15:
              [v8 appendSection:v20];
            }
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v14);
  }

  v38[0] = v8;
  v38[1] = v31;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];

  return v29;
}

- (id)_produceResultsWithItemsArray:(id)array
{
  v12[2] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self _recommendationGroupBuilderWithFlatSectionedItems:v6];
  if ([arrayCopy count])
  {
    userIdentity = [(MPAsyncOperation *)self userIdentity];
    v9 = [v7 modelObjectForItemsArray:arrayCopy userIdentity:userIdentity];

    [v5 appendSection:v9];
  }

  v12[0] = v5;
  v12[1] = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  return v10;
}

- (id)_recommendationGroupBuilderWithFlatSectionedItems:(id)items
{
  itemsCopy = items;
  request = [(MPStoreModelRequestOperation *)self request];
  sectionProperties = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self sectionProperties];
  itemProperties = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self itemProperties];
  v8 = -[MPModelForYouRecommendationMusicKitGroupBuilder initWithRequestedGroupPropertySet:requestedItemPropertySet:storeItemMetadataResults:flatSectionedItems:storeURLBag:isListenNow:]([MPModelForYouRecommendationMusicKitGroupBuilder alloc], "initWithRequestedGroupPropertySet:requestedItemPropertySet:storeItemMetadataResults:flatSectionedItems:storeURLBag:isListenNow:", sectionProperties, itemProperties, 0, itemsCopy, self->_storeURLBag, [request mode] == 1);

  return v8;
}

- (id)_recommendationGroupBuilder
{
  v3 = objc_opt_new();
  v4 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self _recommendationGroupBuilderWithFlatSectionedItems:v3];

  return v4;
}

- (id)itemProperties
{
  request = [(MPStoreModelRequestOperation *)self request];
  itemProperties = [request itemProperties];
  v4 = [MPMutablePropertySet alloc];
  v5 = [(MPMutablePropertySet *)v4 initWithProperties:MEMORY[0x1E695E0F0] relationships:0];
  [(MPMutablePropertySet *)v5 addProperty:@"MPModelForYouRecommendationItemPropertyBackedByStoreItemMetadata"];
  relationships = [itemProperties relationships];
  v7 = [relationships objectForKey:@"MPModelForYouRecommendationItemRelationshipSubgroup"];

  if (v7)
  {
    [(MPMutablePropertySet *)v5 addProperty:@"MPModelForYouRecommendationItemPropertySubgroupIndex"];
    [(MPMutablePropertySet *)v5 addProperty:@"MPModelForYouRecommendationItemPropertyParentGroup"];
  }

  v8 = [itemProperties propertySetByCombiningWithPropertySet:v5];

  return v8;
}

- (id)sectionProperties
{
  request = [(MPStoreModelRequestOperation *)self request];
  sectionProperties = [request sectionProperties];

  return sectionProperties;
}

- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion
{
  v52[1] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  completionCopy = completion;
  if (_NSIsNSArray())
  {
    v8 = [(__CFString *)outputCopy objectAtIndex:0];
    if ([(MPModelForYouRecommendationsMusicKitRequestOperation *)self isOnboardingRequired:v8])
    {

LABEL_6:
      v9 = MEMORY[0x1E696ABC0];
      if (outputCopy)
      {
        v10 = outputCopy;
      }

      else
      {
        v10 = @"<nil>";
      }

      v51 = @"responses";
      v52[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v12 = [v9 errorWithDomain:@"MPMusicAPIErrorDomain" code:1 userInfo:v11];
      completionCopy[2](completionCopy, 0, v12);
      v13 = MEMORY[0x1E695E0F0];
      goto LABEL_33;
    }

    v14 = [(__CFString *)outputCopy objectAtIndex:1];
    if (_NSIsNSDictionary() && _NSIsNSDictionary())
    {
      v15 = [v14 objectForKey:@"data"];
      v16 = [v8 objectForKey:@"data"];
      if (_NSIsNSArray() && _NSIsNSArray())
      {
        v13 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self _produceResultsWithRecommendationsArray:v16 recentlyPlayedArray:v15];
      }

      else
      {
        v13 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    goto LABEL_25;
  }

  if (!_NSIsNSDictionary())
  {
    v13 = MEMORY[0x1E695E0F0];
    goto LABEL_26;
  }

  if ([(MPModelForYouRecommendationsMusicKitRequestOperation *)self isOnboardingRequired:outputCopy])
  {
    goto LABEL_6;
  }

  v8 = [(__CFString *)outputCopy objectForKey:@"data"];
  if (_NSIsNSArray())
  {
    request = [(MPStoreModelRequestOperation *)self request];
    customForYouURL = [request customForYouURL];
    if (customForYouURL)
    {
      v19 = customForYouURL;
      request2 = [(MPStoreModelRequestOperation *)self request];
      refreshRequest = [request2 refreshRequest];

      if ((refreshRequest & 1) == 0)
      {
        v22 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self _produceResultsWithItemsArray:v8];
LABEL_36:
        v13 = v22;
        goto LABEL_25;
      }
    }

    else
    {
    }

    v22 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self _produceResultsWithRecommendationsArray:v8 recentlyPlayedArray:0];
    goto LABEL_36;
  }

  v13 = MEMORY[0x1E695E0F0];
LABEL_25:

LABEL_26:
  if ([v13 count] > 1)
  {
    v24 = [v13 objectAtIndexedSubscript:0];
    v25 = [v13 objectAtIndexedSubscript:1];
    v26 = objc_opt_new();
    v27 = [MPModelKind kindWithModelClass:objc_opt_class()];
    [v26 setSectionKind:v27];

    v28 = +[MPPropertySet emptyPropertySet];
    [v26 setSectionProperties:v28];

    v29 = [MPModelKind kindWithModelClass:objc_opt_class()];
    [v26 setItemKind:v29];

    itemProperties = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self itemProperties];
    [v26 setItemProperties:itemProperties];

    v31 = objc_opt_new();
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __99__MPModelForYouRecommendationsMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke;
    v44[3] = &unk_1E767CF88;
    v32 = v31;
    v45 = v32;
    v12 = v25;
    v46 = v12;
    [v12 enumerateSectionsUsingBlock:v44];
    v33 = [[MPStoreLibraryPersonalizationRequest alloc] initWithUnpersonalizedRequest:v26 unpersonalizedContentDescriptors:v32];
    [(MPStoreLibraryPersonalizationRequest *)v33 setRepresentedObjects:v12];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __99__MPModelForYouRecommendationsMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke_3;
    v41[3] = &unk_1E767CFB0;
    v41[4] = self;
    v11 = v24;
    v42 = v11;
    v39 = completionCopy;
    v43 = completionCopy;
    [(MPModelRequest *)v33 performWithResponseHandler:v41];
    v34 = [[MPServerObjectDatabaseMediaKitImportRequest alloc] initWithPayload:outputCopy];
    v35 = +[MPServerObjectDatabase sharedServerObjectDatabase];
    v40 = 0;
    v36 = [v35 importObjectsFromRequest:v34 options:0 error:&v40];
    v37 = v40;

    if (v37)
    {
      v38 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v48 = v37;
        _os_log_impl(&dword_1A238D000, v38, OS_LOG_TYPE_ERROR, "Error importing recommendations endpoint response in Server Object Database: %{public}@", buf, 0xCu);
      }
    }

    completionCopy = v39;
  }

  else
  {
    v23 = MEMORY[0x1E696ABC0];
    v49 = @"resultsAndFlatSectionedItems";
    v50 = v13;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v12 = [v23 errorWithDomain:@"MPMusicAPIErrorDomain" code:1001 userInfo:v11];
    completionCopy[2](completionCopy, 0, v12);
  }

LABEL_33:
}

void __99__MPModelForYouRecommendationsMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) appendSection:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __99__MPModelForYouRecommendationsMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke_2;
  v6[3] = &unk_1E767CF60;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v5 enumerateItemsInSectionAtIndex:a3 usingBlock:v6];
}

void __99__MPModelForYouRecommendationsMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) _responseWithResults:*(a1 + 40) personalizationResponse:a2];
    v6 = *(a1 + 48);
    if (v5)
    {
      v7 = v5;
      (*(v6 + 16))(v6, v5, 0);
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

void __99__MPModelForYouRecommendationsMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isBackedByStoreItemMetadata])
  {
    v3 = 1;
  }

  else if ([v5 itemType] == 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  v4 = [[MPStoreLibraryPersonalizationContentDescriptor alloc] initWithModel:v5 personalizationStyle:v3];
  [*(a1 + 32) appendItem:v4];
}

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error
{
  bagCopy = bag;
  objc_storeStrong(&self->_storeURLBag, bag);
  request = [(MPStoreModelRequestOperation *)self request];
  customForYouURL = [request customForYouURL];

  if (customForYouURL)
  {
    v10 = [MEMORY[0x1E696AF20] componentsWithURL:customForYouURL resolvingAgainstBaseURL:1];
    queryItems = [v10 queryItems];
    v12 = [queryItems mutableCopy];

    request2 = [(MPStoreModelRequestOperation *)self request];
    refreshRequest = [request2 refreshRequest];

    if (refreshRequest)
    {
      v15 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self recommendationsQueryItemsWithStoreURLBag:bagCopy];
      [v12 addObjectsFromArray:v15];

      v16 = [MEMORY[0x1E696AF60] queryItemWithName:@"action" value:@"refresh"];
      [v12 addObject:v16];
    }

    else
    {
      v16 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self queryItemsWithStoreURLBag:bagCopy];
      [v12 addObjectsFromArray:v16];
    }

    v24 = [v12 copy];
    [v10 setQueryItems:v24];

    v17 = [v10 URL];

    v25 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v17];
    request3 = [(MPStoreModelRequestOperation *)self request];
    refreshRequest2 = [request3 refreshRequest];

    if (refreshRequest2)
    {
      v28 = @"POST";
    }

    else
    {
      v28 = @"GET";
    }

    [v25 setHTTPMethod:v28];
    [(MPStoreModelRequestOperation *)self remainingTimeInterval];
    [v25 setTimeoutInterval:?];
    v23 = [[MPStoreModelRequestConfiguration alloc] initWithURLRequest:v25];

    goto LABEL_18;
  }

  v17 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self recommendationsURLWithStoreURLBag:bagCopy];
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v17];
    [v18 setHTTPMethod:@"GET"];
    [(MPStoreModelRequestOperation *)self remainingTimeInterval];
    [v18 setTimeoutInterval:?];
    [v10 addObject:v18];
  }

  request4 = [(MPStoreModelRequestOperation *)self request];
  if ([request4 withRecentlyPlayed])
  {
    request5 = [(MPStoreModelRequestOperation *)self request];
    mode = [request5 mode];

    if (mode)
    {
      goto LABEL_11;
    }

    request4 = [(MPModelForYouRecommendationsMusicKitRequestOperation *)self recentlyPlayedURLWithStoreURLBag:bagCopy];
    if (request4)
    {
      v22 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:request4];
      [v22 setHTTPMethod:@"GET"];
      [(MPStoreModelRequestOperation *)self remainingTimeInterval];
      [v22 setTimeoutInterval:?];
      [v10 addObject:v22];
    }
  }

LABEL_11:
  if ([v10 count])
  {
    v23 = [[MPStoreModelRequestConfiguration alloc] initWithURLRequests:v10];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:5 userInfo:0];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_18:

  return v23;
}

@end