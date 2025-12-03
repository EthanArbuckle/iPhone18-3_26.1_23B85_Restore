@interface MPModelLibraryAlbumAppDataChangeRequestOperation
- (void)execute;
@end

@implementation MPModelLibraryAlbumAppDataChangeRequestOperation

- (void)execute
{
  v25[1] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__MPModelLibraryAlbumAppDataChangeRequestOperation_execute__block_invoke;
  aBlock[3] = &unk_1E767B220;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  request = [(MPModelLibraryAlbumAppDataChangeRequestOperation *)self request];
  albumAppData = [request albumAppData];
  createAppDataDictionary = [albumAppData createAppDataDictionary];

  v22 = 0;
  v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:createAppDataDictionary format:200 options:0 error:&v22];
  v8 = v22;
  if (v7)
  {
    request2 = [(MPModelLibraryAlbumAppDataChangeRequestOperation *)self request];
    modelObject = [request2 modelObject];
    identifiers = [modelObject identifiers];
    library = [identifiers library];
    persistentID = [library persistentID];

    v14 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B2CD8] equalToInt64:persistentID];
    v15 = MEMORY[0x1E69B3418];
    autoupdatingSharedLibrary = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
    v17 = [v15 anyInLibrary:autoupdatingSharedLibrary predicate:v14];

    if (v17)
    {
      v25[0] = v7;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      v24 = *MEMORY[0x1E69B29A8];
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __59__MPModelLibraryAlbumAppDataChangeRequestOperation_execute__block_invoke_2;
      v20[3] = &unk_1E767D3C8;
      v21 = v3;
      [v17 setValues:v18 forProperties:v19 async:1 withCompletionBlock:v20];
    }

    else
    {
      (*(v3 + 2))(v3, 0, 0);
    }
  }

  else
  {
    (*(v3 + 2))(v3, 0, v8);
  }
}

uint64_t __59__MPModelLibraryAlbumAppDataChangeRequestOperation_execute__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4[34];
  if (v5)
  {
    (*(v5 + 16))(v4[34], a3);
    v4 = *(a1 + 32);
  }

  return [v4 finish];
}

@end