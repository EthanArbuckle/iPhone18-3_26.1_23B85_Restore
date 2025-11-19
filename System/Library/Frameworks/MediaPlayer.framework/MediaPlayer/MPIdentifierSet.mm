@interface MPIdentifierSet
+ (MPIdentifierSet)emptyIdentifierSet;
- (BOOL)hasCommonIdentifierWithIdentifierSet:(id)a3;
- (BOOL)intersectsSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MPIdentifierSet)initWithBlock:(id)a3;
- (MPIdentifierSet)initWithCoder:(id)a3;
- (MPIdentifierSet)initWithSource:(id)a3 modelKind:(id)a4 block:(id)a5;
- (MPIdentifierSet)initWithSource:(id)a3 modelKind:(id)a4 musicKitBlock:(id)a5;
- (MPLocalLibraryIdentifiers)library;
- (MPPersonalStoreIdentifiers)personalizedStore;
- (MPRadioIdentifiers)radio;
- (MPUniversalStoreIdentifiers)universalStore;
- (NSString)description;
- (NSString)humanDescription;
- (id)_copyWithSource:(id)a3 asPlaylistEntryOccurence:(int64_t)a4;
- (id)_copyWithSources:(id)a3 block:(id)a4;
- (id)_initWithSources:(id)a3 modelKind:(id)a4 block:(id)a5;
- (id)_stateDumpObject;
- (id)copyWithSource:(id)a3 block:(id)a4;
- (id)copyWithSource:(id)a3 musicKitBlock:(id)a4;
- (id)identifierDescriptions:(BOOL)a3;
- (id)msv_initWithJSONValue:(id)a3;
- (id)msv_jsonValue;
- (id)preferredStoreStringIdentifierForPersonID:(id)a3;
- (id)prioritizedStoreStringIdentifiersForPersonID:(id)a3;
- (id)unionSet:(id)a3 block:(id)a4;
- (unint64_t)hash;
- (void)_setDefaultDatabaseIDIfNeeded;
- (void)_setDefaultPersonIDIfNeeded;
- (void)clearLibraryIdentifiers;
- (void)clearPersonalStoreIdentifiers;
- (void)clearRadioIdentifiers;
- (void)clearUniversalStoreIdentifiers;
- (void)encodeWithCoder:(id)a3;
- (void)setCloudUniversalLibraryID:(id)a3;
- (void)setFormerStoreAdamIDs:(id)a3;
- (void)setLibraryIdentifiersWithDatabaseID:(id)a3 block:(id)a4;
- (void)setModelKind:(id)a3;
- (void)setPersonalStoreIdentifiersWithPersonID:(id)a3 block:(id)a4;
- (void)setRadioStationHash:(id)a3;
- (void)setRadioStationStringID:(id)a3;
- (void)setStoreCloudAlbumID:(id)a3;
- (void)setStoreCloudArtistID:(id)a3;
- (void)setStoreRecommendationID:(id)a3;
@end

@implementation MPIdentifierSet

- (MPLocalLibraryIdentifiers)library
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_databaseID length])
  {
    v3 = self;
  }

  else
  {
    if (self->_persistentID || self->_containedPersistentID || self->_syncID)
    {
      v4 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 138543362;
        v7 = self;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Omitting library IDs [missing databaseID] identifierSet=%{public}@", &v6, 0xCu);
      }
    }

    v3 = 0;
  }

  return v3;
}

- (MPUniversalStoreIdentifiers)universalStore
{
  if ([(NSString *)self->_globalPlaylistID length]|| self->_adamID || [(NSArray *)self->_formerAdamIDs count]|| [(NSString *)self->_universalCloudLibraryID length]|| self->_purchasedAdamID || self->_subscriptionAdamID || [(NSString *)self->_socialProfileID length]|| [(NSString *)self->_informalMediaClipID length]|| [(NSString *)self->_informalStaticAssetID length]|| self->_reportingAdamID || self->_assetAdamID || self->_lyricsAdamID)
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setDefaultPersonIDIfNeeded
{
  if (![(NSString *)self->_personID length])
  {
    v5 = [MEMORY[0x1E69E4680] activeAccount];
    v3 = [v5 accountDSID];
    personID = self->_personID;
    self->_personID = v3;
  }
}

- (void)_setDefaultDatabaseIDIfNeeded
{
  if (![(NSString *)self->_databaseID length])
  {
    v6 = [MEMORY[0x1E69E4680] activeAccount];
    v3 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v6];
    v4 = [v3 uniqueIdentifier];
    databaseID = self->_databaseID;
    self->_databaseID = v4;
  }
}

- (id)msv_jsonValue
{
  v103 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() emptyIdentifierSet];

  if (v3 == self)
  {
    v17 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [(MPModelKind *)self->_modelKind msv_jsonValue];
    [v4 setObject:v5 forKeyedSubscript:@"kind"];

    v6 = [(NSArray *)self->_sources msv_jsonValue];
    [v4 setObject:v6 forKeyedSubscript:@"sources"];

    v7 = [(MPIdentifierSet *)self library];
    if (v7)
    {
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
      v9 = [v7 databaseID];
      [v8 setObject:v9 forKeyedSubscript:@"db-id"];

      quot = [v7 persistentID];
      if (quot)
      {
        v11 = quot;
        v12 = &v103 + 1;
        do
        {
          v13 = lldiv(quot, 10);
          quot = v13.quot;
          if (v13.rem >= 0)
          {
            LOBYTE(v14) = v13.rem;
          }

          else
          {
            v14 = -v13.rem;
          }

          *(v12 - 2) = v14 + 48;
          v15 = (v12 - 2);
          --v12;
        }

        while (v13.quot);
        if (v11 < 0)
        {
          *(v12 - 2) = 45;
          v15 = (v12 - 2);
        }

        v16 = CFStringCreateWithBytes(0, v15, &v103 - v15, 0x8000100u, 0);
      }

      else
      {
        v16 = @"0";
      }

      [v8 setObject:v16 forKeyedSubscript:@"pid"];

      if ([v7 containedPersistentID])
      {
        v18 = [v7 containedPersistentID];
        if (v18)
        {
          v19 = v18;
          v20 = &v103 + 1;
          do
          {
            v21 = lldiv(v18, 10);
            v18 = v21.quot;
            if (v21.rem >= 0)
            {
              LOBYTE(v22) = v21.rem;
            }

            else
            {
              v22 = -v21.rem;
            }

            *(v20 - 2) = v22 + 48;
            v23 = (v20 - 2);
            --v20;
          }

          while (v21.quot);
          if (v19 < 0)
          {
            *(v20 - 2) = 45;
            v23 = (v20 - 2);
          }

          v24 = CFStringCreateWithBytes(0, v23, &v103 - v23, 0x8000100u, 0);
        }

        else
        {
          v24 = @"0";
        }

        [v8 setObject:v24 forKeyedSubscript:@"contained-pid"];
      }

      else
      {
        [v8 setObject:0 forKeyedSubscript:@"contained-pid"];
      }

      if ([v7 syncID])
      {
        v25 = [v7 syncID];
        if (v25)
        {
          v26 = v25;
          v27 = &v103 + 1;
          do
          {
            v28 = lldiv(v25, 10);
            v25 = v28.quot;
            if (v28.rem >= 0)
            {
              LOBYTE(v29) = v28.rem;
            }

            else
            {
              v29 = -v28.rem;
            }

            *(v27 - 2) = v29 + 48;
            v30 = (v27 - 2);
            --v27;
          }

          while (v28.quot);
          if (v26 < 0)
          {
            *(v27 - 2) = 45;
            v30 = (v27 - 2);
          }

          v31 = CFStringCreateWithBytes(0, v30, &v103 - v30, 0x8000100u, 0);
        }

        else
        {
          v31 = @"0";
        }

        [v8 setObject:v31 forKeyedSubscript:@"sync"];
      }

      else
      {
        [v8 setObject:0 forKeyedSubscript:@"sync"];
      }

      [v4 setObject:v8 forKeyedSubscript:@"library"];
    }

    v32 = [(MPIdentifierSet *)self personalizedStore];
    if (v32)
    {
      v33 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
      v34 = [v32 personID];
      [v33 setObject:v34 forKeyedSubscript:@"person-id"];

      if ([v32 cloudID])
      {
        v35 = [v32 cloudID];
        if (v35)
        {
          v36 = v35;
          v37 = &v103 + 1;
          do
          {
            v38 = lldiv(v35, 10);
            v35 = v38.quot;
            if (v38.rem >= 0)
            {
              LOBYTE(v39) = v38.rem;
            }

            else
            {
              v39 = -v38.rem;
            }

            *(v37 - 2) = v39 + 48;
            v40 = (v37 - 2);
            --v37;
          }

          while (v38.quot);
          if (v36 < 0)
          {
            *(v37 - 2) = 45;
            v40 = (v37 - 2);
          }

          v41 = CFStringCreateWithBytes(0, v40, &v103 - v40, 0x8000100u, 0);
        }

        else
        {
          v41 = @"0";
        }

        [v33 setObject:v41 forKeyedSubscript:@"cloud"];
      }

      else
      {
        [v33 setObject:0 forKeyedSubscript:@"cloud"];
      }

      v42 = [v32 cloudAlbumID];
      [v33 setObject:v42 forKeyedSubscript:@"cloud-album"];

      v43 = [v32 recommendationID];
      [v33 setObject:v43 forKeyedSubscript:@"reco-id"];

      [v4 setObject:v33 forKeyedSubscript:@"personal"];
    }

    v44 = [(MPIdentifierSet *)self universalStore];
    if (v44)
    {
      v45 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:9];
      v46 = [v44 globalPlaylistID];
      [v45 setObject:v46 forKeyedSubscript:@"global-playlist"];

      if ([v44 adamID])
      {
        v47 = [v44 adamID];
        if (v47)
        {
          v48 = v47;
          v49 = &v103 + 1;
          do
          {
            v50 = lldiv(v47, 10);
            v47 = v50.quot;
            if (v50.rem >= 0)
            {
              LOBYTE(v51) = v50.rem;
            }

            else
            {
              v51 = -v50.rem;
            }

            *(v49 - 2) = v51 + 48;
            v52 = (v49 - 2);
            --v49;
          }

          while (v50.quot);
          if (v48 < 0)
          {
            *(v49 - 2) = 45;
            v52 = (v49 - 2);
          }

          v53 = CFStringCreateWithBytes(0, v52, &v103 - v52, 0x8000100u, 0);
        }

        else
        {
          v53 = @"0";
        }

        [v45 setObject:v53 forKeyedSubscript:@"adam"];
      }

      else
      {
        [v45 setObject:0 forKeyedSubscript:@"adam"];
      }

      v54 = [v44 formerAdamIDs];
      if ([v54 count])
      {
        v55 = [v44 formerAdamIDs];
        v56 = [v55 msv_map:&__block_literal_global_450];
        [v45 setObject:v56 forKeyedSubscript:@"former-ids"];
      }

      else
      {
        [v45 setObject:0 forKeyedSubscript:@"former-ids"];
      }

      v57 = [v44 universalCloudLibraryID];
      [v45 setObject:v57 forKeyedSubscript:@"ulid"];

      if ([v44 purchasedAdamID])
      {
        v58 = [v44 purchasedAdamID];
        if (v58)
        {
          v59 = v58;
          v60 = &v103 + 1;
          do
          {
            v61 = lldiv(v58, 10);
            v58 = v61.quot;
            if (v61.rem >= 0)
            {
              LOBYTE(v62) = v61.rem;
            }

            else
            {
              v62 = -v61.rem;
            }

            *(v60 - 2) = v62 + 48;
            v63 = (v60 - 2);
            --v60;
          }

          while (v61.quot);
          if (v59 < 0)
          {
            *(v60 - 2) = 45;
            v63 = (v60 - 2);
          }

          v64 = CFStringCreateWithBytes(0, v63, &v103 - v63, 0x8000100u, 0);
        }

        else
        {
          v64 = @"0";
        }

        [v45 setObject:v64 forKeyedSubscript:@"purchased"];
      }

      else
      {
        [v45 setObject:0 forKeyedSubscript:@"purchased"];
      }

      if ([v44 subscriptionAdamID])
      {
        v65 = [v44 subscriptionAdamID];
        if (v65)
        {
          v66 = v65;
          v67 = &v103 + 1;
          do
          {
            v68 = lldiv(v65, 10);
            v65 = v68.quot;
            if (v68.rem >= 0)
            {
              LOBYTE(v69) = v68.rem;
            }

            else
            {
              v69 = -v68.rem;
            }

            *(v67 - 2) = v69 + 48;
            v70 = (v67 - 2);
            --v67;
          }

          while (v68.quot);
          if (v66 < 0)
          {
            *(v67 - 2) = 45;
            v70 = (v67 - 2);
          }

          v71 = CFStringCreateWithBytes(0, v70, &v103 - v70, 0x8000100u, 0);
        }

        else
        {
          v71 = @"0";
        }

        [v45 setObject:v71 forKeyedSubscript:@"subscription"];
      }

      else
      {
        [v45 setObject:0 forKeyedSubscript:@"subscription"];
      }

      v72 = [v44 socialProfileID];
      [v45 setObject:v72 forKeyedSubscript:@"social-profile"];

      v73 = [v44 informalMediaClipID];
      [v45 setObject:v73 forKeyedSubscript:@"media-clip"];

      v74 = [v44 informalStaticAssetID];
      [v45 setObject:v74 forKeyedSubscript:@"static-asset"];

      if ([v44 reportingAdamID])
      {
        v75 = [v44 reportingAdamID];
        if (v75)
        {
          v76 = v75;
          v77 = &v103 + 1;
          do
          {
            v78 = lldiv(v75, 10);
            v75 = v78.quot;
            if (v78.rem >= 0)
            {
              LOBYTE(v79) = v78.rem;
            }

            else
            {
              v79 = -v78.rem;
            }

            *(v77 - 2) = v79 + 48;
            v80 = (v77 - 2);
            --v77;
          }

          while (v78.quot);
          if (v76 < 0)
          {
            *(v77 - 2) = 45;
            v80 = (v77 - 2);
          }

          v81 = CFStringCreateWithBytes(0, v80, &v103 - v80, 0x8000100u, 0);
        }

        else
        {
          v81 = @"0";
        }

        [v45 setObject:v81 forKeyedSubscript:@"reporting-adam-id"];
      }

      else
      {
        [v45 setObject:0 forKeyedSubscript:@"reporting-adam-id"];
      }

      if ([v44 assetAdamID])
      {
        v82 = [v44 assetAdamID];
        if (v82)
        {
          v83 = v82;
          v84 = &v103 + 1;
          do
          {
            v85 = lldiv(v82, 10);
            v82 = v85.quot;
            if (v85.rem >= 0)
            {
              LOBYTE(v86) = v85.rem;
            }

            else
            {
              v86 = -v85.rem;
            }

            *(v84 - 2) = v86 + 48;
            v87 = (v84 - 2);
            --v84;
          }

          while (v85.quot);
          if (v83 < 0)
          {
            *(v84 - 2) = 45;
            v87 = (v84 - 2);
          }

          v88 = CFStringCreateWithBytes(0, v87, &v103 - v87, 0x8000100u, 0);
        }

        else
        {
          v88 = @"0";
        }

        [v45 setObject:v88 forKeyedSubscript:@"asset-adam-id"];
      }

      else
      {
        [v45 setObject:0 forKeyedSubscript:@"asset-adam-id"];
      }

      [v4 setObject:v45 forKeyedSubscript:@"universal"];
    }

    v89 = [(MPIdentifierSet *)self radio];
    if (v89)
    {
      v90 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
      v91 = [v89 stationStringID];
      [v90 setObject:v91 forKeyedSubscript:@"station-string"];

      v92 = [v89 stationHash];
      [v90 setObject:v92 forKeyedSubscript:@"station-hash"];

      if ([v89 stationID])
      {
        v93 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v89, "stationID")}];
        [v90 setObject:v93 forKeyedSubscript:@"station-id"];
      }

      else
      {
        [v90 setObject:0 forKeyedSubscript:@"station-id"];
      }

      [v4 setObject:v90 forKeyedSubscript:@"radio"];
    }

    v94 = [(MPIdentifierSet *)self containerUniqueID];
    [v4 setObject:v94 forKeyedSubscript:@"containerUniqueID"];

    v95 = [(MPIdentifierSet *)self handoffCorrelationID];
    [v4 setObject:v95 forKeyedSubscript:@"handoffCorrelationID"];

    v96 = [(MPIdentifierSet *)self contentItemID];
    [v4 setObject:v96 forKeyedSubscript:@"contentItemID"];

    v97 = [(MPIdentifierSet *)self lyricsID];
    [v4 setObject:v97 forKeyedSubscript:@"lyricsID"];

    v98 = [(MPIdentifierSet *)self vendorID];
    [v4 setObject:v98 forKeyedSubscript:@"vendorID"];

    v99 = [(MPIdentifierSet *)self opaqueID];
    [v4 setObject:v99 forKeyedSubscript:@"opaqueID"];

    v100 = [(MPIdentifierSet *)self versionHash];
    [v4 setObject:v100 forKeyedSubscript:@"versionHash"];

    v101 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPIdentifierSet isPlaceholder](self, "isPlaceholder")}];
    [v4 setObject:v101 forKeyedSubscript:@"placeholder"];

    v17 = [v4 copy];
  }

  return v17;
}

__CFString *__32__MPIdentifierSet_msv_jsonValue__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  quot = [a2 longLongValue];
  if (quot)
  {
    v3 = quot;
    v4 = &v10 + 1;
    do
    {
      v5 = lldiv(quot, 10);
      quot = v5.quot;
      if (v5.rem >= 0)
      {
        LOBYTE(v6) = v5.rem;
      }

      else
      {
        v6 = -v5.rem;
      }

      *(v4 - 2) = v6 + 48;
      v7 = (v4 - 2);
      --v4;
    }

    while (v5.quot);
    if (v3 < 0)
    {
      *(v4 - 2) = 45;
      v7 = (v4 - 2);
    }

    v8 = CFStringCreateWithBytes(0, v7, &v10 - v7, 0x8000100u, 0);
  }

  else
  {
    v8 = @"0";
  }

  return v8;
}

- (id)msv_initWithJSONValue:(id)a3
{
  v4 = a3;
  if (_NSIsNSDictionary())
  {
    v5 = v4;
    v6 = [MPModelKind alloc];
    v7 = [v5 objectForKeyedSubscript:@"kind"];
    v8 = [(MPModelKind *)v6 msv_initWithJSONValue:v7];

    v9 = [v5 objectForKeyedSubscript:@"sources"];
    v10 = [v9 arrayByAddingObject:@"json"];

    v11 = self;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__MPIdentifierSet_msv_initWithJSONValue___block_invoke;
    v15[3] = &unk_1E7680B28;
    v16 = v5;
    v12 = v5;
    v13 = [(MPIdentifierSet *)v11 _initWithSources:v10 modelKind:v8 block:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __41__MPIdentifierSet_msv_initWithJSONValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"containerUniqueID"];
  [v3 setContainerUniqueID:v4];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"handoffCorrelationID"];
  [v3 setHandoffCorrelationID:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"contentItemID"];
  [v3 setContentItemID:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"lyricsID"];
  [v3 setLyricsID:v7];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"vendorID"];
  [v3 setVendorID:v8];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"opaqueID"];
  [v3 setOpaqueID:v9];

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"versionHash"];
  [v3 setVersionHash:v10];

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"placeholder"];
  [v3 setPlaceholder:{objc_msgSend(v11, "BOOLValue")}];

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"library"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:@"db-id"];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __41__MPIdentifierSet_msv_initWithJSONValue___block_invoke_2;
    v28[3] = &unk_1E7680B00;
    v29 = v13;
    [v3 setLibraryIdentifiersWithDatabaseID:v14 block:v28];
  }

  v15 = [*(a1 + 32) objectForKeyedSubscript:@"personal"];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 objectForKeyedSubscript:@"person-id"];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __41__MPIdentifierSet_msv_initWithJSONValue___block_invoke_3;
    v26[3] = &unk_1E767FA78;
    v27 = v16;
    [v3 setPersonalStoreIdentifiersWithPersonID:v17 block:v26];
  }

  v18 = [*(a1 + 32) objectForKeyedSubscript:@"universal"];
  v19 = v18;
  if (v18)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __41__MPIdentifierSet_msv_initWithJSONValue___block_invoke_4;
    v24[3] = &unk_1E767FAA0;
    v25 = v18;
    [v3 setUniversalStoreIdentifiersWithBlock:v24];
  }

  v20 = [*(a1 + 32) objectForKeyedSubscript:@"radio"];
  v21 = v20;
  if (v20)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __41__MPIdentifierSet_msv_initWithJSONValue___block_invoke_6;
    v22[3] = &unk_1E7680C00;
    v23 = v20;
    [v3 setRadioIdentifiersWithBlock:v22];
  }
}

void __41__MPIdentifierSet_msv_initWithJSONValue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"pid"];
  [v4 setPersistentID:{objc_msgSend(v5, "longLongValue")}];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"contained-pid"];
  [v4 setContainedPersistentID:{objc_msgSend(v6, "longLongValue")}];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"sync"];
  [v4 setSyncID:{objc_msgSend(v7, "longLongValue")}];
}

void __41__MPIdentifierSet_msv_initWithJSONValue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"cloud"];
  [v4 setCloudID:{objc_msgSend(v5, "longLongValue")}];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"cloud-album"];
  [v4 setCloudAlbumID:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"reco-id"];
  [v4 setRecommendationID:v7];
}

void __41__MPIdentifierSet_msv_initWithJSONValue___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"global-playlist"];
  [v4 setGlobalPlaylistID:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"adam"];
  [v4 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"former-ids"];
  v8 = [v7 msv_map:&__block_literal_global_410];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  [v4 setFormerAdamIDs:v10];

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"ulid"];
  [v4 setUniversalCloudLibraryID:v11];

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"purchased"];
  [v4 setPurchasedAdamID:{objc_msgSend(v12, "longLongValue")}];

  v13 = [*(a1 + 32) objectForKeyedSubscript:@"subscription"];
  [v4 setSubscriptionAdamID:{objc_msgSend(v13, "longLongValue")}];

  v14 = [*(a1 + 32) objectForKeyedSubscript:@"social-profile"];
  [v4 setSocialProfileID:v14];

  v15 = [*(a1 + 32) objectForKeyedSubscript:@"media-clip"];
  [v4 setInformalMediaClipID:v15];

  v16 = [*(a1 + 32) objectForKeyedSubscript:@"static-asset"];
  [v4 setInformalStaticAssetID:v16];

  v17 = [*(a1 + 32) objectForKeyedSubscript:@"reporting-adam-id"];
  [v4 setReportingAdamID:{objc_msgSend(v17, "longLongValue")}];

  v18 = [*(a1 + 32) objectForKeyedSubscript:@"asset-adam-id"];
  [v4 setAssetAdamID:{objc_msgSend(v18, "longLongValue")}];
}

void __41__MPIdentifierSet_msv_initWithJSONValue___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"station-string"];
  [v4 setStationStringID:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"station-hash"];
  [v4 setStationHash:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"station-id"];
  [v4 setStationID:{objc_msgSend(v7, "longLongValue")}];
}

uint64_t __41__MPIdentifierSet_msv_initWithJSONValue___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 longLongValue];

  return [v2 numberWithLongLong:v3];
}

- (id)_copyWithSource:(id)a3 asPlaylistEntryOccurence:(int64_t)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[MPModelPlaylistEntryKind identityKind];
  v8 = [(MPIdentifierSet *)self modelKind];
  v9 = [v8 identityKind];

  if (v9 == v7)
  {
    v10 = [(MPIdentifierSet *)self modelKind];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(MPIdentifierSet *)self modelKind];
  v12 = [v11 isPlaylistableKind];

  if (v12)
  {
    v13 = [(MPIdentifierSet *)self modelKind];
    v14 = [(MPIdentifierSet *)self modelKind];
    v15 = [v14 identityKind];

    if (v13 == v15)
    {
      v19 = v7;

      v10 = v19;
    }

    else
    {
      v16 = [(MPIdentifierSet *)self modelKind];
      v28[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v18 = [MPModelPlaylistEntry kindWithKinds:v17];

      v10 = v18;
    }
  }

  v20 = [@"PlaylistEntryMorph::" stringByAppendingString:v6];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__MPIdentifierSet__copyWithSource_asPlaylistEntryOccurence___block_invoke;
  v24[3] = &unk_1E767FAE8;
  v25 = v10;
  v26 = self;
  v27 = a4;
  v21 = v10;
  v22 = [(MPIdentifierSet *)self copyWithSource:v20 block:v24];

  return v22;
}

