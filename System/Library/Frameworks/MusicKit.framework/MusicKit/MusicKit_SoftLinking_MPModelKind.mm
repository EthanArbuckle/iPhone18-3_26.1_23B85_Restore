@interface MusicKit_SoftLinking_MPModelKind
+ (BOOL)shouldShowAllExtendedVideoContent;
+ (id)_curatorKindForVariants:(unint64_t)variants;
+ (id)_defaultAlbumKind;
+ (id)_defaultAlbumKindForTracks;
+ (id)_defaultArtistKind;
+ (id)_defaultComposerKind;
+ (id)_defaultCreditArtistKind;
+ (id)_defaultCuratorKind;
+ (id)_defaultFileAssetKind;
+ (id)_defaultGenreKind;
+ (id)_defaultLyricsKind;
+ (id)_defaultMovieKind;
+ (id)_defaultPinKind;
+ (id)_defaultPlaylistAuthorKind;
+ (id)_defaultPlaylistEntryKind;
+ (id)_defaultPlaylistEntryKindForMusicVideos;
+ (id)_defaultPlaylistEntryKindForSongs;
+ (id)_defaultPlaylistEntryKindForTracks;
+ (id)_defaultPlaylistEntryReactionKind;
+ (id)_defaultPlaylistFolderItemKind;
+ (id)_defaultPlaylistFolderKind;
+ (id)_defaultPlaylistKind;
+ (id)_defaultPlaylistKindExcludingEmpty;
+ (id)_defaultRadioStationKind;
+ (id)_defaultRecentlyAddedObjectKind;
+ (id)_defaultRecordLabelKind;
+ (id)_defaultSocialPersonKind;
+ (id)_defaultTVEpisodeKind;
+ (id)_defaultTVSeasonKind;
+ (id)_defaultTVShowKind;
+ (id)_modelKindForModelObjectType:(int64_t)type;
+ (id)_sanitizeKind:(id)kind;
+ (id)_sanitizePlaylistEntryKind:(id)kind;
+ (id)_sanitizeSongKind:(id)kind;
+ (id)_songKindForVariants:(unint64_t)variants;
+ (id)_songKindForVariants:(unint64_t)variants options:(unint64_t)options;
+ (id)playlistEntryKindWithKinds:(id)kinds;
- (id)_initWithUnderlyingKind:(id)kind;
- (int64_t)modelObjectType;
@end

@implementation MusicKit_SoftLinking_MPModelKind

+ (id)_defaultAlbumKind
{
  MPModelAlbumClass = getMPModelAlbumClass();
  _defaultSongKind = [self _defaultSongKind];
  v5 = [MPModelAlbumClass kindWithSongKind:_defaultSongKind];

  return v5;
}

+ (id)_defaultMovieKind
{
  shouldShowAllExtendedVideoContent = [self shouldShowAllExtendedVideoContent];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getMPModelMovieClass_softClass_0;
  v12 = getMPModelMovieClass_softClass_0;
  if (!getMPModelMovieClass_softClass_0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMPModelMovieClass_block_invoke_0;
    v8[3] = &unk_278229610;
    v8[4] = &v9;
    __getMPModelMovieClass_block_invoke_0(v8);
    v3 = v10[3];
  }

  if (shouldShowAllExtendedVideoContent)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = v3;
  _Block_object_dispose(&v9, 8);
  v6 = [v3 kindWithVariants:v4];

  return v6;
}

+ (BOOL)shouldShowAllExtendedVideoContent
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"showAllTVShows"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)_defaultPlaylistKindExcludingEmpty
{
  MPModelPlaylistClass = getMPModelPlaylistClass();
  _defaultPlaylistEntryKind = [self _defaultPlaylistEntryKind];
  v5 = [MPModelPlaylistClass kindWithVariants:215 playlistEntryKind:_defaultPlaylistEntryKind options:4];

  return v5;
}

