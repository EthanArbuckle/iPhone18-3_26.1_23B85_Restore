@interface MusicKit_SoftLinking_MPModelLibrarySearchResponse
+ (int64_t)_modelObjectTypeForLibrarySearchResultModelKind:(id)a3;
- (void)enumerateSectionLegacyObjectTypesUsingBlock:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPModelLibrarySearchResponse

- (void)enumerateSectionLegacyObjectTypesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(MusicKit_SoftLinking_MPModelResponse *)self results];
  v6 = [v5 _underlyingSectionedCollection];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__MusicKit_SoftLinking_MPModelLibrarySearchResponse_enumerateSectionLegacyObjectTypesUsingBlock___block_invoke;
  v8[3] = &unk_27822A168;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 enumerateSectionsUsingBlock:v8];
}

+ (int64_t)_modelObjectTypeForLibrarySearchResultModelKind:(id)a3
{
  v3 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v4 = getMPModelGenericObjectKindClass_softClass_0;
  v26 = getMPModelGenericObjectKindClass_softClass_0;
  if (!getMPModelGenericObjectKindClass_softClass_0)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __getMPModelGenericObjectKindClass_block_invoke_0;
    v21 = &unk_278229610;
    v22 = &v23;
    __getMPModelGenericObjectKindClass_block_invoke_0(&v18);
    v4 = v24[3];
  }

  v5 = v4;
  _Block_object_dispose(&v23, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 11;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v7 = getMPModelAlbumKindClass_softClass_1;
    v26 = getMPModelAlbumKindClass_softClass_1;
    if (!getMPModelAlbumKindClass_softClass_1)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPModelAlbumKindClass_block_invoke_1;
      v21 = &unk_278229610;
      v22 = &v23;
      __getMPModelAlbumKindClass_block_invoke_1(&v18);
      v7 = v24[3];
    }

    v8 = v7;
    _Block_object_dispose(&v23, 8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 0;
    }

    else
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v9 = getMPModelArtistKindClass_softClass;
      v26 = getMPModelArtistKindClass_softClass;
      if (!getMPModelArtistKindClass_softClass)
      {
        v18 = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __getMPModelArtistKindClass_block_invoke;
        v21 = &unk_278229610;
        v22 = &v23;
        __getMPModelArtistKindClass_block_invoke(&v18);
        v9 = v24[3];
      }

      v10 = v9;
      _Block_object_dispose(&v23, 8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = 2;
      }

      else
      {
        v23 = 0;
        v24 = &v23;
        v25 = 0x2050000000;
        v11 = getMPModelComposerKindClass_softClass;
        v26 = getMPModelComposerKindClass_softClass;
        if (!getMPModelComposerKindClass_softClass)
        {
          v18 = MEMORY[0x277D85DD0];
          v19 = 3221225472;
          v20 = __getMPModelComposerKindClass_block_invoke;
          v21 = &unk_278229610;
          v22 = &v23;
          __getMPModelComposerKindClass_block_invoke(&v18);
          v11 = v24[3];
        }

        v12 = v11;
        _Block_object_dispose(&v23, 8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = 3;
        }

        else
        {
          v23 = 0;
          v24 = &v23;
          v25 = 0x2050000000;
          v13 = getMPModelMovieKindClass_softClass;
          v26 = getMPModelMovieKindClass_softClass;
          if (!getMPModelMovieKindClass_softClass)
          {
            v18 = MEMORY[0x277D85DD0];
            v19 = 3221225472;
            v20 = __getMPModelMovieKindClass_block_invoke;
            v21 = &unk_278229610;
            v22 = &v23;
            __getMPModelMovieKindClass_block_invoke(&v18);
            v13 = v24[3];
          }

          v14 = v13;
          _Block_object_dispose(&v23, 8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = 13;
          }

          else
          {
            v23 = 0;
            v24 = &v23;
            v25 = 0x2050000000;
            v15 = getMPModelPlaylistKindClass_softClass_2;
            v26 = getMPModelPlaylistKindClass_softClass_2;
            if (!getMPModelPlaylistKindClass_softClass_2)
            {
              v18 = MEMORY[0x277D85DD0];
              v19 = 3221225472;
              v20 = __getMPModelPlaylistKindClass_block_invoke_2;
              v21 = &unk_278229610;
              v22 = &v23;
              __getMPModelPlaylistKindClass_block_invoke_2(&v18);
              v15 = v24[3];
            }

            v16 = v15;
            _Block_object_dispose(&v23, 8);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (([v3 variants] & 8) != 0)
              {
                v6 = 22;
              }

              else
              {
                v6 = 17;
              }
            }

            else
            {
              getMPModelSongKindClass_0();
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v6 = 32;
              }

              else
              {
                getMPModelTVEpisodeKindClass();
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v6 = 33;
                }

                else
                {
                  v6 = 28;
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

@end