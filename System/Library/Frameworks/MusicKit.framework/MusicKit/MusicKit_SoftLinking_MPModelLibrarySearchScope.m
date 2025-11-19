@interface MusicKit_SoftLinking_MPModelLibrarySearchScope
+ (id)_topResultsRelationshipKeyForSpecificModelObjectType:(int64_t)a3;
+ (id)scopeForTopResultsWithSpecificModelObjectTypeScopes:(id)a3;
- (MusicKit_SoftLinking_MPModelLibrarySearchScope)initWithModelObjectType:(int64_t)a3;
- (id)_initWithUnderlyingSearchScope:(id)a3 modelObjectType:(int64_t)a4;
@end

@implementation MusicKit_SoftLinking_MPModelLibrarySearchScope

- (id)_initWithUnderlyingSearchScope:(id)a3 modelObjectType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPModelLibrarySearchScope;
  v8 = [(MusicKit_SoftLinking_MPModelLibrarySearchScope *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingSearchScope, a3);
    v9->_modelObjectType = a4;
  }

  return v9;
}

- (MusicKit_SoftLinking_MPModelLibrarySearchScope)initWithModelObjectType:(int64_t)a3
{
  v5 = [MusicKit_SoftLinking_MPModelRequest _supportedPropertiesForModelObjectType:?];
  v6 = [MusicKit_SoftLinking_MPModelKind _modelKindForModelObjectType:a3];
  v7 = [objc_alloc(getMPModelLibrarySearchScopeClass()) initWithItemKind:v6 name:0 properties:v5];
  v8 = [(MusicKit_SoftLinking_MPModelLibrarySearchScope *)self _initWithUnderlyingSearchScope:v7 modelObjectType:a3];

  return v8;
}

+ (id)scopeForTopResultsWithSpecificModelObjectTypeScopes:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [a1 _topResultsRelationshipKeyForSpecificModelObjectType:{objc_msgSend(v11, "_modelObjectType", v29)}];
        if (v12)
        {
          v13 = [v11 _underlyingSearchScope];
          v14 = [v13 itemKind];
          [v5 setObject:v14 forKeyedSubscript:v12];

          v15 = [v13 itemProperties];
          [v6 setObject:v15 forKeyedSubscript:v12];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v8);
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v16 = getMPModelGenericObjectClass_softClass;
  v41 = getMPModelGenericObjectClass_softClass;
  if (!getMPModelGenericObjectClass_softClass)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getMPModelGenericObjectClass_block_invoke;
    v36 = &unk_278229610;
    v37 = &v38;
    __getMPModelGenericObjectClass_block_invoke(&v33);
    v16 = v39[3];
  }

  v17 = v16;
  _Block_object_dispose(&v38, 8);
  v18 = [v5 copy];
  v19 = [v16 kindWithRelationshipKinds:v18];

  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v20 = getMPPropertySetClass_softClass;
  v41 = getMPPropertySetClass_softClass;
  if (!getMPPropertySetClass_softClass)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getMPPropertySetClass_block_invoke;
    v36 = &unk_278229610;
    v37 = &v38;
    __getMPPropertySetClass_block_invoke(&v33);
    v20 = v39[3];
  }

  v21 = v20;
  _Block_object_dispose(&v38, 8);
  v22 = [v20 alloc];
  v23 = [v6 copy];
  v24 = [v22 initWithProperties:MEMORY[0x277CBEBF8] relationships:v23];

  v25 = [objc_alloc(getMPModelLibrarySearchScopeClass()) initWithItemKind:v19 name:0 properties:v24];
  v26 = [[a1 alloc] _initWithUnderlyingSearchScope:v25 modelObjectType:11];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)_topResultsRelationshipKeyForSpecificModelObjectType:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 16)
  {
    goto LABEL_10;
  }

  if (a3 > 27)
  {
    if (a3 == 28 || a3 == 32)
    {
LABEL_19:
      v3 = getMPModelRelationshipGenericSong();
      goto LABEL_31;
    }

    if (a3 != 33)
    {
      goto LABEL_31;
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v4 = getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr;
    v14 = getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr;
    if (!getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr)
    {
      v5 = MediaPlayerLibrary();
      v12[3] = dlsym(v5, "MPModelRelationshipGenericTVEpisode");
      getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr = v12[3];
      v4 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (v4)
    {
      goto LABEL_30;
    }

    v3 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
LABEL_10:
    if (a3 <= 12)
    {
      if (!a3)
      {
        v11 = 0;
        v12 = &v11;
        v13 = 0x2020000000;
        v4 = getMPModelRelationshipGenericAlbumSymbolLoc_ptr;
        v14 = getMPModelRelationshipGenericAlbumSymbolLoc_ptr;
        if (!getMPModelRelationshipGenericAlbumSymbolLoc_ptr)
        {
          v7 = MediaPlayerLibrary();
          v12[3] = dlsym(v7, "MPModelRelationshipGenericAlbum");
          getMPModelRelationshipGenericAlbumSymbolLoc_ptr = v12[3];
          v4 = v12[3];
        }

        _Block_object_dispose(&v11, 8);
        if (v4)
        {
          goto LABEL_30;
        }

        +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
LABEL_27:
        v11 = 0;
        v12 = &v11;
        v13 = 0x2020000000;
        v4 = getMPModelRelationshipGenericMovieSymbolLoc_ptr;
        v14 = getMPModelRelationshipGenericMovieSymbolLoc_ptr;
        if (!getMPModelRelationshipGenericMovieSymbolLoc_ptr)
        {
          v8 = MediaPlayerLibrary();
          v12[3] = dlsym(v8, "MPModelRelationshipGenericMovie");
          getMPModelRelationshipGenericMovieSymbolLoc_ptr = v12[3];
          v4 = v12[3];
        }

        _Block_object_dispose(&v11, 8);
        if (!v4)
        {
          v10 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
          _Block_object_dispose(&v11, 8);
          _Unwind_Resume(v10);
        }

LABEL_30:
        v3 = *v4;
        goto LABEL_31;
      }

      if (a3 != 2)
      {
        goto LABEL_31;
      }

      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v4 = getMPModelRelationshipGenericArtistSymbolLoc_ptr;
      v14 = getMPModelRelationshipGenericArtistSymbolLoc_ptr;
      if (!getMPModelRelationshipGenericArtistSymbolLoc_ptr)
      {
        v6 = MediaPlayerLibrary();
        v12[3] = dlsym(v6, "MPModelRelationshipGenericArtist");
        getMPModelRelationshipGenericArtistSymbolLoc_ptr = v12[3];
        v4 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (v4)
      {
        goto LABEL_30;
      }

      v3 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    }

    if (a3 != 13)
    {
      if (a3 != 14)
      {
        goto LABEL_31;
      }

      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (a3 == 17 || a3 == 22)
  {
    v3 = getMPModelRelationshipGenericPlaylist();
  }

LABEL_31:

  return v3;
}

+ (uint64_t)_topResultsRelationshipKeyForSpecificModelObjectType:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return __getMPModelLibrarySearchScopeClass_block_invoke_cold_1(v0);
}

@end