void __60__MPIdentifierSet__copyWithSource_asPlaylistEntryOccurence___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  [v13 setModelKind:*(a1 + 32)];
  v3 = [*(a1 + 40) universalStore];
  v4 = [v3 universalCloudLibraryID];
  [v4 length];

  if (![v3 subscriptionAdamID])
  {
    [v3 adamID];
  }

  v5 = MPContainerUniqueIDPrefix(*(a1 + 40));
  v6 = ML3ContainerItemOccurrenceID();
  v7 = v6;
  if (v6 == @"0" || (v8 = [(__CFString *)v6 isEqual:@"0"], v7, v7, v8))
  {
    [v13 setContainerUniqueID:v7];
  }

  v9 = [v13 library];
  if ([v9 persistentID])
  {
    v10 = [v13 library];
    v11 = [v10 containedPersistentID];

    if (v11)
    {
      goto LABEL_10;
    }

    v9 = [v13 library];
    v12 = [v9 databaseID];
    [v13 setLibraryIdentifiersWithDatabaseID:v12 block:&__block_literal_global_335];
  }

LABEL_10:
}

void __60__MPIdentifierSet__copyWithSource_asPlaylistEntryOccurence___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setContainedPersistentID:{objc_msgSend(v2, "persistentID")}];
  [v2 setPersistentID:0];
}

- (id)prioritizedStoreStringIdentifiersForPersonID:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:10];
  v6 = [(MPIdentifierSet *)self universalStore];
  v7 = [v6 globalPlaylistID];

  if ([v7 length])
  {
    [v5 addObject:v7];
  }

  v8 = [(MPIdentifierSet *)self radio];
  v9 = [v8 stationStringID];

  if ([v9 length])
  {
    [v5 addObject:v9];
  }

  v10 = [(MPIdentifierSet *)self radio];
  v11 = [v10 stationEventID];

  if ([v11 length])
  {
    [v5 addObject:v11];
  }

  v12 = [(MPIdentifierSet *)self universalStore];
  v13 = [v12 socialProfileID];

  if ([v13 length])
  {
    [v5 addObject:v13];
  }

  v14 = [(MPIdentifierSet *)self personalizedStore];
  v15 = [v14 personID];

  if ([v4 length] && objc_msgSend(v15, "length") && objc_msgSend(v4, "isEqualToString:", v15))
  {
    v16 = [(MPIdentifierSet *)self universalStore];
    v17 = [v16 universalCloudLibraryID];

    if ([v17 length])
    {
      [v5 addObject:v17];
    }
  }

  v47 = v4;
  v18 = [(MPIdentifierSet *)self universalStore];
  v19 = [v18 subscriptionAdamID];

  if (v19)
  {
    v20 = &v48 + 1;
    quot = v19;
    do
    {
      v22 = lldiv(quot, 10);
      quot = v22.quot;
      if (v22.rem >= 0)
      {
        LOBYTE(v23) = v22.rem;
      }

      else
      {
        v23 = -v22.rem;
      }

      *(v20 - 2) = v23 + 48;
      v24 = (v20 - 2);
      --v20;
    }

    while (v22.quot);
    if (v19 < 0)
    {
      *(v20 - 2) = 45;
      v24 = (v20 - 2);
    }

    v25 = CFStringCreateWithBytes(0, v24, &v48 - v24, 0x8000100u, 0);
    [v5 addObject:v25];
  }

  v26 = [(MPIdentifierSet *)self universalStore];
  v27 = [v26 adamID];

  if (v27 && v27 != v19)
  {
    v28 = &v48 + 1;
    v29 = v27;
    do
    {
      v30 = lldiv(v29, 10);
      v29 = v30.quot;
      if (v30.rem >= 0)
      {
        LOBYTE(v31) = v30.rem;
      }

      else
      {
        v31 = -v30.rem;
      }

      *(v28 - 2) = v31 + 48;
      v32 = (v28 - 2);
      --v28;
    }

    while (v30.quot);
    if (v27 < 0)
    {
      *(v28 - 2) = 45;
      v32 = (v28 - 2);
    }

    v33 = CFStringCreateWithBytes(0, v32, &v48 - v32, 0x8000100u, 0);
    [v5 addObject:v33];
  }

  v34 = [(MPIdentifierSet *)self universalStore];
  v35 = [v34 purchasedAdamID];

  if (v35 && v35 != v27 && v35 != v19)
  {
    v36 = &v48 + 1;
    v37 = v35;
    do
    {
      v38 = lldiv(v37, 10);
      v37 = v38.quot;
      if (v38.rem >= 0)
      {
        LOBYTE(v39) = v38.rem;
      }

      else
      {
        v39 = -v38.rem;
      }

      *(v36 - 2) = v39 + 48;
      v40 = (v36 - 2);
      --v36;
    }

    while (v38.quot);
    if (v35 < 0)
    {
      *(v36 - 2) = 45;
      v40 = (v36 - 2);
    }

    v41 = CFStringCreateWithBytes(0, v40, &v48 - v40, 0x8000100u, 0);
    [v5 addObject:v41];
  }

  v42 = [(MPIdentifierSet *)self opaqueID];
  if ([v42 length])
  {
    [v5 addObject:v42];
  }

  v43 = [v5 array];
  v44 = [v43 copy];

  return v44;
}

- (id)preferredStoreStringIdentifierForPersonID:(id)a3
{
  v3 = [(MPIdentifierSet *)self prioritizedStoreStringIdentifiersForPersonID:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)identifierDescriptions:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:50];
  v6 = v5;
  if (self->_placeholder)
  {
    [v5 addObject:@"placeholder=YES"];
  }

  if ([(NSString *)self->_databaseID length])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"databaseID=%@", self->_databaseID];
    [v6 addObject:v7];
  }

  if ([(NSString *)self->_personID length])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"personID=%@", self->_personID];
    [v6 addObject:v8];
  }

  if (self->_persistentID)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"persistentID=%lld", self->_persistentID];
    [v6 addObject:v9];
  }

  if (self->_containedPersistentID)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"containedPersistentID=%lld", self->_containedPersistentID];
    [v6 addObject:v10];
  }

  if (self->_musicKit_possibleLibraryPersistentID)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"musicKit_possibleLibraryPersistentID=%lld", self->_musicKit_possibleLibraryPersistentID];
    [v6 addObject:v11];
  }

  if (self->_adamID)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"storeAdamID=%lld", self->_adamID];
    [v6 addObject:v12];
  }

  if ([(NSString *)self->_cloudAlbumID length])
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"storeCloudAlbumID=%@", self->_cloudAlbumID];
    [v6 addObject:v13];
  }

  if ([(NSString *)self->_cloudArtistID length])
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"storeCloudArtistID=%@", self->_cloudArtistID];
    [v6 addObject:v14];
  }

  if (self->_cloudID)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"storeCloudID=%lld", self->_cloudID];
    [v6 addObject:v15];
  }

  if ([(NSString *)self->_universalCloudLibraryID length])
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cloudUniversalLibraryID=%@", self->_universalCloudLibraryID];
    [v6 addObject:v16];
  }

  if (self->_purchasedAdamID)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"storePurchasedAdamID=%lld", self->_purchasedAdamID];
    [v6 addObject:v17];
  }

  if ([(NSArray *)self->_formerAdamIDs count])
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [(NSArray *)self->_formerAdamIDs componentsJoinedByString:@", "];
    v20 = [v18 stringWithFormat:@"formerStoreAdamIDs=[%@]", v19];
    [v6 addObject:v20];
  }

  if (self->_subscriptionAdamID)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"storeSubscriptionAdamID=%lld", self->_subscriptionAdamID];
    [v6 addObject:v21];
  }

  if ([(NSString *)self->_stationStringID length])
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"radioStationStringID=%@", self->_stationStringID];
    [v6 addObject:v22];
  }

  if (self->_stationID)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"radioStationID=%lld", self->_stationID];
    [v6 addObject:v23];
  }

  if ([(NSString *)self->_stationHash length])
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"radioStationHash=%@", self->_stationHash];
    [v6 addObject:v24];
  }

  if ([(NSString *)self->_stationEventID length])
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"radioStationEventID=%@", self->_stationEventID];
    [v6 addObject:v25];
  }

  if ([(NSString *)self->_globalPlaylistID length])
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"globalPlaylistID=%@", self->_globalPlaylistID];
    [v6 addObject:v26];
  }

  if ([(NSString *)self->_recommendationID length])
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"storeRecommendationID=%@", self->_recommendationID];
    [v6 addObject:v27];
  }

  if ([(NSString *)self->_containerUniqueID length])
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"containerUniqueID=%@", self->_containerUniqueID];
    [v6 addObject:v28];
  }

  if ([(NSString *)self->_handoffCorrelationID length])
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handoffCorrelationID=%@", self->_handoffCorrelationID];
    [v6 addObject:v29];
  }

  if ([(NSString *)self->_contentItemID length])
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contentItemID=%@", self->_contentItemID];
    [v6 addObject:v30];
  }

  if ([(NSString *)self->_lyricsID length])
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lyricsID=%@", self->_lyricsID];
    [v6 addObject:v31];
  }

  if (self->_shouldExcludeFromShuffle)
  {
    [v6 addObject:@"shouldExcludeFromShuffle=YES"];
  }

  if ([(NSString *)self->_vendorID length])
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"vendorID=%@", self->_vendorID];
    [v6 addObject:v32];
  }

  if ([(NSString *)self->_opaqueID length])
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"opaqueID=%@", self->_opaqueID];
    [v6 addObject:v33];
  }

  if ([(NSString *)self->_versionHash length])
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"versionHash=%@", self->_versionHash];
    [v6 addObject:v34];
  }

  if ([(NSString *)self->_informalMediaClipID length])
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"informalMediaClipID=%@", self->_informalMediaClipID];
    [v6 addObject:v35];
  }

  if ([(NSString *)self->_informalStaticAssetID length])
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"informalStaticAssetID=%@", self->_informalStaticAssetID];
    [v6 addObject:v36];
  }

  if (self->_reportingAdamID)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reportingAdamID=%lld", self->_reportingAdamID];
    [v6 addObject:v37];
  }

  if (self->_assetAdamID)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"assetAdamID=%lld", self->_assetAdamID];
    [v6 addObject:v38];
  }

  if (self->_lyricsAdamID)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lyricsAdamID=%lld", self->_lyricsAdamID];
    [v6 addObject:v39];
  }

  if ([(NSString *)self->_socialProfileID length])
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"socialProfileID=%@", self->_socialProfileID];
    [v6 addObject:v40];
  }

  if (self->_syncID)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"syncID=%lld", self->_syncID];
    [v6 addObject:v41];
  }

  if ([v6 count])
  {
    v42 = MEMORY[0x1E696AEC0];
    modelKind = self->_modelKind;
    if (v3)
    {
      modelKind = [modelKind humanDescription];
    }

    v44 = [v42 stringWithFormat:@"kind=%@", modelKind];
    [v6 addObject:v44];

    if (v3)
    {
    }
  }

  v45 = v6;

  return v6;
}

- (id)_stateDumpObject
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = +[MPIdentifierSet emptyIdentifierSet];

  if (v3 == self)
  {
    v8 = @"<EMPTY>";
  }

  else
  {
    v4 = [(MPIdentifierSet *)self identifierDescriptions:0];
    sources = self->_sources;
    v10[0] = @"sources";
    v10[1] = @"identifiers";
    v11[0] = sources;
    v6 = [(__CFString *)v4 count];
    v7 = @"@";
    if (v6)
    {
      v7 = v4;
    }

    v11[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  return v8;
}

- (void)setStoreRecommendationID:(id)a3
{
  v4 = a3;
  [(MPIdentifierSet *)self _setDefaultPersonIDIfNeeded];
  v5 = [v4 copy];

  recommendationID = self->_recommendationID;
  self->_recommendationID = v5;
}

- (void)setStoreCloudArtistID:(id)a3
{
  v4 = a3;
  [(MPIdentifierSet *)self _setDefaultPersonIDIfNeeded];
  v5 = [v4 copy];

  cloudArtistID = self->_cloudArtistID;
  self->_cloudArtistID = v5;
}

- (void)setStoreCloudAlbumID:(id)a3
{
  v4 = a3;
  [(MPIdentifierSet *)self _setDefaultPersonIDIfNeeded];
  v5 = [v4 copy];

  cloudAlbumID = self->_cloudAlbumID;
  self->_cloudAlbumID = v5;
}

- (void)setCloudUniversalLibraryID:(id)a3
{
  v4 = [a3 copy];
  universalCloudLibraryID = self->_universalCloudLibraryID;
  self->_universalCloudLibraryID = v4;
}

- (void)setFormerStoreAdamIDs:(id)a3
{
  v4 = [a3 copy];
  formerAdamIDs = self->_formerAdamIDs;
  self->_formerAdamIDs = v4;
}

- (void)setRadioStationHash:(id)a3
{
  v4 = [a3 copy];
  stationHash = self->_stationHash;
  self->_stationHash = v4;
}

- (void)setRadioStationStringID:(id)a3
{
  v4 = [a3 copy];
  stationStringID = self->_stationStringID;
  self->_stationStringID = v4;
}

- (void)clearRadioIdentifiers
{
  stationStringID = self->_stationStringID;
  self->_stationStringID = 0;

  stationHash = self->_stationHash;
  self->_stationHash = 0;

  stationEventID = self->_stationEventID;
  self->_stationID = 0;
  self->_stationEventID = 0;
}

- (void)setModelKind:(id)a3
{
  v4 = [a3 copy];
  modelKind = self->_modelKind;
  self->_modelKind = v4;
}

- (void)clearUniversalStoreIdentifiers
{
  globalPlaylistID = self->_globalPlaylistID;
  self->_globalPlaylistID = 0;

  formerAdamIDs = self->_formerAdamIDs;
  v5 = MEMORY[0x1E695E0F0];
  self->_adamID = 0;
  self->_formerAdamIDs = v5;

  universalCloudLibraryID = self->_universalCloudLibraryID;
  self->_universalCloudLibraryID = 0;

  self->_purchasedAdamID = 0;
  self->_subscriptionAdamID = 0;
  socialProfileID = self->_socialProfileID;
  self->_socialProfileID = 0;

  informalMediaClipID = self->_informalMediaClipID;
  self->_informalMediaClipID = 0;

  informalStaticAssetID = self->_informalStaticAssetID;
  self->_informalStaticAssetID = 0;

  self->_reportingAdamID = 0;
  self->_assetAdamID = 0;
  self->_lyricsAdamID = 0;
}

- (void)clearPersonalStoreIdentifiers
{
  personID = self->_personID;
  self->_personID = 0;

  cloudAlbumID = self->_cloudAlbumID;
  self->_cloudID = 0;
  self->_cloudAlbumID = 0;

  cloudArtistID = self->_cloudArtistID;
  self->_cloudArtistID = 0;

  recommendationID = self->_recommendationID;
  self->_recommendationID = 0;
}

- (void)setPersonalStoreIdentifiersWithPersonID:(id)a3 block:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (![(NSString *)v14 length])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MPIdentifierSet.m" lineNumber:867 description:{@"Invalid parameter not satisfying: %@", @"personID.length > 0"}];
  }

  personID = self->_personID;
  v9 = v14;
  if (personID != v14)
  {
    v10 = [(NSString *)personID isEqual:v14];
    v9 = v14;
    if ((v10 & 1) == 0)
    {
      [(MPIdentifierSet *)self clearPersonalStoreIdentifiers];
      v9 = v14;
    }
  }

  v11 = [(NSString *)v9 copy];
  v12 = self->_personID;
  self->_personID = v11;

  v7[2](v7, self);
}

- (void)clearLibraryIdentifiers
{
  databaseID = self->_databaseID;
  self->_databaseID = 0;

  self->_persistentID = 0;
  self->_containedPersistentID = 0;
  self->_syncID = 0;
}

- (void)setLibraryIdentifiersWithDatabaseID:(id)a3 block:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (![(NSString *)v14 length])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MPIdentifierSet.m" lineNumber:851 description:{@"Invalid parameter not satisfying: %@", @"databaseID.length > 0"}];
  }

  databaseID = self->_databaseID;
  v9 = v14;
  if (databaseID != v14)
  {
    v10 = [(NSString *)databaseID isEqual:v14];
    v9 = v14;
    if ((v10 & 1) == 0)
    {
      [(MPIdentifierSet *)self clearLibraryIdentifiers];
      v9 = v14;
    }
  }

  v11 = [(NSString *)v9 copy];
  v12 = self->_databaseID;
  self->_databaseID = v11;

  v7[2](v7, self);
}

- (id)unionSet:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
LABEL_10:
    v17 = self;
    goto LABEL_11;
  }

  v8 = +[MPIdentifierSet emptyIdentifierSet];
  v9 = v8;
  if (v8 == self)
  {
  }

  else
  {
    v10 = [(MPIdentifierSet *)self isEqual:v8];

    if (!v10)
    {
      v11 = +[MPIdentifierSet emptyIdentifierSet];
      v12 = v11;
      if (v11 == v6)
      {
      }

      else
      {
        v13 = [v6 isEqual:v11];

        if (!v13)
        {
          v14 = [v6 sources];
          v15 = [&unk_1F150ABD0 arrayByAddingObjectsFromArray:v14];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __34__MPIdentifierSet_unionSet_block___block_invoke;
          v19[3] = &unk_1E767FA50;
          v20 = v6;
          v21 = v7;
          v16 = [(MPIdentifierSet *)self _copyWithSources:v15 block:v19];

          goto LABEL_12;
        }
      }

      goto LABEL_10;
    }
  }

  v17 = v6;
LABEL_11:
  v16 = v17;
LABEL_12:

  return v16;
}

void __34__MPIdentifierSet_unionSet_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[35];
  if (v5)
  {
    v6 = +[MPModelKind unknownKind];
    if (v5 != v6)
    {
      v7 = [v5 isEqual:v6];

      v4 = *(a1 + 32);
      if (v7)
      {
        goto LABEL_6;
      }

      v8 = v4[35];
      v6 = v3[35];
      v3[35] = v8;
    }

    v4 = *(a1 + 32);
  }

LABEL_6:
  v9 = [v4 containerUniqueID];

  if (v9)
  {
    v10 = [*(a1 + 32) containerUniqueID];
    [v3 setContainerUniqueID:v10];
  }

  v11 = [*(a1 + 32) handoffCorrelationID];

  if (v11)
  {
    v12 = [*(a1 + 32) handoffCorrelationID];
    [v3 setHandoffCorrelationID:v12];
  }

  v13 = [*(a1 + 32) contentItemID];

  if (v13)
  {
    v14 = [*(a1 + 32) contentItemID];
    [v3 setContentItemID:v14];
  }

  v15 = [*(a1 + 32) lyricsID];

  if (v15)
  {
    v16 = [*(a1 + 32) lyricsID];
    [v3 setLyricsID:v16];
  }

  v17 = [*(a1 + 32) vendorID];

  if (v17)
  {
    v18 = [*(a1 + 32) vendorID];
    [v3 setVendorID:v18];
  }

  v19 = [*(a1 + 32) opaqueID];

  if (v19)
  {
    v20 = [*(a1 + 32) opaqueID];
    [v3 setOpaqueID:v20];
  }

  v21 = [*(a1 + 32) versionHash];

  if (v21)
  {
    v22 = [*(a1 + 32) versionHash];
    [v3 setVersionHash:v22];
  }

  if ([*(a1 + 32) musicKit_possibleLibraryPersistentID])
  {
    [v3 musicKit_setPossibleLibraryPersistentID:{objc_msgSend(*(a1 + 32), "musicKit_possibleLibraryPersistentID")}];
  }

  if ([v3 shouldExcludeFromShuffle])
  {
    v23 = 1;
  }

  else
  {
    v23 = [*(a1 + 32) shouldExcludeFromShuffle];
  }

  [v3 setShouldExcludeFromShuffle:v23];
  if ([v3 isPlaceholder])
  {
    v24 = 1;
  }

  else
  {
    v24 = [*(a1 + 32) isPlaceholder];
  }

  [v3 setPlaceholder:v24];
  v25 = [*(a1 + 32) library];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 databaseID];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __34__MPIdentifierSet_unionSet_block___block_invoke_2;
    v43[3] = &unk_1E7680B00;
    v44 = v26;
    [v3 setLibraryIdentifiersWithDatabaseID:v27 block:v43];
  }

  v28 = [*(a1 + 32) personalizedStore];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 personID];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __34__MPIdentifierSet_unionSet_block___block_invoke_3;
    v41[3] = &unk_1E767FA78;
    v42 = v29;
    [v3 setPersonalStoreIdentifiersWithPersonID:v30 block:v41];
  }

  v31 = [*(a1 + 32) universalStore];
  v32 = v31;
  if (v31)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __34__MPIdentifierSet_unionSet_block___block_invoke_4;
    v39[3] = &unk_1E767FAA0;
    v40 = v31;
    [v3 setUniversalStoreIdentifiersWithBlock:v39];
  }

  v33 = [*(a1 + 32) radio];
  v36 = v33;
  if (v33)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __34__MPIdentifierSet_unionSet_block___block_invoke_5;
    v37[3] = &unk_1E7680C00;
    v38 = v33;
    [v3 setRadioIdentifiersWithBlock:v37];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v34, v35);
}

void __34__MPIdentifierSet_unionSet_block___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) persistentID])
  {
    [v5 setPersistentID:{objc_msgSend(*(a1 + 32), "persistentID")}];
  }

  if ([*(a1 + 32) containedPersistentID])
  {
    [v5 setContainedPersistentID:{objc_msgSend(*(a1 + 32), "containedPersistentID")}];
  }

  v3 = [*(a1 + 32) syncID];
  v4 = v5;
  if (v3)
  {
    [v5 setSyncID:{objc_msgSend(*(a1 + 32), "syncID")}];
    v4 = v5;
  }
}

void __34__MPIdentifierSet_unionSet_block___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([*(a1 + 32) cloudID])
  {
    [v10 setCloudID:{objc_msgSend(*(a1 + 32), "cloudID")}];
  }

  v3 = [*(a1 + 32) cloudAlbumID];

  if (v3)
  {
    v4 = [*(a1 + 32) cloudAlbumID];
    [v10 setCloudAlbumID:v4];
  }

  v5 = [*(a1 + 32) cloudArtistID];

  if (v5)
  {
    v6 = [*(a1 + 32) cloudArtistID];
    [v10 setCloudArtistID:v6];
  }

  v7 = [*(a1 + 32) recommendationID];

  v8 = v10;
  if (v7)
  {
    v9 = [*(a1 + 32) recommendationID];
    [v10 setRecommendationID:v9];

    v8 = v10;
  }
}

