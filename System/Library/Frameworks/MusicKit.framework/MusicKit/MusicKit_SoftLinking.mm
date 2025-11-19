@interface MusicKit_SoftLinking
+ (BOOL)_isEntitledToUserDSID;
+ (double)luminanceForColor:(CGColor *)a3;
+ (id)_identifierSetWithCatalogID:(id)a3 libraryID:(id)a4 cloudAlbumLibraryID:(id)a5 cloudID:(id)a6 reportingAdamID:(id)a7 purchasedAdamID:(id)a8 assetAdamID:(id)a9 deviceLocalID:(id)a10 possibleDeviceLocalID:(id)a11 occurrenceID:(id)a12 containedDeviceLocalID:(id)a13 syncID:(id)a14 playbackID:(id)a15 formerIDs:(id)a16 modelObjectType:(int64_t)a17 source:(int64_t)a18;
+ (id)artworkCatalogWithCoverArtworkToken:(id)a3;
+ (id)artworkCatalogWithDataSourceShortDescription:(id)a3 dataSourceIdentifier:(id)a4 tokenParameters:(id)a5;
+ (id)artworkCatalogWithStoreArtworkToken:(id)a3;
+ (id)emptyIdentifierSet;
+ (id)identifierSetWithCatalogID:(id)a3 libraryID:(id)a4 cloudAlbumLibraryID:(id)a5 cloudID:(id)a6 reportingAdamID:(id)a7 purchasedAdamID:(id)a8 assetAdamID:(id)a9 deviceLocalID:(id)a10 occurrenceID:(id)a11 containedDeviceLocalID:(id)a12 syncID:(id)a13 playbackID:(id)a14 formerIDs:(id)a15 modelObjectType:(int64_t)a16 source:(int64_t)a17;
+ (id)identifierSetWithIdentifier:(id)a3 modelObjectType:(int64_t)a4 specificLibraryDatabaseID:(id)a5 isPossibleLibraryPersistentID:(BOOL)a6 source:(int64_t)a7;
+ (id)rawSourceFromSource:(int64_t)a3;
+ (id)recentlySearchedArchivedDataForUnderlyingIdentifierSet:(id)a3 modelObjectType:(int64_t)a4 error:(id *)a5;
+ (id)recentlySearchedUnarchiveUnderlyingIdentifierSetWithData:(id)a3 error:(id *)a4;
+ (id)storeArtworkTokenWithImageArtworkInfo:(id)a3 cropStyle:(id)a4;
+ (int64_t)audioTraitsForRawValue:(int64_t)a3;
+ (int64_t)rawValueForAudioTraits:(int64_t)a3;
@end

@implementation MusicKit_SoftLinking

+ (id)_identifierSetWithCatalogID:(id)a3 libraryID:(id)a4 cloudAlbumLibraryID:(id)a5 cloudID:(id)a6 reportingAdamID:(id)a7 purchasedAdamID:(id)a8 assetAdamID:(id)a9 deviceLocalID:(id)a10 possibleDeviceLocalID:(id)a11 occurrenceID:(id)a12 containedDeviceLocalID:(id)a13 syncID:(id)a14 playbackID:(id)a15 formerIDs:(id)a16 modelObjectType:(int64_t)a17 source:(int64_t)a18
{
  v52 = a3;
  v23 = a4;
  v50 = a5;
  v49 = a6;
  v54 = a7;
  v53 = a8;
  v24 = a9;
  v46 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = [MusicKit_SoftLinking_MPModelKind _modelKindForModelObjectType:a17];
  v44 = v29;
  v45 = v24;
  v51 = v28;
  if (v31)
  {
    v43 = [a1 rawSourceFromSource:a18];
    v42 = objc_alloc(getMPIdentifierSetClass());
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __295__MusicKit_SoftLinking_MusicKit_SoftLinking_MPIdentifierSet___identifierSetWithCatalogID_libraryID_cloudAlbumLibraryID_cloudID_reportingAdamID_purchasedAdamID_assetAdamID_deviceLocalID_possibleDeviceLocalID_occurrenceID_containedDeviceLocalID_syncID_playbackID_formerIDs_modelObjectType_source___block_invoke;
    v55[3] = &unk_278229B20;
    v56 = v52;
    v57 = v23;
    v58 = v54;
    v59 = v53;
    v32 = v26;
    v60 = v24;
    v61 = v30;
    v62 = v26;
    v33 = v25;
    v63 = v46;
    v34 = v27;
    v64 = v27;
    v65 = v28;
    v70 = a1;
    v66 = v25;
    v67 = v29;
    v35 = v50;
    v68 = v50;
    v36 = v30;
    v37 = v49;
    v69 = v49;
    v38 = v46;
    v39 = v32;
    v48 = [v42 initWithSource:v43 modelKind:v31 musicKitBlock:v55];

    v40 = v52;
  }

  else
  {
    [a1 emptyIdentifierSet];
    v33 = v25;
    v39 = v26;
    v34 = v27;
    v48 = v38 = v46;
    v40 = v52;
    v36 = v30;
    v37 = v49;
    v35 = v50;
  }

  return v48;
}

