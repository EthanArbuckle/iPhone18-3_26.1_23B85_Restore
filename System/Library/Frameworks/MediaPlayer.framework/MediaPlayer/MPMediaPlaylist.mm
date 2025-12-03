@interface MPMediaPlaylist
+ (BOOL)_isValidPlaylistProperty:(id)property;
+ (BOOL)canFilterByProperty:(id)property;
+ (void)_createFilterableDictionary;
- (BOOL)existsInLibrary;
- (BOOL)isCloudMix;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFavoriteSongsPlaylist;
- (MPMediaEntityPersistentID)persistentID;
- (MPMediaPlaylist)initWithCoder:(id)coder;
- (MPMediaPlaylist)initWithMultiverseIdentifier:(id)identifier library:(id)library;
- (MPMediaPlaylist)initWithPersistentID:(unint64_t)d;
- (MPMediaPlaylist)initWithPersistentID:(unint64_t)d mediaLibrary:(id)library;
- (MPMediaPlaylistAttribute)playlistAttributes;
- (id)artworkCatalog;
- (id)artworkCatalogsWithMaximumCount:(unint64_t)count;
- (id)items;
- (id)multiverseIdentifier;
- (id)representativeArtists;
- (id)representativeItem;
- (id)seedTracksQuery;
- (id)tiledArtworkCatalogWithRows:(unint64_t)rows columns:(unint64_t)columns;
- (id)valueForProperty:(id)property;
- (unint64_t)count;
- (unint64_t)mediaTypes;
- (void)addItemWithProductID:(NSString *)productID completionHandler:(void *)completionHandler;
- (void)addMediaItems:(NSArray *)mediaItems completionHandler:(void *)completionHandler;
- (void)encodeWithCoder:(id)coder;
- (void)removeArtworkWithSourceType:(int64_t)type;
- (void)removeFirstItem;
- (void)setUserSelectedArtworkImage:(id)image;
@end

@implementation MPMediaPlaylist

+ (void)_createFilterableDictionary
{
  v9 = *MEMORY[0x1E69E9840];
  if (!__filterableDictionary_19618)
  {
    v8 = 0u;
    v7 = 0u;
    v6 = 0u;
    v5 = 0u;
    v4 = 0u;
    keys[0] = [@"playlistPersistentID" hash];
    keys[1] = [@"name" hash];
    keys[2] = [@"playlistAttributes" hash];
    keys[3] = [@"seedItems" hash];
    keys[4] = [@"dateCreated" hash];
    keys[5] = [@"dateModified" hash];
    keys[6] = [@"datePlayed" hash];
    keys[7] = [@"datePlayedLocal" hash];
    keys[8] = [@"isWorkoutMix" hash];
    keys[9] = [@"isGeniusMix" hash];
    keys[10] = [@"isGeniusPlaylist" hash];
    keys[11] = [@"geniusMixRepresentativeArtists" hash];
    keys[12] = [@"isVoiceMemos" hash];
    keys[13] = [@"isActivePlaylist" hash];
    keys[14] = [@"isActiveGeniusPlaylist" hash];
    keys[15] = [@"isActiveOnTheGoPlaylist" hash];
    keys[16] = [@"isDeletable" hash];
    keys[17] = [@"isUserEditable" hash];
    keys[18] = [@"isHidden" hash];
    keys[19] = [@"descriptionInfo" hash];
    keys[20] = [@"iO" hash];
    keys[21] = [@"isEditable" hash];
    keys[22] = [@"playCount" hash];
    keys[23] = [@"playCountSinceSync" hash];
    keys[24] = [@"likedState" hash];
    keys[25] = [@"parentPersistentID" hash];
    keys[26] = [@"isFolder" hash];
    keys[27] = [@"isPurchasesPlaylist" hash];
    keys[28] = [@"isCurrentDevicePurchasesPlaylist" hash];
    keys[29] = [@"isPlaybackHistoryPlaylist" hash];
    keys[30] = [@"isIgnoredSyncing" hash];
    keys[31] = [@"hasItems" hash];
    keys[32] = [@"storeCloudID" hash];
    keys[33] = [@"isLimitedDynamicSmartPlaylist" hash];
    keys[34] = [@"mediaType" hash];
    keys[35] = [@"entityRevision" hash];
    keys[36] = [@"cloudGlobalID" hash];
    keys[37] = [@"cloudVersionHash" hash];
    keys[38] = [@"cloudShareURL" hash];
    keys[39] = [@"cloudIsPublic" hash];
    keys[40] = [@"cloudIsVisible" hash];
    keys[41] = [@"cloudIsSubscribed" hash];
    keys[42] = [@"cloudIsCuratorPlaylist" hash];
    keys[43] = [@"cloudAuthorStoreID" hash];
    *&v4 = [@"cloudAuthorDisplayName" hash];
    *(&v4 + 1) = [@"cloudAuthorStoreURL" hash];
    *&v5 = [@"cloudUserCount" hash];
    *(&v5 + 1) = [@"cloudGlobalPlayCount" hash];
    *&v6 = [@"cloudGlobalLikeCount" hash];
    *(&v6 + 1) = [@"distinguishedKind" hash];
    *&v7 = [@"isITunesSynced" hash];
    *(&v7 + 1) = [@"externalVendorContainerTag" hash];
    *&v8 = [@"isExternalVendorPlaylist" hash];
    *(&v8 + 1) = [@"cloudPlaylistUniversalLibraryID" hash];
    memcpy(__dst, &unk_1A273EE98, sizeof(__dst));
    __filterableDictionary_19618 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, __dst, 54, 0, 0);
  }
}

