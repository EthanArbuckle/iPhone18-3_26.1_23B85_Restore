@interface MPModelAlbum
+ (id)requiredKeepLocalStatusObservationProperties;
+ (id)requiredLibraryAddStatusObservationProperties;
+ (id)requiredLibraryRemovalProperties;
+ (id)requiredStoreLibraryPersonalizationProperties;
+ (void)__MPModelPropertyAlbumArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumClassicalExperienceAvailable__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumCleanDownloadedTrackCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumCleanSongCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumCopyrightText__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumDateFavorited__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumDiscCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumDownloadedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumDownloadedTrackCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumEditorNotes__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumHasCleanContent__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumHasExplicitContent__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumIsClassical__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumIsCompilation__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumIsDisliked__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumIsFavorite__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumIsPinned__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumIsStoreRedownloadable__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumKeepLocalConstraints__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumKeepLocalEnableState__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumKeepLocalManagedStatusReason__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumKeepLocalManagedStatus__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumLastDevicePlaybackDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumLibraryAddEligible__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumLibraryAddedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumLibraryAdded__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumMaximumItemTrackNumber__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumPreorder__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumReleaseDateComponents__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumShortEditorNotes__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumSongPopularity__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumStaticTallEditorialArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumSuperHeroTallEditorialArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumTitle__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumTrackCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumTraits__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumVersionHash__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumVolumeNormalization__MAPPING_MISSING__;
+ (void)__MPModelPropertyAlbumYear__MAPPING_MISSING__;
+ (void)__MPModelRelationshipAlbumArtist__MAPPING_MISSING__;
+ (void)__MPModelRelationshipAlbumGenre__MAPPING_MISSING__;
+ (void)__MPModelRelationshipAlbumRepresentativeSong__MAPPING_MISSING__;
- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration;
- (id)artworkCatalog;
- (id)contentItemCollectionInfo;
- (id)humanDescription;
- (id)newKeepLocalStatusObserverConfiguration;
- (id)songPopularityForIdentifiers:(id)a3;
- (id)staticTallEditorialArtworkCatalog;
- (id)superHeroTallEditorialArtworkCatalog;
- (int64_t)libraryRemovalSupportedOptions;
@end

@implementation MPModelAlbum

- (id)songPopularityForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(MPModelAlbum *)self songPopularityBlock];
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 16))(v5, self, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)superHeroTallEditorialArtworkCatalog
{
  v3 = [(MPModelAlbum *)self superHeroTallEditorialArtworkCatalogBlock];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)staticTallEditorialArtworkCatalog
{
  v3 = [(MPModelAlbum *)self staticTallEditorialArtworkCatalogBlock];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)artworkCatalog
{
  v3 = [(MPModelAlbum *)self artworkCatalogBlock];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)humanDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(MPModelObject *)self identifiers];
  v5 = [v4 humanDescription];
  v6 = [v3 stringWithFormat:@"album %@", v5];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyAlbumTitle"])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(MPModelAlbum *)self title];
    v9 = [v7 stringWithFormat:@"“%@” ", v8];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyAlbumCleanDownloadedTrackCount__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:179 description:@"Translator was missing mapping for MPModelPropertyAlbumCleanDownloadedTrackCount"];
}

+ (void)__MPModelPropertyAlbumIsPinned__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:178 description:@"Translator was missing mapping for MPModelPropertyAlbumIsPinned"];
}

+ (void)__MPModelPropertyAlbumDownloadedTrackCount__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:177 description:@"Translator was missing mapping for MPModelPropertyAlbumDownloadedTrackCount"];
}

+ (void)__MPModelPropertyAlbumIsStoreRedownloadable__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:176 description:@"Translator was missing mapping for MPModelPropertyAlbumIsStoreRedownloadable"];
}

+ (void)__MPModelPropertyAlbumDateFavorited__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:175 description:@"Translator was missing mapping for MPModelPropertyAlbumDateFavorited"];
}

+ (void)__MPModelPropertyAlbumIsDisliked__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:174 description:@"Translator was missing mapping for MPModelPropertyAlbumIsDisliked"];
}

+ (void)__MPModelPropertyAlbumIsFavorite__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:173 description:@"Translator was missing mapping for MPModelPropertyAlbumIsFavorite"];
}

+ (void)__MPModelPropertyAlbumVersionHash__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:172 description:@"Translator was missing mapping for MPModelPropertyAlbumVersionHash"];
}

+ (void)__MPModelPropertyAlbumClassicalExperienceAvailable__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:171 description:@"Translator was missing mapping for MPModelPropertyAlbumClassicalExperienceAvailable"];
}

+ (void)__MPModelPropertyAlbumTraits__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:170 description:@"Translator was missing mapping for MPModelPropertyAlbumTraits"];
}

