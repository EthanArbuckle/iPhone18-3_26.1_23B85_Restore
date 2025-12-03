@interface MPModelLibraryPlaylistEditPlaylistEntryDataSource
- (MPModelLibraryPlaylistEditPlaylistEntryDataSource)initWithPlaylistEntries:(id)entries;
- (id)description;
@end

@implementation MPModelLibraryPlaylistEditPlaylistEntryDataSource

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(MPModelLibraryPlaylistEditDataSource *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p : %@>{\n", v4, self, identifier];

  return v6;
}

- (MPModelLibraryPlaylistEditPlaylistEntryDataSource)initWithPlaylistEntries:(id)entries
{
  v47 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  firstObject = [entriesCopy firstObject];
  anyObject = [firstObject anyObject];

  identifiers = [anyObject identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  if (persistentID)
  {
    v11 = MEMORY[0x1E696AEC0];
    library2 = [identifiers library];
    [v11 stringWithFormat:@"l.%lld", objc_msgSend(library2, "persistentID")];
    v16 = LABEL_5:;

    goto LABEL_6;
  }

  universalStore = [identifiers universalStore];
  subscriptionAdamID = [universalStore subscriptionAdamID];

  if (subscriptionAdamID)
  {
    v15 = MEMORY[0x1E696AEC0];
    library2 = [identifiers universalStore];
    [v15 stringWithFormat:@"s.%lld", objc_msgSend(library2, "subscriptionAdamID")];
    goto LABEL_5;
  }

  v16 = @"u";
LABEL_6:
  v17 = MEMORY[0x1E696AEC0];
  v18 = MSVNanoIDCreateTaggedPointer();
  v19 = [v17 stringWithFormat:@"e-%@-%@", v16, v18];

  v45.receiver = self;
  v45.super_class = MPModelLibraryPlaylistEditPlaylistEntryDataSource;
  v20 = [(MPModelLibraryPlaylistEditDataSource *)&v45 initWithIdentifier:v19];
  v21 = v20;
  if (v20)
  {
    v35 = v19;
    v36 = v16;
    v38 = v20;
    v34 = a2;
    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(entriesCopy, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v37 = entriesCopy;
    obj = entriesCopy;
    v23 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      do
      {
        v26 = 0;
        do
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v41 + 1) + 8 * v26);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:v34 object:v38 file:@"MPModelLibraryPlaylistEditPlaylistEntryDataSource.m" lineNumber:35 description:{@"Object is not a playlist entry: %@", objc_opt_class()}];
          }

          identifiers2 = [v27 identifiers];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __77__MPModelLibraryPlaylistEditPlaylistEntryDataSource_initWithPlaylistEntries___block_invoke;
          v40[3] = &unk_1E767C0A8;
          v40[4] = v27;
          v29 = [v27 copyWithIdentifiers:identifiers2 block:v40];

          [v22 addObject:v29];
          ++v26;
        }

        while (v24 != v26);
        v24 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v24);
    }

    v31 = [v22 copy];
    v21 = v38;
    playlistEntries = v38->_playlistEntries;
    v38->_playlistEntries = v31;

    entriesCopy = v37;
    v16 = v36;
    v19 = v35;
  }

  return v21;
}

void __77__MPModelLibraryPlaylistEditPlaylistEntryDataSource_initWithPlaylistEntries___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) hasLoadedValueForKey:@"MPModelPropertyPlaylistEntryUniversalIdentifier"])
  {
    v3 = [v7 universalIdentifier];
  }

  else
  {
    v3 = &stru_1F149ECA8;
  }

  if ([*(a1 + 32) hasLoadedValueForKey:@"MPModelPropertyPlaylistEntryPositionUniversalIdentifier"])
  {
    v4 = [v7 positionUniversalIdentifier];
  }

  else
  {
    v4 = &stru_1F149ECA8;
  }

  if (![(__CFString *)v3 length])
  {
    v5 = +[MPModelPlaylistEntry newUniversalIdentifier];
    [v7 setUniversalIdentifier:v5];
  }

  if (![(__CFString *)v4 length])
  {
    v6 = +[MPModelPlaylistEntry newUniversalIdentifier];
    [v7 setPositionUniversalIdentifier:v6];
  }
}

@end