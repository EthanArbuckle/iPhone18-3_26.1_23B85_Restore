@interface NSObject(MusicKit_SoftLinking_MPIdentifierSet)
- (BOOL)musicKit_hasValidIdentifier;
- (MusicKit_SoftLinking_CatalogID)musicKit_catalogID;
- (MusicKit_SoftLinking_DeviceLocalID)musicKit_containedDeviceLocalID;
- (MusicKit_SoftLinking_DeviceLocalID)musicKit_deviceLocalID;
- (id)_musicKit_self_identifierSet;
- (id)archivedDataWithError:()MusicKit_SoftLinking_MPIdentifierSet;
- (id)musicKit_cloudAlbumLibraryID;
- (id)musicKit_formerIDs;
- (id)musicKit_identifierSetSources;
- (id)musicKit_libraryID;
- (id)musicKit_modelKind;
- (id)musicKit_occurrenceID;
- (id)musicKit_playbackID;
- (id)unionSet:()MusicKit_SoftLinking_MPIdentifierSet;
- (uint64_t)intersectsSet:()MusicKit_SoftLinking_MPIdentifierSet;
- (uint64_t)musicKit_assetAdamID;
- (uint64_t)musicKit_cloudID;
- (uint64_t)musicKit_purchasedAdamID;
- (uint64_t)musicKit_reportingAdamID;
- (uint64_t)musicKit_syncID;
@end

@implementation NSObject(MusicKit_SoftLinking_MPIdentifierSet)

