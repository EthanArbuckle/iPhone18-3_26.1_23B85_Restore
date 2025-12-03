@interface MPServerObjectDatabaseStorePlatformImportRequest
+ (id)_childKeyForParentType:(id)type type:(id)a4;
+ (id)_entityTypeForObject:(id)object;
+ (id)_unsupportedParentChildRelationships;
+ (id)_unsupportedStorePlatformKinds;
- (MPServerObjectDatabaseStorePlatformImportRequest)initWithPayload:(id)payload;
- (id)performWithDatabaseOperations:(id)operations augmentingPayload:(id *)payload;
@end

@implementation MPServerObjectDatabaseStorePlatformImportRequest

- (id)performWithDatabaseOperations:(id)operations augmentingPayload:(id *)payload
{
  v50 = *MEMORY[0x1E69E9840];
  operationsCopy = operations;
  v7 = objc_alloc_init(MPStorePlatformEntityTranslatorContext);
  defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  userIdentity = [(MPServerObjectDatabaseImportRequest *)self userIdentity];
  v10 = [defaultIdentityStore DSIDForUserIdentity:userIdentity outError:0];
  stringValue = [v10 stringValue];
  [(MPStorePlatformEntityTranslatorContext *)v7 setPersonID:stringValue];

  personID = [(MPStorePlatformEntityTranslatorContext *)v7 personID];
  v13 = [personID length];

  if (!v13)
  {
    [(MPStorePlatformEntityTranslatorContext *)v7 setPersonID:*MEMORY[0x1E69E4388]];
  }

  array = [MEMORY[0x1E695DF70] array];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__35967;
  v44 = __Block_byref_object_dispose__35968;
  v45 = 0;
  array2 = [MEMORY[0x1E695DF70] array];
  payload = [(MPServerObjectDatabaseImportRequest *)self payload];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __100__MPServerObjectDatabaseStorePlatformImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke;
  v34[3] = &unk_1E767C4D0;
  v34[4] = self;
  v17 = v7;
  v35 = v17;
  v39 = &v40;
  v18 = operationsCopy;
  v36 = v18;
  v19 = array2;
  v37 = v19;
  v20 = array;
  v38 = v20;
  _MPServerObjectDatabaseMetadataImportEnumerateObjects(payload, payload, @"kind", 0, 0, 0, 0, v34);

  v21 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v19 count];
    v23 = v41[5];
    *buf = 67109378;
    v47 = v22;
    v48 = 2114;
    v49 = v23;
    _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_DEFAULT, "SOD performWithDatabaseOperations: importing [Platform payload] childRelationsCount=%d collectionVersionHash=%{public}@", buf, 0x12u);
  }

  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __100__MPServerObjectDatabaseStorePlatformImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_461;
  v31 = &unk_1E767C460;
  v24 = v18;
  v32 = v24;
  v33 = &v40;
  [v19 enumerateObjectsUsingBlock:&v28];
  v25 = [MPServerObjectDatabaseImportResult alloc];
  v26 = -[MPServerObjectDatabaseImportResult initWithAnnotatedPayload:playableAssetIdentifiers:importedIdentifiers:assetsCount:hlsAssetsCount:error:](v25, "initWithAnnotatedPayload:playableAssetIdentifiers:importedIdentifiers:assetsCount:hlsAssetsCount:error:", payload, 0, v20, [v24 importedAssetsCount], objc_msgSend(v24, "importedHLSAssetsCount"), 0);

  _Block_object_dispose(&v40, 8);

  return v26;
}

