@interface MPModelStoreRadioMusicKitRequestOperation
- (id)additionalCatalogURLQueryItems;
- (id)additionalURLRequestsWithStoreURLBag:(id)a3;
- (id)groupingNameWithMusicSubscriptionDictionary:(id)a3;
- (id)radioStationWithDictionary:(id)a3;
- (id)recentlyPlayedItemWithDictionary:(id)a3;
- (id)recentlyPlayedItemsWithAPILoadedOutput:(id)a3;
- (id)recentlyPlayedSectionWithTitle:(id)a3;
- (id)recentlyPlayedURLWithStoreURLBag:(id)a3;
- (id)rootObjectIdentifierWithSubscriptionStatus:(int64_t)a3;
- (int64_t)radioStationSubTypeFromSubType:(id)a3;
- (int64_t)radioStationTypeFromKind:(id)a3;
- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4;
@end

@implementation MPModelStoreRadioMusicKitRequestOperation

- (id)radioStationWithDictionary:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__MPModelStoreRadioMusicKitRequestOperation_radioStationWithDictionary___block_invoke;
  aBlock[3] = &unk_1E7680B28;
  v5 = v4;
  v18 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [MPModelRadioStation alloc];
  v8 = [MPIdentifierSet alloc];
  v9 = +[MPModelRadioStationKind identityKind];
  v10 = [(MPIdentifierSet *)v8 initWithSource:@"StorePlatform" modelKind:v9 block:v6];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__MPModelStoreRadioMusicKitRequestOperation_radioStationWithDictionary___block_invoke_3;
  v14[3] = &unk_1E767EC90;
  v15 = v5;
  v16 = self;
  v11 = v5;
  v12 = [(MPModelObject *)v7 initWithIdentifiers:v10 block:v14];

  return v12;
}

void __72__MPModelStoreRadioMusicKitRequestOperation_radioStationWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 radio];
  v5 = [v4 stationStringID];

  if (!v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__MPModelStoreRadioMusicKitRequestOperation_radioStationWithDictionary___block_invoke_2;
    v6[3] = &unk_1E7680C00;
    v7 = *(a1 + 32);
    [v3 setRadioIdentifiersWithBlock:v6];
  }
}

void __72__MPModelStoreRadioMusicKitRequestOperation_radioStationWithDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:@"attributes"];
  if (_NSIsNSDictionary())
  {
    v12 = [v4 ic_stringValueForKey:@"name"];
    [v3 setName:?];
    v11 = [v4 ic_stringValueForKey:@"kind"];
    [v3 setType:{objc_msgSend(*(a1 + 40), "radioStationTypeFromKind:")}];
    v5 = [v4 ic_stringValueForKey:@"streamingRadioSubType"];
    [v3 setSubtype:{objc_msgSend(*(a1 + 40), "radioStationSubTypeFromSubType:", v5)}];
    v6 = [v4 ic_dictionaryValueForKey:@"editorialNotes"];
    v7 = [v6 ic_stringValueForKey:@"standard"];
    [v3 setEditorNotes:v7];
    v8 = [v6 ic_stringValueForKey:@"short"];
    [v3 setShortEditorNotes:v8];
    v9 = [v4 objectForKey:@"isLive"];
    if (objc_opt_respondsToSelector())
    {
      [v3 setLive:{objc_msgSend(v9, "BOOLValue")}];
    }

    v10 = [v4 ic_stringValueForKey:@"stationProviderName"];
    [v3 setProviderName:v10];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__MPModelStoreRadioMusicKitRequestOperation_radioStationWithDictionary___block_invoke_4;
    v15[3] = &unk_1E767EC58;
    v16 = v4;
    [v3 setArtworkCatalogBlock:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__MPModelStoreRadioMusicKitRequestOperation_radioStationWithDictionary___block_invoke_5;
    v13[3] = &unk_1E767EC58;
    v14 = *(a1 + 32);
    [v3 setEditorialArtworkCatalogBlock:v13];
  }
}