void __34__MPIdentifierSet_unionSet_block___block_invoke_4(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [*(a1 + 32) globalPlaylistID];

  if (v3)
  {
    v4 = [*(a1 + 32) globalPlaylistID];
    [v22 setGlobalPlaylistID:v4];
  }

  if ([*(a1 + 32) adamID])
  {
    [v22 setAdamID:{objc_msgSend(*(a1 + 32), "adamID")}];
  }

  v5 = [*(a1 + 32) formerAdamIDs];
  v6 = [v5 count];

  if (v6)
  {
    v7 = MEMORY[0x1E695DFA8];
    v8 = [v22 formerAdamIDs];
    v9 = [v7 setWithArray:v8];

    v10 = [*(a1 + 32) formerAdamIDs];
    [v9 addObjectsFromArray:v10];

    v11 = [v9 allObjects];
    [v22 setFormerAdamIDs:v11];
  }

  v12 = [*(a1 + 32) universalCloudLibraryID];

  if (v12)
  {
    v13 = [*(a1 + 32) universalCloudLibraryID];
    [v22 setUniversalCloudLibraryID:v13];
  }

  if ([*(a1 + 32) purchasedAdamID])
  {
    [v22 setPurchasedAdamID:{objc_msgSend(*(a1 + 32), "purchasedAdamID")}];
  }

  if ([*(a1 + 32) subscriptionAdamID])
  {
    [v22 setSubscriptionAdamID:{objc_msgSend(*(a1 + 32), "subscriptionAdamID")}];
  }

  v14 = [*(a1 + 32) socialProfileID];

  if (v14)
  {
    v15 = [*(a1 + 32) socialProfileID];
    [v22 setSocialProfileID:v15];
  }

  v16 = [*(a1 + 32) informalMediaClipID];

  if (v16)
  {
    v17 = [*(a1 + 32) informalMediaClipID];
    [v22 setInformalMediaClipID:v17];
  }

  v18 = [*(a1 + 32) informalStaticAssetID];

  if (v18)
  {
    v19 = [*(a1 + 32) informalStaticAssetID];
    [v22 setInformalStaticAssetID:v19];
  }

  if ([*(a1 + 32) reportingAdamID])
  {
    [v22 setReportingAdamID:{objc_msgSend(*(a1 + 32), "reportingAdamID")}];
  }

  if ([*(a1 + 32) assetAdamID])
  {
    [v22 setAssetAdamID:{objc_msgSend(*(a1 + 32), "assetAdamID")}];
  }

  v20 = [*(a1 + 32) lyricsAdamID];
  v21 = v22;
  if (v20)
  {
    [v22 setLyricsAdamID:{objc_msgSend(*(a1 + 32), "lyricsAdamID")}];
    v21 = v22;
  }
}

void __34__MPIdentifierSet_unionSet_block___block_invoke_5(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) stationStringID];

  if (v3)
  {
    v4 = [*(a1 + 32) stationStringID];
    [v10 setStationStringID:v4];
  }

  v5 = [*(a1 + 32) stationHash];

  if (v5)
  {
    v6 = [*(a1 + 32) stationHash];
    [v10 setStationHash:v6];
  }

  if ([*(a1 + 32) stationID])
  {
    [v10 setStationID:{objc_msgSend(*(a1 + 32), "stationID")}];
  }

  v7 = [*(a1 + 32) stationEventID];

  v8 = v10;
  if (v7)
  {
    v9 = [*(a1 + 32) stationEventID];
    [v10 setStationEventID:v9];

    v8 = v10;
  }
}

- (BOOL)hasCommonIdentifierWithIdentifierSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  persistentID = self->_persistentID;
  if (persistentID && ([v4 library], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "persistentID"), v7, persistentID == v8)
    || (adamID = self->_adamID) != 0 && ([v5 universalStore], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "adamID"), v10, adamID == v11)
    || (purchasedAdamID = self->_purchasedAdamID) != 0 && ([v5 universalStore], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "purchasedAdamID"), v13, purchasedAdamID == v14)
    || (subscriptionAdamID = self->_subscriptionAdamID) != 0 && ([v5 universalStore], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "subscriptionAdamID"), v16, subscriptionAdamID == v17)
    || (cloudID = self->_cloudID) != 0 && ([v5 personalizedStore], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "cloudID"), v19, cloudID == v20)
    || (universalCloudLibraryID = self->_universalCloudLibraryID) != 0 && ([v5 universalStore], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "universalCloudLibraryID"), v23 = objc_claimAutoreleasedReturnValue(), v24 = -[NSString isEqualToString:](universalCloudLibraryID, "isEqualToString:", v23), v23, v22, v24)
    || (stationID = self->_stationID) != 0 && ([v5 radio], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "stationID"), v26, stationID == v27)
    || (stationStringID = self->_stationStringID) != 0 && ([v5 radio], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "stationStringID"), v30 = objc_claimAutoreleasedReturnValue(), v31 = -[NSString isEqualToString:](stationStringID, "isEqualToString:", v30), v30, v29, v31)
    || (stationEventID = self->_stationEventID) != 0 && ([v5 radio], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "stationEventID"), v34 = objc_claimAutoreleasedReturnValue(), v35 = -[NSString isEqualToString:](stationEventID, "isEqualToString:", v34), v34, v33, v35)
    || (stationHash = self->_stationHash) != 0 && ([v5 radio], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "stationHash"), v38 = objc_claimAutoreleasedReturnValue(), v39 = -[NSString isEqualToString:](stationHash, "isEqualToString:", v38), v38, v37, v39)
    || (globalPlaylistID = self->_globalPlaylistID) != 0 && ([v5 universalStore], v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "globalPlaylistID"), v42 = objc_claimAutoreleasedReturnValue(), v43 = -[NSString isEqualToString:](globalPlaylistID, "isEqualToString:", v42), v42, v41, v43)
    || (contentItemID = self->_contentItemID) != 0 && ([v5 contentItemID], v45 = objc_claimAutoreleasedReturnValue(), v46 = -[NSString isEqualToString:](contentItemID, "isEqualToString:", v45), v45, v46)
    || (lyricsID = self->_lyricsID) != 0 && ([v5 lyricsID], v48 = objc_claimAutoreleasedReturnValue(), v49 = -[NSString isEqualToString:](lyricsID, "isEqualToString:", v48), v48, v49)
    || (vendorID = self->_vendorID) != 0 && ([v5 vendorID], v51 = objc_claimAutoreleasedReturnValue(), v52 = -[NSString isEqualToString:](vendorID, "isEqualToString:", v51), v51, v52)
    || (opaqueID = self->_opaqueID) != 0 && ([v5 opaqueID], v54 = objc_claimAutoreleasedReturnValue(), v55 = -[NSString isEqualToString:](opaqueID, "isEqualToString:", v54), v54, v55)
    || (versionHash = self->_versionHash) != 0 && ([v5 versionHash], v57 = objc_claimAutoreleasedReturnValue(), v58 = -[NSString isEqualToString:](versionHash, "isEqualToString:", v57), v57, v58)
    || (informalMediaClipID = self->_informalMediaClipID) != 0 && ([v5 universalStore], v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v60, "informalMediaClipID"), v61 = objc_claimAutoreleasedReturnValue(), v62 = -[NSString isEqualToString:](informalMediaClipID, "isEqualToString:", v61), v61, v60, v62)
    || (informalStaticAssetID = self->_informalStaticAssetID) != 0 && ([v5 universalStore], v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "informalStaticAssetID"), v65 = objc_claimAutoreleasedReturnValue(), v66 = -[NSString isEqualToString:](informalStaticAssetID, "isEqualToString:", v65), v65, v64, v66)
    || (reportingAdamID = self->_reportingAdamID) != 0 && ([v5 universalStore], v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "reportingAdamID"), v68, reportingAdamID == v69)
    || (assetAdamID = self->_assetAdamID) != 0 && ([v5 universalStore], v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(v71, "assetAdamID"), v71, assetAdamID == v72)
    || (lyricsAdamID = self->_lyricsAdamID) != 0 && ([v5 universalStore], v74 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend(v74, "lyricsAdamID"), v74, lyricsAdamID == v75)
    || (socialProfileID = self->_socialProfileID) != 0 && ([v5 universalStore], v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v77, "socialProfileID"), v78 = objc_claimAutoreleasedReturnValue(), v79 = -[NSString isEqualToString:](socialProfileID, "isEqualToString:", v78), v78, v77, v79)
    || -[NSArray count](self->_formerAdamIDs, "count") && (formerAdamIDs = self->_formerAdamIDs, [v5 universalStore], v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v81, "formerAdamIDs"), v82 = objc_claimAutoreleasedReturnValue(), LOBYTE(formerAdamIDs) = -[NSArray isEqualToArray:](formerAdamIDs, "isEqualToArray:", v82), v82, v81, (formerAdamIDs & 1) != 0)
    || (syncID = self->_syncID) != 0 && ([v5 library], v84 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend(v84, "syncID"), v84, syncID == v85))
  {
    LOBYTE(musicKit_possibleLibraryPersistentID) = 1;
  }

  else
  {
    musicKit_possibleLibraryPersistentID = self->_musicKit_possibleLibraryPersistentID;
    if (musicKit_possibleLibraryPersistentID)
    {
      LOBYTE(musicKit_possibleLibraryPersistentID) = musicKit_possibleLibraryPersistentID == [v5 musicKit_possibleLibraryPersistentID];
    }
  }

  return musicKit_possibleLibraryPersistentID;
}

- (BOOL)intersectsSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    if (!self->_modelKind)
    {
      goto LABEL_15;
    }

    v6 = [(MPIdentifierSet *)v4 modelKind];

    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = [(MPModelKind *)self->_modelKind modelClass];
    if (v7 == objc_opt_class())
    {
      goto LABEL_15;
    }

    v8 = [(MPModelKind *)self->_modelKind modelClass];
    if (v8 == objc_opt_class())
    {
      goto LABEL_15;
    }

    v9 = [(MPModelKind *)self->_modelKind modelClass];
    if (v9 == objc_opt_class())
    {
      goto LABEL_15;
    }

    v10 = [(MPIdentifierSet *)v5 modelKind];
    v11 = [v10 modelClass];
    if (v11 != objc_opt_class())
    {
      v12 = [(MPIdentifierSet *)v5 modelKind];
      v13 = [v12 modelClass];
      if (v13 != objc_opt_class())
      {
        v14 = [(MPIdentifierSet *)v5 modelKind];
        v15 = [v14 modelClass];
        v16 = objc_opt_class();

        if (v15 != v16)
        {
          v17 = [(MPModelKind *)self->_modelKind identityKind];
          v18 = [(MPIdentifierSet *)v5 modelKind];
          v19 = [v18 identityKind];
          v20 = [v17 isEqual:v19];

          if ((v20 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_15:
        v21 = [(MPIdentifierSet *)self containerUniqueID];
        if (v21)
        {
          v22 = v21;
          v23 = [(MPIdentifierSet *)v5 containerUniqueID];

          if (v23)
          {
            v24 = [(MPIdentifierSet *)self containerUniqueID];
            v25 = [(MPIdentifierSet *)v5 containerUniqueID];
            v26 = [v24 isEqualToString:v25];

            if (!v26)
            {
LABEL_27:
              LOBYTE(self) = 0;
              goto LABEL_42;
            }
          }
        }

        v27 = [(MPIdentifierSet *)self handoffCorrelationID];
        if (v27)
        {
          v28 = v27;
          v29 = [(MPIdentifierSet *)v5 handoffCorrelationID];

          if (v29)
          {
            v30 = [(MPIdentifierSet *)self handoffCorrelationID];
            v31 = [(MPIdentifierSet *)v5 handoffCorrelationID];
LABEL_40:
            v48 = v31;
            LOBYTE(self) = [v30 isEqualToString:v31];
LABEL_41:

            goto LABEL_42;
          }
        }

        v32 = [(MPIdentifierSet *)self contentItemID];
        if (v32)
        {
          v33 = v32;
          v34 = [(MPIdentifierSet *)v5 contentItemID];

          if (v34)
          {
            v30 = [(MPIdentifierSet *)self contentItemID];
            v31 = [(MPIdentifierSet *)v5 contentItemID];
            goto LABEL_40;
          }
        }

        v35 = [(MPIdentifierSet *)self lyricsID];
        if (v35)
        {
          v36 = v35;
          v37 = [(MPIdentifierSet *)v5 lyricsID];

          if (v37)
          {
            v30 = [(MPIdentifierSet *)self lyricsID];
            v31 = [(MPIdentifierSet *)v5 lyricsID];
            goto LABEL_40;
          }
        }

        v38 = [(MPIdentifierSet *)self vendorID];
        if (v38)
        {
          v39 = v38;
          v40 = [(MPIdentifierSet *)v5 vendorID];

          if (v40)
          {
            v30 = [(MPIdentifierSet *)self vendorID];
            v31 = [(MPIdentifierSet *)v5 vendorID];
            goto LABEL_40;
          }
        }

        if ([(MPIdentifierSet *)self musicKit_possibleLibraryPersistentID]&& [(MPIdentifierSet *)v5 musicKit_possibleLibraryPersistentID])
        {
          v41 = [(MPIdentifierSet *)self musicKit_possibleLibraryPersistentID];
          LOBYTE(self) = v41 == [(MPIdentifierSet *)v5 musicKit_possibleLibraryPersistentID];
          goto LABEL_42;
        }

        v42 = [(MPIdentifierSet *)self opaqueID];
        if (v42)
        {
          v43 = v42;
          v44 = [(MPIdentifierSet *)v5 opaqueID];

          if (v44)
          {
            v30 = [(MPIdentifierSet *)self opaqueID];
            v31 = [(MPIdentifierSet *)v5 opaqueID];
            goto LABEL_40;
          }
        }

        v45 = [(MPIdentifierSet *)self versionHash];
        if (v45)
        {
          v46 = v45;
          v47 = [(MPIdentifierSet *)v5 versionHash];

          if (v47)
          {
            v30 = [(MPIdentifierSet *)self versionHash];
            v31 = [(MPIdentifierSet *)v5 versionHash];
            goto LABEL_40;
          }
        }

        v30 = [(MPIdentifierSet *)self library];
        v50 = [(MPIdentifierSet *)v5 library];
        v48 = v50;
        if (v30)
        {
          if (v50)
          {
            v51 = [v30 databaseID];
            v52 = [v48 databaseID];
            v53 = [v51 isEqual:v52];

            if (v53)
            {
              if ([v30 persistentID] && objc_msgSend(v48, "persistentID"))
              {
                self = [v30 persistentID];
                v54 = [v48 persistentID];
LABEL_55:
                LOBYTE(self) = self == v54;
                goto LABEL_41;
              }

              if ([v30 containedPersistentID] && objc_msgSend(v48, "containedPersistentID"))
              {
                self = [v30 containedPersistentID];
                v54 = [v48 containedPersistentID];
                goto LABEL_55;
              }

              if ([v30 syncID] && objc_msgSend(v48, "syncID"))
              {
                self = [v30 syncID];
                v54 = [v48 syncID];
                goto LABEL_55;
              }
            }
          }
        }

        v55 = [(MPIdentifierSet *)self personalizedStore];
        v56 = [(MPIdentifierSet *)v5 personalizedStore];
        v57 = v56;
        if (v55)
        {
          if (v56)
          {
            v58 = [v55 personID];
            v59 = [v57 personID];
            v60 = [v58 isEqual:v59];

            if (v60)
            {
              if ([v55 cloudID] && objc_msgSend(v57, "cloudID"))
              {
                self = [v55 cloudID];
                LOBYTE(self) = self == [v57 cloudID];
LABEL_137:

                goto LABEL_41;
              }

              v61 = [v55 cloudAlbumID];
              if (v61)
              {
                v62 = v61;
                v63 = [v57 cloudAlbumID];

                if (v63)
                {
                  v64 = [v55 cloudAlbumID];
                  v65 = [v57 cloudAlbumID];
LABEL_71:
                  v72 = v65;
                  LOBYTE(self) = [v64 isEqualToString:v65];
LABEL_136:

                  goto LABEL_137;
                }
              }

              v66 = [v55 recommendationID];
              if (v66)
              {
                v67 = v66;
                v68 = [v57 recommendationID];

                if (v68)
                {
                  v64 = [v55 recommendationID];
                  v65 = [v57 recommendationID];
                  goto LABEL_71;
                }
              }

              v69 = [v55 cloudArtistID];
              if (v69)
              {
                v70 = v69;
                v71 = [v57 cloudArtistID];

                if (v71)
                {
                  v64 = [v55 cloudArtistID];
                  v65 = [v57 cloudArtistID];
                  goto LABEL_71;
                }
              }
            }
          }
        }

        v64 = [(MPIdentifierSet *)self universalStore];
        v73 = [(MPIdentifierSet *)v5 universalStore];
        v72 = v73;
        if (v64 && v73)
        {
          v74 = [v64 globalPlaylistID];
          if (v74)
          {
            v75 = v74;
            v76 = [v72 globalPlaylistID];

            if (v76)
            {
              v77 = [v64 globalPlaylistID];
              v78 = [v72 globalPlaylistID];
LABEL_89:
              v91 = v78;
              LOBYTE(self) = [v77 isEqualToString:v78];
LABEL_135:

              goto LABEL_136;
            }
          }

          v79 = [v64 universalCloudLibraryID];
          if (v79)
          {
            v80 = v79;
            v81 = [v72 universalCloudLibraryID];

            if (v81)
            {
              v77 = [v64 universalCloudLibraryID];
              v78 = [v72 universalCloudLibraryID];
              goto LABEL_89;
            }
          }

          v82 = [v64 socialProfileID];
          if (v82)
          {
            v83 = v82;
            v84 = [v72 socialProfileID];

            if (v84)
            {
              v77 = [v64 socialProfileID];
              v78 = [v72 socialProfileID];
              goto LABEL_89;
            }
          }

          v85 = [v64 informalMediaClipID];
          if (v85)
          {
            v86 = v85;
            v87 = [v72 informalMediaClipID];

            if (v87)
            {
              v77 = [v64 informalMediaClipID];
              v78 = [v72 informalMediaClipID];
              goto LABEL_89;
            }
          }

          v88 = [v64 informalStaticAssetID];
          if (v88)
          {
            v89 = v88;
            v90 = [v72 informalStaticAssetID];

            if (v90)
            {
              v77 = [v64 informalStaticAssetID];
              v78 = [v72 informalStaticAssetID];
              goto LABEL_89;
            }
          }

          v126 = v57;
          v92 = MEMORY[0x1E695DFA8];
          v93 = [v64 formerAdamIDs];
          v77 = [v92 setWithCapacity:{objc_msgSend(v93, "count") + 6}];

          v94 = [v64 formerAdamIDs];
          [v77 addObjectsFromArray:v94];

          if ([v64 subscriptionAdamID])
          {
            v95 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v64, "subscriptionAdamID")}];
            [v77 addObject:v95];
          }

          if ([v64 purchasedAdamID])
          {
            v96 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v64, "purchasedAdamID")}];
            [v77 addObject:v96];
          }

          if ([v64 adamID])
          {
            v97 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v64, "adamID")}];
            [v77 addObject:v97];
          }

          if ([v64 reportingAdamID])
          {
            v98 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v64, "reportingAdamID")}];
            [v77 addObject:v98];
          }

          if ([v64 assetAdamID])
          {
            v99 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v64, "assetAdamID")}];
            [v77 addObject:v99];
          }

          if ([v64 lyricsAdamID])
          {
            v100 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v64, "lyricsAdamID")}];
            [v77 addObject:v100];
          }

          v101 = MEMORY[0x1E695DFA8];
          v102 = [v72 formerAdamIDs];
          v91 = [v101 setWithCapacity:{objc_msgSend(v102, "count") + 6}];

          v103 = [v72 formerAdamIDs];
          [v91 addObjectsFromArray:v103];

          if ([v72 subscriptionAdamID])
          {
            v104 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v72, "subscriptionAdamID")}];
            [v91 addObject:v104];
          }

          v57 = v126;
          if ([v72 purchasedAdamID])
          {
            v105 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v72, "purchasedAdamID")}];
            [v91 addObject:v105];
          }

          if ([v72 adamID])
          {
            v106 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v72, "adamID")}];
            [v91 addObject:v106];
          }

          if ([v72 reportingAdamID])
          {
            v107 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v72, "reportingAdamID")}];
            [v91 addObject:v107];
          }

          if ([v72 assetAdamID])
          {
            v108 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v72, "assetAdamID")}];
            [v91 addObject:v108];
          }

          if ([v72 lyricsAdamID])
          {
            v109 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v72, "lyricsAdamID")}];
            [v91 addObject:v109];
          }

          if ([v77 count] && objc_msgSend(v91, "count"))
          {
            LOBYTE(self) = [v77 intersectsSet:v91];
LABEL_134:
            v48 = v125;
            goto LABEL_135;
          }

          v48 = v125;
        }

        v77 = [(MPIdentifierSet *)self radio];
        v110 = [(MPIdentifierSet *)v5 radio];
        v91 = v110;
        LOBYTE(self) = 0;
        if (!v77 || !v110)
        {
          goto LABEL_135;
        }

        v125 = v48;
        v127 = v57;
        v111 = [v77 stationStringID];
        if (v111 && (v112 = v111, [v91 stationStringID], v113 = objc_claimAutoreleasedReturnValue(), v113, v112, v113))
        {
          v114 = [v77 stationStringID];
          v115 = [v91 stationStringID];
          LOBYTE(self) = [v114 isEqualToString:v115];
        }

        else
        {
          v116 = [v77 stationHash];
          if (v116 && (v117 = v116, [v91 stationHash], v118 = objc_claimAutoreleasedReturnValue(), v118, v117, v118))
          {
            v119 = [v77 stationHash];
            v120 = [v91 stationHash];
            LOBYTE(self) = [v119 isEqualToString:v120];
          }

          else
          {
            if (![v77 stationID] || !objc_msgSend(v91, "stationID"))
            {
              self = [v77 stationEventID];
              v57 = v127;
              if (self)
              {
                v122 = [v91 stationEventID];

                if (v122)
                {
                  v123 = [v77 stationEventID];
                  v124 = [v91 stationEventID];
                  LOBYTE(self) = [v123 isEqualToString:v124];

                  v57 = v127;
                }

                else
                {
                  LOBYTE(self) = 0;
                }
              }

              goto LABEL_134;
            }

            v121 = [v77 stationID];
            LOBYTE(self) = v121 == [v91 stationID];
          }
        }

        v48 = v125;
        v57 = v127;
        goto LABEL_135;
      }
    }

    goto LABEL_15;
  }

  LOBYTE(self) = 1;
LABEL_42:

  return self;
}

- (MPRadioIdentifiers)radio
{
  if ([(NSString *)self->_stationStringID length]|| self->_stationID || [(NSString *)self->_stationHash length]|| (v3 = [(NSString *)self->_stationEventID length]) != 0)
  {
    v3 = self;
  }

  return v3;
}

- (MPPersonalStoreIdentifiers)personalizedStore
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_personID length])
  {
    v3 = self;
  }

  else if (self->_cloudID || [(NSString *)self->_cloudAlbumID length]|| [(NSString *)self->_cloudArtistID length]|| (v3 = [(NSString *)self->_recommendationID length]) != 0)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = self;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Omitting personalizedStore IDs [missing databaseID] identifierSet=%{public}@", &v6, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

- (MPIdentifierSet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetCodingKeyModelKind"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"MPIdentifierSetCodingKeySources"];

  v10 = [v9 arrayByAddingObject:@"Decoded"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __33__MPIdentifierSet_initWithCoder___block_invoke;
  v14[3] = &unk_1E7680B28;
  v15 = v4;
  v11 = v4;
  v12 = [(MPIdentifierSet *)self _initWithSources:v10 modelKind:v5 block:v14];

  return v12;
}

void __33__MPIdentifierSet_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetContainerUniqueID"];
  [v3 setContainerUniqueID:v4];

  v5 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetHandoffCorrelationID"];
  [v3 setHandoffCorrelationID:v5];

  v6 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetContentItemID"];
  [v3 setContentItemID:v6];

  v7 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetLyricsID"];
  [v3 setLyricsID:v7];

  [v3 setShouldExcludeFromShuffle:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"MPIdentifierSetShouldExcludeFromShuffle"}];
  [v3 setPlaceholder:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"MPIdentifierSetIsPlaceholder"}];
  v8 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetVendorID"];
  [v3 setVendorID:v8];

  [v3 musicKit_setPossibleLibraryPersistentID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"_MPIdentifierSetCodingKeyMusicKitPossibleLibraryPersistentID"}];
  v9 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetOpaqueID"];
  [v3 setOpaqueID:v9];

  v10 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetVersionHash"];
  [v3 setVersionHash:v10];

  v11 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetCodingKeyDatabaseID"];
  if (v11)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __33__MPIdentifierSet_initWithCoder___block_invoke_2;
    v19[3] = &unk_1E7680B00;
    v20 = *(a1 + 32);
    [v3 setLibraryIdentifiersWithDatabaseID:v11 block:v19];
  }

  v12 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetCodingKeyPersonID"];
  if (v12)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __33__MPIdentifierSet_initWithCoder___block_invoke_3;
    v17[3] = &unk_1E767FA78;
    v18 = *(a1 + 32);
    [v3 setPersonalStoreIdentifiersWithPersonID:v12 block:v17];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __33__MPIdentifierSet_initWithCoder___block_invoke_4;
  v15[3] = &unk_1E767FAA0;
  v16 = *(a1 + 32);
  [v3 setUniversalStoreIdentifiersWithBlock:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__MPIdentifierSet_initWithCoder___block_invoke_5;
  v13[3] = &unk_1E7680C00;
  v14 = *(a1 + 32);
  [v3 setRadioIdentifiersWithBlock:v13];
}

