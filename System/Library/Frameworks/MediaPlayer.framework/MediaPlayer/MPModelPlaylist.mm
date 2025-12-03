@interface MPModelPlaylist
+ (id)requiredKeepLocalStatusObservationProperties;
+ (id)requiredLibraryAddStatusObservationProperties;
+ (id)requiredLibraryRemovalProperties;
+ (id)requiredStoreLibraryPersonalizationProperties;
+ (void)__MPModelPropertyPlaylistArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistCloudVersionHash__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistCollaborationInvitationURL__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistCollaborationJoinRequestIsPending__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistCollaborationMode__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistCollaborationSharingMode__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistCollaboratorPermissions__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistCollaboratorStatus__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistCoverArtworkRecipe__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistCuratorPlaylist__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistDateFavorited__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistDescriptionText__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistDownloadedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistDownloadedTrackCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistEditSessionID__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistEditorNotes__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistEditorialArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistHasAnyCleanDownloadedTracks__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistHasAnyCleanTracks__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistHasCleanContent__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistHasExplicitContent__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistIsCollaborative__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistIsDisliked__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistIsFavoriteSongsPlaylist__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistIsFavorite__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistIsOwner__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistIsPinned__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistIsStoreRedownloadable__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistKeepLocalConstraints__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistKeepLocalEnableState__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistKeepLocalManagedStatusReason__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistKeepLocalManagedStatus__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistLastDevicePlaybackDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistLastModifiedDateComponents__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistLibraryAddedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistLibraryAdded__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistName__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistParentPersistentID__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistPortraitArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistPublicPlaylist__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistReleaseDateComponents__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistShareShortURL__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistShareURL__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistShortEditorNotes__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistStaticTallEditorialArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistSubscribed__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistSuperHeroTallEditorialArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistTrackCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistTracksTiledArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistTraits__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistType__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistUserEditableComponents__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistVersionHash__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlaylistVisiblePlaylist__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlaylistCurator__MAPPING_MISSING__;
- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration;
- (id)artworkCatalog;
- (id)contentItemCollectionInfo;
- (id)editorialArtworkCatalog;
- (id)humanDescription;
- (id)newKeepLocalStatusObserverConfiguration;
- (id)portraitArtworkCatalog;
- (id)staticTallEditorialArtworkCatalog;
- (id)superHeroTallEditorialArtworkCatalog;
- (id)tracksTiledArtworkCatalogWithRows:(unint64_t)rows columns:(unint64_t)columns;
- (int64_t)libraryRemovalSupportedOptions;
@end

@implementation MPModelPlaylist

+ (id)requiredLibraryRemovalProperties
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyPlaylistLibraryAdded";
  v5[1] = @"MPModelPropertyPlaylistKeepLocalManagedStatus";
  v5[2] = @"MPModelPropertyPlaylistKeepLocalManagedStatusReason";
  v5[3] = @"MPModelPropertyPlaylistKeepLocalConstraints";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

+ (id)requiredLibraryAddStatusObservationProperties
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyPlaylistLibraryAdded";
  v5[1] = @"MPModelPropertyPlaylistHasCleanContent";
  v5[2] = @"MPModelPropertyPlaylistHasExplicitContent";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