+ (void)__MPModelPropertyAlbumDownloadedDate__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:169 description:@"Translator was missing mapping for MPModelPropertyAlbumDownloadedDate"];
}

+ (void)__MPModelPropertyAlbumSongPopularity__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:168 description:@"Translator was missing mapping for MPModelPropertyAlbumSongPopularity"];
}

+ (void)__MPModelPropertyAlbumShortEditorNotes__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:167 description:@"Translator was missing mapping for MPModelPropertyAlbumShortEditorNotes"];
}

+ (void)__MPModelPropertyAlbumEditorNotes__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:166 description:@"Translator was missing mapping for MPModelPropertyAlbumEditorNotes"];
}

+ (void)__MPModelPropertyAlbumPreorder__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:165 description:@"Translator was missing mapping for MPModelPropertyAlbumPreorder"];
}

+ (void)__MPModelPropertyAlbumLastDevicePlaybackDate__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:164 description:@"Translator was missing mapping for MPModelPropertyAlbumLastDevicePlaybackDate"];
}

+ (void)__MPModelPropertyAlbumLibraryAddEligible__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:163 description:@"Translator was missing mapping for MPModelPropertyAlbumLibraryAddEligible"];
}

+ (void)__MPModelPropertyAlbumKeepLocalConstraints__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:162 description:@"Translator was missing mapping for MPModelPropertyAlbumKeepLocalConstraints"];
}

+ (void)__MPModelPropertyAlbumKeepLocalManagedStatusReason__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:161 description:@"Translator was missing mapping for MPModelPropertyAlbumKeepLocalManagedStatusReason"];
}

+ (void)__MPModelPropertyAlbumKeepLocalManagedStatus__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:160 description:@"Translator was missing mapping for MPModelPropertyAlbumKeepLocalManagedStatus"];
}

+ (void)__MPModelPropertyAlbumKeepLocalEnableState__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:159 description:@"Translator was missing mapping for MPModelPropertyAlbumKeepLocalEnableState"];
}

+ (void)__MPModelPropertyAlbumVolumeNormalization__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:158 description:@"Translator was missing mapping for MPModelPropertyAlbumVolumeNormalization"];
}

+ (void)__MPModelPropertyAlbumLibraryAdded__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:157 description:@"Translator was missing mapping for MPModelPropertyAlbumLibraryAdded"];
}

+ (void)__MPModelPropertyAlbumYear__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:156 description:@"Translator was missing mapping for MPModelPropertyAlbumYear"];
}

+ (void)__MPModelPropertyAlbumLibraryAddedDate__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:155 description:@"Translator was missing mapping for MPModelPropertyAlbumLibraryAddedDate"];
}

+ (void)__MPModelPropertyAlbumCopyrightText__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:154 description:@"Translator was missing mapping for MPModelPropertyAlbumCopyrightText"];
}

+ (void)__MPModelPropertyAlbumSuperHeroTallEditorialArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:153 description:@"Translator was missing mapping for MPModelPropertyAlbumSuperHeroTallEditorialArtwork"];
}

+ (void)__MPModelPropertyAlbumStaticTallEditorialArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:152 description:@"Translator was missing mapping for MPModelPropertyAlbumStaticTallEditorialArtwork"];
}

+ (void)__MPModelPropertyAlbumArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:151 description:@"Translator was missing mapping for MPModelPropertyAlbumArtwork"];
}

+ (void)__MPModelPropertyAlbumReleaseDateComponents__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:150 description:@"Translator was missing mapping for MPModelPropertyAlbumReleaseDateComponents"];
}

+ (void)__MPModelPropertyAlbumIsClassical__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:149 description:@"Translator was missing mapping for MPModelPropertyAlbumIsClassical"];
}

+ (void)__MPModelPropertyAlbumIsCompilation__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:148 description:@"Translator was missing mapping for MPModelPropertyAlbumIsCompilation"];
}

+ (void)__MPModelPropertyAlbumHasExplicitContent__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:147 description:@"Translator was missing mapping for MPModelPropertyAlbumHasExplicitContent"];
}

+ (void)__MPModelPropertyAlbumHasCleanContent__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:146 description:@"Translator was missing mapping for MPModelPropertyAlbumHasCleanContent"];
}

+ (void)__MPModelPropertyAlbumDiscCount__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:145 description:@"Translator was missing mapping for MPModelPropertyAlbumDiscCount"];
}

+ (void)__MPModelPropertyAlbumMaximumItemTrackNumber__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:144 description:@"Translator was missing mapping for MPModelPropertyAlbumMaximumItemTrackNumber"];
}

+ (void)__MPModelPropertyAlbumCleanSongCount__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:143 description:@"Translator was missing mapping for MPModelPropertyAlbumCleanSongCount"];
}

+ (void)__MPModelPropertyAlbumTrackCount__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:142 description:@"Translator was missing mapping for MPModelPropertyAlbumTrackCount"];
}