void __33__MPIdentifierSet_initWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPersistentID:{objc_msgSend(v3, "decodeInt64ForKey:", @"MPIdentifierSetDeviceLibraryPersistentID"}];
  [v4 setContainedPersistentID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"MPIdentifierSetDeviceLibraryContainedPersistentID"}];
  [v4 setSyncID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"MPIdentifierSetSyncID"}];
}

void __33__MPIdentifierSet_initWithCoder___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setCloudID:{objc_msgSend(v3, "decodeInt64ForKey:", @"MPIdentifierSetStoreCloudID"}];
  v5 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetStoreCloudAlbumID"];
  [v4 setCloudAlbumID:v5];

  v6 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetStoreCloudArtistID"];
  [v4 setCloudArtistID:v6];

  v7 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetStoreRecommendationID"];
  [v4 setRecommendationID:v7];
}

void __33__MPIdentifierSet_initWithCoder___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v14 = a2;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetGlobalPlaylistID"];
  [v14 setGlobalPlaylistID:v4];

  [v14 setAdamID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"MPIdentifierSetStoreAdamID"}];
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"MPIdentifierSetFormerStoreAdamIDs"];
  [v14 setFormerAdamIDs:v9];

  v10 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetCloudUniversalLibraryID"];
  [v14 setUniversalCloudLibraryID:v10];

  [v14 setPurchasedAdamID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"MPIdentifierSetStorePurchasedAdamID"}];
  [v14 setSubscriptionAdamID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"MPIdentifierSetStoreSubscriptionAdamID"}];
  v11 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetSocialProfileID"];
  [v14 setSocialProfileID:v11];

  v12 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetInformalMediaClipID"];
  [v14 setInformalMediaClipID:v12];

  v13 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetInformalStaticAssetID"];
  [v14 setInformalStaticAssetID:v13];

  [v14 setReportingAdamID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"MPIdentifierSetReportingAdamID"}];
  [v14 setAssetAdamID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"MPIdentifierSetAssetAdamID"}];
  [v14 setLyricsAdamID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"MPIdentifierSetLyricsAdamID"}];
}

void __33__MPIdentifierSet_initWithCoder___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetRadioStationStringID"];
  [v4 setStationStringID:v5];

  v6 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetRadioStationHash"];
  [v4 setStationHash:v6];

  [v4 setStationID:{objc_msgSend(*(a1 + 32), "decodeInt64ForKey:", @"MPIdentifierSetRadioStationID"}];
  v7 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"MPIdentifierSetRadioStationEventID"];
  [v4 setStationEventID:v7];
}

- (void)encodeWithCoder:(id)a3
{
  modelKind = self->_modelKind;
  v5 = a3;
  [v5 encodeObject:modelKind forKey:@"MPIdentifierSetCodingKeyModelKind"];
  [v5 encodeObject:self->_sources forKey:@"MPIdentifierSetCodingKeySources"];
  [v5 encodeObject:self->_databaseID forKey:@"MPIdentifierSetCodingKeyDatabaseID"];
  [v5 encodeInt64:self->_persistentID forKey:@"MPIdentifierSetDeviceLibraryPersistentID"];
  [v5 encodeInt64:self->_containedPersistentID forKey:@"MPIdentifierSetDeviceLibraryContainedPersistentID"];
  [v5 encodeInt64:self->_syncID forKey:@"MPIdentifierSetSyncID"];
  [v5 encodeInt64:self->_musicKit_possibleLibraryPersistentID forKey:@"_MPIdentifierSetCodingKeyMusicKitPossibleLibraryPersistentID"];
  [v5 encodeObject:self->_personID forKey:@"MPIdentifierSetCodingKeyPersonID"];
  [v5 encodeInt64:self->_cloudID forKey:@"MPIdentifierSetStoreCloudID"];
  [v5 encodeObject:self->_cloudAlbumID forKey:@"MPIdentifierSetStoreCloudAlbumID"];
  [v5 encodeObject:self->_cloudArtistID forKey:@"MPIdentifierSetStoreCloudArtistID"];
  [v5 encodeObject:self->_recommendationID forKey:@"MPIdentifierSetStoreRecommendationID"];
  [v5 encodeObject:self->_globalPlaylistID forKey:@"MPIdentifierSetGlobalPlaylistID"];
  [v5 encodeInt64:self->_adamID forKey:@"MPIdentifierSetStoreAdamID"];
  [v5 encodeObject:self->_formerAdamIDs forKey:@"MPIdentifierSetFormerStoreAdamIDs"];
  [v5 encodeObject:self->_universalCloudLibraryID forKey:@"MPIdentifierSetCloudUniversalLibraryID"];
  [v5 encodeInt64:self->_purchasedAdamID forKey:@"MPIdentifierSetStorePurchasedAdamID"];
  [v5 encodeInt64:self->_subscriptionAdamID forKey:@"MPIdentifierSetStoreSubscriptionAdamID"];
  [v5 encodeObject:self->_socialProfileID forKey:@"MPIdentifierSetSocialProfileID"];
  [v5 encodeObject:self->_informalMediaClipID forKey:@"MPIdentifierSetInformalMediaClipID"];
  [v5 encodeObject:self->_informalStaticAssetID forKey:@"MPIdentifierSetInformalStaticAssetID"];
  [v5 encodeInt64:self->_reportingAdamID forKey:@"MPIdentifierSetReportingAdamID"];
  [v5 encodeInt64:self->_assetAdamID forKey:@"MPIdentifierSetAssetAdamID"];
  [v5 encodeInt64:self->_lyricsAdamID forKey:@"MPIdentifierSetLyricsAdamID"];
  [v5 encodeObject:self->_stationStringID forKey:@"MPIdentifierSetRadioStationStringID"];
  [v5 encodeObject:self->_stationHash forKey:@"MPIdentifierSetRadioStationHash"];
  [v5 encodeInt64:self->_stationID forKey:@"MPIdentifierSetRadioStationID"];
  [v5 encodeObject:self->_stationEventID forKey:@"MPIdentifierSetRadioStationEventID"];
  [v5 encodeObject:self->_containerUniqueID forKey:@"MPIdentifierSetContainerUniqueID"];
  [v5 encodeObject:self->_handoffCorrelationID forKey:@"MPIdentifierSetHandoffCorrelationID"];
  [v5 encodeObject:self->_contentItemID forKey:@"MPIdentifierSetContentItemID"];
  [v5 encodeObject:self->_lyricsID forKey:@"MPIdentifierSetLyricsID"];
  [v5 encodeBool:self->_shouldExcludeFromShuffle forKey:@"MPIdentifierSetShouldExcludeFromShuffle"];
  [v5 encodeBool:self->_placeholder forKey:@"MPIdentifierSetIsPlaceholder"];
  [v5 encodeObject:self->_vendorID forKey:@"MPIdentifierSetVendorID"];
  [v5 encodeObject:self->_opaqueID forKey:@"MPIdentifierSetOpaqueID"];
  [v5 encodeObject:self->_versionHash forKey:@"MPIdentifierSetVersionHash"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (![(MPIdentifierSet *)v4 isMemberOfClass:objc_opt_class()])
    {
      goto LABEL_89;
    }

    modelKind = self->_modelKind;
    v6 = [(MPIdentifierSet *)v4 modelKind];
    LODWORD(modelKind) = [(MPModelKind *)modelKind isEqual:v6];

    if (!modelKind)
    {
      goto LABEL_89;
    }

    databaseID = self->_databaseID;
    v8 = [(MPIdentifierSet *)v4 databaseID];
    v9 = v8;
    if (databaseID == v8)
    {
    }

    else
    {
      v10 = self->_databaseID;
      v11 = [(MPIdentifierSet *)v4 databaseID];
      LODWORD(v10) = [(NSString *)v10 isEqual:v11];

      if (!v10)
      {
        goto LABEL_89;
      }
    }

    persistentID = self->_persistentID;
    if (persistentID != [(MPIdentifierSet *)v4 persistentID])
    {
      goto LABEL_89;
    }

    containedPersistentID = self->_containedPersistentID;
    if (containedPersistentID != [(MPIdentifierSet *)v4 containedPersistentID])
    {
      goto LABEL_89;
    }

    syncID = self->_syncID;
    if (syncID != [(MPIdentifierSet *)v4 syncID])
    {
      goto LABEL_89;
    }

    personID = self->_personID;
    v17 = [(MPIdentifierSet *)v4 personID];
    v18 = v17;
    if (personID == v17)
    {
    }

    else
    {
      v19 = self->_personID;
      v20 = [(MPIdentifierSet *)v4 personID];
      LODWORD(v19) = [(NSString *)v19 isEqual:v20];

      if (!v19)
      {
        goto LABEL_89;
      }
    }

    cloudID = self->_cloudID;
    if (cloudID != [(MPIdentifierSet *)v4 cloudID])
    {
      goto LABEL_89;
    }

    cloudAlbumID = self->_cloudAlbumID;
    v23 = [(MPIdentifierSet *)v4 cloudAlbumID];
    v24 = v23;
    if (cloudAlbumID == v23)
    {
    }

    else
    {
      v25 = self->_cloudAlbumID;
      v26 = [(MPIdentifierSet *)v4 cloudAlbumID];
      LODWORD(v25) = [(NSString *)v25 isEqual:v26];

      if (!v25)
      {
        goto LABEL_89;
      }
    }

    cloudArtistID = self->_cloudArtistID;
    v28 = [(MPIdentifierSet *)v4 cloudArtistID];
    v29 = v28;
    if (cloudArtistID == v28)
    {
    }

    else
    {
      v30 = self->_cloudArtistID;
      v31 = [(MPIdentifierSet *)v4 cloudArtistID];
      LODWORD(v30) = [(NSString *)v30 isEqual:v31];

      if (!v30)
      {
        goto LABEL_89;
      }
    }

    recommendationID = self->_recommendationID;
    v33 = [(MPIdentifierSet *)v4 recommendationID];
    v34 = v33;
    if (recommendationID == v33)
    {
    }

    else
    {
      v35 = self->_recommendationID;
      v36 = [(MPIdentifierSet *)v4 recommendationID];
      LODWORD(v35) = [(NSString *)v35 isEqual:v36];

      if (!v35)
      {
        goto LABEL_89;
      }
    }

    musicKit_possibleLibraryPersistentID = self->_musicKit_possibleLibraryPersistentID;
    if (musicKit_possibleLibraryPersistentID != [(MPIdentifierSet *)v4 musicKit_possibleLibraryPersistentID])
    {
      goto LABEL_89;
    }

    globalPlaylistID = self->_globalPlaylistID;
    if (globalPlaylistID != v4->_globalPlaylistID && ![(NSString *)globalPlaylistID isEqual:?])
    {
      goto LABEL_89;
    }

    adamID = self->_adamID;
    if (adamID != [(MPIdentifierSet *)v4 adamID])
    {
      goto LABEL_89;
    }

    formerAdamIDs = self->_formerAdamIDs;
    v41 = [(MPIdentifierSet *)v4 formerAdamIDs];
    v42 = v41;
    if (formerAdamIDs == v41)
    {
    }

    else
    {
      v43 = self->_formerAdamIDs;
      v44 = [(MPIdentifierSet *)v4 formerAdamIDs];
      LODWORD(v43) = [(NSArray *)v43 isEqual:v44];

      if (!v43)
      {
        goto LABEL_89;
      }
    }

    universalCloudLibraryID = self->_universalCloudLibraryID;
    v46 = [(MPIdentifierSet *)v4 universalCloudLibraryID];
    v47 = v46;
    if (universalCloudLibraryID == v46)
    {
    }

    else
    {
      v48 = self->_universalCloudLibraryID;
      v49 = [(MPIdentifierSet *)v4 universalCloudLibraryID];
      LODWORD(v48) = [(NSString *)v48 isEqual:v49];

      if (!v48)
      {
        goto LABEL_89;
      }
    }

    purchasedAdamID = self->_purchasedAdamID;
    if (purchasedAdamID != [(MPIdentifierSet *)v4 purchasedAdamID])
    {
      goto LABEL_89;
    }

    subscriptionAdamID = self->_subscriptionAdamID;
    if (subscriptionAdamID != [(MPIdentifierSet *)v4 subscriptionAdamID])
    {
      goto LABEL_89;
    }

    socialProfileID = self->_socialProfileID;
    if (socialProfileID != v4->_socialProfileID && ![(NSString *)socialProfileID isEqual:?])
    {
      goto LABEL_89;
    }

    informalMediaClipID = self->_informalMediaClipID;
    if (informalMediaClipID != v4->_informalMediaClipID && ![(NSString *)informalMediaClipID isEqual:?])
    {
      goto LABEL_89;
    }

    informalStaticAssetID = self->_informalStaticAssetID;
    if (informalStaticAssetID != v4->_informalStaticAssetID && ![(NSString *)informalStaticAssetID isEqual:?])
    {
      goto LABEL_89;
    }

    if (self->_reportingAdamID != v4->_reportingAdamID || self->_assetAdamID != v4->_assetAdamID || self->_lyricsAdamID != v4->_lyricsAdamID)
    {
      goto LABEL_89;
    }

    stationStringID = self->_stationStringID;
    v56 = [(MPIdentifierSet *)v4 stationStringID];
    v57 = v56;
    if (stationStringID == v56)
    {
    }

    else
    {
      v58 = self->_stationStringID;
      v59 = [(MPIdentifierSet *)v4 stationStringID];
      LODWORD(v58) = [(NSString *)v58 isEqual:v59];

      if (!v58)
      {
        goto LABEL_89;
      }
    }

    stationHash = self->_stationHash;
    v61 = [(MPIdentifierSet *)v4 stationHash];
    v62 = v61;
    if (stationHash == v61)
    {
    }

    else
    {
      v63 = self->_stationHash;
      v64 = [(MPIdentifierSet *)v4 stationHash];
      LODWORD(v63) = [(NSString *)v63 isEqual:v64];

      if (!v63)
      {
        goto LABEL_89;
      }
    }

    stationID = self->_stationID;
    if (stationID != [(MPIdentifierSet *)v4 stationID])
    {
LABEL_89:
      v12 = 0;
      goto LABEL_90;
    }

    stationEventID = self->_stationEventID;
    v67 = [(MPIdentifierSet *)v4 stationEventID];
    v68 = v67;
    if (stationEventID == v67)
    {
    }

    else
    {
      v69 = self->_stationEventID;
      v70 = [(MPIdentifierSet *)v4 stationEventID];
      LODWORD(v69) = [(NSString *)v69 isEqual:v70];

      if (!v69)
      {
        goto LABEL_89;
      }
    }

    containerUniqueID = self->_containerUniqueID;
    v72 = [(MPIdentifierSet *)v4 containerUniqueID];
    v73 = v72;
    if (containerUniqueID == v72)
    {
    }

    else
    {
      v74 = self->_containerUniqueID;
      v75 = [(MPIdentifierSet *)v4 containerUniqueID];
      LODWORD(v74) = [(NSString *)v74 isEqual:v75];

      if (!v74)
      {
        goto LABEL_89;
      }
    }

    handoffCorrelationID = self->_handoffCorrelationID;
    v77 = [(MPIdentifierSet *)v4 handoffCorrelationID];
    v78 = v77;
    if (handoffCorrelationID == v77)
    {
    }

    else
    {
      v79 = self->_handoffCorrelationID;
      v80 = [(MPIdentifierSet *)v4 handoffCorrelationID];
      LODWORD(v79) = [(NSString *)v79 isEqual:v80];

      if (!v79)
      {
        goto LABEL_89;
      }
    }

    contentItemID = self->_contentItemID;
    v82 = [(MPIdentifierSet *)v4 contentItemID];
    v83 = v82;
    if (contentItemID == v82)
    {
    }

    else
    {
      v84 = self->_contentItemID;
      v85 = [(MPIdentifierSet *)v4 contentItemID];
      LODWORD(v84) = [(NSString *)v84 isEqual:v85];

      if (!v84)
      {
        goto LABEL_89;
      }
    }

    lyricsID = self->_lyricsID;
    v87 = [(MPIdentifierSet *)v4 lyricsID];
    v88 = v87;
    if (lyricsID == v87)
    {
    }

    else
    {
      v89 = self->_lyricsID;
      v90 = [(MPIdentifierSet *)v4 lyricsID];
      LODWORD(v89) = [(NSString *)v89 isEqual:v90];

      if (!v89)
      {
        goto LABEL_89;
      }
    }

    shouldExcludeFromShuffle = self->_shouldExcludeFromShuffle;
    if (shouldExcludeFromShuffle != [(MPIdentifierSet *)v4 shouldExcludeFromShuffle])
    {
      goto LABEL_89;
    }

    placeholder = self->_placeholder;
    if (placeholder != [(MPIdentifierSet *)v4 isPlaceholder])
    {
      goto LABEL_89;
    }

    vendorID = self->_vendorID;
    v94 = [(MPIdentifierSet *)v4 vendorID];
    v95 = v94;
    if (vendorID == v94)
    {
    }

    else
    {
      v96 = self->_vendorID;
      v97 = [(MPIdentifierSet *)v4 vendorID];
      LODWORD(v96) = [(NSString *)v96 isEqual:v97];

      if (!v96)
      {
        goto LABEL_89;
      }
    }

    opaqueID = self->_opaqueID;
    v99 = [(MPIdentifierSet *)v4 opaqueID];
    v100 = v99;
    if (opaqueID == v99)
    {
    }

    else
    {
      v101 = [(NSString *)opaqueID isEqual:v99];

      if (!v101)
      {
        goto LABEL_89;
      }
    }

    versionHash = self->_versionHash;
    v104 = [(MPIdentifierSet *)v4 versionHash];
    if (versionHash == v104)
    {
      v12 = 1;
    }

    else
    {
      v12 = [(NSString *)versionHash isEqual:v104];
    }
  }

LABEL_90:

  return v12;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = self->_modelKind;
  v10 = [(MPModelKind *)v9 hash];
  v11 = v5 ^ 0x7465646279746573 ^ v10;
  v12 = (v6 + v7) ^ __ROR8__(v7, 51);
  v13 = v8 + v11;
  v14 = (v8 + v11) ^ __ROR8__(v11, 48);
  v15 = __ROR8__(v6 + v7, 32) + v14;
  v16 = v15 ^ __ROR8__(v14, 43);
  v17 = (v13 + v12) ^ __ROR8__(v12, 47);
  v18 = __ROR8__(v13 + v12, 32);
  v1117 = v18;
  v1130 = v16;
  v19 = v15 ^ v10;
  v1091 = v15 ^ v10;
  v1104 = v17;

  v20 = self->_databaseID;
  v21 = [(NSString *)v20 UTF8String];
  v22 = [(NSString *)v20 length];
  if (v22 < 8)
  {
    v29 = 8;
  }

  else
  {
    v23 = v22 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v24 = *v21;
      v21 += 8;
      v25 = (v19 + v17) ^ __ROR8__(v17, 51);
      v26 = v18 + (v16 ^ v24);
      v27 = __ROR8__(v16 ^ v24, 48);
      v28 = __ROR8__(v19 + v17, 32) + (v26 ^ v27);
      v16 = v28 ^ __ROR8__(v26 ^ v27, 43);
      v17 = (v26 + v25) ^ __ROR8__(v25, 47);
      v18 = __ROR8__(v26 + v25, 32);
      v1117 = v18;
      v1130 = v16;
      v19 = v28 ^ v24;
      v1091 = v28 ^ v24;
      v1104 = v17;
      v22 -= 8;
    }

    while (v22 > 7);
    v29 = v23 + 8;
  }

  if (v22)
  {
    v30 = 0;
    v31 = 0;
    v32 = v22;
    do
    {
      v33 = *v21++;
      v31 |= v33 << v30;
      v30 += 8;
      --v32;
    }

    while (v32);
    v34 = v31 | ((v22 + v29) << 56);
  }

  else
  {
    v34 = v29 << 56;
  }

  v1143 = v34;

  persistentID = self->_persistentID;
  v36 = v1143;
  if ((v1143 & 0x400000000000000) != 0)
  {
    v45 = v1143 & 0xFFFFFFFFFFFFFFLL | (persistentID << 32);
    v46 = (v1091 + v1104) ^ __ROR8__(v1104, 51);
    v47 = v1117 + (v45 ^ v1130);
    v48 = __ROR8__(v45 ^ v1130, 48);
    v49 = __ROR8__(v1091 + v1104, 32) + (v47 ^ v48);
    v50 = v49 ^ __ROR8__(v47 ^ v48, 43);
    v51 = v47 + v46;
    v1118 = __ROR8__(v51, 32);
    v1131 = v50;
    v1092 = v49 ^ v45;
    v1105 = v51 ^ __ROR8__(v46, 47);
    v52 = (v1143 & 0xFF00000000000000) + HIDWORD(persistentID) + 0x800000000000000;
  }

  else
  {
    v37 = v1130;
    if ((v1143 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v38 = (v1091 + v1104) ^ __ROR8__(v1104, 51);
      v39 = (v1117 + (v1130 ^ v1143 & 0xFFFFFFFFFFFFFFLL)) ^ __ROR8__(v1130 ^ v1143 & 0xFFFFFFFFFFFFFFLL, 48);
      v40 = __ROR8__(v1091 + v1104, 32) + v39;
      v37 = v40 ^ __ROR8__(v39, 43);
      v41 = v1117 + (v1130 ^ v1143 & 0xFFFFFFFFFFFFFFLL) + v38;
      v42 = v41 ^ __ROR8__(v38, 47);
      v43 = __ROR8__(v41, 32);
      v44 = v40 ^ v1143 & 0xFFFFFFFFFFFFFFLL;
      v36 = v1143 & 0xFF00000000000000;
    }

    else
    {
      v44 = v1091;
      v43 = v1117;
      v42 = v1104;
    }

    v53 = v37 ^ persistentID;
    v54 = v44 + v42;
    v55 = (v44 + v42) ^ __ROR8__(v42, 51);
    v56 = v43 + v53;
    v57 = __ROR8__(v53, 48);
    v58 = __ROR8__(v54, 32) + (v56 ^ v57);
    v59 = v58 ^ __ROR8__(v56 ^ v57, 43);
    v60 = v56 + v55;
    v1118 = __ROR8__(v60, 32);
    v1131 = v59;
    v1092 = v58 ^ persistentID;
    v1105 = v60 ^ __ROR8__(v55, 47);
    v52 = v36 + 0x800000000000000;
  }

  v1144 = v52;
  containedPersistentID = self->_containedPersistentID;
  v62 = v1144 & 0xFF00000000000000;
  if ((v1144 & 0x400000000000000) != 0)
  {
    v68 = v1144 & 0xFFFFFFFFFFFFFFLL | (containedPersistentID << 32);
    v69 = (v1092 + v1105) ^ __ROR8__(v1105, 51);
    v70 = v1118 + (v68 ^ v1131);
    v71 = __ROR8__(v68 ^ v1131, 48);
    v72 = __ROR8__(v1092 + v1105, 32) + (v70 ^ v71);
    v73 = v72 ^ __ROR8__(v70 ^ v71, 43);
    v74 = v70 + v69;
    v1119 = __ROR8__(v74, 32);
    v1132 = v73;
    v1093 = v72 ^ v68;
    v1106 = v74 ^ __ROR8__(v69, 47);
    v75 = v62 + HIDWORD(containedPersistentID) + 0x800000000000000;
    goto LABEL_24;
  }

  if ((v1144 & 0x300000000000000) != 0)
  {
    v64 = v1092;
    v63 = v1105;
    v65 = v1144 & 0xFFFFFFFFFFFFFFLL;
    v66 = v1118;
    v67 = v1131;
  }

  else
  {
    v64 = v1092;
    v66 = v1118;
    v63 = v1105;
    v67 = v1131;
    v65 = v1144 & 0xFFFFFFFFFFFFFFLL;
    if ((v1144 & 0xFFFFFFFFFFFFFFLL) == 0)
    {
      v62 = v1144;
      goto LABEL_23;
    }
  }

  v76 = v67 ^ v65;
  v77 = v64 + v63;
  v78 = v77 ^ __ROR8__(v63, 51);
  v79 = v66 + v76;
  v80 = __ROR8__(v76, 48);
  v81 = __ROR8__(v77, 32) + (v79 ^ v80);
  v67 = v81 ^ __ROR8__(v79 ^ v80, 43);
  v82 = v79 + v78;
  v63 = v82 ^ __ROR8__(v78, 47);
  v66 = __ROR8__(v82, 32);
  v64 = v81 ^ v65;
LABEL_23:
  v83 = v67 ^ containedPersistentID;
  v84 = v64 + v63;
  v85 = v84 ^ __ROR8__(v63, 51);
  v86 = v66 + v83;
  v87 = __ROR8__(v83, 48);
  v88 = __ROR8__(v84, 32) + (v86 ^ v87);
  v89 = v88 ^ __ROR8__(v86 ^ v87, 43);
  v90 = v86 + v85;
  v1119 = __ROR8__(v90, 32);
  v1132 = v89;
  v1093 = v88 ^ containedPersistentID;
  v1106 = v90 ^ __ROR8__(v85, 47);
  v75 = v62 + 0x800000000000000;
LABEL_24:
  v1145 = v75;
  v91 = self->_personID;
  v92 = [(NSString *)v91 UTF8String];
  v93 = [(NSString *)v91 length];
  v94 = v93;
  v95 = HIBYTE(v1145);
  v96 = v1145 & 0xFFFFFFFFFFFFFFLL;
  v97 = HIBYTE(v1145) & 7;
  if (v97)
  {
    v98 = 8 - v97;
    v99 = v93 - (8 - v97);
    if (v93 < 8 - v97)
    {
      goto LABEL_33;
    }

    v100 = 8 * v97;
    v101 = v92;
    v102 = v1145 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v103 = *v101++;
      v102 |= v103 << v100;
      v100 += 8;
    }

    while (v100 != 64);
    v104 = (v1093 + v1106) ^ __ROR8__(v1106, 51);
    v105 = v1119 + (v1132 ^ v102);
    v106 = __ROR8__(v1132 ^ v102, 48);
    v107 = __ROR8__(v1093 + v1106, 32) + (v105 ^ v106);
    v108 = v107 ^ __ROR8__(v105 ^ v106, 43);
    v109 = v105 + v104;
    v1119 = __ROR8__(v109, 32);
    v1132 = v108;
    v1093 = v107 ^ v102;
    v1106 = v109 ^ __ROR8__(v104, 47);
    v92 += v98;
    v1145 = (v98 + v95) << 56;
    v94 = v99;
  }

  if (v94 >= 8)
  {
    v110 = v1093;
    v113 = v1119;
    v111 = v1106;
    v112 = v1132;
    do
    {
      v114 = *v92;
      v92 += 8;
      v115 = v112 ^ v114;
      v116 = v110 + v111;
      v117 = v116 ^ __ROR8__(v111, 51);
      v118 = v113 + v115;
      v119 = __ROR8__(v115, 48);
      v120 = __ROR8__(v116, 32) + (v118 ^ v119);
      v112 = v120 ^ __ROR8__(v118 ^ v119, 43);
      v121 = v118 + v117;
      v111 = v121 ^ __ROR8__(v117, 47);
      v113 = __ROR8__(v121, 32);
      v1119 = v113;
      v1132 = v112;
      v110 = v120 ^ v114;
      v1093 = v110;
      v1106 = v111;
      v94 -= 8;
      v95 += 8;
    }

    while (v94 > 7);
  }

  v97 = 0;