uint64_t __100__MPServerObjectDatabaseStorePlatformImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v61 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = [MPStorePlatformEntityTranslator translatorForKind:v11];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 identifiersForPayload:v12 context:*(a1 + 40)];
    v16 = v15;
    *a8 = v16;
    if (v16)
    {
      if (!*(*(*(a1 + 72) + 8) + 40))
      {
        v17 = [v12 objectForKeyedSubscript:@"versionHash"];
        v18 = *(*(a1 + 72) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;
      }

      v49 = v12;
      v20 = [v12 objectForKeyedSubscript:{@"childrenIds", v14}];
      if ([v20 count])
      {
        v21 = 0;
        do
        {
          v22 = [v20 objectAtIndexedSubscript:v21];
          v23 = [objc_opt_class() _childKeyForParentType:v11 type:@"song"];
          if (v23)
          {
            v24 = [MPIdentifierSet alloc];
            v25 = +[MPModelSongKind identityKind];
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = __100__MPServerObjectDatabaseStorePlatformImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_428;
            v56[3] = &unk_1E767EE00;
            v57 = v22;
            v58 = *(a1 + 40);
            v26 = [(MPIdentifierSet *)v24 initWithSource:@"ServerObjectDatabase-ImportRequest" modelKind:v25 block:v56];

            v27 = *(*(*(a1 + 72) + 8) + 40);
            if (v27)
            {
              if (!v21)
              {
                [*(a1 + 48) removeRelationshipsForParentIdentifiers:v15 childKey:v23];
                v27 = *(*(*(a1 + 72) + 8) + 40);
              }

              [*(a1 + 48) relateIdentifiers:v26 type:v11 toParentIdentifiers:v15 parentVersionHash:v27 childKey:v23 order:v21];
            }

            else
            {
              v28 = [[MPServerObjectDatabaseMediaAPIImportChildRelation alloc] initWithItemIdentifiers:v26 type:v11 parentIdentifiers:v15 childKey:v23 relativeOrder:v21];
              [*(a1 + 56) addObject:v28];
            }
          }

          ++v21;
        }

        while (v21 < [v20 count]);
      }

      v29 = v49;
      v30 = [v49 objectForKeyedSubscript:@"children"];
      if (_NSIsNSDictionary())
      {
        v31 = [v49 mutableCopy];
        [v31 setObject:0 forKeyedSubscript:@"children"];

        v29 = v31;
      }

      v32 = [v29 valueForKey:@"extendedAssetUrls"];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = [v29 valueForKeyPath:@"assetUrls"];
      }

      v36 = v34;

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __100__MPServerObjectDatabaseStorePlatformImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_4;
      v51[3] = &unk_1E767C3E8;
      v52 = *(a1 + 48);
      v15 = v15;
      v37 = *(a1 + 32);
      v53 = v15;
      v54 = v37;
      v12 = v29;
      v55 = v12;
      [v36 enumerateKeysAndObjectsUsingBlock:v51];
      if ([&unk_1F1509F40 containsObject:v11])
      {
        v38 = [v12 objectForKeyedSubscript:@"contentRatingsBySystem"];
        v39 = [v38 allValues];
        [v39 firstObject];
        v40 = v36;
        v42 = v41 = v30;
        [v42 objectForKeyedSubscript:@"value"];
        v43 = v50 = v12;

        v30 = v41;
        v36 = v40;

        v44 = [v43 integerValue] > 499;
        v12 = v50;
      }

      else
      {
        v44 = 0;
      }

      v14 = v48;
      [*(a1 + 64) addObject:v15];
      v45 = *(a1 + 48);
      v46 = [*(a1 + 32) expirationDate];
      v35 = [v45 importObject:v12 type:v11 identifiers:v15 isExplicitContent:v44 source:2 expiration:v46];

LABEL_29:
      goto LABEL_30;
    }
  }

  else
  {
    v15 = [objc_opt_class() _unsupportedStorePlatformKinds];
    if (([v15 containsObject:v11] & 1) == 0)
    {
      [v15 addObject:v11];
      v20 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v60 = v11;
        _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_FAULT, "Encountered unsupported StorePlatform kind: %@", buf, 0xCu);
      }

      v35 = 0;
      goto LABEL_29;
    }
  }

  v35 = 0;
LABEL_30:

  return v35;
}

void __100__MPServerObjectDatabaseStorePlatformImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_461(uint64_t a1, void *a2)
{
  v12 = a2;
  if (![v12 relativeOrder])
  {
    v3 = *(a1 + 32);
    v4 = [v12 parentIdentifiers];
    v5 = [v12 childKey];
    [v3 removeRelationshipsForParentIdentifiers:v4 childKey:v5];
  }

  v6 = *(a1 + 32);
  v7 = [v12 identifiers];
  v8 = [v12 type];
  v9 = [v12 parentIdentifiers];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v10 = &stru_1F149ECA8;
  }

  v11 = [v12 childKey];
  [v6 relateIdentifiers:v7 type:v8 toParentIdentifiers:v9 parentVersionHash:v10 childKey:v11 order:{objc_msgSend(v12, "relativeOrder")}];
}