+ (id)requiredKeepLocalStatusObservationProperties
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyPlaylistKeepLocalManagedStatus";
  v5[1] = @"MPModelPropertyPlaylistKeepLocalManagedStatusReason";
  v5[2] = @"MPModelPropertyPlaylistKeepLocalEnableState";
  v5[3] = @"MPModelPropertyPlaylistKeepLocalConstraints";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)portraitArtworkCatalog
{
  portraitArtworkCatalogBlock = [(MPModelPlaylist *)self portraitArtworkCatalogBlock];
  v4 = portraitArtworkCatalogBlock;
  if (portraitArtworkCatalogBlock)
  {
    v5 = (*(portraitArtworkCatalogBlock + 16))(portraitArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tracksTiledArtworkCatalogWithRows:(unint64_t)rows columns:(unint64_t)columns
{
  tiledArtworkCatalogBlock = [(MPModelPlaylist *)self tiledArtworkCatalogBlock];
  v8 = tiledArtworkCatalogBlock;
  if (tiledArtworkCatalogBlock)
  {
    v9 = (*(tiledArtworkCatalogBlock + 16))(tiledArtworkCatalogBlock, self, rows, columns);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)editorialArtworkCatalog
{
  editorialArtworkCatalogBlock = [(MPModelPlaylist *)self editorialArtworkCatalogBlock];
  v4 = editorialArtworkCatalogBlock;
  if (editorialArtworkCatalogBlock)
  {
    v5 = (*(editorialArtworkCatalogBlock + 16))(editorialArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)superHeroTallEditorialArtworkCatalog
{
  superHeroTallEditorialArtworkCatalogBlock = [(MPModelPlaylist *)self superHeroTallEditorialArtworkCatalogBlock];
  v4 = superHeroTallEditorialArtworkCatalogBlock;
  if (superHeroTallEditorialArtworkCatalogBlock)
  {
    v5 = (*(superHeroTallEditorialArtworkCatalogBlock + 16))(superHeroTallEditorialArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)staticTallEditorialArtworkCatalog
{
  staticTallEditorialArtworkCatalogBlock = [(MPModelPlaylist *)self staticTallEditorialArtworkCatalogBlock];
  v4 = staticTallEditorialArtworkCatalogBlock;
  if (staticTallEditorialArtworkCatalogBlock)
  {
    v5 = (*(staticTallEditorialArtworkCatalogBlock + 16))(staticTallEditorialArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelPlaylist *)self artworkCatalogBlock];
  v4 = artworkCatalogBlock;
  if (artworkCatalogBlock)
  {
    v5 = (*(artworkCatalogBlock + 16))(artworkCatalogBlock, self);
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
  identifiers = [(MPModelObject *)self identifiers];
  humanDescription = [identifiers humanDescription];
  v6 = [v3 stringWithFormat:@"playlist %@", humanDescription];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyPlaylistName"])
  {
    v7 = MEMORY[0x1E696AEC0];
    name = [(MPModelPlaylist *)self name];
    v9 = [v7 stringWithFormat:@"“%@” ", name];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyPlaylistHasAnyCleanDownloadedTracks__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:205 description:@"Translator was missing mapping for MPModelPropertyPlaylistHasAnyCleanDownloadedTracks"];
}

+ (void)__MPModelPropertyPlaylistHasAnyCleanTracks__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:204 description:@"Translator was missing mapping for MPModelPropertyPlaylistHasAnyCleanTracks"];
}

+ (void)__MPModelPropertyPlaylistIsPinned__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:203 description:@"Translator was missing mapping for MPModelPropertyPlaylistIsPinned"];
}

+ (void)__MPModelPropertyPlaylistDownloadedTrackCount__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:202 description:@"Translator was missing mapping for MPModelPropertyPlaylistDownloadedTrackCount"];
}

+ (void)__MPModelPropertyPlaylistIsStoreRedownloadable__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:201 description:@"Translator was missing mapping for MPModelPropertyPlaylistIsStoreRedownloadable"];
}

+ (void)__MPModelPropertyPlaylistCollaboratorStatus__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:200 description:@"Translator was missing mapping for MPModelPropertyPlaylistCollaboratorStatus"];
}

+ (void)__MPModelPropertyPlaylistCollaborationJoinRequestIsPending__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:199 description:@"Translator was missing mapping for MPModelPropertyPlaylistCollaborationJoinRequestIsPending"];
}

+ (void)__MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:198 description:@"Translator was missing mapping for MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate"];
}

+ (void)__MPModelPropertyPlaylistCollaborationInvitationURL__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:197 description:@"Translator was missing mapping for MPModelPropertyPlaylistCollaborationInvitationURL"];
}