- (id)artworkCatalogsWithMaximumCount:(unint64_t)count
{
  if (count)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    v6 = [MEMORY[0x1E695DFA8] setWithCapacity:count];
    itemsQuery = [(MPMediaItemCollection *)self itemsQuery];
    v8 = [itemsQuery copy];

    v9 = +[MPMediaItem artworkCatalogCacheProperties];
    [v8 setItemPropertiesToFetch:v9];

    [v8 setShouldIncludeNonLibraryEntities:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__MPMediaPlaylist_MPArtworkCatalog__artworkCatalogsWithMaximumCount___block_invoke;
    v15[3] = &unk_1E7675600;
    v16 = v6;
    v10 = v5;
    v17 = v10;
    countCopy = count;
    v11 = v6;
    [v8 _enumerateItemsUsingBlock:v15];
    v12 = v17;
    v13 = v10;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

void __69__MPMediaPlaylist_MPArtworkCatalog__artworkCatalogsWithMaximumCount___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 artworkCatalog];
  if (v5)
  {
    v6 = [v7 valueForProperty:@"albumPID"];
    if (([*(a1 + 32) containsObject:v6] & 1) == 0)
    {
      [*(a1 + 40) addObject:v5];
      [*(a1 + 32) addObject:v6];
    }
  }

  if ([*(a1 + 40) count] == *(a1 + 48))
  {
    *a3 = 1;
  }
}

- (id)tiledArtworkCatalogWithRows:(unint64_t)rows columns:(unint64_t)columns
{
  v7 = objc_alloc_init(MPTiledArtworkRequest);
  [(MPTiledArtworkRequest *)v7 setNumberOfColumns:rows];
  [(MPTiledArtworkRequest *)v7 setNumberOfRows:columns];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__MPMediaPlaylist_MPArtworkCatalog__tiledArtworkCatalogWithRows_columns___block_invoke;
  v16[3] = &unk_1E767EB38;
  v16[4] = self;
  [(MPTiledArtworkRequest *)v7 setArtworkCatalogsBlock:v16];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPMediaPlaylist persistentID](self, "persistentID")}];
  [(MPTiledArtworkRequest *)v7 setEntityIdentifier:v8];

  [(MPTiledArtworkRequest *)v7 setNamespaceIdentifier:@"MPMediaPlaylist"];
  v9 = MEMORY[0x1E696AD98];
  mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
  v11 = [v9 numberWithUnsignedLongLong:{objc_msgSend(mediaLibrary, "currentEntityRevision")}];
  [(MPTiledArtworkRequest *)v7 setRevisionIdentifier:v11];

  v12 = [MPArtworkCatalog alloc];
  v13 = +[MPTiledArtworkDataSource sharedDataSource];
  v14 = [(MPArtworkCatalog *)v12 initWithToken:v7 dataSource:v13];

  return v14;
}

