@interface MPModelLibraryPlaylistEditPlaylistDataSource
- (MPModelLibraryPlaylistEditPlaylistDataSource)initWithLibrary:(id)library playlist:(id)playlist initialTrackList:(id)list playlistEntryProperties:(id)properties;
- (id)_defaultPlaylistEntryPropertySet;
- (void)loadEntriesWithCompletion:(id)completion;
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

- (void)loadEntriesWithCompletion:(id)completion
{
  v19[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (self->_initialTrackList && !self->_hasPerformedInitialLoad)
  {
    self->_hasPerformedInitialLoad = 1;
    allItems = [(MPSectionedCollection *)self->_initialTrackList allItems];
    completionCopy[2](completionCopy, allItems, 0);
    [(MPModelLibraryPlaylistEditDataSource *)self reload];
  }

  else
  {
    allItems = [MPModelSong kindWithVariants:3];
    v6 = +[MPPropertySet emptyPropertySet];
    v7 = objc_alloc_init(MPModelLibraryRequest);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ loading track list", self];
    [(MPModelRequest *)v7 setLabel:v8];

    v19[0] = allItems;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v10 = [MPModelPlaylistEntry kindWithKinds:v9];
    v11 = [MPModelPlaylist kindWithPlaylistEntryKind:v10 options:0];
    [(MPModelRequest *)v7 setSectionKind:v11];

    [(MPModelRequest *)v7 setSectionProperties:v6];
    v18 = allItems;
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
    v16 = completionCopy;
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

- (MPModelLibraryPlaylistEditPlaylistDataSource)initWithLibrary:(id)library playlist:(id)playlist initialTrackList:(id)list playlistEntryProperties:(id)properties
{
  libraryCopy = library;
  playlistCopy = playlist;
  listCopy = list;
  propertiesCopy = properties;
  identifiers = [playlistCopy identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  if (persistentID)
  {
    v16 = MEMORY[0x1E696AEC0];
    library2 = [identifiers library];
    v18 = [v16 stringWithFormat:@"l.%lld", objc_msgSend(library2, "persistentID")];
LABEL_5:

    goto LABEL_6;
  }

  universalStore = [identifiers universalStore];
  globalPlaylistID = [universalStore globalPlaylistID];

  if (globalPlaylistID)
  {
    v21 = MEMORY[0x1E696AEC0];
    library2 = [identifiers universalStore];
    globalPlaylistID2 = [library2 globalPlaylistID];
    v18 = [v21 stringWithFormat:@"g.%@", globalPlaylistID2];

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
    objc_storeStrong(&v26->_library, library);
    v28 = [playlistCopy copy];
    playlist = v27->_playlist;
    v27->_playlist = v28;

    objc_storeStrong(&v27->_initialTrackList, list);
    _defaultPlaylistEntryPropertySet = [(MPModelLibraryPlaylistEditPlaylistDataSource *)v27 _defaultPlaylistEntryPropertySet];
    v31 = [_defaultPlaylistEntryPropertySet propertySetByCombiningWithPropertySet:propertiesCopy];
    playlistPropertySet = v27->_playlistPropertySet;
    v27->_playlistPropertySet = v31;
  }

  return v27;
}

@end