+ (void)__MPModelPropertyPlaylistCollaboratorPermissions__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:196 description:@"Translator was missing mapping for MPModelPropertyPlaylistCollaboratorPermissions"];
}

+ (void)__MPModelPropertyPlaylistCollaborationMode__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:195 description:@"Translator was missing mapping for MPModelPropertyPlaylistCollaborationMode"];
}

+ (void)__MPModelPropertyPlaylistCollaborationSharingMode__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:194 description:@"Translator was missing mapping for MPModelPropertyPlaylistCollaborationSharingMode"];
}

+ (void)__MPModelPropertyPlaylistIsCollaborative__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:193 description:@"Translator was missing mapping for MPModelPropertyPlaylistIsCollaborative"];
}

+ (void)__MPModelPropertyPlaylistEditSessionID__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:192 description:@"Translator was missing mapping for MPModelPropertyPlaylistEditSessionID"];
}

+ (void)__MPModelPropertyPlaylistCoverArtworkRecipe__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:191 description:@"Translator was missing mapping for MPModelPropertyPlaylistCoverArtworkRecipe"];
}

+ (void)__MPModelPropertyPlaylistIsFavoriteSongsPlaylist__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:190 description:@"Translator was missing mapping for MPModelPropertyPlaylistIsFavoriteSongsPlaylist"];
}

+ (void)__MPModelPropertyPlaylistDateFavorited__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:189 description:@"Translator was missing mapping for MPModelPropertyPlaylistDateFavorited"];
}

+ (void)__MPModelPropertyPlaylistIsDisliked__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:188 description:@"Translator was missing mapping for MPModelPropertyPlaylistIsDisliked"];
}

+ (void)__MPModelPropertyPlaylistIsFavorite__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:187 description:@"Translator was missing mapping for MPModelPropertyPlaylistIsFavorite"];
}

+ (void)__MPModelPropertyPlaylistTraits__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:186 description:@"Translator was missing mapping for MPModelPropertyPlaylistTraits"];
}

+ (void)__MPModelPropertyPlaylistDownloadedDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:185 description:@"Translator was missing mapping for MPModelPropertyPlaylistDownloadedDate"];
}

+ (void)__MPModelPropertyPlaylistVersionHash__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:184 description:@"Translator was missing mapping for MPModelPropertyPlaylistVersionHash"];
}

+ (void)__MPModelPropertyPlaylistCloudVersionHash__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:183 description:@"Translator was missing mapping for MPModelPropertyPlaylistCloudVersionHash"];
}

+ (void)__MPModelPropertyPlaylistLastDevicePlaybackDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:182 description:@"Translator was missing mapping for MPModelPropertyPlaylistLastDevicePlaybackDate"];
}

+ (void)__MPModelPropertyPlaylistKeepLocalConstraints__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:181 description:@"Translator was missing mapping for MPModelPropertyPlaylistKeepLocalConstraints"];
}

+ (void)__MPModelPropertyPlaylistKeepLocalManagedStatusReason__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:180 description:@"Translator was missing mapping for MPModelPropertyPlaylistKeepLocalManagedStatusReason"];
}

+ (void)__MPModelPropertyPlaylistKeepLocalManagedStatus__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:179 description:@"Translator was missing mapping for MPModelPropertyPlaylistKeepLocalManagedStatus"];
}

+ (void)__MPModelPropertyPlaylistKeepLocalEnableState__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:178 description:@"Translator was missing mapping for MPModelPropertyPlaylistKeepLocalEnableState"];
}

+ (void)__MPModelPropertyPlaylistTracksTiledArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:177 description:@"Translator was missing mapping for MPModelPropertyPlaylistTracksTiledArtwork"];
}

+ (void)__MPModelPropertyPlaylistLibraryAddedDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:176 description:@"Translator was missing mapping for MPModelPropertyPlaylistLibraryAddedDate"];
}