+ (id)identifierSetWithCatalogID:(id)a3 libraryID:(id)a4 cloudAlbumLibraryID:(id)a5 cloudID:(id)a6 reportingAdamID:(id)a7 purchasedAdamID:(id)a8 assetAdamID:(id)a9 deviceLocalID:(id)a10 occurrenceID:(id)a11 containedDeviceLocalID:(id)a12 syncID:(id)a13 playbackID:(id)a14 formerIDs:(id)a15 modelObjectType:(int64_t)a16 source:(int64_t)a17
{
  v37 = a15;
  v34 = a14;
  v32 = a13;
  v29 = a12;
  v31 = a11;
  v41 = a10;
  v19 = a9;
  v30 = a8;
  v20 = a7;
  v21 = a6;
  v36 = a5;
  v39 = a4;
  v22 = a3;
  v23 = objc_opt_class();
  v24 = v21;
  v25 = v21;
  v26 = v20;
  v27 = [v23 _identifierSetWithCatalogID:v22 libraryID:v39 cloudAlbumLibraryID:v36 cloudID:v24 reportingAdamID:v20 purchasedAdamID:v30 assetAdamID:v19 deviceLocalID:v41 possibleDeviceLocalID:0 occurrenceID:v31 containedDeviceLocalID:v29 syncID:v32 playbackID:v34 formerIDs:v37 modelObjectType:a16 source:a17];

  return v27;
}

+ (id)identifierSetWithIdentifier:(id)a3 modelObjectType:(int64_t)a4 specificLibraryDatabaseID:(id)a5 isPossibleLibraryPersistentID:(BOOL)a6 source:(int64_t)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a5;
  v14 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v15 = [v14 numberFromString:v12];

  v38 = v14;
  v39 = v12;
  v36 = a7;
  v37 = a1;
  v35 = a4;
  v34 = v8;
  if (v15)
  {
    v16 = v12;
    if (a4 == 27)
    {
      v17 = [MusicKit_SoftLinking_CatalogID alloc];
      v18 = v16;
      v19 = 5;
    }

    else if (a4 == 29)
    {
      v17 = [MusicKit_SoftLinking_CatalogID alloc];
      v18 = v16;
      v19 = 3;
    }

    else if (v8)
    {
      v17 = [MusicKit_SoftLinking_CatalogID alloc];
      v18 = v16;
      v19 = 8;
    }

    else
    {
      v17 = [MusicKit_SoftLinking_CatalogID alloc];
      v18 = v16;
      if (!a4)
      {
        v20 = [(MusicKit_SoftLinking_CatalogID *)v17 initWithValue:v16 kind:0];
        v21 = 0;
        goto LABEL_19;
      }

      v19 = 6;
    }

    v20 = [(MusicKit_SoftLinking_CatalogID *)v17 initWithValue:v18 kind:v19];
    v21 = 0;
    a4 = 0;
LABEL_19:
    v22 = 0;
    goto LABEL_26;
  }

  v20 = 0;
  if (a4 > 20)
  {
    v21 = 0;
    if ((a4 - 21) > 1)
    {
LABEL_25:
      v22 = v12;
      v16 = 0;
      a4 = 0;
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (a4)
  {
    if (a4 != 17)
    {
      v21 = 0;
      if (a4 != 19)
      {
        goto LABEL_25;
      }

      if ([v12 containsString:@"_"])
      {
        v21 = v12;
        v20 = 0;
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_14:
    if ([v12 hasPrefix:@"pl."])
    {
      v20 = [[MusicKit_SoftLinking_CatalogID alloc] initWithValue:v12 kind:2];
LABEL_24:
      v21 = 0;
      goto LABEL_25;
    }

LABEL_23:
    v20 = 0;
    goto LABEL_24;
  }

  a4 = v12;
  v16 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
LABEL_26:
  v23 = [v16 longLongValue];
  v24 = v13;
  if (v23)
  {
    v25 = v13;
    if (![v25 length])
    {
      v41 = 0;
      v42 = &v41;
      v43 = 0x2050000000;
      v26 = getMPMediaLibraryClass_softClass_0;
      v44 = getMPMediaLibraryClass_softClass_0;
      if (!getMPMediaLibraryClass_softClass_0)
      {
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __getMPMediaLibraryClass_block_invoke_0;
        v40[3] = &unk_278229610;
        v40[4] = &v41;
        __getMPMediaLibraryClass_block_invoke_0(v40);
        v26 = v42[3];
      }

      v27 = v26;
      _Block_object_dispose(&v41, 8);
      v28 = [v26 deviceMediaLibrary];
      v29 = [v28 uniqueIdentifier];

      v25 = v29;
    }

    v30 = [[MusicKit_SoftLinking_DeviceLocalID alloc] initWithValue:v23 databaseID:v25];
    if (v34)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30;
    }

    if (v34)
    {
      v23 = v30;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = [v37 _identifierSetWithCatalogID:v20 libraryID:v22 cloudAlbumLibraryID:a4 cloudID:v16 reportingAdamID:0 purchasedAdamID:0 assetAdamID:0 deviceLocalID:v31 possibleDeviceLocalID:v23 occurrenceID:v21 containedDeviceLocalID:0 syncID:0 playbackID:0 formerIDs:0 modelObjectType:v35 source:v36];

  return v32;
}

+ (id)emptyIdentifierSet
{
  MPIdentifierSetClass = getMPIdentifierSetClass();

  return [MPIdentifierSetClass emptyIdentifierSet];
}

+ (BOOL)_isEntitledToUserDSID
{
  if (_isEntitledToUserDSID_sOnceToken != -1)
  {
    +[MusicKit_SoftLinking(MusicKit_SoftLinking_MPIdentifierSet) _isEntitledToUserDSID];
  }

  return _isEntitledToUserDSID_sIsEntitledToUserDSID;
}

+ (id)rawSourceFromSource:(int64_t)a3
{
  if ((a3 - 1) > 0xE)
  {
    return @"MusicKit_Unknown";
  }

  else
  {
    return *(&off_278229B98 + a3 - 1);
  }
}

+ (id)recentlySearchedArchivedDataForUnderlyingIdentifierSet:(id)a3 modelObjectType:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [MusicKit_SoftLinking_MPModelKind _modelKindForModelObjectType:a4];
  v9 = v7;
  getMPIdentifierSetClass();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = [v9 personalizedStore];

    v10 = v9;
    if (!v11)
    {
      v10 = v9;
      if (v8)
      {
        v12 = [MusicKit_SoftLinking rawSourceFromSource:2];
        v13 = [objc_alloc(getMPIdentifierSetClass()) initWithSource:v12 modelKind:v8 block:&__block_literal_global_170];
        v10 = [v9 unionSet:v13];
      }
    }
  }

  v14 = [v10 archivedDataWithError:a5];

  return v14;
}

+ (id)recentlySearchedUnarchiveUnderlyingIdentifierSetWithData:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = a3;
  v7 = [v5 unarchivedObjectOfClass:getMPIdentifierSetClass() fromData:v6 error:a4];

  return v7;
}

+ (int64_t)audioTraitsForRawValue:(int64_t)a3
{
  v3 = a3;
  v4 = a3 >> 1;
  [a1 _ensureConsistencyOfUnderlyingOptionSetsForAudioTraits];
  return v3 & 0x31 | (4 * (v4 & 1)) | v4 & 2;
}

+ (int64_t)rawValueForAudioTraits:(int64_t)a3
{
  v3 = a3;
  v4 = a3 >> 1;
  [a1 _ensureConsistencyOfUnderlyingOptionSetsForAudioTraits];
  return v3 & 0x31 | v4 & 2 | (4 * (v4 & 1));
}

+ (id)storeArtworkTokenWithImageArtworkInfo:(id)a3 cropStyle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v7 = getMPStoreArtworkRequestTokenClass_softClass;
  v16 = getMPStoreArtworkRequestTokenClass_softClass;
  if (!getMPStoreArtworkRequestTokenClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getMPStoreArtworkRequestTokenClass_block_invoke;
    v12[3] = &unk_278229610;
    v12[4] = &v13;
    __getMPStoreArtworkRequestTokenClass_block_invoke(v12);
    v7 = v14[3];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);
  v9 = [v7 tokenWithImageArtworkInfo:v5];
  v10 = v9;
  if (v6)
  {
    [v9 setCropStyle:v6];
  }

  return v10;
}