MPArtworkCatalog *__72__MPModelStoreRadioMusicKitRequestOperation_radioStationWithDictionary___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc_init(MPStoreArtworkRequestToken);
  v3 = [*(a1 + 32) objectForKey:@"artwork"];
  if (_NSIsNSDictionary())
  {
    v4 = [MPStoreItemMetadata artworkRequestTokenForStorePlatformArtworkValue:v3];

    v2 = v4;
  }

  if (v2)
  {
    [(MPStoreArtworkRequestToken *)v2 setCropStyle:*MEMORY[0x1E69E4250]];
    v5 = [MPArtworkCatalog alloc];
    v6 = +[MPStoreArtworkDataSource sharedStoreArtworkDataSource];
    v7 = [(MPArtworkCatalog *)v5 initWithToken:v2 dataSource:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

MPArtworkCatalog *__72__MPModelStoreRadioMusicKitRequestOperation_radioStationWithDictionary___block_invoke_5(uint64_t a1)
{
  v1 = [[MPStoreItemMetadata alloc] initWithStoreMusicAPIDictionary:*(a1 + 32)];
  v2 = [(MPStoreItemMetadata *)v1 artworkRequestTokenForEditorialArtworkKind:@"backgroundStatic1x1"];

  if (v2)
  {
    [v2 setCropStyle:*MEMORY[0x1E69E4250]];
    v3 = [MPArtworkCatalog alloc];
    v4 = +[MPStoreArtworkDataSource sharedStoreArtworkDataSource];
    v5 = [(MPArtworkCatalog *)v3 initWithToken:v2 dataSource:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __72__MPModelStoreRadioMusicKitRequestOperation_radioStationWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 objectForKeyedSubscript:@"id"];
  v4 = MPStoreItemMetadataStringNormalizeStoreIDValue(v5);
  [v3 setStationStringID:v4];
}

- (id)recentlyPlayedItemWithDictionary:(id)a3
{
  v4 = a3;
  v5 = +[MPIdentifierSet emptyIdentifierSet];
  v6 = [(MPModelStoreRadioMusicKitRequestOperation *)self radioStationWithDictionary:v4];

  v7 = [MPModelStoreBrowseContentItem alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__MPModelStoreRadioMusicKitRequestOperation_recentlyPlayedItemWithDictionary___block_invoke;
  v11[3] = &unk_1E767CCE8;
  v12 = v6;
  v8 = v6;
  v9 = [(MPModelObject *)v7 initWithIdentifiers:v5 block:v11];

  return v9;
}

void __78__MPModelStoreRadioMusicKitRequestOperation_recentlyPlayedItemWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setItemType:5];
  [v3 setDetailedItemType:8];
  [v3 setRadioStation:*(a1 + 32)];
}

- (id)recentlyPlayedItemsWithAPILoadedOutput:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  if (_NSIsNSDictionary())
  {
    v6 = [v4 objectForKeyedSubscript:@"data"];
    if (_NSIsNSArray())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [(MPModelStoreRadioMusicKitRequestOperation *)self recentlyPlayedItemWithDictionary:*(*(&v15 + 1) + 8 * i), v15];
            [v5 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }

      v13 = [v5 copy];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)radioStationSubTypeFromSubType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Episode"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Shoutcast"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)radioStationTypeFromKind:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"albumSeeded"])
  {
    v4 = 10;
  }

  else
  {
    if ([v3 isEqualToString:@"artistOnly"])
    {
      goto LABEL_4;
    }

    if ([v3 isEqualToString:@"artistSeeded"])
    {
      v4 = 2;
      goto LABEL_13;
    }

    if ([v3 isEqualToString:@"editorial"])
    {
      v4 = 6;
      goto LABEL_13;
    }

    if ([v3 isEqualToString:@"format"])
    {
      v4 = 5;
      goto LABEL_13;
    }

    if ([v3 isEqualToString:@"genre"])
    {
      v4 = 7;
      goto LABEL_13;
    }

    if ([v3 isEqualToString:@"libraryPlaylistSeeded"])
    {
      goto LABEL_4;
    }

    if ([v3 isEqualToString:@"playlistSeeded"])
    {
      v4 = 9;
      goto LABEL_13;
    }

    if ([v3 isEqualToString:@"query"])
    {
LABEL_4:
      v4 = 0;
    }

    else if ([v3 isEqualToString:@"songSeeded"])
    {
      v4 = 1;
    }

    else if ([v3 isEqualToString:@"streaming"])
    {
      v4 = 4;
    }

    else if ([v3 isEqualToString:@"user"])
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_13:

  return v4;
}

- (id)recentlyPlayedSectionWithTitle:(id)a3
{
  v3 = a3;
  v4 = [MPModelStoreBrowseSection alloc];
  v5 = +[MPIdentifierSet emptyIdentifierSet];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__MPModelStoreRadioMusicKitRequestOperation_recentlyPlayedSectionWithTitle___block_invoke;
  v9[3] = &unk_1E767CCC0;
  v10 = v3;
  v6 = v3;
  v7 = [(MPModelObject *)v4 initWithIdentifiers:v5 block:v9];

  return v7;
}