void __100__MPServerObjectDatabaseStorePlatformImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_428(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __100__MPServerObjectDatabaseStorePlatformImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_2;
  v6[3] = &unk_1E767FAA0;
  v7 = *(a1 + 32);
  v4 = a2;
  [v4 setUniversalStoreIdentifiersWithBlock:v6];
  v5 = [*(a1 + 40) personID];
  [v4 setPersonalStoreIdentifiersWithPersonID:v5 block:&__block_literal_global_432];
}

void __100__MPServerObjectDatabaseStorePlatformImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!_NSIsNSString() || !_NSIsNSString())
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      *buf = 138544130;
      v22 = v10;
      v23 = 2114;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v5;
      v27 = 2114;
      v28 = v6;
      v12 = v24;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_FAULT, "Encountered unsupported data type in assetURLs [StorePlatform]: flavorStringType=%{public}@ urlStringType=%{public}@ flavorString=%{public}@ urlString=%{public}@", buf, 0x2Au);
    }

    goto LABEL_15;
  }

  v7 = v5;
  if ([&unk_1F1509F70 containsObject:v7])
  {
    v8 = 1;
  }

  else if ([&unk_1F1509F88 containsObject:v7])
  {
    v8 = 2;
  }

  else if ([&unk_1F1509FA0 containsObject:v7])
  {
    v8 = 3;
  }

  else
  {
    if (([&unk_1F1509FB8 containsObject:v7] & 1) == 0)
    {

      goto LABEL_18;
    }

    v8 = 4;
  }

  if ([v6 length])
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v9 = [*(a1 + 48) assetURLExpirationDate];
    [v13 importAssetURLString:v6 forIdentifiers:v14 flavor:v8 expirationDate:v9];
LABEL_15:

    goto LABEL_16;
  }

LABEL_18:
  if ([v7 isEqualToString:@"enhancedHls"] && objc_msgSend(v6, "length"))
  {
    v15 = [*(a1 + 56) valueForKey:@"redeliveryTargetId"];
    if (objc_opt_respondsToSelector())
    {
      v16 = [v15 longLongValue];
    }

    else
    {
      v16 = 0;
    }

    v17 = *MEMORY[0x1E69E4280];
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = [*(a1 + 48) assetURLExpirationDate];
    [v18 importHLSAssetURLString:v6 keyCertificateURL:0 keyServerURL:0 redeliveryId:v16 protocolType:v17 isiTunesStoreStream:1 forIdentifiers:v19 expirationDate:v20];
  }

LABEL_16:
}

void __100__MPServerObjectDatabaseStorePlatformImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAdamID:{objc_msgSend(v2, "longLongValue")}];
}

- (MPServerObjectDatabaseStorePlatformImportRequest)initWithPayload:(id)payload
{
  v4.receiver = self;
  v4.super_class = MPServerObjectDatabaseStorePlatformImportRequest;
  return [(MPServerObjectDatabaseImportRequest *)&v4 _initWithPayload:payload];
}

+ (id)_entityTypeForObject:(id)object
{
  v3 = [object objectForKeyedSubscript:@"kind"];
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"song"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"musicVideo") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"uploadedAudio") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"uploadedVideo"))
    {
      v5 = MPModelRelationshipGenericSong;
    }

    else if ([v4 isEqualToString:@"playlist"])
    {
      v5 = MPModelRelationshipGenericPlaylist;
    }

    else if ([v4 isEqualToString:@"artist"])
    {
      v5 = MPModelRelationshipGenericArtist;
    }

    else if ([v4 isEqualToString:@"album"])
    {
      v5 = MPModelRelationshipGenericAlbum;
    }

    else if ([v4 isEqualToString:@"radioStation"])
    {
      v5 = MPModelRelationshipGenericRadioStation;
    }

    else if ([v4 isEqualToString:@"tvEpisode"])
    {
      v5 = MPModelRelationshipGenericTVEpisode;
    }

    else if ([v4 isEqualToString:@"tvSeason"])
    {
      v5 = MPModelRelationshipGenericTVSeason;
    }

    else if ([v4 isEqualToString:@"tvShow"])
    {
      v5 = MPModelRelationshipGenericTVShow;
    }

    else
    {
      if (![v4 isEqualToString:@"movie"])
      {
        v6 = 0;
        goto LABEL_8;
      }

      v5 = MPModelRelationshipGenericMovie;
    }

    v6 = *v5;
