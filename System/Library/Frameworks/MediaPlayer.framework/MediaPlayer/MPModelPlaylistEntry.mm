@interface MPModelPlaylistEntry
+ (id)_playlistEntryFromModel:(id)model source:(id)source occurrenceCount:(int64_t)count;
+ (id)newUniversalIdentifier;
+ (id)requiredKeepLocalStatusObservationProperties;
+ (id)requiredLibraryAddStatusObservationProperties;
+ (id)requiredLibraryRemovalProperties;
+ (id)requiredStoreLibraryPersonalizationProperties;
+ (void)__MPModelPropertyPlaylistEntryPositionUniversalIdentifier__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistEntryPosition__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistEntryUniversalIdentifier__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlaylistEntryMovie__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlaylistEntryPlaylist__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlaylistEntrySocialContributor__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlaylistEntrySong__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlaylistEntryTVEpisode__MAPPING_MISSING__;
+ (void)___MPModelPropertyPlaylistEntryArtwork__MAPPING_MISSING__;
- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration;
- (id)anyObject;
- (id)humanDescription;
- (id)mediaItemPropertyValues;
- (id)newKeepLocalStatusObserverConfiguration;
- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)object;
- (id)personalizationScopedPropertiesForProperties:(id)properties;
- (id)relativeModelObjectForStoreLibraryPersonalization;
- (int64_t)libraryRemovalSupportedOptions;
- (int64_t)type;
@end

@implementation MPModelPlaylistEntry

+ (id)requiredLibraryRemovalProperties
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v7 = @"MPModelRelationshipPlaylistEntrySong";
  v3 = +[MPModelSong requiredLibraryRemovalProperties];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [(MPPropertySet *)v2 initWithProperties:MEMORY[0x1E695E0F0] relationships:v4];

  return v5;
}

+ (id)requiredLibraryAddStatusObservationProperties
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v7 = @"MPModelRelationshipPlaylistEntrySong";
  v3 = +[MPModelSong requiredLibraryAddStatusObservationProperties];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [(MPPropertySet *)v2 initWithProperties:MEMORY[0x1E695E0F0] relationships:v4];

  return v5;
}

+ (id)requiredKeepLocalStatusObservationProperties
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v7 = @"MPModelRelationshipPlaylistEntrySong";
  v3 = +[MPModelSong requiredKeepLocalStatusObservationProperties];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [(MPPropertySet *)v2 initWithProperties:MEMORY[0x1E695E0F0] relationships:v4];

  return v5;
}

- (id)mediaItemPropertyValues
{
  type = [(MPModelPlaylistEntry *)self type];
  switch(type)
  {
    case 3:
      movie = [(MPModelPlaylistEntry *)self movie];
      goto LABEL_7;
    case 2:
      movie = [(MPModelPlaylistEntry *)self tvEpisode];
      goto LABEL_7;
    case 1:
      movie = [(MPModelPlaylistEntry *)self song];
LABEL_7:
      v5 = movie;
      mediaItemPropertyValues = [movie mediaItemPropertyValues];

      goto LABEL_9;
  }

  mediaItemPropertyValues = 0;
LABEL_9:

  return mediaItemPropertyValues;
}

- (int64_t)type
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__MPModelPlaylistEntry_type__block_invoke;
  v4[3] = &unk_1E76819F0;
  v4[4] = self;
  v4[5] = &v5;
  [MPModelObject performWithoutEnforcement:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __28__MPModelPlaylistEntry_type__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) song];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) tvEpisode];

    if (v4)
    {
      v3 = 2;
    }

    else
    {
      v5 = [*(a1 + 32) movie];

      if (!v5)
      {
        return;
      }

      v3 = 3;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (id)anyObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__23249;
  v9 = __Block_byref_object_dispose__23250;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__MPModelPlaylistEntry_anyObject__block_invoke;
  v4[3] = &unk_1E76819F0;
  v4[4] = self;
  v4[5] = &v5;
  [MPModelObject performWithoutEnforcement:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __33__MPModelPlaylistEntry_anyObject__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) song];
  v8 = v3;
  if (v3)
  {
    v4 = 0;
    v5 = v3;
  }

  else
  {
    v6 = [*(a1 + 32) tvEpisode];
    v1 = v6;
    if (v6)
    {
      v4 = 0;
      v5 = v6;
    }

    else
    {
      v5 = [*(a1 + 32) movie];
      v4 = 1;
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  if (v4)
  {
  }

  v7 = v8;
  if (!v8)
  {

    v7 = 0;
  }
}

- (id)humanDescription
{
  v3 = MEMORY[0x1E696AEC0];
  anyObject = [(MPModelPlaylistEntry *)self anyObject];
  humanDescription = [anyObject humanDescription];
  identifiers = [(MPModelObject *)self identifiers];
  humanDescription2 = [identifiers humanDescription];
  v8 = [v3 stringWithFormat:@"playlist entry %@+%@", humanDescription, humanDescription2];

  return v8;
}

+ (id)_playlistEntryFromModel:(id)model source:(id)source occurrenceCount:(int64_t)count
{
  modelCopy = model;
  sourceCopy = source;
  identifiers = [modelCopy identifiers];
  v12 = [identifiers _copyWithSource:sourceCopy asPlaylistEntryOccurence:count];

  if (v12)
  {
    v13 = [MPModelPlaylistEntry alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__MPModelPlaylistEntry__playlistEntryFromModel_source_occurrenceCount___block_invoke;
    v16[3] = &unk_1E767A0C8;
    v17 = modelCopy;
    v18 = a2;
    selfCopy = self;
    v14 = [(MPModelObject *)v13 initWithIdentifiers:v12 block:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __71__MPModelPlaylistEntry__playlistEntryFromModel_source_occurrenceCount___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) identifiers];
  v4 = [v3 modelKind];
  v5 = [v4 identityKind];

  v6 = +[MPModelSongKind identityKind];

  if (v5 == v6)
  {
    [v10 setSong:*(a1 + 32)];
  }

  else
  {
    v7 = +[MPModelTVEpisodeKind identityKind];

    if (v5 == v7)
    {
      [v10 setTvEpisode:*(a1 + 32)];
    }

    else
    {
      v8 = +[MPModelMovieKind identityKind];

      if (v5 == v8)
      {
        [v10 setMovie:*(a1 + 32)];
      }

      else
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"MPModelPlaylistEntry.m" lineNumber:164 description:{@"Unexpected playlistable kind: %@ %@", v5, *(a1 + 32)}];
      }
    }
  }
}

