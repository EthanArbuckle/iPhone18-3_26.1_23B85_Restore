@interface MusicKit_SoftLinking
+ (BOOL)_isEntitledToUserDSID;
+ (double)luminanceForColor:(CGColor *)color;
+ (id)_identifierSetWithCatalogID:(id)d libraryID:(id)iD cloudAlbumLibraryID:(id)libraryID cloudID:(id)cloudID reportingAdamID:(id)adamID purchasedAdamID:(id)purchasedAdamID assetAdamID:(id)assetAdamID deviceLocalID:(id)self0 possibleDeviceLocalID:(id)self1 occurrenceID:(id)self2 containedDeviceLocalID:(id)self3 syncID:(id)self4 playbackID:(id)self5 formerIDs:(id)self6 modelObjectType:(int64_t)self7 source:(int64_t)self8;
+ (id)artworkCatalogWithCoverArtworkToken:(id)token;
+ (id)artworkCatalogWithDataSourceShortDescription:(id)description dataSourceIdentifier:(id)identifier tokenParameters:(id)parameters;
+ (id)artworkCatalogWithStoreArtworkToken:(id)token;
+ (id)emptyIdentifierSet;
+ (id)identifierSetWithCatalogID:(id)d libraryID:(id)iD cloudAlbumLibraryID:(id)libraryID cloudID:(id)cloudID reportingAdamID:(id)adamID purchasedAdamID:(id)purchasedAdamID assetAdamID:(id)assetAdamID deviceLocalID:(id)self0 occurrenceID:(id)self1 containedDeviceLocalID:(id)self2 syncID:(id)self3 playbackID:(id)self4 formerIDs:(id)self5 modelObjectType:(int64_t)self6 source:(int64_t)self7;
+ (id)identifierSetWithIdentifier:(id)identifier modelObjectType:(int64_t)type specificLibraryDatabaseID:(id)d isPossibleLibraryPersistentID:(BOOL)iD source:(int64_t)source;
+ (id)rawSourceFromSource:(int64_t)source;
+ (id)recentlySearchedArchivedDataForUnderlyingIdentifierSet:(id)set modelObjectType:(int64_t)type error:(id *)error;
+ (id)recentlySearchedUnarchiveUnderlyingIdentifierSetWithData:(id)data error:(id *)error;
+ (id)storeArtworkTokenWithImageArtworkInfo:(id)info cropStyle:(id)style;
+ (int64_t)audioTraitsForRawValue:(int64_t)value;
+ (int64_t)rawValueForAudioTraits:(int64_t)traits;
@end

@implementation MusicKit_SoftLinking

+ (id)_identifierSetWithCatalogID:(id)d libraryID:(id)iD cloudAlbumLibraryID:(id)libraryID cloudID:(id)cloudID reportingAdamID:(id)adamID purchasedAdamID:(id)purchasedAdamID assetAdamID:(id)assetAdamID deviceLocalID:(id)self0 possibleDeviceLocalID:(id)self1 occurrenceID:(id)self2 containedDeviceLocalID:(id)self3 syncID:(id)self4 playbackID:(id)self5 formerIDs:(id)self6 modelObjectType:(int64_t)self7 source:(int64_t)self8
{
  dCopy = d;
  iDCopy = iD;
  libraryIDCopy = libraryID;
  cloudIDCopy = cloudID;
  adamIDCopy = adamID;
  purchasedAdamIDCopy = purchasedAdamID;
  assetAdamIDCopy = assetAdamID;
  localIDCopy = localID;
  deviceLocalIDCopy = deviceLocalID;
  occurrenceIDCopy = occurrenceID;
  containedDeviceLocalIDCopy = containedDeviceLocalID;
  syncIDCopy = syncID;
  playbackIDCopy = playbackID;
  dsCopy = ds;
  v31 = [MusicKit_SoftLinking_MPModelKind _modelKindForModelObjectType:type];
  v44 = playbackIDCopy;
  v45 = assetAdamIDCopy;
  v51 = syncIDCopy;
  if (v31)
  {
    v43 = [self rawSourceFromSource:source];
    v42 = objc_alloc(getMPIdentifierSetClass());
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __295__MusicKit_SoftLinking_MusicKit_SoftLinking_MPIdentifierSet___identifierSetWithCatalogID_libraryID_cloudAlbumLibraryID_cloudID_reportingAdamID_purchasedAdamID_assetAdamID_deviceLocalID_possibleDeviceLocalID_occurrenceID_containedDeviceLocalID_syncID_playbackID_formerIDs_modelObjectType_source___block_invoke;
    v55[3] = &unk_278229B20;
    v56 = dCopy;
    v57 = iDCopy;
    v58 = adamIDCopy;
    v59 = purchasedAdamIDCopy;
    v32 = occurrenceIDCopy;
    v60 = assetAdamIDCopy;
    v61 = dsCopy;
    v62 = occurrenceIDCopy;
    v33 = deviceLocalIDCopy;
    v63 = localIDCopy;
    v34 = containedDeviceLocalIDCopy;
    v64 = containedDeviceLocalIDCopy;
    v65 = syncIDCopy;
    selfCopy = self;
    v66 = deviceLocalIDCopy;
    v67 = playbackIDCopy;
    v35 = libraryIDCopy;
    v68 = libraryIDCopy;
    v36 = dsCopy;
    v37 = cloudIDCopy;
    v69 = cloudIDCopy;
    v38 = localIDCopy;
    v39 = v32;
    v48 = [v42 initWithSource:v43 modelKind:v31 musicKitBlock:v55];

    v40 = dCopy;
  }

  else
  {
    [self emptyIdentifierSet];
    v33 = deviceLocalIDCopy;
    v39 = occurrenceIDCopy;
    v34 = containedDeviceLocalIDCopy;
    v48 = v38 = localIDCopy;
    v40 = dCopy;
    v36 = dsCopy;
    v37 = cloudIDCopy;
    v35 = libraryIDCopy;
  }

  return v48;
}

