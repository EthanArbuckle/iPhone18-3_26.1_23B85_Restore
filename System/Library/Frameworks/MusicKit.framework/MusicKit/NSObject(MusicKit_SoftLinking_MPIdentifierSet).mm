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
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (MusicKit_SoftLinking_CatalogID)musicKit_catalogID
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 modelKind];
  v3 = [v2 identityKind];
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
  v6 = [v4 identityKind];
  v7 = [v3 isEqual:v6];

  if (v7)
  {
    v8 = [v1 radio];
    v9 = [v8 stationStringID];

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
  v13 = [v11 identityKind];
  v14 = [v3 isEqual:v13];

  if (v14)
  {
    v15 = [v1 universalStore];
    v9 = [v15 globalPlaylistID];

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
  v18 = [v16 identityKind];
  v19 = [v3 isEqual:v18];

  if (v19)
  {
    v20 = [v1 universalStore];
    v9 = [v20 socialProfileID];

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
  v23 = [v21 identityKind];
  v24 = [v3 isEqual:v23];

  if (v24)
  {
    v25 = [v1 personalizedStore];
    v9 = [v25 recommendationID];

    v10 = 4;
    goto LABEL_32;
  }

  v26 = [v1 universalStore];
  v27 = [v26 subscriptionAdamID];
  if (v27)
  {
    v10 = 6;
    goto LABEL_23;
  }

  v27 = [v26 adamID];
  if (v27)
  {
    v10 = 0;
    goto LABEL_23;
  }

  v27 = [v26 assetAdamID];
  if (v27)
  {
    v10 = 1;
LABEL_23:

    v28 = &v42 + 7;
    quot = v27;
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
    if (v27 < 0)
    {
      *v28 = 45;
    }

    else
    {
      ++v28;
    }

    v9 = CFStringCreateWithBytes(0, v28, &v43 - v28, 0x8000100u, 0);
    goto LABEL_32;
  }

  v9 = [v26 globalPlaylistID];
  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v9 = [v26 socialProfileID];
    v10 = 5;
  }

  if (!v9)
  {
    v35 = [v1 radio];
    v9 = [v35 stationStringID];

    v10 = 3;
  }

  if (!v9)
  {
    v9 = [v26 socialProfileID];
    v10 = 5;
  }

LABEL_32:
  if (v9)
  {
    v32 = [[MusicKit_SoftLinking_CatalogID alloc] initWithValue:v9 kind:v10];
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
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 universalStore];

  v3 = [v2 universalCloudLibraryID];

  return v3;
}

- (id)musicKit_cloudAlbumLibraryID
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 personalizedStore];

  v3 = [v2 cloudAlbumID];

  return v3;
}

- (uint64_t)musicKit_cloudID
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 personalizedStore];

  v3 = [v2 cloudID];
  return v3;
}

- (uint64_t)musicKit_purchasedAdamID
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 universalStore];

  v3 = [v2 purchasedAdamID];
  return v3;
}

- (uint64_t)musicKit_reportingAdamID
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 universalStore];

  v3 = [v2 reportingAdamID];
  return v3;
}

- (uint64_t)musicKit_assetAdamID
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 universalStore];

  v3 = [v2 assetAdamID];
  return v3;
}

- (MusicKit_SoftLinking_DeviceLocalID)musicKit_deviceLocalID
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 library];

  if (v2)
  {
    v3 = [v2 persistentID];
    if (v3)
    {
      v4 = [MusicKit_SoftLinking_DeviceLocalID alloc];
      v5 = [v2 databaseID];
      v3 = [(MusicKit_SoftLinking_DeviceLocalID *)v4 initWithValue:v3 databaseID:v5];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)musicKit_occurrenceID
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 containerUniqueID];

  return v2;
}

- (MusicKit_SoftLinking_DeviceLocalID)musicKit_containedDeviceLocalID
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 library];

  if (v2)
  {
    v3 = [v2 containedPersistentID];
    if (v3)
    {
      v4 = [MusicKit_SoftLinking_DeviceLocalID alloc];
      v5 = [v2 databaseID];
      v3 = [(MusicKit_SoftLinking_DeviceLocalID *)v4 initWithValue:v3 databaseID:v5];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)musicKit_syncID
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 library];

  v3 = [v2 syncID];
  return v3;
}

- (id)musicKit_playbackID
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 contentItemID];

  return v2;
}

- (id)musicKit_formerIDs
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 universalStore];
  v3 = [v2 formerAdamIDs];
  v4 = [v3 msv_map:&__block_literal_global_2];

  return v4;
}

- (id)musicKit_modelKind
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 modelKind];

  if (v2)
  {
    v3 = [[MusicKit_SoftLinking_MPModelKind alloc] _initWithUnderlyingKind:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)musicKit_hasValidIdentifier
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 radio];
  v3 = [v2 stationStringID];
  v4 = [v3 length];

  if (v4)
  {
    goto LABEL_8;
  }

  v5 = [v1 universalStore];
  v6 = [v5 globalPlaylistID];
  v7 = [v6 length];

  if (v7)
  {
    goto LABEL_8;
  }

  v8 = [v1 universalStore];
  v9 = [v8 socialProfileID];
  v10 = [v9 length];

  if (v10)
  {
    goto LABEL_8;
  }

  v11 = [v1 universalStore];
  v12 = [v11 subscriptionAdamID];

  if (v12)
  {
    goto LABEL_8;
  }

  v13 = [v1 universalStore];
  v14 = [v13 adamID];

  if (v14)
  {
    goto LABEL_8;
  }

  v15 = [v1 universalStore];
  v16 = [v15 assetAdamID];

  if (v16 || ([v1 universalStore], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "universalCloudLibraryID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, v17, v19))
  {
LABEL_8:
    v20 = 1;
  }

  else
  {
    v22 = [v1 library];
    v20 = [v22 persistentID] != 0;
  }

  return v20;
}

- (id)musicKit_identifierSetSources
{
  v1 = [a1 _musicKit_self_identifierSet];
  v2 = [v1 sources];

  return v2;
}

- (uint64_t)intersectsSet:()MusicKit_SoftLinking_MPIdentifierSet
{
  v4 = a3;
  v5 = [a1 _musicKit_self_identifierSet];
  getMPIdentifierSetClass();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 intersectsSet:v4];
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
  v5 = [a1 _musicKit_self_identifierSet];
  getMPIdentifierSetClass();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 unionSet:v4];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (id)archivedDataWithError:()MusicKit_SoftLinking_MPIdentifierSet
{
  v4 = [a1 _musicKit_self_identifierSet];
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:a3];

  return v5;
}

@end