+ (void)___MPModelPropertyPlaylistEntryArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylistEntry.m" lineNumber:120 description:@"Translator was missing mapping for _MPModelPropertyPlaylistEntryArtwork"];
}

+ (void)__MPModelRelationshipPlaylistEntrySocialContributor__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylistEntry.m" lineNumber:118 description:@"Translator was missing mapping for MPModelRelationshipPlaylistEntrySocialContributor"];
}

+ (void)__MPModelRelationshipPlaylistEntryMovie__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylistEntry.m" lineNumber:117 description:@"Translator was missing mapping for MPModelRelationshipPlaylistEntryMovie"];
}

+ (void)__MPModelRelationshipPlaylistEntryTVEpisode__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylistEntry.m" lineNumber:116 description:@"Translator was missing mapping for MPModelRelationshipPlaylistEntryTVEpisode"];
}

+ (void)__MPModelRelationshipPlaylistEntrySong__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylistEntry.m" lineNumber:115 description:@"Translator was missing mapping for MPModelRelationshipPlaylistEntrySong"];
}

+ (void)__MPModelRelationshipPlaylistEntryPlaylist__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylistEntry.m" lineNumber:114 description:@"Translator was missing mapping for MPModelRelationshipPlaylistEntryPlaylist"];
}

+ (void)__MPModelPropertyPlaylistEntryPositionUniversalIdentifier__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylistEntry.m" lineNumber:113 description:@"Translator was missing mapping for MPModelPropertyPlaylistEntryPositionUniversalIdentifier"];
}

+ (void)__MPModelPropertyPlaylistEntryUniversalIdentifier__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylistEntry.m" lineNumber:112 description:@"Translator was missing mapping for MPModelPropertyPlaylistEntryUniversalIdentifier"];
}

+ (void)__MPModelPropertyPlaylistEntryPosition__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylistEntry.m" lineNumber:111 description:@"Translator was missing mapping for MPModelPropertyPlaylistEntryPosition"];
}

+ (id)newUniversalIdentifier
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  lowercaseString = [uUIDString lowercaseString];

  return lowercaseString;
}

- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration
{
  song = [(MPModelPlaylistEntry *)self song];
  libraryAddStatusObserverConfiguration = [song libraryAddStatusObserverConfiguration];

  return libraryAddStatusObserverConfiguration;
}

- (id)newKeepLocalStatusObserverConfiguration
{
  song = [(MPModelPlaylistEntry *)self song];
  newKeepLocalStatusObserverConfiguration = [song newKeepLocalStatusObserverConfiguration];

  return newKeepLocalStatusObserverConfiguration;
}

- (int64_t)libraryRemovalSupportedOptions
{
  song = [(MPModelPlaylistEntry *)self song];
  libraryRemovalSupportedOptions = [song libraryRemovalSupportedOptions];

  return libraryRemovalSupportedOptions;
}

- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)object
{
  objectCopy = object;
  identifiers = [(MPModelObject *)self identifiers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __119__MPModelPlaylistEntry_MPStoreLibraryPersonalizingAdditions__objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke;
  v9[3] = &unk_1E767B9B8;
  v9[4] = self;
  v6 = objectCopy;
  v10 = v6;
  v7 = [(MPModelObject *)self copyWithIdentifiers:identifiers block:v9];

  return v7;
}

void __119__MPModelPlaylistEntry_MPStoreLibraryPersonalizingAdditions__objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __119__MPModelPlaylistEntry_MPStoreLibraryPersonalizingAdditions__objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke_2;
  v6[3] = &unk_1E76800A0;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [MPModelObject performWithoutEnforcement:v6];
}