- (id)_musicKit_self_identifierSet
{
  getMPIdentifierSetClass();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MusicKit_SoftLinking_CatalogID)musicKit_catalogID
{
  v45 = *MEMORY[0x277D85DE8];
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  modelKind = [_musicKit_self_identifierSet modelKind];
  identityKind = [modelKind identityKind];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v4 = getMPModelRadioStationKindClass_softClass;
  v39 = getMPModelRadioStationKindClass_softClass;
  if (!getMPModelRadioStationKindClass_softClass)
  {
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __getMPModelRadioStationKindClass_block_invoke;
    v43 = &unk_278229610;
    v44 = &v36;
    __getMPModelRadioStationKindClass_block_invoke(&v40);
    v4 = v37[3];
  }

  v5 = v4;
  _Block_object_dispose(&v36, 8);
  identityKind2 = [v4 identityKind];
  v7 = [identityKind isEqual:identityKind2];

  if (v7)
  {
    radio = [_musicKit_self_identifierSet radio];
    stationStringID = [radio stationStringID];

    v10 = 3;
    goto LABEL_32;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v11 = getMPModelPlaylistKindClass_softClass;
  v39 = getMPModelPlaylistKindClass_softClass;
  if (!getMPModelPlaylistKindClass_softClass)
  {
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __getMPModelPlaylistKindClass_block_invoke;
    v43 = &unk_278229610;
    v44 = &v36;
    __getMPModelPlaylistKindClass_block_invoke(&v40);
    v11 = v37[3];
  }

  v12 = v11;
  _Block_object_dispose(&v36, 8);
  identityKind3 = [v11 identityKind];
  v14 = [identityKind isEqual:identityKind3];

  if (v14)
  {
    universalStore = [_musicKit_self_identifierSet universalStore];
    stationStringID = [universalStore globalPlaylistID];

    v10 = 2;
    goto LABEL_32;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v16 = getMPModelSocialPersonKindClass_softClass;
  v39 = getMPModelSocialPersonKindClass_softClass;
  if (!getMPModelSocialPersonKindClass_softClass)
  {
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __getMPModelSocialPersonKindClass_block_invoke;
    v43 = &unk_278229610;
    v44 = &v36;
    __getMPModelSocialPersonKindClass_block_invoke(&v40);
    v16 = v37[3];
  }

  v17 = v16;
  _Block_object_dispose(&v36, 8);
  identityKind4 = [v16 identityKind];
  v19 = [identityKind isEqual:identityKind4];

  if (v19)
  {
    universalStore2 = [_musicKit_self_identifierSet universalStore];
    stationStringID = [universalStore2 socialProfileID];

    v10 = 5;
    goto LABEL_32;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v21 = getMPModelForYouRecommendationGroupKindClass_softClass;
  v39 = getMPModelForYouRecommendationGroupKindClass_softClass;
  if (!getMPModelForYouRecommendationGroupKindClass_softClass)
  {
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __getMPModelForYouRecommendationGroupKindClass_block_invoke;
    v43 = &unk_278229610;
    v44 = &v36;
    __getMPModelForYouRecommendationGroupKindClass_block_invoke(&v40);
    v21 = v37[3];
  }

  v22 = v21;
  _Block_object_dispose(&v36, 8);
  identityKind5 = [v21 identityKind];
  v24 = [identityKind isEqual:identityKind5];

  if (v24)
  {
    personalizedStore = [_musicKit_self_identifierSet personalizedStore];
    stationStringID = [personalizedStore recommendationID];

    v10 = 4;
    goto LABEL_32;
  }

  universalStore3 = [_musicKit_self_identifierSet universalStore];
  subscriptionAdamID = [universalStore3 subscriptionAdamID];
  if (subscriptionAdamID)
  {
    v10 = 6;
    goto LABEL_23;
  }

  subscriptionAdamID = [universalStore3 adamID];
  if (subscriptionAdamID)
  {
    v10 = 0;
    goto LABEL_23;
  }

  subscriptionAdamID = [universalStore3 assetAdamID];
  if (subscriptionAdamID)
  {
    v10 = 1;
LABEL_23:

    v28 = &v42 + 7;
    quot = subscriptionAdamID;
    do
    {
      v30 = lldiv(quot, 10);
      quot = v30.quot;
      if (v30.rem >= 0)
      {
        LOBYTE(v31) = v30.rem;
      }

      else
      {
        v31 = -v30.rem;
      }

      *v28-- = v31 + 48;
    }

    while (v30.quot);
    if (subscriptionAdamID < 0)
    {
      *v28 = 45;
    }

    else
    {
      ++v28;
    }

    stationStringID = CFStringCreateWithBytes(0, v28, &v43 - v28, 0x8000100u, 0);
    goto LABEL_32;
  }

  stationStringID = [universalStore3 globalPlaylistID];
  if (stationStringID)
  {
    v10 = 2;
  }

  else
  {
    stationStringID = [universalStore3 socialProfileID];
    v10 = 5;
  }

  if (!stationStringID)
  {
    radio2 = [_musicKit_self_identifierSet radio];
    stationStringID = [radio2 stationStringID];

    v10 = 3;
  }

  if (!stationStringID)
  {
    stationStringID = [universalStore3 socialProfileID];
    v10 = 5;
  }

LABEL_32:
  if (stationStringID)
  {
    v32 = [[MusicKit_SoftLinking_CatalogID alloc] initWithValue:stationStringID kind:v10];
  }

  else
  {
    v32 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)musicKit_libraryID
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  universalStore = [_musicKit_self_identifierSet universalStore];

  universalCloudLibraryID = [universalStore universalCloudLibraryID];

  return universalCloudLibraryID;
}

- (id)musicKit_cloudAlbumLibraryID
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  personalizedStore = [_musicKit_self_identifierSet personalizedStore];

  cloudAlbumID = [personalizedStore cloudAlbumID];

  return cloudAlbumID;
}

- (uint64_t)musicKit_cloudID
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  personalizedStore = [_musicKit_self_identifierSet personalizedStore];

  cloudID = [personalizedStore cloudID];
  return cloudID;
}

- (uint64_t)musicKit_purchasedAdamID
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  universalStore = [_musicKit_self_identifierSet universalStore];

  purchasedAdamID = [universalStore purchasedAdamID];
  return purchasedAdamID;
}

- (uint64_t)musicKit_reportingAdamID
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  universalStore = [_musicKit_self_identifierSet universalStore];

  reportingAdamID = [universalStore reportingAdamID];
  return reportingAdamID;
}

- (uint64_t)musicKit_assetAdamID
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  universalStore = [_musicKit_self_identifierSet universalStore];

  assetAdamID = [universalStore assetAdamID];
  return assetAdamID;
}

- (MusicKit_SoftLinking_DeviceLocalID)musicKit_deviceLocalID
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  library = [_musicKit_self_identifierSet library];

  if (library)
  {
    persistentID = [library persistentID];
    if (persistentID)
    {
      v4 = [MusicKit_SoftLinking_DeviceLocalID alloc];
      databaseID = [library databaseID];
      persistentID = [(MusicKit_SoftLinking_DeviceLocalID *)v4 initWithValue:persistentID databaseID:databaseID];
    }
  }

  else
  {
    persistentID = 0;
  }

  return persistentID;
}

