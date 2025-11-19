@interface MPModelLibraryPlaylistEditPlaylistDataSource
- (MPModelLibraryPlaylistEditPlaylistDataSource)initWithLibrary:(id)a3 playlist:(id)a4 initialTrackList:(id)a5 playlistEntryProperties:(id)a6;
- (id)_defaultPlaylistEntryPropertySet;
- (void)loadEntriesWithCompletion:(id)a3;
@end

@implementation MPModelLibraryPlaylistEditPlaylistDataSource

- (id)_defaultPlaylistEntryPropertySet
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v6[0] = @"MPModelPropertyPlaylistEntryUniversalIdentifier";
  v6[1] = @"MPModelPropertyPlaylistEntryPositionUniversalIdentifier";
  v6[2] = @"MPModelPropertyPlaylistEntryPosition";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:0];

  return v4;
}

- (void)loadEntriesWithCompletion:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_initialTrackList && !self->_hasPerformedInitialLoad)
  {
    self->_hasPerformedInitialLoad = 1;
    v5 = [(MPSectionedCollection *)self->_initialTrackList allItems];
    v4[2](v4, v5, 0);
    [(MPModelLibraryPlaylistEditDataSource *)self reload];
  }

  else
  {
    v5 = [MPModelSong kindWithVariants:3];
    v6 = +[MPPropertySet emptyPropertySet];
    v7 = objc_alloc_init(MPModelLibraryRequest);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ loading track list", self];
    [(MPModelRequest *)v7 setLabel:v8];

    v19[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v10 = [MPModelPlaylistEntry kindWithKinds:v9];
    v11 = [MPModelPlaylist kindWithPlaylistEntryKind:v10 options:0];
    [(MPModelRequest *)v7 setSectionKind:v11];

    [(MPModelRequest *)v7 setSectionProperties:v6];
    v18 = v5;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v13 = [MPModelPlaylistEntry kindWithKinds:v12];
    [(MPModelRequest *)v7 setItemKind:v13];

    [(MPModelRequest *)v7 setItemProperties:self->_playlistPropertySet];
    playlist = self->_playlist;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&playlist count:1];
    [(MPModelLibraryRequest *)v7 setScopedContainers:v14];

    [(MPModelLibraryRequest *)v7 setFilteringOptions:0x10000];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__MPModelLibraryPlaylistEditPlaylistDataSource_loadEntriesWithCompletion___block_invoke;
    v15[3] = &unk_1E767C080;
    v15[4] = self;
    v16 = v4;
    [(MPModelLibraryRequest *)v7 performWithResponseHandler:v15];
  }
}

void __74__MPModelLibraryPlaylistEditPlaylistDataSource_loadEntriesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to load playlist tracks from library. err=%{public}@", &v10, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [a2 results];
    v9 = [v8 allItems];
    (*(*(a1 + 40) + 16))();
  }
}

- (MPModelLibraryPlaylistEditPlaylistDataSource)initWithLibrary:(id)a3 playlist:(id)a4 initialTrackList:(id)a5 playlistEntryProperties:(id)a6
{
  v35 = a3;
  v11 = a4;
  v34 = a5;
  v12 = a6;
  v13 = [v11 identifiers];
  v14 = [v13 library];
  v15 = [v14 persistentID];

  if (v15)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v13 library];
    v18 = [v16 stringWithFormat:@"l.%lld", objc_msgSend(v17, "persistentID")];
LABEL_5:

    goto LABEL_6;
  }

  v19 = [v13 universalStore];
  v20 = [v19 globalPlaylistID];

  if (v20)
  {
    v21 = MEMORY[0x1E696AEC0];
    v17 = [v13 universalStore];
    v22 = [v17 globalPlaylistID];
    v18 = [v21 stringWithFormat:@"g.%@", v22];

    goto LABEL_5;
  }

  v18 = @"u";
LABEL_6:
  v23 = MEMORY[0x1E696AEC0];
  v24 = MSVNanoIDCreateTaggedPointer();
  v25 = [v23 stringWithFormat:@"p-%@-%@", v18, v24];

  v36.receiver = self;
  v36.super_class = MPModelLibraryPlaylistEditPlaylistDataSource;
  v26 = [(MPModelLibraryPlaylistEditDataSource *)&v36 initWithIdentifier:v25];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_library, a3);
    v28 = [v11 copy];
    playlist = v27->_playlist;
    v27->_playlist = v28;

    objc_storeStrong(&v27->_initialTrackList, a5);
    v30 = [(MPModelLibraryPlaylistEditPlaylistDataSource *)v27 _defaultPlaylistEntryPropertySet];
    v31 = [v30 propertySetByCombiningWithPropertySet:v12];
    playlistPropertySet = v27->_playlistPropertySet;
    v27->_playlistPropertySet = v31;
  }

  return v27;
}

@end