@interface MusicKit_SoftLinking_MPModelObject
+ (id)_createUnderlyingModelObjectWithIdentifierSet:(id)a3 modelObjectType:(int64_t)a4 storageDictionary:(id)a5;
+ (id)unarchiveUnderlyingModelObjectWithData:(id)a3 error:(id *)a4;
+ (int64_t)keepLocalEnabledStateForRawValue:(int64_t)a3;
+ (int64_t)keepLocalManagedStatusForRawValue:(int64_t)a3;
+ (int64_t)rawValueForKeepLocalEnabledState:(int64_t)a3;
+ (int64_t)rawValueForKeepLocalManagedStatus:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (MusicKit_SoftLinking_MPModelObject)initWithIdentifierSet:(id)a3 modelObjectType:(int64_t)a4 storageDictionary:(id)a5;
- (MusicKit_SoftLinking_MPModelObject)initWithUnderlyingModelObject:(id)a3;
- (int64_t)libraryRemovalSupportedOptions;
@end

@implementation MusicKit_SoftLinking_MPModelObject

- (MusicKit_SoftLinking_MPModelObject)initWithIdentifierSet:(id)a3 modelObjectType:(int64_t)a4 storageDictionary:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = MusicKit_SoftLinking_MPModelObject;
  v10 = [(MusicKit_SoftLinking_MPModelObject *)&v14 init];
  if (v10)
  {
    v11 = [objc_opt_class() _createUnderlyingModelObjectWithIdentifierSet:v8 modelObjectType:a4 storageDictionary:v9];
    underlyingModelObject = v10->_underlyingModelObject;
    v10->_underlyingModelObject = v11;

    v10->_modelObjectType = a4;
  }

  return v10;
}

- (MusicKit_SoftLinking_MPModelObject)initWithUnderlyingModelObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPModelObject;
  v6 = [(MusicKit_SoftLinking_MPModelObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingModelObject, a3);
  }

  return v7;
}