void __76__MPModelStoreRadioMusicKitRequestOperation_recentlyPlayedSectionWithTitle___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setTitle:v2];
  [v3 setDisplaysAsGridCellInCarPlay:1];
  [v3 setSectionType:9];
  [v3 setLoadAdditionalContentURL:0];
}

- (id)rootObjectIdentifierWithSubscriptionStatus:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E767CD20[a3 - 1];
  }
}

- (id)recentlyPlayedURLWithStoreURLBag:(id)a3
{
  v3 = MusicURLComponentsWithURLBag(a3, 0);
  [v3 setPath:@"/v1/me/recent/radio-stations"];
  v4 = [v3 URL];

  return v4;
}

- (id)groupingNameWithMusicSubscriptionDictionary:(id)a3
{
  v4 = a3;
  v5 = [(MPModelStoreRadioMusicKitRequestOperation *)self groupingNameBagKey];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"radio";
  }

  v8 = v7;

  return v7;
}

- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPStoreModelRequestOperation *)self request];
  if ([v8 additionalContent] == 1)
  {
    if ((_NSIsNSArray() & 1) == 0)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];
      v7[2](v7, 0, v13);

      goto LABEL_9;
    }

    v9 = v6;
    if ([v9 count] != 2)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];
      v7[2](v7, 0, v14);

      goto LABEL_9;
    }

    v10 = [v9 firstObject];
    v11 = [v9 lastObject];
  }

  else
  {
    v10 = v6;
    v11 = 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__MPModelStoreRadioMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke;
  v16[3] = &unk_1E767CC98;
  v17 = v8;
  v18 = self;
  v19 = v11;
  v20 = v7;
  v15.receiver = self;
  v15.super_class = MPModelStoreRadioMusicKitRequestOperation;
  v12 = v11;
  [(MPModelStoreGroupingsMusicKitRequestOperation *)&v15 produceResponseWithLoadedOutput:v10 completion:v16];

LABEL_9:
}

void __88__MPModelStoreRadioMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__38634;
  v27 = __Block_byref_object_dispose__38635;
  v28 = 0;
  v7 = [v5 results];
  v8 = [v7 mutableCopy];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__MPModelStoreRadioMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke_19;
  v18[3] = &unk_1E767CC48;
  v18[4] = &v19;
  v18[5] = &v23;
  [v8 enumerateSectionsUsingBlock:v18];
  if (v20[3] == 0x7FFFFFFFFFFFFFFFLL || ([v8 removeSectionAtIndex:?], objc_msgSend(*(a1 + 32), "additionalContent") != 1))
  {
    v10 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) recentlyPlayedItemsWithAPILoadedOutput:*(a1 + 48)];
    if ([v9 count])
    {
      v10 = [*(a1 + 40) recentlyPlayedSectionWithTitle:v24[5]];
      if (v10)
      {
        [v8 insertSection:v10 atIndex:v20[3]];
      }

      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __88__MPModelStoreRadioMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke_2;
      v15 = &unk_1E767CC70;
      v16 = v8;
      v17 = &v19;
      [v9 enumerateObjectsUsingBlock:&v12];
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = [v8 copy];
  [v5 setResults:v11];

  (*(*(a1 + 56) + 16))();
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v23, 8);
}

void __88__MPModelStoreRadioMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke_19(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 sectionType] == 9)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    v7 = [v10 title];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

void __88__MPModelStoreRadioMusicKitRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AC88];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = a2;
  v8 = [v4 indexPathForItem:a3 inSection:v6];
  [v5 insertItem:v7 atIndexPath:v8];
}

- (id)additionalCatalogURLQueryItems
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AF60] queryItemWithName:@"include" value:@"stations"];
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"include[stations]" value:@"events"];
  v8[1] = v3;
  v4 = [MEMORY[0x1E696AF60] queryItemWithName:@"extend" value:@"editorialArtwork"];
  v8[2] = v4;
  v5 = [MEMORY[0x1E696AF60] queryItemWithName:@"art[editorial-elements:url]" value:@"f"];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

- (id)additionalURLRequestsWithStoreURLBag:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPStoreModelRequestOperation *)self request];
  if ([v5 additionalContent] == 1)
  {
    v6 = MEMORY[0x1E696AF68];
    v7 = [(MPModelStoreRadioMusicKitRequestOperation *)self recentlyPlayedURLWithStoreURLBag:v4];
    v8 = [v6 requestWithURL:v7];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

@end