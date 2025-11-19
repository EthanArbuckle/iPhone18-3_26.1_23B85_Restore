@interface MPMediaKitInitPropertyAlbumMap
@end

@implementation MPMediaKitInitPropertyAlbumMap

void ___MPMediaKitInitPropertyAlbumMap_block_invoke_20(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = [a2 objectForKeyedSubscript:@"genreNames"];
  v6 = [v7 firstObject];
  [v5 setObject:v6 forKeyedSubscript:@"name"];
}

void ___MPMediaKitInitPropertyAlbumMap_block_invoke_19(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 valueForKeyPath:@"relationships.artists.data.id.@firstObject"];
  [v5 setIdentifier:v7];

  v9 = [v6 valueForKeyPath:@"attributes.artistName"];

  v8 = [v5 attributes];

  [v8 setObject:v9 forKeyedSubscript:@"name"];
}

void *___MPMediaKitInitPropertyAlbumMap_block_invoke_18(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.classicalUrl"];
  if (v2)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = MEMORY[0x1E695E110];
  }

  v4 = v3;

  return v3;
}

id ___MPMediaKitInitPropertyAlbumMap_block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForKeyPath:@"attributes.isMasteredForItunes"];
  LODWORD(v4) = [v3 BOOLValue];

  v4 = v4;
  v5 = +[MPCloudController sharedCloudController];
  v6 = [v5 isEnhancedAudioAvailable];

  if (v6)
  {
    v7 = [v2 valueForKeyPath:@"attributes.audioTraits"];
    if ([v7 containsObject:@"spatial"])
    {
      v4 = v4 | 8;
    }

    if ([v7 containsObject:@"atmos"])
    {
      v4 |= 0x10uLL;
    }

    if ([v7 containsObject:@"surround"])
    {
      v4 |= 0x20uLL;
    }

    if ([v7 containsObject:@"lossless"])
    {
      v4 |= 2uLL;
    }

    if ([v7 containsObject:@"hi-res-lossless"])
    {
      v4 |= 4uLL;
    }
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];

  return v8;
}

id ___MPMediaKitInitPropertyAlbumMap_block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 valueForKeyPath:@"relationships.tracks.data"];
  v51 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v50 = v4;
  v54 = v5;
  if (v6)
  {
    v7 = [v6 firstObject];
    if (_NSIsNSDictionary())
    {
      v8 = [v6 firstObject];
      v9 = [v8 valueForKeyPath:@"meta.popularity"];

      if (v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  else
  {
    v10 = [MPIdentifierSet alloc];
    v11 = +[MPModelAlbumKind identityKind];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = ___MPMediaKitInitPropertyAlbumMap_block_invoke_10;
    v67[3] = &unk_1E767EE00;
    v68 = v4;
    v12 = v5;
    v69 = v12;
    v13 = [(MPIdentifierSet *)v10 initWithSource:@"MediaAPI" modelKind:v11 block:v67];

    v14 = [v12 relationshipPayloadProvider];
    v15 = [v14 payloadForRelatedEntityWithIdentifierSet:v13];

    v6 = [v15 valueForKeyPath:@"relationships.tracks.data"];
  }

  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v6;
  v17 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v64;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v64 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v63 + 1) + 8 * i);
        v22 = [MPIdentifierSet alloc];
        v23 = +[MPModelSongKind identityKind];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = ___MPMediaKitInitPropertyAlbumMap_block_invoke_13;
        v61[3] = &unk_1E767EE00;
        v61[4] = v21;
        v24 = v54;
        v62 = v24;
        v25 = [(MPIdentifierSet *)v22 initWithSource:@"MediaAPI" modelKind:v23 block:v61];

        v26 = [v24 relationshipPayloadProvider];
        v27 = [v26 payloadForRelatedEntityWithIdentifierSet:v25];

        if (v27)
        {
          [v16 addObject:v27];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v18);
  }

  v6 = [v16 copy];