- (id)artworkCatalog
{
  v3 = [MPMediaLibraryArtworkRequest alloc];
  mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
  v5 = [(MPMediaLibraryArtworkRequest *)v3 initWithLibrary:mediaLibrary identifier:[(MPMediaPlaylist *)self persistentID] entityType:1 artworkType:5];

  v6 = [MPArtworkCatalog alloc];
  mediaLibrary2 = [(MPMediaEntity *)self mediaLibrary];
  artworkDataSource = [mediaLibrary2 artworkDataSource];
  v9 = [(MPArtworkCatalog *)v6 initWithToken:v5 dataSource:artworkDataSource];

  mediaLibrary3 = [(MPMediaEntity *)self mediaLibrary];
  artworkDataSource2 = [mediaLibrary3 artworkDataSource];
  LODWORD(artworkDataSource) = [artworkDataSource2 areRepresentationsAvailableForCatalog:v9];

  if (artworkDataSource)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)removeArtworkWithSourceType:(int64_t)type
{
  mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
  [mediaLibrary removeArtworkForEntityPersistentID:-[MPMediaPlaylist persistentID](self entityType:"persistentID") artworkType:1 sourceType:{5, type}];
}

- (void)setUserSelectedArtworkImage:(id)image
{
  v83[0] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (!imageCopy)
  {
    goto LABEL_65;
  }

  mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
  isHomeSharingLibrary = [mediaLibrary isHomeSharingLibrary];

  if (isHomeSharingLibrary)
  {
    goto LABEL_65;
  }

  mediaLibrary2 = [(MPMediaEntity *)self mediaLibrary];
  v8 = UIImageJPEGRepresentation(imageCopy, *MEMORY[0x1E69B1368]);
  memset(v74, 0, sizeof(v74));
  CC_SHA256_Init(v74);
  v9 = v8;
  CC_SHA256_Update(v74, [v9 bytes], objc_msgSend(v9, "length"));

  memset(&v79[8], 0, 64);
  *v79 = 4256;
  CC_SHA256_Final(&v79[8], v74);
  v80[0] = *v79;
  v80[1] = *&v79[16];
  v80[2] = *&v79[32];
  v80[3] = *&v79[48];
  v81 = *&v79[64];
  if (*v79 > 3999)
  {
    if (*v79 > 4255)
    {
      if (*v79 == 4256)
      {
        v51 = v80 + 8;
        v52 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v53 = v52;
        for (i = 0; i != 64; i += 2)
        {
          v55 = *v51++;
          v56 = &v52[i];
          *v56 = MSVFastHexStringFromBytes_hexCharacters_55966[v55 >> 4];
          v56[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v55 & 0xF];
        }

        v22 = objc_alloc(MEMORY[0x1E696AEC0]);
        v23 = v53;
        v24 = 64;
      }

      else
      {
        if (*v79 != 4512)
        {
          goto LABEL_60;
        }

        v29 = v80 + 8;
        v30 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v31 = v30;
        for (j = 0; j != 128; j += 2)
        {
          v33 = *v29++;
          v34 = &v30[j];
          *v34 = MSVFastHexStringFromBytes_hexCharacters_55966[v33 >> 4];
          v34[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v33 & 0xF];
        }

        v22 = objc_alloc(MEMORY[0x1E696AEC0]);
        v23 = v31;
        v24 = 128;
      }
    }

    else if (*v79 == 4000)
    {
      v41 = v80 + 8;
      v42 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v43 = v42;
      for (k = 0; k != 32; k += 2)
      {
        v45 = *v41++;
        v46 = &v42[k];
        *v46 = MSVFastHexStringFromBytes_hexCharacters_55966[v45 >> 4];
        v46[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v45 & 0xF];
      }

      v22 = objc_alloc(MEMORY[0x1E696AEC0]);
      v23 = v43;
      v24 = 32;
    }

    else
    {
      if (*v79 != 4001)
      {
        goto LABEL_60;
      }

      v16 = v80 + 8;
      v17 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v18 = v17;
      for (m = 0; m != 40; m += 2)
      {
        v20 = *v16++;
        v21 = &v17[m];
        *v21 = MSVFastHexStringFromBytes_hexCharacters_55966[v20 >> 4];
        v21[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v20 & 0xF];
      }

      v22 = objc_alloc(MEMORY[0x1E696AEC0]);
      v23 = v18;
      v24 = 40;
    }

LABEL_49:
    v40 = [v22 initWithBytesNoCopy:v23 length:v24 encoding:4 freeWhenDone:1];
    goto LABEL_50;
  }

  if (*v79 > 2999)
  {
    if (*v79 == 3000)
    {
      LODWORD(v82[0]) = bswap32(DWORD2(v80[0]));
      v47 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v48 = 0;
      v49 = v47 + 1;
      do
      {
        v50 = *(v82 + v48);
        *(v49 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v50 >> 4];
        *v49 = MSVFastHexStringFromBytes_hexCharacters_55966[v50 & 0xF];
        v49 += 2;
        ++v48;
      }

      while (v48 != 4);
      v22 = objc_alloc(MEMORY[0x1E696AEC0]);
      v23 = v47;
      v24 = 8;
    }

    else
    {
      if (*v79 != 3001)
      {
        goto LABEL_60;
      }

      v82[0] = bswap64(*(&v80[0] + 1));
      v25 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v26 = 0;
      v27 = v25 + 1;
      do
      {
        v28 = *(v82 + v26);
        *(v27 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v28 >> 4];
        *v27 = MSVFastHexStringFromBytes_hexCharacters_55966[v28 & 0xF];
        v27 += 2;
        ++v26;
      }

      while (v26 != 8);
      v22 = objc_alloc(MEMORY[0x1E696AEC0]);
      v23 = v25;
      v24 = 16;
    }

    goto LABEL_49;
  }

  if (*v79 == 1000)
  {
    v35 = *(&v80[0] + 1);
    if (*(&v80[0] + 1))
    {
      v36 = v83 + 1;
      quot = *(&v80[0] + 1);
      do
      {
        v38 = lldiv(quot, 10);
        quot = v38.quot;
        if (v38.rem >= 0)
        {
          LOBYTE(v39) = v38.rem;
        }

        else
        {
          v39 = -v38.rem;
        }

        *(v36 - 2) = v39 + 48;
        v15 = (v36 - 2);
        --v36;
      }

      while (v38.quot);
      if (v35 < 0)
      {
        *(v36 - 2) = 45;
        v15 = (v36 - 2);
      }

      v14 = (v83 - v15);
      goto LABEL_39;
    }

LABEL_66:
    v57 = @"0";
    goto LABEL_51;
  }

  if (*v79 != 2000)
  {
LABEL_60:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [currentHandler handleFailureInFunction:v71 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v57 = &stru_1F149ECA8;
    goto LABEL_51;
  }

  v10 = DWORD2(v80[0]);
  if (!DWORD2(v80[0]))
  {
    goto LABEL_66;
  }

  v11 = v83;
  do
  {
    v12 = ldiv(v10, 10);
    v10 = v12.quot;
    if (v12.rem >= 0)
    {
      LOBYTE(v13) = v12.rem;
    }

    else
    {
      v13 = -v12.rem;
    }

    *(v11 - 1) = v13 + 48;
    v11 = (v11 - 1);
  }

  while (v12.quot);
  v14 = (v83 - v11);
  v15 = v11;
LABEL_39:
  v40 = CFStringCreateWithBytes(0, v15, v14, 0x8000100u, 0);
LABEL_50:
  v57 = v40;
LABEL_51:

  [mediaLibrary2 importArtworkTokenForEntityPersistentID:-[MPMediaPlaylist persistentID](self entityType:"persistentID") artworkToken:1 artworkType:v57 sourceType:{5, 100}];
  mediaLibrary3 = [(MPMediaEntity *)self mediaLibrary];
  representativeItem = [(MPMediaPlaylist *)self representativeItem];
  v60 = [mediaLibrary3 importOriginalArtworkFromImageData:v9 withArtworkToken:v57 artworkType:5 sourceType:100 mediaType:{objc_msgSend(representativeItem, "mediaType")}];

  if (v60)
  {
    v73 = imageCopy;
    libraryDataProvider = [mediaLibrary2 libraryDataProvider];
    objc_opt_class();
    v62 = v9;
    if (objc_opt_isKindOfClass())
    {
      library = [libraryDataProvider library];
    }

    else
    {
      library = 0;
    }

    [library notifyDisplayValuesPropertyDidChange];
    userIdentity = [mediaLibrary2 userIdentity];
    v65 = [MPCloudController controllerWithUserIdentity:userIdentity];

    if ([v65 isCloudEnabled])
    {
      [v65 uploadArtworkForPlaylist:self completionHandler:0];
    }

    v66 = [(MPMediaPlaylist *)self valueForProperty:@"coverArtworkRecipe"];
    if (([@"{version:0.0}" isEqualToString:v66] & 1) == 0)
    {
      v72 = mediaLibrary2;
      [(MPMediaItemCollection *)self setValue:@"{version:0.0}" forProperty:@"coverArtworkRecipe"];
      v67 = [(MPMediaPlaylist *)self valueForProperty:@"isCollaborative"];

      if (v67)
      {
        persistentID = [(MPMediaPlaylist *)self persistentID];
        v77 = @"coverArtworkRecipe";
        v78 = @"{version:0.0}";
        v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        [v65 editCollaborationWithPersistentID:persistentID properties:v69 trackEdits:MEMORY[0x1E695E0F0] completion:&__block_literal_global_19576];
      }

      else
      {
        v75 = @"coverArtworkRecipe";
        v76 = @"{version:0.0}";
        v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        [v65 setPlaylistProperties:v69 trackList:0 forPlaylistWithPersistentID:-[MPMediaPlaylist persistentID](self completionHandler:{"persistentID"), &__block_literal_global_211}];
      }

      mediaLibrary2 = v72;
    }

    v9 = v62;
    imageCopy = v73;
  }

LABEL_65:
}

- (BOOL)isCloudMix
{
  v2 = [(MPMediaPlaylist *)self valueForProperty:@"storeCloudID"];
  v3 = [v2 longLongValue] != 0;

  return v3;
}

- (id)seedTracksQuery
{
  seedTracksQuery = self->_seedTracksQuery;
  if (!seedTracksQuery)
  {
    v4 = objc_alloc_init(MPMediaQuery);
    v5 = self->_seedTracksQuery;
    self->_seedTracksQuery = v4;

    v6 = [(MPMediaPlaylist *)self valueForProperty:@"playlistPersistentID"];
    v7 = [MPMediaPropertyPredicate predicateWithValue:v6 forProperty:@"playlistPersistentID"];
    [(MPMediaQuery *)self->_seedTracksQuery addFilterPredicate:v7];

    seedTracksQuery = self->_seedTracksQuery;
  }

  return seedTracksQuery;
}

- (id)representativeArtists
{
  v24 = *MEMORY[0x1E69E9840];
  representativeArtists = self->_representativeArtists;
  if (!representativeArtists)
  {
    v4 = [(MPMediaPlaylist *)self valueForProperty:@"descriptionInfo"];
    allObjects2 = [v4 componentsSeparatedByString:{@", , , "}];

    if (!allObjects2)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:3];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      seedTracksQuery = [(MPMediaPlaylist *)self seedTracksQuery];
      items = [seedTracksQuery items];

      v9 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(items);
            }

            v13 = [*(*(&v19 + 1) + 8 * i) valueForProperty:@"albumArtist"];
            if ([v13 length])
            {
              [v6 addObject:v13];
              if ([v6 count] >= 3)
              {

                goto LABEL_14;
              }
            }
          }

          v10 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      if ([v6 count])
      {
        allObjects = [v6 allObjects];
        v15 = [allObjects componentsJoinedByString:{@", , , "}];
        [(MPMediaItemCollection *)self setValue:v15 forProperty:@"descriptionInfo" withCompletionBlock:0];

        allObjects2 = [v6 allObjects];
      }

      else
      {
        allObjects2 = 0;
      }
    }

    if ([allObjects2 count] < 4)
    {
      v16 = allObjects2;
    }

    else
    {
      v16 = [allObjects2 subarrayWithRange:{0, 3}];
    }

    v17 = self->_representativeArtists;
    self->_representativeArtists = v16;

    representativeArtists = self->_representativeArtists;
  }

  return representativeArtists;
}