- (id)musicKit_occurrenceID
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  containerUniqueID = [_musicKit_self_identifierSet containerUniqueID];

  return containerUniqueID;
}

- (MusicKit_SoftLinking_DeviceLocalID)musicKit_containedDeviceLocalID
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  library = [_musicKit_self_identifierSet library];

  if (library)
  {
    containedPersistentID = [library containedPersistentID];
    if (containedPersistentID)
    {
      v4 = [MusicKit_SoftLinking_DeviceLocalID alloc];
      databaseID = [library databaseID];
      containedPersistentID = [(MusicKit_SoftLinking_DeviceLocalID *)v4 initWithValue:containedPersistentID databaseID:databaseID];
    }
  }

  else
  {
    containedPersistentID = 0;
  }

  return containedPersistentID;
}

- (uint64_t)musicKit_syncID
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  library = [_musicKit_self_identifierSet library];

  syncID = [library syncID];
  return syncID;
}

- (id)musicKit_playbackID
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  contentItemID = [_musicKit_self_identifierSet contentItemID];

  return contentItemID;
}

- (id)musicKit_formerIDs
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  universalStore = [_musicKit_self_identifierSet universalStore];
  formerAdamIDs = [universalStore formerAdamIDs];
  v4 = [formerAdamIDs msv_map:&__block_literal_global_2];

  return v4;
}

- (id)musicKit_modelKind
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  modelKind = [_musicKit_self_identifierSet modelKind];

  if (modelKind)
  {
    v3 = [[MusicKit_SoftLinking_MPModelKind alloc] _initWithUnderlyingKind:modelKind];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)musicKit_hasValidIdentifier
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  radio = [_musicKit_self_identifierSet radio];
  stationStringID = [radio stationStringID];
  v4 = [stationStringID length];

  if (v4)
  {
    goto LABEL_8;
  }

  universalStore = [_musicKit_self_identifierSet universalStore];
  globalPlaylistID = [universalStore globalPlaylistID];
  v7 = [globalPlaylistID length];

  if (v7)
  {
    goto LABEL_8;
  }

  universalStore2 = [_musicKit_self_identifierSet universalStore];
  socialProfileID = [universalStore2 socialProfileID];
  v10 = [socialProfileID length];

  if (v10)
  {
    goto LABEL_8;
  }

  universalStore3 = [_musicKit_self_identifierSet universalStore];
  subscriptionAdamID = [universalStore3 subscriptionAdamID];

  if (subscriptionAdamID)
  {
    goto LABEL_8;
  }

  universalStore4 = [_musicKit_self_identifierSet universalStore];
  adamID = [universalStore4 adamID];

  if (adamID)
  {
    goto LABEL_8;
  }

  universalStore5 = [_musicKit_self_identifierSet universalStore];
  assetAdamID = [universalStore5 assetAdamID];

  if (assetAdamID || ([_musicKit_self_identifierSet universalStore], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "universalCloudLibraryID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, v17, v19))
  {
LABEL_8:
    v20 = 1;
  }

  else
  {
    library = [_musicKit_self_identifierSet library];
    v20 = [library persistentID] != 0;
  }

  return v20;
}

- (id)musicKit_identifierSetSources
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  sources = [_musicKit_self_identifierSet sources];

  return sources;
}

- (uint64_t)intersectsSet:()MusicKit_SoftLinking_MPIdentifierSet
{
  v4 = a3;
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  getMPIdentifierSetClass();
  if (objc_opt_isKindOfClass())
  {
    v6 = [_musicKit_self_identifierSet intersectsSet:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)unionSet:()MusicKit_SoftLinking_MPIdentifierSet
{
  v4 = a3;
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  getMPIdentifierSetClass();
  if (objc_opt_isKindOfClass())
  {
    v6 = [_musicKit_self_identifierSet unionSet:v4];
  }

  else
  {
    v6 = _musicKit_self_identifierSet;
  }

  v7 = v6;

  return v7;
}

- (id)archivedDataWithError:()MusicKit_SoftLinking_MPIdentifierSet
{
  _musicKit_self_identifierSet = [self _musicKit_self_identifierSet];
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:_musicKit_self_identifierSet requiringSecureCoding:1 error:a3];

  return v5;
}

@end