LABEL_33:
  if (v94)
  {
    v122 = 0;
    v123 = 0;
    v124 = v94;
    do
    {
      v125 = *v92++;
      v123 |= v125 << v122;
      v122 += 8;
      --v124;
    }

    while (v124);
    if (v97)
    {
      v126 = (v123 << (8 * v97)) | ((v94 + v95) << 56) | v96;
    }

    else
    {
      v126 = v123 | ((v94 + v95) << 56);
    }
  }

  else
  {
    if (v97)
    {
      goto LABEL_42;
    }

    v126 = v95 << 56;
  }

  v1145 = v126;
LABEL_42:

  cloudID = self->_cloudID;
  v128 = v1145;
  if ((v1145 & 0x400000000000000) != 0)
  {
    v137 = v1145 & 0xFFFFFFFFFFFFFFLL | (cloudID << 32);
    v138 = (v1093 + v1106) ^ __ROR8__(v1106, 51);
    v139 = v1119 + (v137 ^ v1132);
    v140 = __ROR8__(v137 ^ v1132, 48);
    v141 = __ROR8__(v1093 + v1106, 32) + (v139 ^ v140);
    v142 = v141 ^ __ROR8__(v139 ^ v140, 43);
    v143 = v139 + v138;
    v1120 = __ROR8__(v143, 32);
    v1133 = v142;
    v1094 = v141 ^ v137;
    v1107 = v143 ^ __ROR8__(v138, 47);
    v144 = (v1145 & 0xFF00000000000000) + HIDWORD(cloudID) + 0x800000000000000;
  }

  else
  {
    v129 = v1132;
    if ((v1145 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v130 = (v1093 + v1106) ^ __ROR8__(v1106, 51);
      v131 = (v1119 + (v1132 ^ v1145 & 0xFFFFFFFFFFFFFFLL)) ^ __ROR8__(v1132 ^ v1145 & 0xFFFFFFFFFFFFFFLL, 48);
      v132 = __ROR8__(v1093 + v1106, 32) + v131;
      v129 = v132 ^ __ROR8__(v131, 43);
      v133 = v1119 + (v1132 ^ v1145 & 0xFFFFFFFFFFFFFFLL) + v130;
      v134 = v133 ^ __ROR8__(v130, 47);
      v135 = __ROR8__(v133, 32);
      v136 = v132 ^ v1145 & 0xFFFFFFFFFFFFFFLL;
      v128 = v1145 & 0xFF00000000000000;
    }

    else
    {
      v136 = v1093;
      v135 = v1119;
      v134 = v1106;
    }

    v145 = v129 ^ cloudID;
    v146 = v136 + v134;
    v147 = (v136 + v134) ^ __ROR8__(v134, 51);
    v148 = v135 + v145;
    v149 = __ROR8__(v145, 48);
    v150 = __ROR8__(v146, 32) + (v148 ^ v149);
    v151 = v150 ^ __ROR8__(v148 ^ v149, 43);
    v152 = v148 + v147;
    v1120 = __ROR8__(v152, 32);
    v1133 = v151;
    v1094 = v150 ^ cloudID;
    v1107 = v152 ^ __ROR8__(v147, 47);
    v144 = v128 + 0x800000000000000;
  }

  v1146 = v144;
  v153 = self->_cloudAlbumID;
  v154 = [(NSString *)v153 UTF8String];
  v155 = [(NSString *)v153 length];
  v156 = v155;
  v157 = HIBYTE(v1146);
  v158 = v1146 & 0xFFFFFFFFFFFFFFLL;
  v159 = HIBYTE(v1146) & 7;
  if (v159)
  {
    v160 = 8 - v159;
    v161 = v155 - (8 - v159);
    if (v155 < 8 - v159)
    {
      goto LABEL_57;
    }

    v162 = 8 * v159;
    v163 = v154;
    v164 = v1146 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v165 = *v163++;
      v164 |= v165 << v162;
      v162 += 8;
    }

    while (v162 != 64);
    v166 = (v1094 + v1107) ^ __ROR8__(v1107, 51);
    v167 = v1120 + (v1133 ^ v164);
    v168 = __ROR8__(v1133 ^ v164, 48);
    v169 = __ROR8__(v1094 + v1107, 32) + (v167 ^ v168);
    v170 = v169 ^ __ROR8__(v167 ^ v168, 43);
    v171 = v167 + v166;
    v1120 = __ROR8__(v171, 32);
    v1133 = v170;
    v1094 = v169 ^ v164;
    v1107 = v171 ^ __ROR8__(v166, 47);
    v154 += v160;
    v1146 = (v160 + v157) << 56;
    v156 = v161;
  }

  if (v156 >= 8)
  {
    v172 = v1094;
    v175 = v1120;
    v173 = v1107;
    v174 = v1133;
    do
    {
      v176 = *v154;
      v154 += 8;
      v177 = v174 ^ v176;
      v178 = v172 + v173;
      v179 = v178 ^ __ROR8__(v173, 51);
      v180 = v175 + v177;
      v181 = __ROR8__(v177, 48);
      v182 = __ROR8__(v178, 32) + (v180 ^ v181);
      v174 = v182 ^ __ROR8__(v180 ^ v181, 43);
      v183 = v180 + v179;
      v173 = v183 ^ __ROR8__(v179, 47);
      v175 = __ROR8__(v183, 32);
      v1120 = v175;
      v1133 = v174;
      v172 = v182 ^ v176;
      v1094 = v172;
      v1107 = v173;
      v156 -= 8;
      v157 += 8;
    }

    while (v156 > 7);
  }

  v159 = 0;
LABEL_57:
  if (v156)
  {
    v184 = 0;
    v185 = 0;
    v186 = v156;
    do
    {
      v187 = *v154++;
      v185 |= v187 << v184;
      v184 += 8;
      --v186;
    }

    while (v186);
    if (v159)
    {
      v188 = (v185 << (8 * v159)) | ((v156 + v157) << 56) | v158;
    }

    else
    {
      v188 = v185 | ((v156 + v157) << 56);
    }
  }

  else
  {
    if (v159)
    {
      goto LABEL_66;
    }

    v188 = v157 << 56;
  }

  v1146 = v188;
LABEL_66:

  v189 = self->_cloudArtistID;
  v190 = [(NSString *)v189 UTF8String];
  v191 = [(NSString *)v189 length];
  v192 = v191;
  v193 = HIBYTE(v1146);
  v194 = v1146 & 0xFFFFFFFFFFFFFFLL;
  v195 = HIBYTE(v1146) & 7;
  if (v195)
  {
    v196 = 8 - v195;
    v197 = v191 - (8 - v195);
    if (v191 < 8 - v195)
    {
      goto LABEL_75;
    }

    v198 = 8 * v195;
    v199 = v190;
    v200 = v1146 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v201 = *v199++;
      v200 |= v201 << v198;
      v198 += 8;
    }

    while (v198 != 64);
    v202 = (v1094 + v1107) ^ __ROR8__(v1107, 51);
    v203 = v1120 + (v1133 ^ v200);
    v204 = __ROR8__(v1133 ^ v200, 48);
    v205 = __ROR8__(v1094 + v1107, 32) + (v203 ^ v204);
    v206 = v205 ^ __ROR8__(v203 ^ v204, 43);
    v207 = v203 + v202;
    v1120 = __ROR8__(v207, 32);
    v1133 = v206;
    v1094 = v205 ^ v200;
    v1107 = v207 ^ __ROR8__(v202, 47);
    v190 += v196;
    v1146 = (v196 + v193) << 56;
    v192 = v197;
  }

  if (v192 >= 8)
  {
    v208 = v1094;
    v211 = v1120;
    v209 = v1107;
    v210 = v1133;
    do
    {
      v212 = *v190;
      v190 += 8;
      v213 = v210 ^ v212;
      v214 = v208 + v209;
      v215 = v214 ^ __ROR8__(v209, 51);
      v216 = v211 + v213;
      v217 = __ROR8__(v213, 48);
      v218 = __ROR8__(v214, 32) + (v216 ^ v217);
      v210 = v218 ^ __ROR8__(v216 ^ v217, 43);
      v219 = v216 + v215;
      v209 = v219 ^ __ROR8__(v215, 47);
      v211 = __ROR8__(v219, 32);
      v1120 = v211;
      v1133 = v210;
      v208 = v218 ^ v212;
      v1094 = v208;
      v1107 = v209;
      v192 -= 8;
      v193 += 8;
    }

    while (v192 > 7);
  }

  v195 = 0;
LABEL_75:
  if (v192)
  {
    v220 = 0;
    v221 = 0;
    v222 = v192;
    do
    {
      v223 = *v190++;
      v221 |= v223 << v220;
      v220 += 8;
      --v222;
    }

    while (v222);
    if (v195)
    {
      v224 = (v221 << (8 * v195)) | ((v192 + v193) << 56) | v194;
    }

    else
    {
      v224 = v221 | ((v192 + v193) << 56);
    }
  }

  else
  {
    if (v195)
    {
      goto LABEL_84;
    }

    v224 = v193 << 56;
  }

  v1146 = v224;
LABEL_84:

  v225 = self->_recommendationID;
  v226 = [(NSString *)v225 UTF8String];
  v227 = [(NSString *)v225 length];
  v228 = v227;
  v229 = HIBYTE(v1146);
  v230 = v1146 & 0xFFFFFFFFFFFFFFLL;
  v231 = HIBYTE(v1146) & 7;
  if (v231)
  {
    v232 = 8 - v231;
    v233 = v227 - (8 - v231);
    if (v227 < 8 - v231)
    {
      goto LABEL_93;
    }

    v234 = 8 * v231;
    v235 = v226;
    v236 = v1146 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v237 = *v235++;
      v236 |= v237 << v234;
      v234 += 8;
    }

    while (v234 != 64);
    v238 = (v1094 + v1107) ^ __ROR8__(v1107, 51);
    v239 = v1120 + (v1133 ^ v236);
    v240 = __ROR8__(v1133 ^ v236, 48);
    v241 = __ROR8__(v1094 + v1107, 32) + (v239 ^ v240);
    v242 = v241 ^ __ROR8__(v239 ^ v240, 43);
    v243 = v239 + v238;
    v1120 = __ROR8__(v243, 32);
    v1133 = v242;
    v1094 = v241 ^ v236;
    v1107 = v243 ^ __ROR8__(v238, 47);
    v226 += v232;
    v1146 = (v232 + v229) << 56;
    v228 = v233;
  }

  if (v228 >= 8)
  {
    v244 = v1094;
    v247 = v1120;
    v245 = v1107;
    v246 = v1133;
    do
    {
      v248 = *v226;
      v226 += 8;
      v249 = v246 ^ v248;
      v250 = v244 + v245;
      v251 = v250 ^ __ROR8__(v245, 51);
      v252 = v247 + v249;
      v253 = __ROR8__(v249, 48);
      v254 = __ROR8__(v250, 32) + (v252 ^ v253);
      v246 = v254 ^ __ROR8__(v252 ^ v253, 43);
      v255 = v252 + v251;
      v245 = v255 ^ __ROR8__(v251, 47);
      v247 = __ROR8__(v255, 32);
      v1120 = v247;
      v1133 = v246;
      v244 = v254 ^ v248;
      v1094 = v244;
      v1107 = v245;
      v228 -= 8;
      v229 += 8;
    }

    while (v228 > 7);
  }

  v231 = 0;
LABEL_93:
  if (v228)
  {
    v256 = 0;
    v257 = 0;
    v258 = v228;
    do
    {
      v259 = *v226++;
      v257 |= v259 << v256;
      v256 += 8;
      --v258;
    }

    while (v258);
    if (v231)
    {
      v260 = (v257 << (8 * v231)) | ((v228 + v229) << 56) | v230;
    }

    else
    {
      v260 = v257 | ((v228 + v229) << 56);
    }
  }

  else
  {
    if (v231)
    {
      goto LABEL_102;
    }

    v260 = v229 << 56;
  }

  v1146 = v260;
LABEL_102:

  musicKit_possibleLibraryPersistentID = self->_musicKit_possibleLibraryPersistentID;
  v262 = v1146;
  if ((v1146 & 0x400000000000000) != 0)
  {
    v271 = v1146 & 0xFFFFFFFFFFFFFFLL | (musicKit_possibleLibraryPersistentID << 32);
    v272 = (v1094 + v1107) ^ __ROR8__(v1107, 51);
    v273 = v1120 + (v271 ^ v1133);
    v274 = __ROR8__(v271 ^ v1133, 48);
    v275 = __ROR8__(v1094 + v1107, 32) + (v273 ^ v274);
    v276 = v275 ^ __ROR8__(v273 ^ v274, 43);
    v277 = v273 + v272;
    v1121 = __ROR8__(v277, 32);
    v1134 = v276;
    v1095 = v275 ^ v271;
    v1108 = v277 ^ __ROR8__(v272, 47);
    v278 = (v1146 & 0xFF00000000000000) + HIDWORD(musicKit_possibleLibraryPersistentID) + 0x800000000000000;
  }

  else
  {
    v263 = v1133;
    if ((v1146 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v264 = (v1094 + v1107) ^ __ROR8__(v1107, 51);
      v265 = (v1120 + (v1133 ^ v1146 & 0xFFFFFFFFFFFFFFLL)) ^ __ROR8__(v1133 ^ v1146 & 0xFFFFFFFFFFFFFFLL, 48);
      v266 = __ROR8__(v1094 + v1107, 32) + v265;
      v263 = v266 ^ __ROR8__(v265, 43);
      v267 = v1120 + (v1133 ^ v1146 & 0xFFFFFFFFFFFFFFLL) + v264;
      v268 = v267 ^ __ROR8__(v264, 47);
      v269 = __ROR8__(v267, 32);
      v270 = v266 ^ v1146 & 0xFFFFFFFFFFFFFFLL;
      v262 = v1146 & 0xFF00000000000000;
    }

    else
    {
      v270 = v1094;
      v269 = v1120;
      v268 = v1107;
    }

    v279 = v263 ^ musicKit_possibleLibraryPersistentID;
    v280 = v270 + v268;
    v281 = (v270 + v268) ^ __ROR8__(v268, 51);
    v282 = v269 + v279;
    v283 = __ROR8__(v279, 48);
    v284 = __ROR8__(v280, 32) + (v282 ^ v283);
    v285 = v284 ^ __ROR8__(v282 ^ v283, 43);
    v286 = v282 + v281;
    v1121 = __ROR8__(v286, 32);
    v1134 = v285;
    v1095 = v284 ^ musicKit_possibleLibraryPersistentID;
    v1108 = v286 ^ __ROR8__(v281, 47);
    v278 = v262 + 0x800000000000000;
  }

  v1147 = v278;
  v287 = self->_globalPlaylistID;
  v288 = [(NSString *)v287 UTF8String];
  v289 = [(NSString *)v287 length];
  v290 = v289;
  v291 = HIBYTE(v1147);
  v292 = v1147 & 0xFFFFFFFFFFFFFFLL;
  v293 = HIBYTE(v1147) & 7;
  if (v293)
  {
    v294 = 8 - v293;
    v295 = v289 - (8 - v293);
    if (v289 < 8 - v293)
    {
      goto LABEL_117;
    }

    v296 = 8 * v293;
    v297 = v288;
    v298 = v1147 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v299 = *v297++;
      v298 |= v299 << v296;
      v296 += 8;
    }

    while (v296 != 64);
    v300 = (v1095 + v1108) ^ __ROR8__(v1108, 51);
    v301 = v1121 + (v1134 ^ v298);
    v302 = __ROR8__(v1134 ^ v298, 48);
    v303 = __ROR8__(v1095 + v1108, 32) + (v301 ^ v302);
    v304 = v303 ^ __ROR8__(v301 ^ v302, 43);
    v305 = v301 + v300;
    v1121 = __ROR8__(v305, 32);
    v1134 = v304;
    v1095 = v303 ^ v298;
    v1108 = v305 ^ __ROR8__(v300, 47);
    v288 += v294;
    v1147 = (v294 + v291) << 56;
    v290 = v295;
  }

  if (v290 >= 8)
  {
    v306 = v1095;
    v309 = v1121;
    v307 = v1108;
    v308 = v1134;
    do
    {
      v310 = *v288;
      v288 += 8;
      v311 = v308 ^ v310;
      v312 = v306 + v307;
      v313 = v312 ^ __ROR8__(v307, 51);
      v314 = v309 + v311;
      v315 = __ROR8__(v311, 48);
      v316 = __ROR8__(v312, 32) + (v314 ^ v315);
      v308 = v316 ^ __ROR8__(v314 ^ v315, 43);
      v317 = v314 + v313;
      v307 = v317 ^ __ROR8__(v313, 47);
      v309 = __ROR8__(v317, 32);
      v1121 = v309;
      v1134 = v308;
      v306 = v316 ^ v310;
      v1095 = v306;
      v1108 = v307;
      v290 -= 8;
      v291 += 8;
    }

    while (v290 > 7);
  }

  v293 = 0;
LABEL_117:
  if (v290)
  {
    v318 = 0;
    v319 = 0;
    v320 = v290;
    do
    {
      v321 = *v288++;
      v319 |= v321 << v318;
      v318 += 8;
      --v320;
    }

    while (v320);
    if (v293)
    {
      v322 = (v319 << (8 * v293)) | ((v290 + v291) << 56) | v292;
    }

    else
    {
      v322 = v319 | ((v290 + v291) << 56);
    }
  }

  else
  {
    if (v293)
    {
      goto LABEL_126;
    }

    v322 = v291 << 56;
  }

  v1147 = v322;