- (id)multiverseIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:452 description:@"subclass must implement"];

  return 0;
}

- (id)representativeItem
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:447 description:@"subclass must implement"];

  return 0;
}

- (unint64_t)mediaTypes
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:442 description:@"subclass must implement"];

  return -1;
}

- (unint64_t)count
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:437 description:@"subclass must implement"];

  return 0;
}

- (id)items
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:432 description:@"subclass must implement"];

  return 0;
}

- (void)removeFirstItem
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:297 description:@"subclass must implement"];
}

- (BOOL)isFavoriteSongsPlaylist
{
  v2 = [(MPMediaPlaylist *)self valueForProperty:@"distinguishedKind"];
  v3 = [v2 intValue] == 71;

  return v3;
}

- (MPMediaPlaylistAttribute)playlistAttributes
{
  v2 = [(MPMediaPlaylist *)self valueForProperty:@"playlistAttributes"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (MPMediaEntityPersistentID)persistentID
{
  v2 = [(MPMediaPlaylist *)self valueForProperty:@"playlistPersistentID"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (BOOL)existsInLibrary
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:260 description:@"subclass must implement"];

  return 1;
}

- (void)addMediaItems:(NSArray *)mediaItems completionHandler:(void *)completionHandler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:254 description:@"subclass must implement"];
}