+ (void)__MPModelRelationshipAlbumRepresentativeSong__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:141 description:@"Translator was missing mapping for MPModelRelationshipAlbumRepresentativeSong"];
}

+ (void)__MPModelRelationshipAlbumGenre__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:140 description:@"Translator was missing mapping for MPModelRelationshipAlbumGenre"];
}

+ (void)__MPModelRelationshipAlbumArtist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:139 description:@"Translator was missing mapping for MPModelRelationshipAlbumArtist"];
}

+ (void)__MPModelPropertyAlbumTitle__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelAlbum.m" lineNumber:138 description:@"Translator was missing mapping for MPModelPropertyAlbumTitle"];
}

- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration
{
  v3 = [(MPModelAlbum *)self isLibraryAdded];
  v4 = [(MPModelAlbum *)self hasCleanContent];
  v5 = [(MPModelAlbum *)self hasExplicitContent];
  v6 = [(MPModelAlbum *)self isLibraryAddEligible];
  v7 = 0x100000000;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if (!v5)
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if (!v4)
  {
    v9 = 0;
  }

  v10 = 257;
  if (!v3)
  {
    v10 = 1;
  }

  return (v10 | v9 | v8 | v7);
}

+ (id)requiredLibraryAddStatusObservationProperties
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyAlbumHasCleanContent";
  v5[1] = @"MPModelPropertyAlbumHasExplicitContent";
  v5[2] = @"MPModelPropertyAlbumLibraryAddEligible";
  v5[3] = @"MPModelPropertyAlbumLibraryAdded";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)newKeepLocalStatusObserverConfiguration
{
  v3 = objc_alloc_init(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration);
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v3 setIdentifyingModelObject:self];
  [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)v3 setManagedStatus:[(MPModelAlbum *)self keepLocalManagedStatus]];
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v3 setEnableState:[(MPModelAlbum *)self keepLocalEnableState]];
  [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)v3 setCollectionType:1];
  [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)v3 setStoreRedownloadable:[(MPModelAlbum *)self isStoreRedownloadable]];
  return v3;
}

+ (id)requiredKeepLocalStatusObservationProperties
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyAlbumKeepLocalManagedStatus";
  v5[1] = @"MPModelPropertyAlbumKeepLocalManagedStatusReason";
  v5[2] = @"MPModelPropertyAlbumKeepLocalEnableState";
  v5[3] = @"MPModelPropertyAlbumKeepLocalConstraints";
  v5[4] = @"MPModelPropertyAlbumIsStoreRedownloadable";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (int64_t)libraryRemovalSupportedOptions
{
  if ([(MPModelAlbum *)self isLibraryAdded])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if ([(MPModelAlbum *)self keepLocalManagedStatus]== 2)
  {
    return v3 + 1;
  }

  else
  {
    return v3;
  }
}

+ (id)requiredLibraryRemovalProperties
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyAlbumLibraryAdded";
  v5[1] = @"MPModelPropertyAlbumKeepLocalManagedStatus";
  v5[2] = @"MPModelPropertyAlbumKeepLocalManagedStatusReason";
  v5[3] = @"MPModelPropertyAlbumKeepLocalConstraints";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

+ (id)requiredStoreLibraryPersonalizationProperties
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyAlbumLibraryAddEligible";
  v5[1] = @"MPModelPropertyAlbumIsFavorite";
  v5[2] = @"MPModelPropertyAlbumIsDisliked";
  v5[3] = @"MPModelPropertyAlbumIsPinned";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)contentItemCollectionInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"_MPNowPlayingCollectionInfoCollectionTypeAlbum" forKey:@"_MPNowPlayingCollectionInfoKeyCollectionType"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__MPModelAlbum_MPContentItemAdditions__contentItemCollectionInfo__block_invoke;
  v8[3] = &unk_1E76823C0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [MPModelObject performWithoutEnforcement:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __65__MPModelAlbum_MPContentItemAdditions__contentItemCollectionInfo__block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) identifiers];
  v2 = [*(a1 + 32) title];
  if ([v2 length])
  {
    [*(a1 + 40) setObject:v2 forKey:@"_MPNowPlayingCollectionInfoKeyTitle"];
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [v9 universalStore];
  v5 = [v4 adamID];

  if (v5 || ([v9 universalStore], v6 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v6, "purchasedAdamID"), v6, v5) || (objc_msgSend(v9, "universalStore"), v7 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v7, "subscriptionAdamID"), v7, v5))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    [v3 setObject:v8 forKey:@"_MPNowPlayingInfoPropertyAlbumiTunesStoreAdamIdentifier"];
  }

  if ([v3 count])
  {
    [*(a1 + 40) setObject:v3 forKey:@"_MPNowPlayingCollectionInfoKeyIdentifiers"];
  }
}

@end