LABEL_126:

  adamID = self->_adamID;
  v324 = v1147;
  if ((v1147 & 0x400000000000000) != 0)
  {
    v333 = v1147 & 0xFFFFFFFFFFFFFFLL | (adamID << 32);
    v334 = (v1095 + v1108) ^ __ROR8__(v1108, 51);
    v335 = v1121 + (v333 ^ v1134);
    v336 = __ROR8__(v333 ^ v1134, 48);
    v337 = __ROR8__(v1095 + v1108, 32) + (v335 ^ v336);
    v338 = v337 ^ __ROR8__(v335 ^ v336, 43);
    v339 = v335 + v334;
    v1122 = __ROR8__(v339, 32);
    v1135 = v338;
    v1096 = v337 ^ v333;
    v1109 = v339 ^ __ROR8__(v334, 47);
    v340 = (v1147 & 0xFF00000000000000) + HIDWORD(adamID) + 0x800000000000000;
  }

  else
  {
    v325 = v1134;
    if ((v1147 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v326 = (v1095 + v1108) ^ __ROR8__(v1108, 51);
      v327 = (v1121 + (v1134 ^ v1147 & 0xFFFFFFFFFFFFFFLL)) ^ __ROR8__(v1134 ^ v1147 & 0xFFFFFFFFFFFFFFLL, 48);
      v328 = __ROR8__(v1095 + v1108, 32) + v327;
      v325 = v328 ^ __ROR8__(v327, 43);
      v329 = v1121 + (v1134 ^ v1147 & 0xFFFFFFFFFFFFFFLL) + v326;
      v330 = v329 ^ __ROR8__(v326, 47);
      v331 = __ROR8__(v329, 32);
      v332 = v328 ^ v1147 & 0xFFFFFFFFFFFFFFLL;
      v324 = v1147 & 0xFF00000000000000;
    }

    else
    {
      v332 = v1095;
      v331 = v1121;
      v330 = v1108;
    }

    v341 = v325 ^ adamID;
    v342 = v332 + v330;
    v343 = (v332 + v330) ^ __ROR8__(v330, 51);
    v344 = v331 + v341;
    v345 = __ROR8__(v341, 48);
    v346 = __ROR8__(v342, 32) + (v344 ^ v345);
    v347 = v346 ^ __ROR8__(v344 ^ v345, 43);
    v348 = v344 + v343;
    v1122 = __ROR8__(v348, 32);
    v1135 = v347;
    v1096 = v346 ^ adamID;
    v1109 = v348 ^ __ROR8__(v343, 47);
    v340 = v324 + 0x800000000000000;
  }

  v1148 = v340;
  v349 = self->_formerAdamIDs;
  v350 = [(NSArray *)v349 hash];
  v351 = v1148;
  if ((v1148 & 0x400000000000000) != 0)
  {
    v360 = v1148 & 0xFFFFFFFFFFFFFFLL | (v350 << 32);
    v361 = (v1096 + v1109) ^ __ROR8__(v1109, 51);
    v362 = v1122 + (v360 ^ v1135);
    v363 = __ROR8__(v360 ^ v1135, 48);
    v364 = __ROR8__(v1096 + v1109, 32) + (v362 ^ v363);
    v365 = v364 ^ __ROR8__(v362 ^ v363, 43);
    v366 = v362 + v361;
    v1123 = __ROR8__(v366, 32);
    v1136 = v365;
    v1097 = v364 ^ v360;
    v1110 = v366 ^ __ROR8__(v361, 47);
    v367 = (v1148 & 0xFF00000000000000) + HIDWORD(v350) + 0x800000000000000;
  }

  else
  {
    v352 = v1135;
    if ((v1148 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v353 = (v1096 + v1109) ^ __ROR8__(v1109, 51);
      v354 = (v1122 + (v1135 ^ v1148 & 0xFFFFFFFFFFFFFFLL)) ^ __ROR8__(v1135 ^ v1148 & 0xFFFFFFFFFFFFFFLL, 48);
      v355 = __ROR8__(v1096 + v1109, 32) + v354;
      v352 = v355 ^ __ROR8__(v354, 43);
      v356 = v1122 + (v1135 ^ v1148 & 0xFFFFFFFFFFFFFFLL) + v353;
      v357 = v356 ^ __ROR8__(v353, 47);
      v358 = __ROR8__(v356, 32);
      v359 = v355 ^ v1148 & 0xFFFFFFFFFFFFFFLL;
      v351 = v1148 & 0xFF00000000000000;
    }

    else
    {
      v359 = v1096;
      v358 = v1122;
      v357 = v1109;
    }

    v368 = v352 ^ v350;
    v369 = v359 + v357;
    v370 = (v359 + v357) ^ __ROR8__(v357, 51);
    v371 = v358 + v368;
    v372 = __ROR8__(v368, 48);
    v373 = __ROR8__(v369, 32) + (v371 ^ v372);
    v374 = v373 ^ __ROR8__(v371 ^ v372, 43);
    v375 = v371 + v370;
    v1123 = __ROR8__(v375, 32);
    v1136 = v374;
    v1097 = v373 ^ v350;
    v1110 = v375 ^ __ROR8__(v370, 47);
    v367 = v351 + 0x800000000000000;
  }

  v1149 = v367;

  v376 = self->_universalCloudLibraryID;
  v377 = [(NSString *)v376 UTF8String];
  v378 = [(NSString *)v376 length];
  v379 = v378;
  v380 = HIBYTE(v1149);
  v381 = v1149 & 0xFFFFFFFFFFFFFFLL;
  v382 = HIBYTE(v1149) & 7;
  if (v382)
  {
    v383 = 8 - v382;
    v384 = v378 - (8 - v382);
    if (v378 < 8 - v382)
    {
      goto LABEL_147;
    }

    v385 = 8 * v382;
    v386 = v377;
    v387 = v1149 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v388 = *v386++;
      v387 |= v388 << v385;
      v385 += 8;
    }

    while (v385 != 64);
    v389 = (v1097 + v1110) ^ __ROR8__(v1110, 51);
    v390 = v1123 + (v1136 ^ v387);
    v391 = __ROR8__(v1136 ^ v387, 48);
    v392 = __ROR8__(v1097 + v1110, 32) + (v390 ^ v391);
    v393 = v392 ^ __ROR8__(v390 ^ v391, 43);
    v394 = v390 + v389;
    v1123 = __ROR8__(v394, 32);
    v1136 = v393;
    v1097 = v392 ^ v387;
    v1110 = v394 ^ __ROR8__(v389, 47);
    v377 += v383;
    v1149 = (v383 + v380) << 56;
    v379 = v384;
  }

  if (v379 >= 8)
  {
    v395 = v1097;
    v398 = v1123;
    v396 = v1110;
    v397 = v1136;
    do
    {
      v399 = *v377;
      v377 += 8;
      v400 = v397 ^ v399;
      v401 = v395 + v396;
      v402 = v401 ^ __ROR8__(v396, 51);
      v403 = v398 + v400;
      v404 = __ROR8__(v400, 48);
      v405 = __ROR8__(v401, 32) + (v403 ^ v404);
      v397 = v405 ^ __ROR8__(v403 ^ v404, 43);
      v406 = v403 + v402;
      v396 = v406 ^ __ROR8__(v402, 47);
      v398 = __ROR8__(v406, 32);
      v1123 = v398;
      v1136 = v397;
      v395 = v405 ^ v399;
      v1097 = v395;
      v1110 = v396;
      v379 -= 8;
      v380 += 8;
    }

    while (v379 > 7);
  }

  v382 = 0;
LABEL_147:
  if (v379)
  {
    v407 = 0;
    v408 = 0;
    v409 = v379;
    do
    {
      v410 = *v377++;
      v408 |= v410 << v407;
      v407 += 8;
      --v409;
    }

    while (v409);
    if (v382)
    {
      v411 = (v408 << (8 * v382)) | ((v379 + v380) << 56) | v381;
    }

    else
    {
      v411 = v408 | ((v379 + v380) << 56);
    }
  }

  else
  {
    if (v382)
    {
      goto LABEL_156;
    }

    v411 = v380 << 56;
  }

  v1149 = v411;
LABEL_156:

  purchasedAdamID = self->_purchasedAdamID;
  v413 = v1149;
  if ((v1149 & 0x400000000000000) != 0)
  {
    v422 = v1149 & 0xFFFFFFFFFFFFFFLL | (purchasedAdamID << 32);
    v423 = (v1097 + v1110) ^ __ROR8__(v1110, 51);
    v424 = v1123 + (v422 ^ v1136);
    v425 = __ROR8__(v422 ^ v1136, 48);
    v426 = __ROR8__(v1097 + v1110, 32) + (v424 ^ v425);
    v427 = v426 ^ __ROR8__(v424 ^ v425, 43);
    v428 = v424 + v423;
    v1124 = __ROR8__(v428, 32);
    v1137 = v427;
    v1098 = v426 ^ v422;
    v1111 = v428 ^ __ROR8__(v423, 47);
    v429 = (v1149 & 0xFF00000000000000) + HIDWORD(purchasedAdamID) + 0x800000000000000;
  }

  else
  {
    v414 = v1136;
    if ((v1149 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v415 = (v1097 + v1110) ^ __ROR8__(v1110, 51);
      v416 = (v1123 + (v1136 ^ v1149 & 0xFFFFFFFFFFFFFFLL)) ^ __ROR8__(v1136 ^ v1149 & 0xFFFFFFFFFFFFFFLL, 48);
      v417 = __ROR8__(v1097 + v1110, 32) + v416;
      v414 = v417 ^ __ROR8__(v416, 43);
      v418 = v1123 + (v1136 ^ v1149 & 0xFFFFFFFFFFFFFFLL) + v415;
      v419 = v418 ^ __ROR8__(v415, 47);
      v420 = __ROR8__(v418, 32);
      v421 = v417 ^ v1149 & 0xFFFFFFFFFFFFFFLL;
      v413 = v1149 & 0xFF00000000000000;
    }

    else
    {
      v421 = v1097;
      v420 = v1123;
      v419 = v1110;
    }

    v430 = v414 ^ purchasedAdamID;
    v431 = v421 + v419;
    v432 = (v421 + v419) ^ __ROR8__(v419, 51);
    v433 = v420 + v430;
    v434 = __ROR8__(v430, 48);
    v435 = __ROR8__(v431, 32) + (v433 ^ v434);
    v436 = v435 ^ __ROR8__(v433 ^ v434, 43);
    v437 = v433 + v432;
    v1124 = __ROR8__(v437, 32);
    v1137 = v436;
    v1098 = v435 ^ purchasedAdamID;
    v1111 = v437 ^ __ROR8__(v432, 47);
    v429 = v413 + 0x800000000000000;
  }

  v1150 = v429;
  subscriptionAdamID = self->_subscriptionAdamID;
  v439 = v1150 & 0xFF00000000000000;
  if ((v1150 & 0x400000000000000) != 0)
  {
    v445 = v1150 & 0xFFFFFFFFFFFFFFLL | (subscriptionAdamID << 32);
    v446 = (v1098 + v1111) ^ __ROR8__(v1111, 51);
    v447 = v1124 + (v445 ^ v1137);
    v448 = __ROR8__(v445 ^ v1137, 48);
    v449 = __ROR8__(v1098 + v1111, 32) + (v447 ^ v448);
    v450 = v449 ^ __ROR8__(v447 ^ v448, 43);
    v451 = v447 + v446;
    v1125 = __ROR8__(v451, 32);
    v1138 = v450;
    v1099 = v449 ^ v445;
    v1112 = v451 ^ __ROR8__(v446, 47);
    v452 = v439 + HIDWORD(subscriptionAdamID) + 0x800000000000000;
    goto LABEL_169;
  }

  if ((v1150 & 0x300000000000000) != 0)
  {
    v441 = v1098;
    v440 = v1111;
    v442 = v1150 & 0xFFFFFFFFFFFFFFLL;
    v443 = v1124;
    v444 = v1137;
  }

  else
  {
    v441 = v1098;
    v443 = v1124;
    v440 = v1111;
    v444 = v1137;
    v442 = v1150 & 0xFFFFFFFFFFFFFFLL;
    if ((v1150 & 0xFFFFFFFFFFFFFFLL) == 0)
    {
      v439 = v1150;
      goto LABEL_168;
    }
  }

  v453 = v444 ^ v442;
  v454 = v441 + v440;
  v455 = v454 ^ __ROR8__(v440, 51);
  v456 = v443 + v453;
  v457 = __ROR8__(v453, 48);
  v458 = __ROR8__(v454, 32) + (v456 ^ v457);
  v444 = v458 ^ __ROR8__(v456 ^ v457, 43);
  v459 = v456 + v455;
  v440 = v459 ^ __ROR8__(v455, 47);
  v443 = __ROR8__(v459, 32);
  v441 = v458 ^ v442;
LABEL_168:
  v460 = v444 ^ subscriptionAdamID;
  v461 = v441 + v440;
  v462 = v461 ^ __ROR8__(v440, 51);
  v463 = v443 + v460;
  v464 = __ROR8__(v460, 48);
  v465 = __ROR8__(v461, 32) + (v463 ^ v464);
  v466 = v465 ^ __ROR8__(v463 ^ v464, 43);
  v467 = v463 + v462;
  v1125 = __ROR8__(v467, 32);
  v1138 = v466;
  v1099 = v465 ^ subscriptionAdamID;
  v1112 = v467 ^ __ROR8__(v462, 47);
  v452 = v439 + 0x800000000000000;
LABEL_169:
  v1151 = v452;
  v468 = self->_socialProfileID;
  v469 = [(NSString *)v468 UTF8String];
  v470 = [(NSString *)v468 length];
  v471 = v470;
  v472 = HIBYTE(v1151);
  v473 = v1151 & 0xFFFFFFFFFFFFFFLL;
  v474 = HIBYTE(v1151) & 7;
  if (v474)
  {
    v475 = 8 - v474;
    v476 = v470 - (8 - v474);
    if (v470 < 8 - v474)
    {
      goto LABEL_178;
    }

    v477 = 8 * v474;
    v478 = v469;
    v479 = v1151 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v480 = *v478++;
      v479 |= v480 << v477;
      v477 += 8;
    }

    while (v477 != 64);
    v481 = (v1099 + v1112) ^ __ROR8__(v1112, 51);
    v482 = v1125 + (v1138 ^ v479);
    v483 = __ROR8__(v1138 ^ v479, 48);
    v484 = __ROR8__(v1099 + v1112, 32) + (v482 ^ v483);
    v485 = v484 ^ __ROR8__(v482 ^ v483, 43);
    v486 = v482 + v481;
    v1125 = __ROR8__(v486, 32);
    v1138 = v485;
    v1099 = v484 ^ v479;
    v1112 = v486 ^ __ROR8__(v481, 47);
    v469 += v475;
    v1151 = (v475 + v472) << 56;
    v471 = v476;
  }

  if (v471 >= 8)
  {
    v487 = v1099;
    v490 = v1125;
    v488 = v1112;
    v489 = v1138;
    do
    {
      v491 = *v469;
      v469 += 8;
      v492 = v489 ^ v491;
      v493 = v487 + v488;
      v494 = v493 ^ __ROR8__(v488, 51);
      v495 = v490 + v492;
      v496 = __ROR8__(v492, 48);
      v497 = __ROR8__(v493, 32) + (v495 ^ v496);
      v489 = v497 ^ __ROR8__(v495 ^ v496, 43);
      v498 = v495 + v494;
      v488 = v498 ^ __ROR8__(v494, 47);
      v490 = __ROR8__(v498, 32);
      v1125 = v490;
      v1138 = v489;
      v487 = v497 ^ v491;
      v1099 = v487;
      v1112 = v488;
      v471 -= 8;
      v472 += 8;
    }

    while (v471 > 7);
  }

  v474 = 0;
LABEL_178:
  if (v471)
  {
    v499 = 0;
    v500 = 0;
    v501 = v471;
    do
    {
      v502 = *v469++;
      v500 |= v502 << v499;
      v499 += 8;
      --v501;
    }

    while (v501);
    if (v474)
    {
      v503 = (v500 << (8 * v474)) | ((v471 + v472) << 56) | v473;
    }

    else
    {
      v503 = v500 | ((v471 + v472) << 56);
    }
  }

  else
  {
    if (v474)
    {
      goto LABEL_187;
    }

    v503 = v472 << 56;
  }

  v1151 = v503;
LABEL_187:

  v504 = self->_informalMediaClipID;
  v505 = [(NSString *)v504 UTF8String];
  v506 = [(NSString *)v504 length];
  v507 = v506;
  v508 = HIBYTE(v1151);
  v509 = v1151 & 0xFFFFFFFFFFFFFFLL;
  v510 = HIBYTE(v1151) & 7;
  if (v510)
  {
    v511 = 8 - v510;
    v512 = v506 - (8 - v510);
    if (v506 < 8 - v510)
    {
      goto LABEL_196;
    }

    v513 = 8 * v510;
    v514 = v505;
    v515 = v1151 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v516 = *v514++;
      v515 |= v516 << v513;
      v513 += 8;
    }

    while (v513 != 64);
    v517 = (v1099 + v1112) ^ __ROR8__(v1112, 51);
    v518 = v1125 + (v1138 ^ v515);
    v519 = __ROR8__(v1138 ^ v515, 48);
    v520 = __ROR8__(v1099 + v1112, 32) + (v518 ^ v519);
    v521 = v520 ^ __ROR8__(v518 ^ v519, 43);
    v522 = v518 + v517;
    v1125 = __ROR8__(v522, 32);
    v1138 = v521;
    v1099 = v520 ^ v515;
    v1112 = v522 ^ __ROR8__(v517, 47);
    v505 += v511;
    v1151 = (v511 + v508) << 56;
    v507 = v512;
  }

  if (v507 >= 8)
  {
    v523 = v1099;
    v526 = v1125;
    v524 = v1112;
    v525 = v1138;
    do
    {
      v527 = *v505;
      v505 += 8;
      v528 = v525 ^ v527;
      v529 = v523 + v524;
      v530 = v529 ^ __ROR8__(v524, 51);
      v531 = v526 + v528;
      v532 = __ROR8__(v528, 48);
      v533 = __ROR8__(v529, 32) + (v531 ^ v532);
      v525 = v533 ^ __ROR8__(v531 ^ v532, 43);
      v534 = v531 + v530;
      v524 = v534 ^ __ROR8__(v530, 47);
      v526 = __ROR8__(v534, 32);
      v1125 = v526;
      v1138 = v525;
      v523 = v533 ^ v527;
      v1099 = v523;
      v1112 = v524;
      v507 -= 8;
      v508 += 8;
    }

    while (v507 > 7);
  }

  v510 = 0;
LABEL_196:
  if (v507)
  {
    v535 = 0;
    v536 = 0;
    v537 = v507;
    do
    {
      v538 = *v505++;
      v536 |= v538 << v535;
      v535 += 8;
      --v537;
    }

    while (v537);
    if (v510)
    {
      v539 = (v536 << (8 * v510)) | ((v507 + v508) << 56) | v509;
    }

    else
    {
      v539 = v536 | ((v507 + v508) << 56);
    }
  }

  else
  {
    if (v510)
    {
      goto LABEL_205;
    }

    v539 = v508 << 56;
  }

  v1151 = v539;
LABEL_205:

  v540 = self->_informalStaticAssetID;
  v541 = [(NSString *)v540 UTF8String];
  v542 = [(NSString *)v540 length];
  v543 = v542;
  v544 = HIBYTE(v1151);
  v545 = v1151 & 0xFFFFFFFFFFFFFFLL;
  v546 = HIBYTE(v1151) & 7;
  if (v546)
  {
    v547 = 8 - v546;
    v548 = v542 - (8 - v546);
    if (v542 < 8 - v546)
    {
      goto LABEL_214;
    }

    v549 = 8 * v546;
    v550 = v541;
    v551 = v1151 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v552 = *v550++;
      v551 |= v552 << v549;
      v549 += 8;
    }

    while (v549 != 64);
    v553 = (v1099 + v1112) ^ __ROR8__(v1112, 51);
    v554 = v1125 + (v1138 ^ v551);
    v555 = __ROR8__(v1138 ^ v551, 48);
    v556 = __ROR8__(v1099 + v1112, 32) + (v554 ^ v555);
    v557 = v556 ^ __ROR8__(v554 ^ v555, 43);
    v558 = v554 + v553;
    v1125 = __ROR8__(v558, 32);
    v1138 = v557;
    v1099 = v556 ^ v551;
    v1112 = v558 ^ __ROR8__(v553, 47);
    v541 += v547;
    v1151 = (v547 + v544) << 56;
    v543 = v548;
  }

  if (v543 >= 8)
  {
    v559 = v1099;
    v562 = v1125;
    v560 = v1112;
    v561 = v1138;
    do
    {
      v563 = *v541;
      v541 += 8;
      v564 = v561 ^ v563;
      v565 = v559 + v560;
      v566 = v565 ^ __ROR8__(v560, 51);
      v567 = v562 + v564;
      v568 = __ROR8__(v564, 48);
      v569 = __ROR8__(v565, 32) + (v567 ^ v568);
      v561 = v569 ^ __ROR8__(v567 ^ v568, 43);
      v570 = v567 + v566;
      v560 = v570 ^ __ROR8__(v566, 47);
      v562 = __ROR8__(v570, 32);
      v1125 = v562;
      v1138 = v561;
      v559 = v569 ^ v563;
      v1099 = v559;
      v1112 = v560;
      v543 -= 8;
      v544 += 8;
    }

    while (v543 > 7);
  }

  v546 = 0;
LABEL_214:
  if (v543)
  {
    v571 = 0;
    v572 = 0;
    v573 = v543;
    do
    {
      v574 = *v541++;
      v572 |= v574 << v571;
      v571 += 8;
      --v573;
    }

    while (v573);
    if (v546)
    {
      v575 = (v572 << (8 * v546)) | ((v543 + v544) << 56) | v545;
    }

    else
    {
      v575 = v572 | ((v543 + v544) << 56);
    }
  }

  else
  {
    if (v546)
    {
      goto LABEL_223;
    }

    v575 = v544 << 56;
  }

  v1151 = v575;