- (void)addItemWithProductID:(NSString *)productID completionHandler:(void *)completionHandler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:251 description:@"subclass must implement"];
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  v6 = [objc_opt_class() _isValidPlaylistProperty:propertyCopy];

  if (v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:246 description:@"subclass must implement"];
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:222 description:@"subclass must implement"];
}

- (MPMediaPlaylist)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:217 description:@"subclass must implement"];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    persistentID = [(MPMediaPlaylist *)self persistentID];
    v6 = persistentID == [equalCopy persistentID];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MPMediaPlaylist;
    v6 = [(MPMediaItemCollection *)&v8 isEqual:equalCopy];
  }

  return v6;
}

- (MPMediaPlaylist)initWithMultiverseIdentifier:(id)identifier library:(id)library
{
  v46 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  libraryCopy = library;
  mediaObjectType = [identifierCopy mediaObjectType];
  if (mediaObjectType != 7)
  {
    v34 = mediaObjectType;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaPlaylist.m" lineNumber:130 description:{@"Playlist was initialized with a multiverse identifier containing the wrong object type (%d)", v34}];
  }

  libraryIdentifiers = [identifierCopy libraryIdentifiers];
  v37 = identifierCopy;
  v11 = malloc_type_malloc(8 * [identifierCopy libraryIdentifiersCount], 0x100004000313F17uLL);
  v39 = libraryCopy;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = libraryIdentifiers;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
  obj = v12;
  if (!v13)
  {

    v15 = 0;
    v40 = 0;
    goto LABEL_18;
  }

  v14 = v13;
  selfCopy = self;
  v15 = 0;
  v16 = *v42;
  v17 = 1;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v42 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v41 + 1) + 8 * i);
      v11[v15] = [v19 libraryId];
      libraryName = [v19 libraryName];
      if (![libraryName length])
      {

LABEL_12:
        v17 = 0;
        goto LABEL_13;
      }

      libraryName2 = [v19 libraryName];
      uniqueIdentifier = [v39 uniqueIdentifier];
      v23 = [libraryName2 isEqualToString:uniqueIdentifier];

      if ((v23 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v15;
    }

    v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v14);

  v40 = 0;
  self = selfCopy;
  if ((v17 & 1) == 0)
  {
    free(v11);
    v24 = v37;
    goto LABEL_19;
  }