+ (void)__MPModelPropertyPlaylistLibraryAdded__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:175 description:@"Translator was missing mapping for MPModelPropertyPlaylistLibraryAdded"];
}

+ (void)__MPModelPropertyPlaylistEditorialArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:174 description:@"Translator was missing mapping for MPModelPropertyPlaylistEditorialArtwork"];
}

+ (void)__MPModelPropertyPlaylistPortraitArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:173 description:@"Translator was missing mapping for MPModelPropertyPlaylistPortraitArtwork"];
}

+ (void)__MPModelPropertyPlaylistSuperHeroTallEditorialArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:172 description:@"Translator was missing mapping for MPModelPropertyPlaylistSuperHeroTallEditorialArtwork"];
}

+ (void)__MPModelPropertyPlaylistStaticTallEditorialArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:171 description:@"Translator was missing mapping for MPModelPropertyPlaylistStaticTallEditorialArtwork"];
}

+ (void)__MPModelPropertyPlaylistArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:170 description:@"Translator was missing mapping for MPModelPropertyPlaylistArtwork"];
}

+ (void)__MPModelPropertyPlaylistLastModifiedDateComponents__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:169 description:@"Translator was missing mapping for MPModelPropertyPlaylistLastModifiedDateComponents"];
}

+ (void)__MPModelPropertyPlaylistReleaseDateComponents__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:168 description:@"Translator was missing mapping for MPModelPropertyPlaylistReleaseDateComponents"];
}

+ (void)__MPModelPropertyPlaylistShareShortURL__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:167 description:@"Translator was missing mapping for MPModelPropertyPlaylistShareShortURL"];
}

+ (void)__MPModelPropertyPlaylistShareURL__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:166 description:@"Translator was missing mapping for MPModelPropertyPlaylistShareURL"];
}

+ (void)__MPModelPropertyPlaylistShortEditorNotes__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:165 description:@"Translator was missing mapping for MPModelPropertyPlaylistShortEditorNotes"];
}

+ (void)__MPModelPropertyPlaylistEditorNotes__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:164 description:@"Translator was missing mapping for MPModelPropertyPlaylistEditorNotes"];
}

+ (void)__MPModelPropertyPlaylistTrackCount__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:163 description:@"Translator was missing mapping for MPModelPropertyPlaylistTrackCount"];
}

+ (void)__MPModelPropertyPlaylistType__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:162 description:@"Translator was missing mapping for MPModelPropertyPlaylistType"];
}

+ (void)__MPModelPropertyPlaylistUserEditableComponents__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:161 description:@"Translator was missing mapping for MPModelPropertyPlaylistUserEditableComponents"];
}

+ (void)__MPModelPropertyPlaylistSubscribed__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:160 description:@"Translator was missing mapping for MPModelPropertyPlaylistSubscribed"];
}

+ (void)__MPModelPropertyPlaylistVisiblePlaylist__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:159 description:@"Translator was missing mapping for MPModelPropertyPlaylistVisiblePlaylist"];
}

+ (void)__MPModelPropertyPlaylistPublicPlaylist__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:158 description:@"Translator was missing mapping for MPModelPropertyPlaylistPublicPlaylist"];
}

+ (void)__MPModelPropertyPlaylistIsOwner__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:157 description:@"Translator was missing mapping for MPModelPropertyPlaylistIsOwner"];
}

+ (void)__MPModelPropertyPlaylistCuratorPlaylist__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:156 description:@"Translator was missing mapping for MPModelPropertyPlaylistCuratorPlaylist"];
}

+ (void)__MPModelPropertyPlaylistHasExplicitContent__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:155 description:@"Translator was missing mapping for MPModelPropertyPlaylistHasExplicitContent"];
}

+ (void)__MPModelPropertyPlaylistHasCleanContent__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:154 description:@"Translator was missing mapping for MPModelPropertyPlaylistHasCleanContent"];
}

+ (void)__MPModelPropertyPlaylistParentPersistentID__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:153 description:@"Translator was missing mapping for MPModelPropertyPlaylistParentPersistentID"];
}