LABEL_223:

  reportingAdamID = self->_reportingAdamID;
  v577 = v1151;
  if ((v1151 & 0x400000000000000) != 0)
  {
    v596 = v1151 & 0xFFFFFFFFFFFFFFLL | (reportingAdamID << 32);
    v597 = (v1099 + v1112) ^ __ROR8__(v1112, 51);
    v598 = v1125 + (v596 ^ v1138);
    v599 = __ROR8__(v596 ^ v1138, 48);
    v600 = __ROR8__(v1099 + v1112, 32) + (v598 ^ v599);
    v601 = v600 ^ __ROR8__(v598 ^ v599, 43);
    v602 = v598 + v597;
    v1126 = __ROR8__(v602, 32);
    v1139 = v601;
    v1100 = v600 ^ v596;
    v1113 = v602 ^ __ROR8__(v597, 47);
    v595 = (v1151 & 0xFF00000000000000) + HIDWORD(reportingAdamID) + 0x800000000000000;
  }

  else
  {
    v578 = v1099;
    v580 = v1125;
    v579 = v1112;
    v581 = v1138;
    if ((v1151 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v582 = (v1099 + v1112) ^ __ROR8__(v1112, 51);
      v583 = v1125 + (v1138 ^ v1151 & 0xFFFFFFFFFFFFFFLL);
      v584 = __ROR8__(v1138 ^ v1151 & 0xFFFFFFFFFFFFFFLL, 48);
      v585 = __ROR8__(v1099 + v1112, 32) + (v583 ^ v584);
      v581 = v585 ^ __ROR8__(v583 ^ v584, 43);
      v586 = v583 + v582;
      v579 = v586 ^ __ROR8__(v582, 47);
      v580 = __ROR8__(v586, 32);
      v578 = v585 ^ v1151 & 0xFFFFFFFFFFFFFFLL;
      v577 = v1151 & 0xFF00000000000000;
    }

    v587 = v581 ^ reportingAdamID;
    v588 = v578 + v579;
    v589 = (v578 + v579) ^ __ROR8__(v579, 51);
    v590 = v580 + v587;
    v591 = __ROR8__(v587, 48);
    v592 = (v590 ^ v591) + __ROR8__(v588, 32);
    v593 = v592 ^ __ROR8__(v590 ^ v591, 43);
    v594 = v590 + v589;
    v1126 = __ROR8__(v594, 32);
    v1139 = v593;
    v1100 = v592 ^ reportingAdamID;
    v1113 = v594 ^ __ROR8__(v589, 47);
    v595 = v577 + 0x800000000000000;
  }

  v1152 = v595;
  assetAdamID = self->_assetAdamID;
  v604 = v1152;
  if ((v1152 & 0x400000000000000) != 0)
  {
    v623 = v1152 & 0xFFFFFFFFFFFFFFLL | (assetAdamID << 32);
    v624 = (v1100 + v1113) ^ __ROR8__(v1113, 51);
    v625 = v1126 + (v1139 ^ v623);
    v626 = __ROR8__(v1139 ^ v623, 48);
    v627 = (v625 ^ v626) + __ROR8__(v1100 + v1113, 32);
    v628 = v627 ^ __ROR8__(v625 ^ v626, 43);
    v629 = v625 + v624;
    v1127 = __ROR8__(v629, 32);
    v1140 = v628;
    v1101 = v627 ^ v623;
    v1114 = v629 ^ __ROR8__(v624, 47);
    v622 = (v1152 & 0xFF00000000000000) + HIDWORD(assetAdamID) + 0x800000000000000;
  }

  else
  {
    v605 = v1100;
    v607 = v1126;
    v606 = v1113;
    v608 = v1139;
    if ((v1152 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v609 = (v1100 + v1113) ^ __ROR8__(v1113, 51);
      v610 = v1126 + (v1139 ^ v1152 & 0xFFFFFFFFFFFFFFLL);
      v611 = __ROR8__(v1139 ^ v1152 & 0xFFFFFFFFFFFFFFLL, 48);
      v612 = (v610 ^ v611) + __ROR8__(v1100 + v1113, 32);
      v608 = v612 ^ __ROR8__(v610 ^ v611, 43);
      v613 = v610 + v609;
      v606 = v613 ^ __ROR8__(v609, 47);
      v607 = __ROR8__(v613, 32);
      v605 = v612 ^ v1152 & 0xFFFFFFFFFFFFFFLL;
      v604 = v1152 & 0xFF00000000000000;
    }

    v614 = v608 ^ assetAdamID;
    v615 = v605 + v606;
    v616 = (v605 + v606) ^ __ROR8__(v606, 51);
    v617 = v607 + v614;
    v618 = __ROR8__(v614, 48);
    v619 = (v617 ^ v618) + __ROR8__(v615, 32);
    v620 = v619 ^ __ROR8__(v617 ^ v618, 43);
    v621 = v617 + v616;
    v1127 = __ROR8__(v621, 32);
    v1140 = v620;
    v1101 = v619 ^ assetAdamID;
    v1114 = v621 ^ __ROR8__(v616, 47);
    v622 = v604 + 0x800000000000000;
  }

  v1153 = v622;
  lyricsAdamID = self->_lyricsAdamID;
  v631 = v1153;
  if ((v1153 & 0x400000000000000) != 0)
  {
    v650 = v1153 & 0xFFFFFFFFFFFFFFLL | (lyricsAdamID << 32);
    v651 = (v1101 + v1114) ^ __ROR8__(v1114, 51);
    v652 = v1127 + (v1140 ^ v650);
    v653 = __ROR8__(v1140 ^ v650, 48);
    v654 = (v652 ^ v653) + __ROR8__(v1101 + v1114, 32);
    v655 = v654 ^ __ROR8__(v652 ^ v653, 43);
    v656 = v652 + v651;
    v1128 = __ROR8__(v656, 32);
    v1141 = v655;
    v1102 = v654 ^ v650;
    v1115 = v656 ^ __ROR8__(v651, 47);
    v649 = (v1153 & 0xFF00000000000000) + HIDWORD(lyricsAdamID) + 0x800000000000000;
  }

  else
  {
    v632 = v1101;
    v634 = v1127;
    v633 = v1114;
    v635 = v1140;
    if ((v1153 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v636 = (v1101 + v1114) ^ __ROR8__(v1114, 51);
      v637 = v1127 + (v1140 ^ v1153 & 0xFFFFFFFFFFFFFFLL);
      v638 = __ROR8__(v1140 ^ v1153 & 0xFFFFFFFFFFFFFFLL, 48);
      v639 = (v637 ^ v638) + __ROR8__(v1101 + v1114, 32);
      v635 = v639 ^ __ROR8__(v637 ^ v638, 43);
      v640 = v637 + v636;
      v633 = v640 ^ __ROR8__(v636, 47);
      v634 = __ROR8__(v640, 32);
      v632 = v639 ^ v1153 & 0xFFFFFFFFFFFFFFLL;
      v631 = v1153 & 0xFF00000000000000;
    }

    v641 = v635 ^ lyricsAdamID;
    v642 = v632 + v633;
    v643 = (v632 + v633) ^ __ROR8__(v633, 51);
    v644 = v634 + v641;
    v645 = __ROR8__(v641, 48);
    v646 = (v644 ^ v645) + __ROR8__(v642, 32);
    v647 = v646 ^ __ROR8__(v644 ^ v645, 43);
    v648 = v644 + v643;
    v1128 = __ROR8__(v648, 32);
    v1141 = v647;
    v1102 = v646 ^ lyricsAdamID;
    v1115 = v648 ^ __ROR8__(v643, 47);
    v649 = v631 + 0x800000000000000;
  }

  v1154 = v649;
  v657 = self->_stationStringID;
  v658 = [(NSString *)v657 UTF8String];
  v659 = [(NSString *)v657 length];
  v660 = v659;
  v661 = HIBYTE(v1154);
  v662 = v1154 & 0xFFFFFFFFFFFFFFLL;
  v663 = HIBYTE(v1154) & 7;
  if (v663)
  {
    v664 = 8 - v663;
    v665 = v659 - (8 - v663);
    if (v659 < 8 - v663)
    {
      goto LABEL_247;
    }

    v666 = 8 * v663;
    v667 = v658;
    v668 = v1154 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v669 = *v667++;
      v668 |= v669 << v666;
      v666 += 8;
    }

    while (v666 != 64);
    v670 = (v1102 + v1115) ^ __ROR8__(v1115, 51);
    v671 = v1128 + (v1141 ^ v668);
    v672 = __ROR8__(v1141 ^ v668, 48);
    v673 = (v671 ^ v672) + __ROR8__(v1102 + v1115, 32);
    v674 = v673 ^ __ROR8__(v671 ^ v672, 43);
    v675 = v671 + v670;
    v1128 = __ROR8__(v675, 32);
    v1141 = v674;
    v1102 = v673 ^ v668;
    v1115 = v675 ^ __ROR8__(v670, 47);
    v658 += v664;
    v1154 = (v664 + v661) << 56;
    v660 = v665;
  }

  if (v660 >= 8)
  {
    v676 = v1102;
    v679 = v1128;
    v677 = v1115;
    v678 = v1141;
    do
    {
      v680 = *v658;
      v658 += 8;
      v681 = v678 ^ v680;
      v682 = v676 + v677;
      v683 = v682 ^ __ROR8__(v677, 51);
      v684 = v679 + v681;
      v685 = __ROR8__(v681, 48);
      v686 = (v684 ^ v685) + __ROR8__(v682, 32);
      v678 = v686 ^ __ROR8__(v684 ^ v685, 43);
      v687 = v684 + v683;
      v677 = v687 ^ __ROR8__(v683, 47);
      v679 = __ROR8__(v687, 32);
      v1128 = v679;
      v1141 = v678;
      v676 = v686 ^ v680;
      v1102 = v676;
      v1115 = v677;
      v660 -= 8;
      v661 += 8;
    }

    while (v660 > 7);
  }

  v663 = 0;
LABEL_247:
  if (v660)
  {
    v688 = 0;
    v689 = 0;
    v690 = v660;
    do
    {
      v691 = *v658++;
      v689 |= v691 << v688;
      v688 += 8;
      --v690;
    }

    while (v690);
    if (v663)
    {
      v692 = (v689 << (8 * v663)) | ((v660 + v661) << 56) | v662;
    }

    else
    {
      v692 = v689 | ((v660 + v661) << 56);
    }
  }

  else
  {
    if (v663)
    {
      goto LABEL_256;
    }

    v692 = v661 << 56;
  }

  v1154 = v692;
LABEL_256:

  v693 = self->_stationHash;
  v694 = [(NSString *)v693 UTF8String];
  v695 = [(NSString *)v693 length];
  v696 = v695;
  v697 = HIBYTE(v1154);
  v698 = v1154 & 0xFFFFFFFFFFFFFFLL;
  v699 = HIBYTE(v1154) & 7;
  if (v699)
  {
    v700 = 8 - v699;
    v701 = v695 - (8 - v699);
    if (v695 < 8 - v699)
    {
      goto LABEL_265;
    }

    v702 = 8 * v699;
    v703 = v694;
    v704 = v1154 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v705 = *v703++;
      v704 |= v705 << v702;
      v702 += 8;
    }

    while (v702 != 64);
    v706 = (v1102 + v1115) ^ __ROR8__(v1115, 51);
    v707 = v1128 + (v1141 ^ v704);
    v708 = __ROR8__(v1141 ^ v704, 48);
    v709 = (v707 ^ v708) + __ROR8__(v1102 + v1115, 32);
    v710 = v709 ^ __ROR8__(v707 ^ v708, 43);
    v711 = v707 + v706;
    v1128 = __ROR8__(v711, 32);
    v1141 = v710;
    v1102 = v709 ^ v704;
    v1115 = v711 ^ __ROR8__(v706, 47);
    v694 += v700;
    v1154 = (v700 + v697) << 56;
    v696 = v701;
  }

  if (v696 >= 8)
  {
    v712 = v1102;
    v715 = v1128;
    v713 = v1115;
    v714 = v1141;
    do
    {
      v716 = *v694;
      v694 += 8;
      v717 = v714 ^ v716;
      v718 = v712 + v713;
      v719 = v718 ^ __ROR8__(v713, 51);
      v720 = v715 + v717;
      v721 = __ROR8__(v717, 48);
      v722 = (v720 ^ v721) + __ROR8__(v718, 32);
      v714 = v722 ^ __ROR8__(v720 ^ v721, 43);
      v723 = v720 + v719;
      v713 = v723 ^ __ROR8__(v719, 47);
      v715 = __ROR8__(v723, 32);
      v1128 = v715;
      v1141 = v714;
      v712 = v722 ^ v716;
      v1102 = v712;
      v1115 = v713;
      v696 -= 8;
      v697 += 8;
    }

    while (v696 > 7);
  }

  v699 = 0;
LABEL_265:
  if (v696)
  {
    v724 = 0;
    v725 = 0;
    v726 = v696;
    do
    {
      v727 = *v694++;
      v725 |= v727 << v724;
      v724 += 8;
      --v726;
    }

    while (v726);
    if (v699)
    {
      v728 = (v725 << (8 * v699)) | ((v696 + v697) << 56) | v698;
    }

    else
    {
      v728 = v725 | ((v696 + v697) << 56);
    }
  }

  else
  {
    if (v699)
    {
      goto LABEL_274;
    }

    v728 = v697 << 56;
  }

  v1154 = v728;
LABEL_274:

  stationID = self->_stationID;
  v730 = v1154;
  if ((v1154 & 0x400000000000000) != 0)
  {
    v749 = v1154 & 0xFFFFFFFFFFFFFFLL | (stationID << 32);
    v750 = (v1102 + v1115) ^ __ROR8__(v1115, 51);
    v751 = v1128 + (v1141 ^ v749);
    v752 = __ROR8__(v1141 ^ v749, 48);
    v753 = (v751 ^ v752) + __ROR8__(v1102 + v1115, 32);
    v754 = v753 ^ __ROR8__(v751 ^ v752, 43);
    v755 = v751 + v750;
    v1129 = __ROR8__(v755, 32);
    v1142 = v754;
    v1103 = v753 ^ v749;
    v1116 = v755 ^ __ROR8__(v750, 47);
    v748 = (v1154 & 0xFF00000000000000) + HIDWORD(stationID) + 0x800000000000000;
  }

  else
  {
    v731 = v1102;
    v733 = v1128;
    v732 = v1115;
    v734 = v1141;
    if ((v1154 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v735 = (v1102 + v1115) ^ __ROR8__(v1115, 51);
      v736 = v1128 + (v1141 ^ v1154 & 0xFFFFFFFFFFFFFFLL);
      v737 = __ROR8__(v1141 ^ v1154 & 0xFFFFFFFFFFFFFFLL, 48);
      v738 = (v736 ^ v737) + __ROR8__(v1102 + v1115, 32);
      v734 = v738 ^ __ROR8__(v736 ^ v737, 43);
      v739 = v736 + v735;
      v732 = v739 ^ __ROR8__(v735, 47);
      v733 = __ROR8__(v739, 32);
      v731 = v738 ^ v1154 & 0xFFFFFFFFFFFFFFLL;
      v730 = v1154 & 0xFF00000000000000;
    }

    v740 = v734 ^ stationID;
    v741 = v731 + v732;
    v742 = (v731 + v732) ^ __ROR8__(v732, 51);
    v743 = v733 + v740;
    v744 = __ROR8__(v740, 48);
    v745 = (v743 ^ v744) + __ROR8__(v741, 32);
    v746 = v745 ^ __ROR8__(v743 ^ v744, 43);
    v747 = v743 + v742;
    v1129 = __ROR8__(v747, 32);
    v1142 = v746;
    v1103 = v745 ^ stationID;
    v1116 = v747 ^ __ROR8__(v742, 47);
    v748 = v730 + 0x800000000000000;
  }

  v1155 = v748;
  v756 = self->_stationEventID;
  v757 = [(NSString *)v756 UTF8String];
  v758 = [(NSString *)v756 length];
  v759 = v758;
  v760 = HIBYTE(v1155);
  v761 = v1155 & 0xFFFFFFFFFFFFFFLL;
  v762 = HIBYTE(v1155) & 7;
  if (v762)
  {
    v763 = 8 - v762;
    v764 = v758 - (8 - v762);
    if (v758 < 8 - v762)
    {
      goto LABEL_288;
    }

    v765 = 8 * v762;
    v766 = v757;
    v767 = v1155 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v768 = *v766++;
      v767 |= v768 << v765;
      v765 += 8;
    }

    while (v765 != 64);
    v769 = (v1103 + v1116) ^ __ROR8__(v1116, 51);
    v770 = v1129 + (v1142 ^ v767);
    v771 = __ROR8__(v1142 ^ v767, 48);
    v772 = (v770 ^ v771) + __ROR8__(v1103 + v1116, 32);
    v773 = v772 ^ __ROR8__(v770 ^ v771, 43);
    v774 = v770 + v769;
    v1129 = __ROR8__(v774, 32);
    v1142 = v773;
    v1103 = v772 ^ v767;
    v1116 = v774 ^ __ROR8__(v769, 47);
    v757 += v763;
    v1155 = (v763 + v760) << 56;
    v759 = v764;
  }

  if (v759 >= 8)
  {
    v775 = v1103;
    v778 = v1129;
    v776 = v1116;
    v777 = v1142;
    do
    {
      v779 = *v757;
      v757 += 8;
      v780 = v777 ^ v779;
      v781 = v775 + v776;
      v782 = v781 ^ __ROR8__(v776, 51);
      v783 = v778 + v780;
      v784 = __ROR8__(v780, 48);
      v785 = (v783 ^ v784) + __ROR8__(v781, 32);
      v777 = v785 ^ __ROR8__(v783 ^ v784, 43);
      v786 = v783 + v782;
      v776 = v786 ^ __ROR8__(v782, 47);
      v778 = __ROR8__(v786, 32);
      v1129 = v778;
      v1142 = v777;
      v775 = v785 ^ v779;
      v1103 = v775;
      v1116 = v776;
      v759 -= 8;
      v760 += 8;
    }

    while (v759 > 7);
  }

  v762 = 0;
LABEL_288:
  if (v759)
  {
    v787 = 0;
    v788 = 0;
    v789 = v759;
    do
    {
      v790 = *v757++;
      v788 |= v790 << v787;
      v787 += 8;
      --v789;
    }

    while (v789);
    if (v762)
    {
      v791 = (v788 << (8 * v762)) | ((v759 + v760) << 56) | v761;
    }

    else
    {
      v791 = v788 | ((v759 + v760) << 56);
    }
  }

  else
  {
    if (v762)
    {
      goto LABEL_297;
    }

    v791 = v760 << 56;
  }

  v1155 = v791;
LABEL_297:

  v792 = self->_containerUniqueID;
  v793 = [(NSString *)v792 UTF8String];
  v794 = [(NSString *)v792 length];
  v795 = v794;
  v796 = HIBYTE(v1155);
  v797 = v1155 & 0xFFFFFFFFFFFFFFLL;
  v798 = HIBYTE(v1155) & 7;
  if (v798)
  {
    v799 = 8 - v798;
    v800 = v794 - (8 - v798);
    if (v794 < 8 - v798)
    {
      goto LABEL_306;
    }

    v801 = 8 * v798;
    v802 = v793;
    v803 = v1155 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v804 = *v802++;
      v803 |= v804 << v801;
      v801 += 8;
    }

    while (v801 != 64);
    v805 = (v1103 + v1116) ^ __ROR8__(v1116, 51);
    v806 = v1129 + (v1142 ^ v803);
    v807 = __ROR8__(v1142 ^ v803, 48);
    v808 = (v806 ^ v807) + __ROR8__(v1103 + v1116, 32);
    v809 = v808 ^ __ROR8__(v806 ^ v807, 43);
    v810 = v806 + v805;
    v1129 = __ROR8__(v810, 32);
    v1142 = v809;
    v1103 = v808 ^ v803;
    v1116 = v810 ^ __ROR8__(v805, 47);
    v793 += v799;
    v1155 = (v799 + v796) << 56;
    v795 = v800;
  }

  if (v795 >= 8)
  {
    v811 = v1103;
    v814 = v1129;
    v812 = v1116;
    v813 = v1142;
    do
    {
      v815 = *v793;
      v793 += 8;
      v816 = v813 ^ v815;
      v817 = v811 + v812;
      v818 = v817 ^ __ROR8__(v812, 51);
      v819 = v814 + v816;
      v820 = __ROR8__(v816, 48);
      v821 = (v819 ^ v820) + __ROR8__(v817, 32);
      v813 = v821 ^ __ROR8__(v819 ^ v820, 43);
      v822 = v819 + v818;
      v812 = v822 ^ __ROR8__(v818, 47);
      v814 = __ROR8__(v822, 32);
      v1129 = v814;
      v1142 = v813;
      v811 = v821 ^ v815;
      v1103 = v811;
      v1116 = v812;
      v795 -= 8;
      v796 += 8;
    }

    while (v795 > 7);
  }

  v798 = 0;
LABEL_306:
  if (v795)
  {
    v823 = 0;
    v824 = 0;
    v825 = v795;
    do
    {
      v826 = *v793++;
      v824 |= v826 << v823;
      v823 += 8;
      --v825;
    }

    while (v825);
    if (v798)
    {
      v827 = (v824 << (8 * v798)) | ((v795 + v796) << 56) | v797;
    }

    else
    {
      v827 = v824 | ((v795 + v796) << 56);
    }
  }

  else
  {
    if (v798)
    {
      goto LABEL_315;
    }

    v827 = v796 << 56;
  }

  v1155 = v827;
LABEL_315:

  v828 = self->_handoffCorrelationID;
  v829 = [(NSString *)v828 UTF8String];
  v830 = [(NSString *)v828 length];
  v831 = v830;
  v832 = HIBYTE(v1155);
  v833 = v1155 & 0xFFFFFFFFFFFFFFLL;
  v834 = HIBYTE(v1155) & 7;
  if (v834)
  {
    v835 = 8 - v834;
    v836 = v830 - (8 - v834);
    if (v830 < 8 - v834)
    {
      goto LABEL_324;
    }

    v837 = 8 * v834;
    v838 = v829;
    v839 = v1155 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v840 = *v838++;
      v839 |= v840 << v837;
      v837 += 8;
    }

    while (v837 != 64);
    v841 = (v1103 + v1116) ^ __ROR8__(v1116, 51);
    v842 = v1129 + (v1142 ^ v839);
    v843 = __ROR8__(v1142 ^ v839, 48);
    v844 = (v842 ^ v843) + __ROR8__(v1103 + v1116, 32);
    v845 = v844 ^ __ROR8__(v842 ^ v843, 43);
    v846 = v842 + v841;
    v1129 = __ROR8__(v846, 32);
    v1142 = v845;
    v1103 = v844 ^ v839;
    v1116 = v846 ^ __ROR8__(v841, 47);
    v829 += v835;
    v1155 = (v835 + v832) << 56;
    v831 = v836;
  }

  if (v831 >= 8)
  {
    v847 = v1103;
    v850 = v1129;
    v848 = v1116;
    v849 = v1142;
    do
    {
      v851 = *v829;
      v829 += 8;
      v852 = v849 ^ v851;
      v853 = v847 + v848;
      v854 = v853 ^ __ROR8__(v848, 51);
      v855 = v850 + v852;
      v856 = __ROR8__(v852, 48);
      v857 = (v855 ^ v856) + __ROR8__(v853, 32);
      v849 = v857 ^ __ROR8__(v855 ^ v856, 43);
      v858 = v855 + v854;
      v848 = v858 ^ __ROR8__(v854, 47);
      v850 = __ROR8__(v858, 32);
      v1129 = v850;
      v1142 = v849;
      v847 = v857 ^ v851;
      v1103 = v847;
      v1116 = v848;
      v831 -= 8;
      v832 += 8;
    }

    while (v831 > 7);
  }

  v834 = 0;
LABEL_324:
  if (v831)
  {
    v859 = 0;
    v860 = 0;
    v861 = v831;
    do
    {
      v862 = *v829++;
      v860 |= v862 << v859;
      v859 += 8;
      --v861;
    }

    while (v861);
    if (v834)
    {
      v863 = (v860 << (8 * v834)) | ((v831 + v832) << 56) | v833;
    }

    else
    {
      v863 = v860 | ((v831 + v832) << 56);
    }
  }

  else
  {
    if (v834)
    {
      goto LABEL_333;
    }

    v863 = v832 << 56;
  }

  v1155 = v863;
LABEL_333:

  v864 = self->_contentItemID;
  v865 = [(NSString *)v864 UTF8String];
  v866 = [(NSString *)v864 length];
  v867 = v866;
  v868 = HIBYTE(v1155);
  v869 = v1155 & 0xFFFFFFFFFFFFFFLL;
  v870 = HIBYTE(v1155) & 7;
  if (v870)
  {
    v871 = 8 - v870;
    v872 = v866 - (8 - v870);
    if (v866 < 8 - v870)
    {
      goto LABEL_342;
    }

    v873 = 8 * v870;
    v874 = v865;
    v875 = v1155 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v876 = *v874++;
      v875 |= v876 << v873;
      v873 += 8;
    }

    while (v873 != 64);
    v877 = (v1103 + v1116) ^ __ROR8__(v1116, 51);
    v878 = v1129 + (v1142 ^ v875);
    v879 = __ROR8__(v1142 ^ v875, 48);
    v880 = (v878 ^ v879) + __ROR8__(v1103 + v1116, 32);
    v881 = v880 ^ __ROR8__(v878 ^ v879, 43);
    v882 = v878 + v877;
    v1129 = __ROR8__(v882, 32);
    v1142 = v881;
    v1103 = v880 ^ v875;
    v1116 = v882 ^ __ROR8__(v877, 47);
    v865 += v871;
    v1155 = (v871 + v868) << 56;
    v867 = v872;
  }

  if (v867 >= 8)
  {
    v883 = v1103;
    v886 = v1129;
    v884 = v1116;
    v885 = v1142;
    do
    {
      v887 = *v865;
      v865 += 8;
      v888 = v885 ^ v887;
      v889 = v883 + v884;
      v890 = v889 ^ __ROR8__(v884, 51);
      v891 = v886 + v888;
      v892 = __ROR8__(v888, 48);
      v893 = (v891 ^ v892) + __ROR8__(v889, 32);
      v885 = v893 ^ __ROR8__(v891 ^ v892, 43);
      v894 = v891 + v890;
      v884 = v894 ^ __ROR8__(v890, 47);
      v886 = __ROR8__(v894, 32);
      v1129 = v886;
      v1142 = v885;
      v883 = v893 ^ v887;
      v1103 = v883;
      v1116 = v884;
      v867 -= 8;
      v868 += 8;
    }

    while (v867 > 7);
  }

  v870 = 0;
LABEL_342:
  if (v867)
  {
    v895 = 0;
    v896 = 0;
    v897 = v867;
    do
    {
      v898 = *v865++;
      v896 |= v898 << v895;
      v895 += 8;
      --v897;
    }

    while (v897);
    if (v870)
    {
      v899 = (v896 << (8 * v870)) | ((v867 + v868) << 56) | v869;
    }

    else
    {
      v899 = v896 | ((v867 + v868) << 56);
    }
  }

  else
  {
    if (v870)
    {
      goto LABEL_351;
    }

    v899 = v868 << 56;
  }

  v1155 = v899;