- (int64_t)libraryRemovalSupportedOptions
{
  if ([(MPModelObject *)self->_underlyingModelObject libraryRemovalSupportedOptions]== 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (id)_createUnderlyingModelObjectWithIdentifierSet:(id)a3 modelObjectType:(int64_t)a4 storageDictionary:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = 0;
  switch(a4)
  {
    case 0:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelAlbumClass_softClass;
      v26 = getMPModelAlbumClass_softClass;
      if (getMPModelAlbumClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelAlbumClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelAlbumClass_block_invoke(&v18);
      break;
    case 1:
    case 5:
    case 6:
    case 7:
    case 24:
      MPModelCuratorClass = getMPModelCuratorClass();
      goto LABEL_37;
    case 2:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelArtistClass_softClass;
      v26 = getMPModelArtistClass_softClass;
      if (getMPModelArtistClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelArtistClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelArtistClass_block_invoke(&v18);
      break;
    case 3:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelComposerClass_softClass;
      v26 = getMPModelComposerClass_softClass;
      if (getMPModelComposerClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelComposerClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelComposerClass_block_invoke(&v18);
      break;
    case 4:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelCreditsArtistClass_softClass;
      v26 = getMPModelCreditsArtistClass_softClass;
      if (getMPModelCreditsArtistClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelCreditsArtistClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelCreditsArtistClass_block_invoke(&v18);
      break;
    case 8:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelFileAssetClass_softClass;
      v26 = getMPModelFileAssetClass_softClass;
      if (getMPModelFileAssetClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelFileAssetClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelFileAssetClass_block_invoke(&v18);
      break;
    case 9:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelGenreClass_softClass;
      v26 = getMPModelGenreClass_softClass;
      if (getMPModelGenreClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelGenreClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelGenreClass_block_invoke(&v18);
      break;
    case 10:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelHomeSharingAssetClass_softClass;
      v26 = getMPModelHomeSharingAssetClass_softClass;
      if (getMPModelHomeSharingAssetClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelHomeSharingAssetClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelHomeSharingAssetClass_block_invoke(&v18);
      break;
    case 11:
    case 25:
      MPModelCuratorClass = getMPModelGenericObjectClass_0();
      goto LABEL_37;
    case 12:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelLyricsClass_softClass;
      v26 = getMPModelLyricsClass_softClass;
      if (getMPModelLyricsClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelLyricsClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelLyricsClass_block_invoke(&v18);
      break;
    case 13:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelMovieClass_softClass;
      v26 = getMPModelMovieClass_softClass;
      if (getMPModelMovieClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelMovieClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelMovieClass_block_invoke(&v18);
      break;
    case 14:
    case 28:
    case 32:
    case 36:
    case 37:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelSongClass_softClass;
      v26 = getMPModelSongClass_softClass;
      if (getMPModelSongClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelSongClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelSongClass_block_invoke(&v18);
      break;
    case 15:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelLibraryPinClass_softClass_0;
      v26 = getMPModelLibraryPinClass_softClass_0;
      if (getMPModelLibraryPinClass_softClass_0)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelLibraryPinClass_block_invoke_0;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelLibraryPinClass_block_invoke_0(&v18);
      break;
    case 17:
    case 21:
    case 22:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelPlaylistClass_softClass;
      v26 = getMPModelPlaylistClass_softClass;
      if (getMPModelPlaylistClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelPlaylistClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelPlaylistClass_block_invoke(&v18);
      break;
    case 18:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelPlaylistAuthorClass_softClass;
      v26 = getMPModelPlaylistAuthorClass_softClass;
      if (getMPModelPlaylistAuthorClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelPlaylistAuthorClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelPlaylistAuthorClass_block_invoke(&v18);
      break;
    case 19:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelPlaylistEntryClass_softClass_0;
      v26 = getMPModelPlaylistEntryClass_softClass_0;
      if (getMPModelPlaylistEntryClass_softClass_0)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelPlaylistEntryClass_block_invoke_0;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelPlaylistEntryClass_block_invoke_0(&v18);
      break;
    case 20:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelPlaylistEntryReactionClass_softClass;
      v26 = getMPModelPlaylistEntryReactionClass_softClass;
      if (getMPModelPlaylistEntryReactionClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelPlaylistEntryReactionClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelPlaylistEntryReactionClass_block_invoke(&v18);
      break;
    case 23:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelPlaybackPositionClass_softClass;
      v26 = getMPModelPlaybackPositionClass_softClass;
      if (getMPModelPlaybackPositionClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelPlaybackPositionClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelPlaybackPositionClass_block_invoke(&v18);
      break;
    case 26:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelRecordLabelClass_softClass;
      v26 = getMPModelRecordLabelClass_softClass;
      if (getMPModelRecordLabelClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelRecordLabelClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelRecordLabelClass_block_invoke(&v18);
      break;
    case 27:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelSocialPersonClass_softClass;
      v26 = getMPModelSocialPersonClass_softClass;
      if (getMPModelSocialPersonClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelSocialPersonClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelSocialPersonClass_block_invoke(&v18);
      break;
    case 29:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelRadioStationClass_softClass;
      v26 = getMPModelRadioStationClass_softClass;
      if (getMPModelRadioStationClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelRadioStationClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelRadioStationClass_block_invoke(&v18);
      break;
    case 30:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelStoreAssetClass_softClass;
      v26 = getMPModelStoreAssetClass_softClass;
      if (getMPModelStoreAssetClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelStoreAssetClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelStoreAssetClass_block_invoke(&v18);
      break;
    case 31:
      MPModelCuratorClass = objc_opt_class();
LABEL_37:
      v9 = MPModelCuratorClass;
      goto LABEL_54;
    case 33:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelTVEpisodeClass_softClass;
      v26 = getMPModelTVEpisodeClass_softClass;
      if (getMPModelTVEpisodeClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelTVEpisodeClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelTVEpisodeClass_block_invoke(&v18);
      break;
    case 34:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelTVSeasonClass_softClass;
      v26 = getMPModelTVSeasonClass_softClass;
      if (getMPModelTVSeasonClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelTVSeasonClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelTVSeasonClass_block_invoke(&v18);
      break;
    case 35:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelTVShowClass_softClass;
      v26 = getMPModelTVShowClass_softClass;
      if (getMPModelTVShowClass_softClass)
      {
        goto LABEL_53;
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelTVShowClass_block_invoke;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelTVShowClass_block_invoke(&v18);
      break;
    default:
      goto LABEL_54;
  }

  v9 = v24[3];
LABEL_53:
  v11 = v9;
  _Block_object_dispose(&v23, 8);
LABEL_54:
  v12 = [v9 alloc];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __118__MusicKit_SoftLinking_MPModelObject__createUnderlyingModelObjectWithIdentifierSet_modelObjectType_storageDictionary___block_invoke;
  v16[3] = &unk_278229D08;
  v17 = v8;
  v13 = v8;
  v14 = [v12 initWithIdentifiers:v7 block:v16];

  return v14;
}

+ (int64_t)keepLocalEnabledStateForRawValue:(int64_t)a3
{
  if ((a3 + 1) < 5)
  {
    return a3 + 1;
  }

  else
  {
    return 1;
  }
}

+ (int64_t)rawValueForKeepLocalEnabledState:(int64_t)a3
{
  if (a3 >= 5)
  {
    return 0;
  }

  else
  {
    return a3 - 1;
  }
}

+ (int64_t)keepLocalManagedStatusForRawValue:(int64_t)a3
{
  if ((a3 + 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_217756568[a3 + 1];
  }
}

+ (int64_t)rawValueForKeepLocalManagedStatus:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_2177565A0[a3 - 1];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else if ([(MusicKit_SoftLinking_MPModelObject *)v4 isMemberOfClass:objc_opt_class()])
  {
    underlyingModelObject = self->_underlyingModelObject;
    v6 = [(MusicKit_SoftLinking_MPModelObject *)v4 _underlyingModelObject];
    v7 = [(MPModelObject *)underlyingModelObject isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)unarchiveUnderlyingModelObjectWithData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CCAAC8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = getMPModelObjectClass_softClass_1;
  v15 = getMPModelObjectClass_softClass_1;
  if (!getMPModelObjectClass_softClass_1)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getMPModelObjectClass_block_invoke_1;
    v11[3] = &unk_278229610;
    v11[4] = &v12;
    __getMPModelObjectClass_block_invoke_1(v11);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  v9 = [v6 unarchivedObjectOfClass:v7 fromData:v5 error:a4];

  return v9;
}

@end