LABEL_17:
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obja = v6;
  v28 = [obja countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v58;
    do
    {
      v31 = 0;
      do
      {
        if (*v58 != v30)
        {
          objc_enumerationMutation(obja);
        }

        v32 = *(*(&v57 + 1) + 8 * v31);
        v33 = [v32 valueForKeyPath:@"id"];
        v34 = MEMORY[0x1E696AD98];
        v35 = v33;
        if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          v36 = [v35 longLongValue];
        }

        else
        {
          v36 = 0;
        }

        v37 = [v34 numberWithLongLong:v36];
        v38 = [v32 valueForKeyPath:@"meta.popularity"];
        v39 = MEMORY[0x1E696AD98];
        v40 = v38;
        if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (v41 = 0.0, (objc_opt_respondsToSelector()))
        {
          [v40 doubleValue];
          v41 = v42;
        }

        v43 = [v39 numberWithDouble:v41];
        if (v43)
        {
          v44 = v37 == 0;
        }

        else
        {
          v44 = 1;
        }

        if (!v44)
        {
          [v51 setObject:v43 forKeyedSubscript:v37];
        }

        ++v31;
      }

      while (v29 != v31);
      v45 = [obja countByEnumeratingWithState:&v57 objects:v70 count:16];
      v29 = v45;
    }

    while (v45);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___MPMediaKitInitPropertyAlbumMap_block_invoke_16;
  aBlock[3] = &unk_1E767E4B0;
  v56 = v51;
  v46 = v51;
  v47 = _Block_copy(aBlock);
  v48 = _Block_copy(v47);

  return v48;
}

void ___MPMediaKitInitPropertyAlbumMap_block_invoke_10(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___MPMediaKitInitPropertyAlbumMap_block_invoke_11;
  v6[3] = &unk_1E767FAA0;
  v7 = *(a1 + 32);
  v4 = a2;
  [v4 setUniversalStoreIdentifiersWithBlock:v6];
  v5 = [*(a1 + 40) personID];
  [v4 setPersonalStoreIdentifiersWithPersonID:v5 block:&__block_literal_global_332];
}

void ___MPMediaKitInitPropertyAlbumMap_block_invoke_13(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___MPMediaKitInitPropertyAlbumMap_block_invoke_14;
  v5[3] = &unk_1E767FAA0;
  v5[4] = *(a1 + 32);
  v3 = a2;
  [v3 setUniversalStoreIdentifiersWithBlock:v5];
  v4 = [*(a1 + 40) personID];
  [v3 setPersonalStoreIdentifiersWithPersonID:v4 block:&__block_literal_global_336];
}

id ___MPMediaKitInitPropertyAlbumMap_block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 universalStore];
  v5 = [v4 adamID];

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
  v8 = [v6 objectForKey:v7];

  return v8;
}

void ___MPMediaKitInitPropertyAlbumMap_block_invoke_14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 objectForKeyedSubscript:@"id"];
  if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v4 = [v5 longLongValue];
  }

  else
  {
    v4 = 0;
  }

  [v3 setAdamID:v4];
}

void ___MPMediaKitInitPropertyAlbumMap_block_invoke_11(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 objectForKeyedSubscript:@"id"];
  if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v4 = [v5 longLongValue];
  }

  else
  {
    v4 = 0;
  }

  [v3 setAdamID:v4];
}

id ___MPMediaKitInitPropertyAlbumMap_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.releaseDate"];
  v3 = _MPMediaKitDateFromString(v2);

  if (v3)
  {
    v4 = _MPMediaKitCalendar();
    v5 = [v4 component:4 fromDate:v3];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];

  return v6;
}

id ___MPMediaKitInitPropertyAlbumMap_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.releaseDate"];
  v3 = _MPMediaKitDateFromString(v2);

  if (v3)
  {
    v4 = _MPMediaKitCalendar();
    v5 = [v4 components:1048606 fromDate:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id ___MPMediaKitInitPropertyAlbumMap_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.contentRating"];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isEqualToString:", @"explicit"}];

  return v3;
}

id ___MPMediaKitInitPropertyAlbumMap_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.contentRating"];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isEqualToString:", @"clean"}];

  return v3;
}

void ___MPMediaKitInitPropertyAlbumMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = ___MPMediaKitInitPropertyAlbumMap_block_invoke_2;
  v16 = &unk_1E767F058;
  v17 = v6;
  v18 = v7;
  v8 = v7;
  v9 = v6;
  v10 = a4;
  [v10 setUniversalStoreIdentifiersWithBlock:&v13];
  v11 = [v8 personID];
  [v10 setPersonalStoreIdentifiersWithPersonID:v11 block:&__block_literal_global_243];

  v12 = [v9 valueForKeyPath:@"attributes.versionHash"];
  [v10 setVersionHash:v12];
}

void ___MPMediaKitInitPropertyAlbumMap_block_invoke_2(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"_MPMKT_transformedType";
  v11[1] = @"type";
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v11 count:2];
  v6 = _MPKeyPathValueTransformFirstNonnullKeyPath(v5, *(a1 + 32));

  LODWORD(v5) = [v6 isEqual:@"library-albums"];
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"id"];
  v8 = v7;
  if (v5)
  {
    [v4 setUniversalCloudLibraryID:v7];
  }

  else
  {
    v9 = v7;
    if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v10 = [v9 longLongValue];
    }

    else
    {
      v10 = 0;
    }

    [v4 setAdamID:v10];
  }
}

@end