LABEL_18:
  v25 = [v39 collectionExistsContainedWithinPersistentIDs:v11 count:v15 groupingType:6 existentPID:&v40];
  free(v11);
  v24 = v37;
  if (v25)
  {
LABEL_29:
    self = [(MPMediaPlaylist *)self initWithPersistentID:v40];
    selfCopy2 = self;
  }

  else
  {
LABEL_19:
    if ([v24 hasSagaId] && objc_msgSend(v24, "sagaId") && (objc_msgSend(v39, "collectionExistsWithSagaID:groupingType:existentPID:", objc_msgSend(v24, "sagaId"), 6, &v40) & 1) != 0)
    {
      goto LABEL_29;
    }

    if ([v24 hasCloudUniversalLibraryId])
    {
      cloudUniversalLibraryId = [v24 cloudUniversalLibraryId];
      v27 = [cloudUniversalLibraryId length];

      if (v27)
      {
        cloudUniversalLibraryId2 = [v24 cloudUniversalLibraryId];
        v29 = [v39 collectionExistsWithCloudUniversalLibraryID:cloudUniversalLibraryId2 groupingType:6 existentPID:&v40];

        if (v29)
        {
          goto LABEL_29;
        }
      }
    }

    if ([v24 hasStoreId] && objc_msgSend(v24, "storeId") && (objc_msgSend(v39, "collectionExistsWithStoreID:groupingType:existentPID:", objc_msgSend(v24, "storeId"), 6, &v40) & 1) != 0)
    {
      goto LABEL_29;
    }

    name = [v24 name];
    v31 = [v39 collectionExistsWithName:name groupingType:6 existentPID:&v40];

    if (v31)
    {
      goto LABEL_29;
    }

    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (MPMediaPlaylist)initWithPersistentID:(unint64_t)d mediaLibrary:(id)library
{
  v5 = [library playlistWithPersistentID:d];

  return v5;
}

- (MPMediaPlaylist)initWithPersistentID:(unint64_t)d
{
  v5 = +[MPMediaLibrary defaultMediaLibrary];
  v6 = [(MPMediaPlaylist *)self initWithPersistentID:d mediaLibrary:v5];

  return v6;
}

+ (BOOL)_isValidPlaylistProperty:(id)property
{
  propertyCopy = property;
  v5 = __filterableDictionary_19618;
  if (!__filterableDictionary_19618)
  {
    [self _createFilterableDictionary];
    v5 = __filterableDictionary_19618;
  }

  v6 = CFDictionaryContainsKey(v5, [propertyCopy hash]) != 0;

  return v6;
}

+ (BOOL)canFilterByProperty:(id)property
{
  propertyCopy = property;
  v5 = __filterableDictionary_19618;
  if (!__filterableDictionary_19618)
  {
    [self _createFilterableDictionary];
    v5 = __filterableDictionary_19618;
  }

  if (CFDictionaryGetValue(v5, [propertyCopy hash]))
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___MPMediaPlaylist;
    v6 = objc_msgSendSuper2(&v8, sel_canFilterByProperty_, propertyCopy);
  }

  return v6;
}

@end