+ (id)artworkCatalogWithDataSourceShortDescription:(id)a3 dataSourceIdentifier:(id)a4 tokenParameters:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [getMPArtworkCatalogClass_0() artworkCatalogWithDataSourceShortDescription:v9 dataSourceIdentifier:v8 tokenParameters:v7];

  return v10;
}

+ (id)artworkCatalogWithStoreArtworkToken:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(getMPArtworkCatalogClass_0());
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getMPStoreArtworkDataSourceClass_softClass;
  v14 = getMPStoreArtworkDataSourceClass_softClass;
  if (!getMPStoreArtworkDataSourceClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getMPStoreArtworkDataSourceClass_block_invoke;
    v10[3] = &unk_278229610;
    v10[4] = &v11;
    __getMPStoreArtworkDataSourceClass_block_invoke(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  v7 = [v5 sharedStoreArtworkDataSource];
  v8 = [v4 initWithToken:v3 dataSource:v7];

  return v8;
}

+ (id)artworkCatalogWithCoverArtworkToken:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(getMPArtworkCatalogClass_0());
  v5 = +[MusicKit_SoftLinking_CoverArtworkDataSource sharedDataSource];
  v6 = [v4 initWithToken:v3 dataSource:v5];

  return v6;
}

+ (double)luminanceForColor:(CGColor *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getUISColorLuminanceSymbolLoc_ptr;
  v11 = getUISColorLuminanceSymbolLoc_ptr;
  if (!getUISColorLuminanceSymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getUISColorLuminanceSymbolLoc_block_invoke;
    v7[3] = &unk_278229610;
    v7[4] = &v8;
    __getUISColorLuminanceSymbolLoc_block_invoke(v7);
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    v6 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  v4(a3);
  return result;
}

@end