+ (id)identifierSetWithCatalogID:(id)d libraryID:(id)iD cloudAlbumLibraryID:(id)libraryID cloudID:(id)cloudID reportingAdamID:(id)adamID purchasedAdamID:(id)purchasedAdamID assetAdamID:(id)assetAdamID deviceLocalID:(id)self0 occurrenceID:(id)self1 containedDeviceLocalID:(id)self2 syncID:(id)self3 playbackID:(id)self4 formerIDs:(id)self5 modelObjectType:(int64_t)self6 source:(int64_t)self7
{
  dsCopy = ds;
  playbackIDCopy = playbackID;
  syncIDCopy = syncID;
  deviceLocalIDCopy = deviceLocalID;
  occurrenceIDCopy = occurrenceID;
  localIDCopy = localID;
  assetAdamIDCopy = assetAdamID;
  purchasedAdamIDCopy = purchasedAdamID;
  adamIDCopy = adamID;
  cloudIDCopy = cloudID;
  libraryIDCopy = libraryID;
  iDCopy = iD;
  dCopy = d;
  v23 = objc_opt_class();
  v24 = cloudIDCopy;
  v25 = cloudIDCopy;
  v26 = adamIDCopy;
  v27 = [v23 _identifierSetWithCatalogID:dCopy libraryID:iDCopy cloudAlbumLibraryID:libraryIDCopy cloudID:v24 reportingAdamID:adamIDCopy purchasedAdamID:purchasedAdamIDCopy assetAdamID:assetAdamIDCopy deviceLocalID:localIDCopy possibleDeviceLocalID:0 occurrenceID:occurrenceIDCopy containedDeviceLocalID:deviceLocalIDCopy syncID:syncIDCopy playbackID:playbackIDCopy formerIDs:dsCopy modelObjectType:type source:source];

  return v27;
}

