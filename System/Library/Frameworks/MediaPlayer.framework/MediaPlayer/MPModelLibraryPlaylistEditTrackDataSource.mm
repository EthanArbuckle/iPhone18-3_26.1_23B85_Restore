@interface MPModelLibraryPlaylistEditTrackDataSource
- (MPModelLibraryPlaylistEditTrackDataSource)initWithTrackObjects:(id)objects authorProfile:(id)profile;
- (id)description;
@end

@implementation MPModelLibraryPlaylistEditTrackDataSource

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(MPModelLibraryPlaylistEditDataSource *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p : %@>{\n", v4, self, identifier];

  return v6;
}

- (MPModelLibraryPlaylistEditTrackDataSource)initWithTrackObjects:(id)objects authorProfile:(id)profile
{
  v53 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  profileCopy = profile;
  firstObject = [objectsCopy firstObject];
  identifiers = [firstObject identifiers];

  library = [identifiers library];
  persistentID = [library persistentID];

  if (persistentID)
  {
    v13 = MEMORY[0x1E696AEC0];
    library2 = [identifiers library];
    [v13 stringWithFormat:@"l.%lld", objc_msgSend(library2, "persistentID")];
    v18 = LABEL_5:;

    goto LABEL_6;
  }

  universalStore = [identifiers universalStore];
  subscriptionAdamID = [universalStore subscriptionAdamID];

  if (subscriptionAdamID)
  {
    v17 = MEMORY[0x1E696AEC0];
    library2 = [identifiers universalStore];
    [v17 stringWithFormat:@"s.%lld", objc_msgSend(library2, "subscriptionAdamID")];
    goto LABEL_5;
  }

  v18 = @"u";
LABEL_6:
  v19 = MEMORY[0x1E696AEC0];
  v20 = MSVNanoIDCreateTaggedPointer();
  v21 = [v19 stringWithFormat:@"t-%@-%@", v18, v20];

  v47.receiver = self;
  v47.super_class = MPModelLibraryPlaylistEditTrackDataSource;
  v22 = [(MPModelLibraryPlaylistEditDataSource *)&v47 initWithIdentifier:v21 authorProfile:profileCopy];
  if (v22)
  {
    v39 = v21;
    v38 = a2;
    v40 = identifiers;
    v41 = profileCopy;
    v23 = [objectsCopy copy];
    tracks = v22->_tracks;
    v22->_tracks = v23;

    v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v42 = objectsCopy;
    v26 = objectsCopy;
    v27 = [v26 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v44;
      do
      {
        v30 = 0;
        do
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v43 + 1) + 8 * v30);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:v38 object:v22 file:@"MPModelLibraryPlaylistEditTrackDataSource.m" lineNumber:40 description:{@"Object is not a song track: %@", objc_opt_class()}];
          }

          v32 = [(MPModelLibraryPlaylistEditDataSource *)v22 newPlaylistEntryForTrack:v31];
          if (v32)
          {
            [v25 addObject:v32];
          }

          else
          {
            v33 = os_log_create("com.apple.amp.mediaplayer", "Default");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v49 = v22;
              v50 = 2114;
              v51 = v31;
              _os_log_impl(&dword_1A238D000, v33, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create playlist entry for track object %{public}@", buf, 0x16u);
            }
          }

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v28);
    }

    v35 = [v25 copy];
    playlistEntries = v22->_playlistEntries;
    v22->_playlistEntries = v35;

    profileCopy = v41;
    objectsCopy = v42;
    identifiers = v40;
    v21 = v39;
  }

  return v22;
}

@end