+ (void)__MPModelRelationshipPlaylistCurator__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:152 description:@"Translator was missing mapping for MPModelRelationshipPlaylistCurator"];
}

+ (void)__MPModelPropertyPlaylistDescriptionText__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:151 description:@"Translator was missing mapping for MPModelPropertyPlaylistDescriptionText"];
}

+ (void)__MPModelPropertyPlaylistName__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPlaylist.m" lineNumber:150 description:@"Translator was missing mapping for MPModelPropertyPlaylistName"];
}

- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration
{
  isLibraryAdded = [(MPModelPlaylist *)self isLibraryAdded];
  hasCleanContent = [(MPModelPlaylist *)self hasCleanContent];
  hasExplicitContent = [(MPModelPlaylist *)self hasExplicitContent];
  v6 = 0x100000000;
  if (hasExplicitContent)
  {
    v6 = 0x101000000;
  }

  v7 = 0x10000;
  if (!hasCleanContent)
  {
    v7 = 0;
  }

  v8 = 257;
  if (!isLibraryAdded)
  {
    v8 = 1;
  }

  return (v8 | v7 | v6);
}

- (id)newKeepLocalStatusObserverConfiguration
{
  v3 = objc_alloc_init(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration);
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v3 setIdentifyingModelObject:self];
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v3 setEnableState:[(MPModelPlaylist *)self keepLocalEnableState]];
  [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)v3 setManagedStatus:[(MPModelPlaylist *)self keepLocalManagedStatus]];
  [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)v3 setStoreRedownloadable:1];
  [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)v3 setCollectionType:1];
  return v3;
}

- (int64_t)libraryRemovalSupportedOptions
{
  if ([(MPModelPlaylist *)self isLibraryAdded])
  {
    v3 = 2 * ([(MPModelPlaylist *)self type]!= 9);
  }

  else
  {
    v3 = 0;
  }

  if ([(MPModelPlaylist *)self keepLocalManagedStatus]== 2)
  {
    return v3 + 1;
  }

  else
  {
    return v3;
  }
}

+ (id)requiredStoreLibraryPersonalizationProperties
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyPlaylistIsFavorite";
  v5[1] = @"MPModelPropertyPlaylistIsDisliked";
  v5[2] = @"MPModelPropertyPlaylistIsPinned";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)contentItemCollectionInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MPModelPlaylist_MPContentItemAdditions__contentItemCollectionInfo__block_invoke;
  v8[3] = &unk_1E76823C0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [MPModelObject performWithoutEnforcement:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __68__MPModelPlaylist_MPContentItemAdditions__contentItemCollectionInfo__block_invoke(uint64_t a1)
{
  v9 = @"_MPNowPlayingCollectionInfoCollectionTypePlaylist";
  v2 = @"_MPNowPlayingCollectionInfoCollectionTypePlaylist";
  if ([*(a1 + 32) type] == 3)
  {
    v9 = @"_MPNowPlayingCollectionInfoCollectionTypePlaylistFolder";
    v3 = @"_MPNowPlayingCollectionInfoCollectionTypePlaylistFolder";
  }

  [*(a1 + 40) setObject:v9 forKeyedSubscript:@"_MPNowPlayingCollectionInfoKeyCollectionType"];
  v4 = [*(a1 + 32) name];
  if ([v4 length])
  {
    [*(a1 + 40) setObject:v4 forKey:@"_MPNowPlayingCollectionInfoKeyTitle"];
  }

  v5 = [*(a1 + 32) identifiers];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v5 universalStore];
  v8 = [v7 globalPlaylistID];

  if ([v8 length])
  {
    [v6 setObject:v8 forKey:@"_MPNowPlayingInfoPropertyPlaylistGlobalIdentifier"];
  }

  if ([v6 count])
  {
    [*(a1 + 40) setObject:v6 forKey:@"_MPNowPlayingCollectionInfoKeyIdentifiers"];
  }
}

@end