LABEL_351:

  v900 = self->_lyricsID;
  v901 = [(NSString *)v900 UTF8String];
  v902 = [(NSString *)v900 length];
  v903 = v902;
  v904 = HIBYTE(v1155);
  v905 = v1155 & 0xFFFFFFFFFFFFFFLL;
  v906 = HIBYTE(v1155) & 7;
  if (v906)
  {
    v907 = 8 - v906;
    v908 = v902 - (8 - v906);
    if (v902 < 8 - v906)
    {
      goto LABEL_360;
    }

    v909 = 8 * v906;
    v910 = v901;
    v911 = v1155 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v912 = *v910++;
      v911 |= v912 << v909;
      v909 += 8;
    }

    while (v909 != 64);
    v913 = (v1103 + v1116) ^ __ROR8__(v1116, 51);
    v914 = v1129 + (v1142 ^ v911);
    v915 = __ROR8__(v1142 ^ v911, 48);
    v916 = (v914 ^ v915) + __ROR8__(v1103 + v1116, 32);
    v917 = v916 ^ __ROR8__(v914 ^ v915, 43);
    v918 = v914 + v913;
    v1129 = __ROR8__(v918, 32);
    v1142 = v917;
    v1103 = v916 ^ v911;
    v1116 = v918 ^ __ROR8__(v913, 47);
    v901 += v907;
    v1155 = (v907 + v904) << 56;
    v903 = v908;
  }

  if (v903 >= 8)
  {
    v919 = v1103;
    v922 = v1129;
    v920 = v1116;
    v921 = v1142;
    do
    {
      v923 = *v901;
      v901 += 8;
      v924 = v921 ^ v923;
      v925 = v919 + v920;
      v926 = v925 ^ __ROR8__(v920, 51);
      v927 = v922 + v924;
      v928 = __ROR8__(v924, 48);
      v929 = (v927 ^ v928) + __ROR8__(v925, 32);
      v921 = v929 ^ __ROR8__(v927 ^ v928, 43);
      v930 = v927 + v926;
      v920 = v930 ^ __ROR8__(v926, 47);
      v922 = __ROR8__(v930, 32);
      v1129 = v922;
      v1142 = v921;
      v919 = v929 ^ v923;
      v1103 = v919;
      v1116 = v920;
      v903 -= 8;
      v904 += 8;
    }

    while (v903 > 7);
  }

  v906 = 0;
LABEL_360:
  if (v903)
  {
    v931 = 0;
    v932 = 0;
    v933 = v903;
    do
    {
      v934 = *v901++;
      v932 |= v934 << v931;
      v931 += 8;
      --v933;
    }

    while (v933);
    if (v906)
    {
      v935 = (v932 << (8 * v906)) | ((v903 + v904) << 56) | v905;
    }

    else
    {
      v935 = v932 | ((v903 + v904) << 56);
    }
  }

  else
  {
    if (v906)
    {
      goto LABEL_369;
    }

    v935 = v904 << 56;
  }

  v1155 = v935;
LABEL_369:

  shouldExcludeFromShuffle = self->_shouldExcludeFromShuffle;
  if ((v1155 & 0x400000000000000) != 0)
  {
    v938 = v1155 & 0xFFFFFFFFFFFFFFLL | (shouldExcludeFromShuffle << 32);
    v939 = (v1103 + v1116) ^ __ROR8__(v1116, 51);
    v940 = v1129 + (v1142 ^ v938);
    v941 = __ROR8__(v1142 ^ v938, 48);
    v942 = (v940 ^ v941) + __ROR8__(v1103 + v1116, 32);
    v943 = v942 ^ __ROR8__(v940 ^ v941, 43);
    v944 = v940 + v939;
    v1129 = __ROR8__(v944, 32);
    v1142 = v943;
    v1103 = v942 ^ v938;
    v1116 = v944 ^ __ROR8__(v939, 47);
    v937 = (v1155 & 0xFF00000000000000) + 0x400000000000000;
  }

  else
  {
    v937 = v1155 | shouldExcludeFromShuffle | 0x400000000000000;
  }

  v1156 = v937;
  placeholder = self->_placeholder;
  if ((v937 & 0x400000000000000) != 0)
  {
    v947 = v937 & 0xFFFFFFFFFFFFFFLL | (placeholder << 32);
    v948 = (v1103 + v1116) ^ __ROR8__(v1116, 51);
    v949 = v1129 + (v1142 ^ v947);
    v950 = __ROR8__(v1142 ^ v947, 48);
    v951 = (v949 ^ v950) + __ROR8__(v1103 + v1116, 32);
    v952 = v951 ^ __ROR8__(v949 ^ v950, 43);
    v953 = v949 + v948;
    v1129 = __ROR8__(v953, 32);
    v1142 = v952;
    v1103 = v951 ^ v947;
    v1116 = v953 ^ __ROR8__(v948, 47);
    v946 = (v1156 & 0xFF00000000000000) + 0x400000000000000;
  }

  else
  {
    v946 = v937 | placeholder | 0x400000000000000;
  }

  v1157 = v946;
  v954 = self->_vendorID;
  v955 = [(NSString *)v954 UTF8String];
  v956 = [(NSString *)v954 length];
  v957 = v956;
  v958 = HIBYTE(v1157);
  v959 = v1157 & 0xFFFFFFFFFFFFFFLL;
  v960 = HIBYTE(v1157) & 7;
  if (v960)
  {
    v961 = 8 - v960;
    v962 = v956 - (8 - v960);
    if (v956 < 8 - v960)
    {
      goto LABEL_384;
    }

    v963 = 8 * v960;
    v964 = v955;
    v965 = v1157 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v966 = *v964++;
      v965 |= v966 << v963;
      v963 += 8;
    }

    while (v963 != 64);
    v967 = (v1103 + v1116) ^ __ROR8__(v1116, 51);
    v968 = v1129 + (v1142 ^ v965);
    v969 = __ROR8__(v1142 ^ v965, 48);
    v970 = (v968 ^ v969) + __ROR8__(v1103 + v1116, 32);
    v971 = v970 ^ __ROR8__(v968 ^ v969, 43);
    v972 = v968 + v967;
    v1129 = __ROR8__(v972, 32);
    v1142 = v971;
    v1103 = v970 ^ v965;
    v1116 = v972 ^ __ROR8__(v967, 47);
    v955 += v961;
    v1157 = (v961 + v958) << 56;
    v957 = v962;
  }

  if (v957 >= 8)
  {
    v973 = v1103;
    v976 = v1129;
    v974 = v1116;
    v975 = v1142;
    do
    {
      v977 = *v955;
      v955 += 8;
      v978 = v975 ^ v977;
      v979 = v973 + v974;
      v980 = v979 ^ __ROR8__(v974, 51);
      v981 = v976 + v978;
      v982 = __ROR8__(v978, 48);
      v983 = (v981 ^ v982) + __ROR8__(v979, 32);
      v975 = v983 ^ __ROR8__(v981 ^ v982, 43);
      v984 = v981 + v980;
      v974 = v984 ^ __ROR8__(v980, 47);
      v976 = __ROR8__(v984, 32);
      v1129 = v976;
      v1142 = v975;
      v973 = v983 ^ v977;
      v1103 = v973;
      v1116 = v974;
      v957 -= 8;
      v958 += 8;
    }

    while (v957 > 7);
  }

  v960 = 0;
LABEL_384:
  if (v957)
  {
    v985 = 0;
    v986 = 0;
    v987 = v957;
    do
    {
      v988 = *v955++;
      v986 |= v988 << v985;
      v985 += 8;
      --v987;
    }

    while (v987);
    if (v960)
    {
      v989 = (v986 << (8 * v960)) | ((v957 + v958) << 56) | v959;
    }

    else
    {
      v989 = v986 | ((v957 + v958) << 56);
    }
  }

  else
  {
    if (v960)
    {
      goto LABEL_393;
    }

    v989 = v958 << 56;
  }

  v1157 = v989;
LABEL_393:

  v990 = self->_opaqueID;
  v991 = [(NSString *)v990 UTF8String];
  v992 = [(NSString *)v990 length];
  v993 = v992;
  v994 = HIBYTE(v1157);
  v995 = v1157 & 0xFFFFFFFFFFFFFFLL;
  v996 = HIBYTE(v1157) & 7;
  if (v996)
  {
    v997 = 8 - v996;
    v998 = v992 - (8 - v996);
    if (v992 < 8 - v996)
    {
      goto LABEL_402;
    }

    v999 = 8 * v996;
    v1000 = v991;
    v1001 = v1157 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v1002 = *v1000++;
      v1001 |= v1002 << v999;
      v999 += 8;
    }

    while (v999 != 64);
    v1003 = (v1103 + v1116) ^ __ROR8__(v1116, 51);
    v1004 = v1129 + (v1142 ^ v1001);
    v1005 = __ROR8__(v1142 ^ v1001, 48);
    v1006 = (v1004 ^ v1005) + __ROR8__(v1103 + v1116, 32);
    v1007 = v1006 ^ __ROR8__(v1004 ^ v1005, 43);
    v1008 = v1004 + v1003;
    v1129 = __ROR8__(v1008, 32);
    v1142 = v1007;
    v1103 = v1006 ^ v1001;
    v1116 = v1008 ^ __ROR8__(v1003, 47);
    v991 += v997;
    v1157 = (v997 + v994) << 56;
    v993 = v998;
  }

  if (v993 >= 8)
  {
    v1009 = v1103;
    v1012 = v1129;
    v1010 = v1116;
    v1011 = v1142;
    do
    {
      v1013 = *v991;
      v991 += 8;
      v1014 = v1011 ^ v1013;
      v1015 = v1009 + v1010;
      v1016 = v1015 ^ __ROR8__(v1010, 51);
      v1017 = v1012 + v1014;
      v1018 = __ROR8__(v1014, 48);
      v1019 = (v1017 ^ v1018) + __ROR8__(v1015, 32);
      v1011 = v1019 ^ __ROR8__(v1017 ^ v1018, 43);
      v1020 = v1017 + v1016;
      v1010 = v1020 ^ __ROR8__(v1016, 47);
      v1012 = __ROR8__(v1020, 32);
      v1129 = v1012;
      v1142 = v1011;
      v1009 = v1019 ^ v1013;
      v1103 = v1009;
      v1116 = v1010;
      v993 -= 8;
      v994 += 8;
    }

    while (v993 > 7);
  }

  v996 = 0;
LABEL_402:
  if (v993)
  {
    v1021 = 0;
    v1022 = 0;
    v1023 = v993;
    do
    {
      v1024 = *v991++;
      v1022 |= v1024 << v1021;
      v1021 += 8;
      --v1023;
    }

    while (v1023);
    if (v996)
    {
      v1025 = (v1022 << (8 * v996)) | ((v993 + v994) << 56) | v995;
    }

    else
    {
      v1025 = v1022 | ((v993 + v994) << 56);
    }
  }

  else
  {
    if (v996)
    {
      goto LABEL_411;
    }

    v1025 = v994 << 56;
  }

  v1157 = v1025;
LABEL_411:

  v1026 = self->_versionHash;
  v1027 = [(NSString *)v1026 UTF8String];
  v1028 = [(NSString *)v1026 length];
  v1029 = v1028;
  v1030 = HIBYTE(v1157);
  v1031 = v1157 & 0xFFFFFFFFFFFFFFLL;
  v1032 = HIBYTE(v1157) & 7;
  if (v1032)
  {
    v1033 = 8 - v1032;
    v1034 = v1028 - (8 - v1032);
    if (v1028 < 8 - v1032)
    {
      goto LABEL_420;
    }

    v1035 = 8 * v1032;
    v1036 = v1027;
    v1037 = v1157 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v1038 = *v1036++;
      v1037 |= v1038 << v1035;
      v1035 += 8;
    }

    while (v1035 != 64);
    v1039 = (v1103 + v1116) ^ __ROR8__(v1116, 51);
    v1040 = v1129 + (v1142 ^ v1037);
    v1041 = __ROR8__(v1142 ^ v1037, 48);
    v1042 = (v1040 ^ v1041) + __ROR8__(v1103 + v1116, 32);
    v1043 = v1042 ^ __ROR8__(v1040 ^ v1041, 43);
    v1044 = v1040 + v1039;
    v1129 = __ROR8__(v1044, 32);
    v1142 = v1043;
    v1103 = v1042 ^ v1037;
    v1116 = v1044 ^ __ROR8__(v1039, 47);
    v1027 += v1033;
    v1157 = (v1033 + v1030) << 56;
    v1029 = v1034;
  }

  if (v1029 >= 8)
  {
    v1045 = v1103;
    v1048 = v1129;
    v1046 = v1116;
    v1047 = v1142;
    do
    {
      v1049 = *v1027;
      v1027 += 8;
      v1050 = v1047 ^ v1049;
      v1051 = v1045 + v1046;
      v1052 = v1051 ^ __ROR8__(v1046, 51);
      v1053 = v1048 + v1050;
      v1054 = __ROR8__(v1050, 48);
      v1055 = (v1053 ^ v1054) + __ROR8__(v1051, 32);
      v1047 = v1055 ^ __ROR8__(v1053 ^ v1054, 43);
      v1056 = v1053 + v1052;
      v1046 = v1056 ^ __ROR8__(v1052, 47);
      v1048 = __ROR8__(v1056, 32);
      v1129 = v1048;
      v1142 = v1047;
      v1045 = v1055 ^ v1049;
      v1103 = v1045;
      v1116 = v1046;
      v1029 -= 8;
      v1030 += 8;
    }

    while (v1029 > 7);
  }

  v1032 = 0;
LABEL_420:
  if (v1029)
  {
    v1057 = 0;
    v1058 = 0;
    v1059 = v1029;
    do
    {
      v1060 = *v1027++;
      v1058 |= v1060 << v1057;
      v1057 += 8;
      --v1059;
    }

    while (v1059);
    if (v1032)
    {
      v1061 = (v1058 << (8 * v1032)) | ((v1029 + v1030) << 56) | v1031;
    }

    else
    {
      v1061 = v1058 | ((v1029 + v1030) << 56);
    }

    goto LABEL_428;
  }

  if (!v1032)
  {
    v1061 = v1030 << 56;
LABEL_428:
    v1157 = v1061;
  }

  v1062 = (v1103 + v1116) ^ __ROR8__(v1116, 51);
  v1063 = v1129 + (v1142 ^ v1157);
  v1064 = __ROR8__(v1142 ^ v1157, 48);
  v1065 = (v1063 ^ v1064) + __ROR8__(v1103 + v1116, 32);
  v1066 = v1065 ^ __ROR8__(v1063 ^ v1064, 43);
  v1067 = v1063 + v1062;
  v1068 = v1067 ^ __ROR8__(v1062, 47);
  v1069 = (v1065 ^ v1157) + v1068;
  v1070 = v1069 ^ __ROR8__(v1068, 51);
  v1071 = (__ROR8__(v1067, 32) ^ 0xFFLL) + v1066;
  v1072 = __ROR8__(v1066, 48);
  v1073 = __ROR8__(v1069, 32) + (v1071 ^ v1072);
  v1074 = v1073 ^ __ROR8__(v1071 ^ v1072, 43);
  v1075 = v1070 + v1071;
  v1076 = v1075 ^ __ROR8__(v1070, 47);
  v1077 = v1076 + v1073;
  v1078 = v1077 ^ __ROR8__(v1076, 51);
  v1079 = __ROR8__(v1075, 32) + v1074;
  v1080 = __ROR8__(v1074, 48);
  v1081 = __ROR8__(v1077, 32) + (v1079 ^ v1080);
  v1082 = v1081 ^ __ROR8__(v1079 ^ v1080, 43);
  v1083 = v1078 + v1079;
  v1084 = v1083 ^ __ROR8__(v1078, 47);
  v1085 = v1084 + v1081;
  v1086 = v1085 ^ __ROR8__(v1084, 51);
  v1087 = __ROR8__(v1083, 32) + v1082;
  v1088 = __ROR8__(v1082, 48);
  v1089 = __ROR8__(v1085, 32) + (v1087 ^ v1088);
  return (v1086 + v1087) ^ __ROR8__(v1086, 47) ^ v1089 ^ __ROR8__(v1086 + v1087, 32) ^ v1089 ^ __ROR8__(v1087 ^ v1088, 43);
}

- (NSString)humanDescription
{
  v3 = +[MPIdentifierSet emptyIdentifierSet];

  if (v3 == self)
  {
    v9 = @"<MPIdentifierSet EMPTY>";
  }

  else
  {
    v4 = [(MPIdentifierSet *)self identifierDescriptions:1];
    v5 = [v4 count];
    v6 = MEMORY[0x1E696AEC0];
    if (v5)
    {
      v7 = [v4 componentsJoinedByString:@" "];
      v8 = [(NSArray *)self->_sources msv_compactDescription];
      v9 = [v6 stringWithFormat:@"(%@) from [%@]", v7, v8];
    }

    else
    {
      v7 = [(NSArray *)self->_sources msv_compactDescription];
      v9 = [v6 stringWithFormat:@"<MPIdentifierSet EMPTY (not-singleton) sources=[%@]>", v7];
    }
  }

  return v9;
}

- (NSString)description
{
  v3 = +[MPIdentifierSet emptyIdentifierSet];

  if (v3 == self)
  {
    v10 = @"<MPIdentifierSet EMPTY>";
  }

  else
  {
    v4 = [(MPIdentifierSet *)self identifierDescriptions:0];
    v5 = [v4 count];
    v6 = MEMORY[0x1E696AEC0];
    if (v5)
    {
      v7 = objc_opt_class();
      v8 = [(NSArray *)self->_sources msv_compactDescription];
      v9 = [v4 componentsJoinedByString:@" "];;
      v10 = [v6 stringWithFormat:@"<%@ sources=[%@] %@>", v7, v8, v9];
    }

    else
    {
      v8 = [(NSArray *)self->_sources msv_compactDescription];
      v10 = [v6 stringWithFormat:@"<MPIdentifierSet EMPTY (not-singleton) sources=[%@]>", v8];
    }
  }

  return v10;
}

- (id)_copyWithSources:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc(objc_opt_class());
  v9 = [(MPIdentifierSet *)self sources];
  v10 = [v9 arrayByAddingObjectsFromArray:v7];

  v11 = [(MPIdentifierSet *)self modelKind];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__MPIdentifierSet__copyWithSources_block___block_invoke;
  v15[3] = &unk_1E767FA50;
  v15[4] = self;
  v16 = v6;
  v12 = v6;
  v13 = [v8 _initWithSources:v10 modelKind:v11 block:v15];

  return v13;
}

void __42__MPIdentifierSet__copyWithSources_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v40 = a2;
  v4 = [v3 modelKind];
  v5 = *(v40 + 35);
  *(v40 + 35) = v4;

  v6 = [*(a1 + 32) databaseID];
  v7 = *(v40 + 2);
  *(v40 + 2) = v6;

  *(v40 + 3) = [*(a1 + 32) persistentID];
  *(v40 + 4) = [*(a1 + 32) containedPersistentID];
  *(v40 + 5) = *(*(a1 + 32) + 40);
  *(v40 + 34) = [*(a1 + 32) musicKit_possibleLibraryPersistentID];
  v8 = [*(a1 + 32) personID];
  v9 = *(v40 + 6);
  *(v40 + 6) = v8;

  *(v40 + 7) = [*(a1 + 32) cloudID];
  v10 = [*(a1 + 32) cloudAlbumID];
  v11 = *(v40 + 8);
  *(v40 + 8) = v10;

  v12 = [*(a1 + 32) cloudArtistID];
  v13 = *(v40 + 9);
  *(v40 + 9) = v12;

  v14 = [*(a1 + 32) recommendationID];
  v15 = *(v40 + 10);
  *(v40 + 10) = v14;

  objc_storeStrong(v40 + 11, *(*(a1 + 32) + 88));
  *(v40 + 12) = [*(a1 + 32) adamID];
  v16 = [*(a1 + 32) formerAdamIDs];
  v17 = *(v40 + 13);
  *(v40 + 13) = v16;

  v18 = [*(a1 + 32) universalCloudLibraryID];
  v19 = *(v40 + 14);
  *(v40 + 14) = v18;

  *(v40 + 15) = [*(a1 + 32) purchasedAdamID];
  *(v40 + 16) = [*(a1 + 32) subscriptionAdamID];
  objc_storeStrong(v40 + 17, *(*(a1 + 32) + 136));
  objc_storeStrong(v40 + 18, *(*(a1 + 32) + 144));
  objc_storeStrong(v40 + 19, *(*(a1 + 32) + 152));
  *(v40 + 20) = *(*(a1 + 32) + 160);
  *(v40 + 21) = *(*(a1 + 32) + 168);
  *(v40 + 22) = *(*(a1 + 32) + 176);
  v20 = [*(a1 + 32) stationStringID];
  v21 = *(v40 + 23);
  *(v40 + 23) = v20;

  v22 = [*(a1 + 32) stationHash];
  v23 = *(v40 + 24);
  *(v40 + 24) = v22;

  *(v40 + 25) = [*(a1 + 32) stationID];
  v24 = [*(a1 + 32) stationEventID];
  v25 = *(v40 + 26);
  *(v40 + 26) = v24;

  v26 = [*(a1 + 32) containerUniqueID];
  v27 = *(v40 + 27);
  *(v40 + 27) = v26;

  v28 = [*(a1 + 32) handoffCorrelationID];
  v29 = *(v40 + 28);
  *(v40 + 28) = v28;

  v30 = [*(a1 + 32) contentItemID];
  v31 = *(v40 + 29);
  *(v40 + 29) = v30;

  v32 = [*(a1 + 32) lyricsID];
  v33 = *(v40 + 30);
  *(v40 + 30) = v32;

  *(v40 + 8) = [*(a1 + 32) shouldExcludeFromShuffle];
  *(v40 + 9) = [*(a1 + 32) isPlaceholder];
  v34 = [*(a1 + 32) vendorID];
  v35 = *(v40 + 31);
  *(v40 + 31) = v34;

  v36 = [*(a1 + 32) opaqueID];
  v37 = *(v40 + 32);
  *(v40 + 32) = v36;

  v38 = [*(a1 + 32) versionHash];
  v39 = *(v40 + 33);
  *(v40 + 33) = v38;

  (*(*(a1 + 40) + 16))();
}

- (id)copyWithSource:(id)a3 musicKitBlock:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [(MPIdentifierSet *)self _copyWithSources:v9 block:v7, v12, v13];
  return v10;
}

- (id)copyWithSource:(id)a3 block:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [(MPIdentifierSet *)self _copyWithSources:v9 block:v7, v12, v13];
  return v10;
}

- (MPIdentifierSet)initWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[MPModelKind unknownKind];
  v6 = [(MPIdentifierSet *)self _initWithSources:&unk_1F150AB88 modelKind:v5 block:v4];

  return v6;
}

- (MPIdentifierSet)initWithSource:(id)a3 modelKind:(id)a4 block:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v15 count:1];

  v13 = [(MPIdentifierSet *)self _initWithSources:v12 modelKind:v10 block:v9, v15, v16];
  return v13;
}

- (MPIdentifierSet)initWithSource:(id)a3 modelKind:(id)a4 musicKitBlock:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v15 count:1];

  v13 = [(MPIdentifierSet *)self _initWithSources:v12 modelKind:v10 block:v9, v15, v16];
  return v13;
}

- (id)_initWithSources:(id)a3 modelKind:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = MPIdentifierSet;
  v11 = [(MPIdentifierSet *)&v16 init];
  if (v11)
  {
    v12 = [v8 copy];
    sources = v11->_sources;
    v11->_sources = v12;

    objc_storeStrong(&v11->_modelKind, a4);
    formerAdamIDs = v11->_formerAdamIDs;
    v11->_formerAdamIDs = MEMORY[0x1E695E0F0];

    v10[2](v10, v11);
  }

  return v11;
}

+ (MPIdentifierSet)emptyIdentifierSet
{
  if (emptyIdentifierSet_sOnceToken != -1)
  {
    dispatch_once(&emptyIdentifierSet_sOnceToken, &__block_literal_global_46749);
  }

  v3 = emptyIdentifierSet_sEmptyIdentifierSet;

  return v3;
}

void __37__MPIdentifierSet_emptyIdentifierSet__block_invoke()
{
  v0 = [MPIdentifierSet alloc];
  v3 = +[MPModelKind unknownKind];
  v1 = [(MPIdentifierSet *)v0 _initWithSources:&unk_1F150AB40 modelKind:v3 block:&__block_literal_global_8_46752];
  v2 = emptyIdentifierSet_sEmptyIdentifierSet;
  emptyIdentifierSet_sEmptyIdentifierSet = v1;
}

@end