LABEL_8:
    v7 = [MPServerObjectDatabaseEntityType entityTypeWithServerEntityType:v4 genericObjectRelationshipKey:v6];

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (id)_childKeyForParentType:(id)type type:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v7 = a4;
  if ([typeCopy isEqualToString:@"song"])
  {
    if ([v7 isEqualToString:@"album"])
    {
      v8 = @"MPModelChildSongAlbum";
LABEL_19:
      v9 = v8;
      goto LABEL_20;
    }

    if ([v7 isEqualToString:@"artist"])
    {
      v8 = @"MPModelChildSongArtists";
      goto LABEL_19;
    }
  }

  if ([typeCopy isEqualToString:@"album"])
  {
    if ([v7 isEqualToString:@"song"])
    {
      v8 = @"MPModelChildAlbumSongs";
      goto LABEL_19;
    }

    if ([v7 isEqualToString:@"artist"])
    {
      v8 = @"MPModelChildAlbumArtists";
      goto LABEL_19;
    }

    if ([v7 isEqualToString:@"record-labels"])
    {
      v8 = @"MPModelChildAlbumRecordLabels";
      goto LABEL_19;
    }
  }

  if ([typeCopy isEqualToString:@"artist"] && objc_msgSend(v7, "isEqualToString:", @"album"))
  {
    v8 = @"MPModelChildArtistAlbums";
    goto LABEL_19;
  }

  if ([typeCopy isEqualToString:@"playlist"] && objc_msgSend(v7, "isEqualToString:", @"song"))
  {
    v8 = @"MPModelChildPlaylistEntries";
    goto LABEL_19;
  }

  _unsupportedParentChildRelationships = [self _unsupportedParentChildRelationships];
  v19[0] = typeCopy;
  v19[1] = v7;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v13 = [v12 componentsJoinedByString:@"|"];

  if (([_unsupportedParentChildRelationships containsObject:v13] & 1) == 0)
  {
    [_unsupportedParentChildRelationships addObject:v13];
    v14 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = typeCopy;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_ERROR, "Encountered unexpected store platform relationship parent=%@ type=%@", &v15, 0x16u);
    }
  }

  v8 = 0;
LABEL_20:

  return v8;
}

+ (id)_unsupportedStorePlatformKinds
{
  if (_unsupportedStorePlatformKinds_onceToken != -1)
  {
    dispatch_once(&_unsupportedStorePlatformKinds_onceToken, &__block_literal_global_467);
  }

  v3 = _unsupportedStorePlatformKinds_unsupportedKinds;

  return v3;
}

uint64_t __82__MPServerObjectDatabaseStorePlatformImportRequest__unsupportedStorePlatformKinds__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = _unsupportedStorePlatformKinds_unsupportedKinds;
  _unsupportedStorePlatformKinds_unsupportedKinds = v0;

  [_unsupportedStorePlatformKinds_unsupportedKinds addObject:@"activity"];
  [_unsupportedStorePlatformKinds_unsupportedKinds addObject:@"radioStation"];
  [_unsupportedStorePlatformKinds_unsupportedKinds addObject:@"editorial"];
  [_unsupportedStorePlatformKinds_unsupportedKinds addObject:@"streaming"];
  [_unsupportedStorePlatformKinds_unsupportedKinds addObject:@"user"];
  [_unsupportedStorePlatformKinds_unsupportedKinds addObject:@"artistOnly"];
  [_unsupportedStorePlatformKinds_unsupportedKinds addObject:@"iTunesBrand"];
  v2 = _unsupportedStorePlatformKinds_unsupportedKinds;

  return [v2 addObject:@"showBrand"];
}

+ (id)_unsupportedParentChildRelationships
{
  if (_unsupportedParentChildRelationships_onceToken_463 != -1)
  {
    dispatch_once(&_unsupportedParentChildRelationships_onceToken_463, &__block_literal_global_465);
  }

  v3 = _unsupportedParentChildRelationships_unsupportedParentChildRelationships_462;

  return v3;
}

void __88__MPServerObjectDatabaseStorePlatformImportRequest__unsupportedParentChildRelationships__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = _unsupportedParentChildRelationships_unsupportedParentChildRelationships_462;
  _unsupportedParentChildRelationships_unsupportedParentChildRelationships_462 = v0;
}

@end