+ (id)identifierSetWithIdentifier:(id)identifier modelObjectType:(int64_t)type specificLibraryDatabaseID:(id)d isPossibleLibraryPersistentID:(BOOL)iD source:(int64_t)source
{
  iDCopy = iD;
  identifierCopy = identifier;
  dCopy = d;
  v14 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v15 = [v14 numberFromString:identifierCopy];

  v38 = v14;
  v39 = identifierCopy;
  sourceCopy = source;
  selfCopy = self;
  typeCopy = type;
  v34 = iDCopy;
  if (v15)
  {
    v16 = identifierCopy;
    if (type == 27)
    {
      v17 = [MusicKit_SoftLinking_CatalogID alloc];
      v18 = v16;
      v19 = 5;
    }

    else if (type == 29)
    {
      v17 = [MusicKit_SoftLinking_CatalogID alloc];
      v18 = v16;
      v19 = 3;
    }

    else if (iDCopy)
    {
      v17 = [MusicKit_SoftLinking_CatalogID alloc];
      v18 = v16;
      v19 = 8;
    }

    else
    {
      v17 = [MusicKit_SoftLinking_CatalogID alloc];
      v18 = v16;
      if (!type)
      {
        v20 = [(MusicKit_SoftLinking_CatalogID *)v17 initWithValue:v16 kind:0];
        v21 = 0;
        goto LABEL_19;
      }

      v19 = 6;
    }

    v20 = [(MusicKit_SoftLinking_CatalogID *)v17 initWithValue:v18 kind:v19];
    v21 = 0;
    type = 0;
LABEL_19:
    v22 = 0;
    goto LABEL_26;
  }

  v20 = 0;
  if (type > 20)
  {
    v21 = 0;
    if ((type - 21) > 1)
    {
LABEL_25:
      v22 = identifierCopy;
      v16 = 0;
      type = 0;
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (type)
  {
    if (type != 17)
    {
      v21 = 0;
      if (type != 19)
      {
        goto LABEL_25;
      }

      if ([identifierCopy containsString:@"_"])
      {
        v21 = identifierCopy;
        v20 = 0;
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_14:
    if ([identifierCopy hasPrefix:@"pl."])
    {
      v20 = [[MusicKit_SoftLinking_CatalogID alloc] initWithValue:identifierCopy kind:2];
LABEL_24:
      v21 = 0;
      goto LABEL_25;
    }

LABEL_23:
    v20 = 0;
    goto LABEL_24;
  }

  type = identifierCopy;
  v16 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
LABEL_26:
  longLongValue = [v16 longLongValue];
  v24 = dCopy;
  if (longLongValue)
  {
    v25 = dCopy;
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
      deviceMediaLibrary = [v26 deviceMediaLibrary];
      uniqueIdentifier = [deviceMediaLibrary uniqueIdentifier];

      v25 = uniqueIdentifier;
    }

    v30 = [[MusicKit_SoftLinking_DeviceLocalID alloc] initWithValue:longLongValue databaseID:v25];
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
      longLongValue = v30;
    }

    else
    {
      longLongValue = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = [selfCopy _identifierSetWithCatalogID:v20 libraryID:v22 cloudAlbumLibraryID:type cloudID:v16 reportingAdamID:0 purchasedAdamID:0 assetAdamID:0 deviceLocalID:v31 possibleDeviceLocalID:longLongValue occurrenceID:v21 containedDeviceLocalID:0 syncID:0 playbackID:0 formerIDs:0 modelObjectType:typeCopy source:sourceCopy];

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

+ (id)rawSourceFromSource:(int64_t)source
{
  if ((source - 1) > 0xE)
  {
    return @"MusicKit_Unknown";
  }

  else
  {
    return *(&off_278229B98 + source - 1);
  }
}

+ (id)recentlySearchedArchivedDataForUnderlyingIdentifierSet:(id)set modelObjectType:(int64_t)type error:(id *)error
{
  setCopy = set;
  v8 = [MusicKit_SoftLinking_MPModelKind _modelKindForModelObjectType:type];
  v9 = setCopy;
  getMPIdentifierSetClass();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    personalizedStore = [v9 personalizedStore];

    v10 = v9;
    if (!personalizedStore)
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

  v14 = [v10 archivedDataWithError:error];

  return v14;
}

+ (id)recentlySearchedUnarchiveUnderlyingIdentifierSetWithData:(id)data error:(id *)error
{
  v5 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v7 = [v5 unarchivedObjectOfClass:getMPIdentifierSetClass() fromData:dataCopy error:error];

  return v7;
}

+ (int64_t)audioTraitsForRawValue:(int64_t)value
{
  valueCopy = value;
  v4 = value >> 1;
  [self _ensureConsistencyOfUnderlyingOptionSetsForAudioTraits];
  return valueCopy & 0x31 | (4 * (v4 & 1)) | v4 & 2;
}

+ (int64_t)rawValueForAudioTraits:(int64_t)traits
{
  traitsCopy = traits;
  v4 = traits >> 1;
  [self _ensureConsistencyOfUnderlyingOptionSetsForAudioTraits];
  return traitsCopy & 0x31 | v4 & 2 | (4 * (v4 & 1));
}

+ (id)storeArtworkTokenWithImageArtworkInfo:(id)info cropStyle:(id)style
{
  infoCopy = info;
  styleCopy = style;
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
  v9 = [v7 tokenWithImageArtworkInfo:infoCopy];
  v10 = v9;
  if (styleCopy)
  {
    [v9 setCropStyle:styleCopy];
  }

  return v10;
}

+ (id)artworkCatalogWithDataSourceShortDescription:(id)description dataSourceIdentifier:(id)identifier tokenParameters:(id)parameters
{
  parametersCopy = parameters;
  identifierCopy = identifier;
  descriptionCopy = description;
  v10 = [getMPArtworkCatalogClass_0() artworkCatalogWithDataSourceShortDescription:descriptionCopy dataSourceIdentifier:identifierCopy tokenParameters:parametersCopy];

  return v10;
}

+ (id)artworkCatalogWithStoreArtworkToken:(id)token
{
  tokenCopy = token;
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
  sharedStoreArtworkDataSource = [v5 sharedStoreArtworkDataSource];
  v8 = [v4 initWithToken:tokenCopy dataSource:sharedStoreArtworkDataSource];

  return v8;
}

+ (id)artworkCatalogWithCoverArtworkToken:(id)token
{
  tokenCopy = token;
  v4 = objc_alloc(getMPArtworkCatalogClass_0());
  v5 = +[MusicKit_SoftLinking_CoverArtworkDataSource sharedDataSource];
  v6 = [v4 initWithToken:tokenCopy dataSource:v5];

  return v6;
}

+ (double)luminanceForColor:(CGColor *)color
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

  v4(color);
  return result;
}

@end