void __119__MPModelPlaylistEntry_MPStoreLibraryPersonalizingAdditions__objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) song];

  if (v2)
  {
    v3 = *(a1 + 40);
    v9 = [*(a1 + 32) song];
    v4 = [v9 objectWithStoreLibraryPersonalizationRelativeModelObject:*(a1 + 48)];
    [v3 setSong:v4];
  }

  else
  {
    v5 = [*(a1 + 32) movie];

    if (v5)
    {
      v6 = *(a1 + 40);
      v9 = [*(a1 + 32) movie];
      v4 = [v9 objectWithStoreLibraryPersonalizationRelativeModelObject:*(a1 + 48)];
      [v6 setMovie:v4];
    }

    else
    {
      v7 = [*(a1 + 32) tvEpisode];

      if (!v7)
      {
        return;
      }

      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) tvEpisode];
      v4 = [v9 objectWithStoreLibraryPersonalizationRelativeModelObject:*(a1 + 48)];
      [v8 setTvEpisode:v4];
    }
  }
}

- (id)relativeModelObjectForStoreLibraryPersonalization
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__174;
  v9 = __Block_byref_object_dispose__175;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __111__MPModelPlaylistEntry_MPStoreLibraryPersonalizingAdditions__relativeModelObjectForStoreLibraryPersonalization__block_invoke;
  v4[3] = &unk_1E76819F0;
  v4[4] = self;
  v4[5] = &v5;
  [MPModelObject performWithoutEnforcement:v4];
  relativeModelObjectForStoreLibraryPersonalization = [v6[5] relativeModelObjectForStoreLibraryPersonalization];
  _Block_object_dispose(&v5, 8);

  return relativeModelObjectForStoreLibraryPersonalization;
}

void __111__MPModelPlaylistEntry_MPStoreLibraryPersonalizingAdditions__relativeModelObjectForStoreLibraryPersonalization__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) song];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(a1 + 32) movie];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v8 = [*(a1 + 32) tvEpisode];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

- (id)personalizationScopedPropertiesForProperties:(id)properties
{
  propertiesCopy = properties;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__174;
  v15 = __Block_byref_object_dispose__175;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __107__MPModelPlaylistEntry_MPStoreLibraryPersonalizingAdditions__personalizationScopedPropertiesForProperties___block_invoke;
  v8[3] = &unk_1E7681330;
  v9 = propertiesCopy;
  v10 = &v11;
  v8[4] = self;
  v5 = propertiesCopy;
  [MPModelObject performWithoutEnforcement:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __107__MPModelPlaylistEntry_MPStoreLibraryPersonalizingAdditions__personalizationScopedPropertiesForProperties___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) song];

  v3 = *(a1 + 32);
  if (v2)
  {
    v13 = [v3 song];
    v4 = [*(a1 + 40) relationships];
    v5 = [v4 objectForKey:@"MPModelRelationshipPlaylistEntrySong"];
    v6 = v5;
    if (!v5)
    {
      v6 = +[MPPropertySet emptyPropertySet];
    }
  }

  else
  {
    v7 = [v3 movie];

    v8 = *(a1 + 32);
    if (v7)
    {
      v13 = [v8 movie];
      v4 = [*(a1 + 40) relationships];
      v5 = [v4 objectForKey:@"MPModelRelationshipPlaylistEntryMovie"];
      v6 = v5;
      if (!v5)
      {
        v6 = +[MPPropertySet emptyPropertySet];
      }
    }

    else
    {
      v9 = [v8 tvEpisode];

      if (!v9)
      {
        return;
      }

      v13 = [*(a1 + 32) tvEpisode];
      v4 = [*(a1 + 40) relationships];
      v5 = [v4 objectForKey:@"MPModelRelationshipPlaylistEntryTVEpisode"];
      v6 = v5;
      if (!v5)
      {
        v6 = +[MPPropertySet emptyPropertySet];
      }
    }
  }

  v10 = [v13 personalizationScopedPropertiesForProperties:v6];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (!v5)
  {

    v5 = 0;
  }
}

+ (id)requiredStoreLibraryPersonalizationProperties
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v9[0] = @"MPModelRelationshipPlaylistEntrySong";
  v3 = +[MPModelSong requiredStoreLibraryPersonalizationProperties];
  v10[0] = v3;
  v9[1] = @"MPModelRelationshipPlaylistEntryMovie";
  v4 = +[MPModelMovie requiredStoreLibraryPersonalizationProperties];
  v10[1] = v4;
  v9[2] = @"MPModelRelationshipPlaylistEntryTVEpisode";
  v5 = +[MPModelTVEpisode requiredStoreLibraryPersonalizationProperties];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = [(MPPropertySet *)v2 initWithProperties:MEMORY[0x1E695E0F0] relationships:v6];

  return v7;
}

@end