+ (id)_defaultPlaylistEntryKind
{
  v11[3] = *MEMORY[0x277D85DE8];
  MPModelPlaylistEntryClass = getMPModelPlaylistEntryClass();
  _defaultSongKind = [self _defaultSongKind];
  _defaultTVEpisodeKind = [self _defaultTVEpisodeKind];
  v11[1] = _defaultTVEpisodeKind;
  _defaultMovieKind = [self _defaultMovieKind];
  v11[2] = _defaultMovieKind;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v8 = [MPModelPlaylistEntryClass kindWithKinds:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_defaultTVEpisodeKind
{
  shouldShowAllExtendedVideoContent = [self shouldShowAllExtendedVideoContent];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getMPModelTVEpisodeClass_softClass_0;
  v12 = getMPModelTVEpisodeClass_softClass_0;
  if (!getMPModelTVEpisodeClass_softClass_0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMPModelTVEpisodeClass_block_invoke_0;
    v8[3] = &unk_278229610;
    v8[4] = &v9;
    __getMPModelTVEpisodeClass_block_invoke_0(v8);
    v3 = v10[3];
  }

  if (shouldShowAllExtendedVideoContent)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = v3;
  _Block_object_dispose(&v9, 8);
  v6 = [v3 kindWithVariants:v4];

  return v6;
}

+ (id)_defaultTVSeasonKind
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getMPModelTVSeasonClass_softClass_0;
  v12 = getMPModelTVSeasonClass_softClass_0;
  if (!getMPModelTVSeasonClass_softClass_0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMPModelTVSeasonClass_block_invoke_0;
    v8[3] = &unk_278229610;
    v8[4] = &v9;
    __getMPModelTVSeasonClass_block_invoke_0(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  _defaultTVEpisodeKind = [self _defaultTVEpisodeKind];
  v6 = [v3 kindWithEpisodeKind:_defaultTVEpisodeKind];

  return v6;
}

- (id)_initWithUnderlyingKind:(id)kind
{
  kindCopy = kind;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPModelKind;
  v6 = [(MusicKit_SoftLinking_MPModelKind *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingKind, kind);
  }

  return v7;
}

- (int64_t)modelObjectType
{
  identityKind = [(MPModelKind *)self->_underlyingKind identityKind];
  identityKind2 = [getMPModelPlaylistKindClass() identityKind];
  v5 = [identityKind isEqual:identityKind2];

  if (!v5)
  {
    return 17;
  }

  variants = [(MPModelKind *)self->_underlyingKind variants];
  v7 = 22;
  if ((variants & 8) == 0)
  {
    v7 = 17;
  }

  if (variants == 8)
  {
    return 21;
  }

  else
  {
    return v7;
  }
}

+ (id)_modelKindForModelObjectType:(int64_t)type
{
  _defaultAlbumKind = 0;
  switch(type)
  {
    case 0:
      _defaultAlbumKind = [self _defaultAlbumKind];
      break;
    case 1:
      selfCopy6 = self;
      v8 = 1;
      goto LABEL_32;
    case 2:
      _defaultAlbumKind = [self _defaultArtistKind];
      break;
    case 3:
      _defaultAlbumKind = [self _defaultComposerKind];
      break;
    case 4:
      _defaultAlbumKind = [self _defaultCreditArtistKind];
      break;
    case 5:
      selfCopy6 = self;
      v8 = 8;
      goto LABEL_32;
    case 6:
      selfCopy6 = self;
      v8 = 2;
      goto LABEL_32;
    case 7:
      selfCopy6 = self;
      v8 = 32;
      goto LABEL_32;
    case 8:
      _defaultAlbumKind = [self _defaultFileAssetKind];
      break;
    case 9:
      _defaultAlbumKind = [self _defaultGenreKind];
      break;
    case 12:
      _defaultAlbumKind = [self _defaultLyricsKind];
      break;
    case 13:
      _defaultAlbumKind = [self _defaultMovieKind];
      break;
    case 14:
      selfCopy10 = self;
      v6 = 2;
      goto LABEL_35;
    case 15:
      _defaultAlbumKind = [self _defaultPinKind];
      break;
    case 17:
      _defaultAlbumKind = [self _defaultPlaylistKind];
      break;
    case 18:
      _defaultAlbumKind = [self _defaultPlaylistAuthorKind];
      break;
    case 19:
      _defaultAlbumKind = [self _defaultPlaylistEntryKind];
      break;
    case 20:
      _defaultAlbumKind = [self _defaultPlaylistEntryReactionKind];
      break;
    case 21:
      _defaultAlbumKind = [self _defaultPlaylistFolderKind];
      break;
    case 22:
      _defaultAlbumKind = [self _defaultPlaylistFolderItemKind];
      break;
    case 24:
      selfCopy6 = self;
      v8 = 4;
LABEL_32:
      _defaultAlbumKind = [selfCopy6 _curatorKindForVariants:v8];
      break;
    case 25:
      _defaultAlbumKind = [self _defaultRecentlyAddedObjectKind];
      break;
    case 26:
      _defaultAlbumKind = [self _defaultRecordLabelKind];
      break;
    case 27:
      _defaultAlbumKind = [self _defaultSocialPersonKind];
      break;
    case 28:
      selfCopy10 = self;
      v6 = 1;
      goto LABEL_35;
    case 29:
      _defaultAlbumKind = [self _defaultRadioStationKind];
      break;
    case 32:
      selfCopy10 = self;
      v6 = 3;
      goto LABEL_35;
    case 33:
      _defaultAlbumKind = [self _defaultTVEpisodeKind];
      break;
    case 34:
      _defaultAlbumKind = [self _defaultTVSeasonKind];
      break;
    case 35:
      _defaultAlbumKind = [self _defaultTVShowKind];
      break;
    case 36:
      selfCopy10 = self;
      v6 = 4;
      goto LABEL_35;
    case 37:
      selfCopy10 = self;
      v6 = 6;
LABEL_35:
      _defaultAlbumKind = [selfCopy10 _songKindForVariants:v6];
      break;
    default:
      break;
  }

  return _defaultAlbumKind;
}

+ (id)_defaultAlbumKindForTracks
{
  MPModelAlbumClass = getMPModelAlbumClass();
  _defaultSongKindForTracks = [self _defaultSongKindForTracks];
  v5 = [MPModelAlbumClass kindWithSongKind:_defaultSongKindForTracks];

  return v5;
}

+ (id)_defaultArtistKind
{
  MPModelArtistClass = getMPModelArtistClass();
  _defaultAlbumKind = [self _defaultAlbumKind];
  v5 = [MPModelArtistClass kindWithAlbumKind:_defaultAlbumKind];

  return v5;
}

+ (id)_defaultComposerKind
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getMPModelComposerClass_softClass_0;
  v14 = getMPModelComposerClass_softClass_0;
  if (!getMPModelComposerClass_softClass_0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getMPModelComposerClass_block_invoke_0;
    v10[3] = &unk_278229610;
    v10[4] = &v11;
    __getMPModelComposerClass_block_invoke_0(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  MPModelAlbumClass = getMPModelAlbumClass();
  _defaultSongKind = [self _defaultSongKind];
  v7 = [MPModelAlbumClass kindWithVariants:3 songKind:_defaultSongKind options:0];
  v8 = [v3 kindWithAlbumKind:v7];

  return v8;
}

+ (id)_defaultCreditArtistKind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPModelCreditsArtistClass_softClass_0;
  v10 = getMPModelCreditsArtistClass_softClass_0;
  if (!getMPModelCreditsArtistClass_softClass_0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPModelCreditsArtistClass_block_invoke_0;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPModelCreditsArtistClass_block_invoke_0(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  identityKind = [v2 identityKind];

  return identityKind;
}

+ (id)_defaultCuratorKind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPModelCuratorActualKindClass_softClass;
  v10 = getMPModelCuratorActualKindClass_softClass;
  if (!getMPModelCuratorActualKindClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPModelCuratorActualKindClass_block_invoke;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPModelCuratorActualKindClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  identityKind = [v2 identityKind];

  return identityKind;
}

+ (id)_defaultFileAssetKind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPModelFileAssetClass_softClass_0;
  v10 = getMPModelFileAssetClass_softClass_0;
  if (!getMPModelFileAssetClass_softClass_0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPModelFileAssetClass_block_invoke_0;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPModelFileAssetClass_block_invoke_0(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  identityKind = [v2 identityKind];

  return identityKind;
}

+ (id)_defaultRecentlyAddedObjectKind
{
  v17[4] = *MEMORY[0x277D85DE8];
  MPModelGenericObjectClass_1 = getMPModelGenericObjectClass_1();
  v4 = getMPModelRelationshipGenericAlbum_0();
  v16[0] = v4;
  _defaultAlbumKindForTracks = [self _defaultAlbumKindForTracks];
  v17[0] = _defaultAlbumKindForTracks;
  v6 = getMPModelRelationshipGenericMovie_0();
  v16[1] = v6;
  _defaultMovieKind = [self _defaultMovieKind];
  v17[1] = _defaultMovieKind;
  v8 = getMPModelRelationshipGenericPlaylist_1();
  v16[2] = v8;
  _defaultPlaylistKind = [self _defaultPlaylistKind];
  v17[2] = _defaultPlaylistKind;
  v10 = getMPModelRelationshipGenericTVSeason_0();
  v16[3] = v10;
  _defaultTVSeasonKind = [self _defaultTVSeasonKind];
  v17[3] = _defaultTVSeasonKind;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v13 = [MPModelGenericObjectClass_1 kindWithRelationshipKinds:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_defaultGenreKind
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getMPModelGenreClass_softClass_0;
  v12 = getMPModelGenreClass_softClass_0;
  if (!getMPModelGenreClass_softClass_0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMPModelGenreClass_block_invoke_0;
    v8[3] = &unk_278229610;
    v8[4] = &v9;
    __getMPModelGenreClass_block_invoke_0(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  _defaultAlbumKind = [self _defaultAlbumKind];
  v6 = [v3 kindWithAlbumKind:_defaultAlbumKind];

  return v6;
}

+ (id)_defaultLyricsKind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPModelLyricsClass_softClass_0;
  v10 = getMPModelLyricsClass_softClass_0;
  if (!getMPModelLyricsClass_softClass_0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPModelLyricsClass_block_invoke_0;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPModelLyricsClass_block_invoke_0(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  identityKind = [v2 identityKind];

  return identityKind;
}

+ (id)_defaultPinKind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPModelLibraryPinKindClass_softClass;
  v10 = getMPModelLibraryPinKindClass_softClass;
  if (!getMPModelLibraryPinKindClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPModelLibraryPinKindClass_block_invoke;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPModelLibraryPinKindClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  identityKind = [v2 identityKind];

  return identityKind;
}

+ (id)_defaultPlaylistKind
{
  MPModelPlaylistClass = getMPModelPlaylistClass();
  _defaultPlaylistEntryKind = [self _defaultPlaylistEntryKind];
  v5 = [MPModelPlaylistClass kindWithVariants:215 playlistEntryKind:_defaultPlaylistEntryKind options:0];

  return v5;
}

+ (id)_defaultPlaylistAuthorKind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPModelPlaylistAuthorKindClass_softClass;
  v10 = getMPModelPlaylistAuthorKindClass_softClass;
  if (!getMPModelPlaylistAuthorKindClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPModelPlaylistAuthorKindClass_block_invoke;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPModelPlaylistAuthorKindClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  identityKind = [v2 identityKind];

  return identityKind;
}

+ (id)_defaultPlaylistEntryReactionKind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPModelPlaylistEntryReactionKindClass_softClass;
  v10 = getMPModelPlaylistEntryReactionKindClass_softClass;
  if (!getMPModelPlaylistEntryReactionKindClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPModelPlaylistEntryReactionKindClass_block_invoke;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPModelPlaylistEntryReactionKindClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  identityKind = [v2 identityKind];

  return identityKind;
}

+ (id)_defaultPlaylistEntryKindForTracks
{
  v9[1] = *MEMORY[0x277D85DE8];
  MPModelPlaylistEntryClass = getMPModelPlaylistEntryClass();
  _defaultSongKindForTracks = [self _defaultSongKindForTracks];
  v9[0] = _defaultSongKindForTracks;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [MPModelPlaylistEntryClass kindWithKinds:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_defaultPlaylistEntryKindForSongs
{
  v9[1] = *MEMORY[0x277D85DE8];
  MPModelPlaylistEntryClass = getMPModelPlaylistEntryClass();
  v4 = [self _songKindForVariants:1];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [MPModelPlaylistEntryClass kindWithKinds:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_defaultPlaylistEntryKindForMusicVideos
{
  v9[1] = *MEMORY[0x277D85DE8];
  MPModelPlaylistEntryClass = getMPModelPlaylistEntryClass();
  v4 = [self _songKindForVariants:2];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [MPModelPlaylistEntryClass kindWithKinds:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_defaultPlaylistFolderKind
{
  MPModelPlaylistClass = getMPModelPlaylistClass();
  _defaultPlaylistEntryKind = [self _defaultPlaylistEntryKind];
  v5 = [MPModelPlaylistClass kindWithVariants:8 playlistEntryKind:_defaultPlaylistEntryKind options:0];

  return v5;
}

+ (id)_defaultPlaylistFolderItemKind
{
  MPModelPlaylistClass = getMPModelPlaylistClass();
  _defaultPlaylistEntryKind = [self _defaultPlaylistEntryKind];
  v5 = [MPModelPlaylistClass kindWithVariants:95 playlistEntryKind:_defaultPlaylistEntryKind options:0];

  return v5;
}

+ (id)_defaultRadioStationKind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPModelRadioStationKindClass_softClass_0;
  v10 = getMPModelRadioStationKindClass_softClass_0;
  if (!getMPModelRadioStationKindClass_softClass_0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPModelRadioStationKindClass_block_invoke_0;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPModelRadioStationKindClass_block_invoke_0(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  identityKind = [v2 identityKind];

  return identityKind;
}

+ (id)_defaultRecordLabelKind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPModelRecordLabelKindClass_softClass;
  v10 = getMPModelRecordLabelKindClass_softClass;
  if (!getMPModelRecordLabelKindClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPModelRecordLabelKindClass_block_invoke;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPModelRecordLabelKindClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  identityKind = [v2 identityKind];

  return identityKind;
}

+ (id)_defaultSocialPersonKind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPModelSocialPersonClass_softClass_0;
  v10 = getMPModelSocialPersonClass_softClass_0;
  if (!getMPModelSocialPersonClass_softClass_0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPModelSocialPersonClass_block_invoke_0;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPModelSocialPersonClass_block_invoke_0(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  kind = [v2 kind];

  return kind;
}

+ (id)_defaultTVShowKind
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getMPModelTVShowClass_softClass_0;
  v12 = getMPModelTVShowClass_softClass_0;
  if (!getMPModelTVShowClass_softClass_0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMPModelTVShowClass_block_invoke_0;
    v8[3] = &unk_278229610;
    v8[4] = &v9;
    __getMPModelTVShowClass_block_invoke_0(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  _defaultTVSeasonKind = [self _defaultTVSeasonKind];
  v6 = [v3 kindWithSeasonKind:_defaultTVSeasonKind];

  return v6;
}

+ (id)playlistEntryKindWithKinds:(id)kinds
{
  kindsCopy = kinds;
  v4 = [getMPModelPlaylistEntryClass() kindWithKinds:kindsCopy];

  return v4;
}

+ (id)_curatorKindForVariants:(unint64_t)variants
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getMPModelCuratorClass_softClass_0;
  v12 = getMPModelCuratorClass_softClass_0;
  if (!getMPModelCuratorClass_softClass_0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMPModelCuratorClass_block_invoke_0;
    v8[3] = &unk_278229610;
    v8[4] = &v9;
    __getMPModelCuratorClass_block_invoke_0(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [v4 kindWithVariants:variants];

  return v6;
}

+ (id)_songKindForVariants:(unint64_t)variants
{
  MPModelSongClass = getMPModelSongClass();

  return [MPModelSongClass kindWithVariants:variants];
}

+ (id)_songKindForVariants:(unint64_t)variants options:(unint64_t)options
{
  MPModelSongClass = getMPModelSongClass();

  return [MPModelSongClass kindWithVariants:variants options:options];
}

+ (id)_sanitizeKind:(id)kind
{
  kindCopy = kind;
  if (_sanitizeKind__sOnceToken != -1)
  {
    +[MusicKit_SoftLinking_MPModelKind _sanitizeKind:];
  }

  v4 = kindCopy;
  v5 = v4;
  v6 = v4;
  if (_sanitizeKind__isNanoMusicProcess == 1)
  {
    identityKind = [v4 identityKind];
    identityKind2 = [getMPModelSongKindClass() identityKind];
    v9 = [identityKind isEqual:identityKind2];

    if (v9)
    {
      v10 = [MusicKit_SoftLinking_MPModelKind _sanitizeSongKind:v5];
LABEL_6:
      v6 = v10;
LABEL_7:

LABEL_13:
      goto LABEL_14;
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x2050000000;
    v11 = getMPModelAlbumKindClass_softClass_0;
    v47 = getMPModelAlbumKindClass_softClass_0;
    if (!getMPModelAlbumKindClass_softClass_0)
    {
      v39 = MEMORY[0x277D85DD0];
      v40 = 3221225472;
      v41 = __getMPModelAlbumKindClass_block_invoke_0;
      v42 = &unk_278229610;
      v43 = &v44;
      __getMPModelAlbumKindClass_block_invoke_0(&v39);
      v11 = v45[3];
    }

    v12 = v11;
    _Block_object_dispose(&v44, 8);
    identityKind3 = [v11 identityKind];
    v14 = [identityKind isEqual:identityKind3];

    if (v14)
    {
      v15 = v5;
      songKind = [v15 songKind];
      v17 = [MusicKit_SoftLinking_MPModelKind _sanitizeSongKind:songKind];

      MPModelAlbumClass = getMPModelAlbumClass();
      variants = [v15 variants];
      options = [v15 options];

      v21 = [MPModelAlbumClass kindWithVariants:variants songKind:v17 options:options];
    }

    else
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x2050000000;
      v23 = getMPModelPlaylistEntryKindClass_softClass;
      v47 = getMPModelPlaylistEntryKindClass_softClass;
      if (!getMPModelPlaylistEntryKindClass_softClass)
      {
        v39 = MEMORY[0x277D85DD0];
        v40 = 3221225472;
        v41 = __getMPModelPlaylistEntryKindClass_block_invoke;
        v42 = &unk_278229610;
        v43 = &v44;
        __getMPModelPlaylistEntryKindClass_block_invoke(&v39);
        v23 = v45[3];
      }

      v24 = v23;
      _Block_object_dispose(&v44, 8);
      identityKind4 = [v23 identityKind];
      v26 = [identityKind isEqual:identityKind4];

      if (v26)
      {
        v10 = [MusicKit_SoftLinking_MPModelKind _sanitizePlaylistEntryKind:v5];
        goto LABEL_6;
      }

      identityKind5 = [getMPModelPlaylistKindClass() identityKind];
      v28 = [identityKind isEqual:identityKind5];

      if (!v28)
      {
        v44 = 0;
        v45 = &v44;
        v46 = 0x2050000000;
        v33 = getMPModelGenericObjectKindClass_softClass;
        v47 = getMPModelGenericObjectKindClass_softClass;
        if (!getMPModelGenericObjectKindClass_softClass)
        {
          v39 = MEMORY[0x277D85DD0];
          v40 = 3221225472;
          v41 = __getMPModelGenericObjectKindClass_block_invoke;
          v42 = &unk_278229610;
          v43 = &v44;
          __getMPModelGenericObjectKindClass_block_invoke(&v39);
          v33 = v45[3];
        }

        v34 = v33;
        _Block_object_dispose(&v44, 8);
        identityKind6 = [v33 identityKind];
        v36 = [identityKind isEqual:identityKind6];

        v6 = v5;
        if (!v36)
        {
          goto LABEL_13;
        }

        relationshipKinds = [v5 relationshipKinds];
        v38 = [relationshipKinds msv_mapKeysAndValues:&__block_literal_global_11];

        v6 = [getMPModelGenericObjectClass_1() kindWithRelationshipKinds:v38];

        goto LABEL_7;
      }

      v15 = v5;
      playlistEntryKind = [v15 playlistEntryKind];
      v17 = [MusicKit_SoftLinking_MPModelKind _sanitizePlaylistEntryKind:playlistEntryKind];

      MPModelPlaylistClass = getMPModelPlaylistClass();
      variants2 = [v15 variants];
      options2 = [v15 options];

      v21 = [MPModelPlaylistClass kindWithVariants:variants2 playlistEntryKind:v17 options:options2];
    }

    v6 = v21;

    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

+ (id)_sanitizeSongKind:(id)kind
{
  kindCopy = kind;
  variants = [kindCopy variants];
  MPModelSongClass = getMPModelSongClass();
  options = [kindCopy options];

  return [MPModelSongClass kindWithVariants:variants & 0xFFFFFFFFFFFFFFFDLL options:options];
}

+ (id)_sanitizePlaylistEntryKind:(id)kind
{
  kinds = [kind kinds];
  v4 = [kinds msv_map:&__block_literal_global_14];

  v5 = [getMPModelPlaylistEntryClass() kindWithKinds:v4];

  return v5;
}

@end