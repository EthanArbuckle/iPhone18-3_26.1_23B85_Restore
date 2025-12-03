@interface MPModelLibraryPlaylistEditAlbumDataSource
- (MPModelLibraryPlaylistEditAlbumDataSource)initWithLibrary:(id)library album:(id)album trackProperties:(id)properties authorProfile:(id)profile;
- (void)loadEntriesWithCompletion:(id)completion;
@end

@implementation MPModelLibraryPlaylistEditAlbumDataSource

- (void)loadEntriesWithCompletion:(id)completion
{
  v17[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [MPModelSong kindWithVariants:3];
  v6 = +[MPPropertySet emptyPropertySet];
  v7 = objc_alloc_init(MPModelLibraryRequest);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ loading track list", self];
  [(MPModelRequest *)v7 setLabel:v8];

  v9 = [MPModelAlbum kindWithSongKind:v5 options:0];
  [(MPModelRequest *)v7 setSectionKind:v9];

  [(MPModelRequest *)v7 setSectionProperties:v6];
  v17[0] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v11 = [MPModelPlaylistEntry kindWithKinds:v10];
  [(MPModelRequest *)v7 setItemKind:v11];

  [(MPModelRequest *)v7 setItemProperties:self->_trackPropertySet];
  album = self->_album;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&album count:1];
  [(MPModelLibraryRequest *)v7 setScopedContainers:v12];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__MPModelLibraryPlaylistEditAlbumDataSource_loadEntriesWithCompletion___block_invoke;
  v14[3] = &unk_1E767C080;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [(MPModelLibraryRequest *)v7 performWithResponseHandler:v14];
}

void __71__MPModelLibraryPlaylistEditAlbumDataSource_loadEntriesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to album tracks from library. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [a2 results];
    v9 = [v8 allItems];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__MPModelLibraryPlaylistEditAlbumDataSource_loadEntriesWithCompletion___block_invoke_22;
    v11[3] = &unk_1E767BB20;
    v11[4] = *(a1 + 32);
    v10 = [v9 msv_map:v11];
    (*(*(a1 + 40) + 16))();
  }
}

id __71__MPModelLibraryPlaylistEditAlbumDataSource_loadEntriesWithCompletion___block_invoke_22(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newPlaylistEntryForTrack:a2];

  return v2;
}

- (MPModelLibraryPlaylistEditAlbumDataSource)initWithLibrary:(id)library album:(id)album trackProperties:(id)properties authorProfile:(id)profile
{
  libraryCopy = library;
  albumCopy = album;
  propertiesCopy = properties;
  profileCopy = profile;
  identifiers = [albumCopy identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  if (persistentID)
  {
    v17 = MEMORY[0x1E696AEC0];
    library2 = [identifiers library];
    [v17 stringWithFormat:@"l.%lld", objc_msgSend(library2, "persistentID")];
    v22 = LABEL_5:;

    goto LABEL_6;
  }

  universalStore = [identifiers universalStore];
  adamID = [universalStore adamID];

  if (adamID)
  {
    v21 = MEMORY[0x1E696AEC0];
    library2 = [identifiers universalStore];
    [v21 stringWithFormat:@"a.%lld", objc_msgSend(library2, "adamID")];
    goto LABEL_5;
  }

  v22 = @"u";
LABEL_6:
  v23 = MEMORY[0x1E696AEC0];
  v24 = MSVNanoIDCreateTaggedPointer();
  v25 = [v23 stringWithFormat:@"a-%@-%@", v22, v24];

  v31.receiver = self;
  v31.super_class = MPModelLibraryPlaylistEditAlbumDataSource;
  v26 = [(MPModelLibraryPlaylistEditDataSource *)&v31 initWithIdentifier:v25 authorProfile:profileCopy];

  if (v26)
  {
    objc_storeStrong(&v26->_library, library);
    v27 = [albumCopy copy];
    album = v26->_album;
    v26->_album = v27;

    objc_storeStrong(&v26->_trackPropertySet, properties);
  }

  return v26;
}

@end