@interface MPConcreteMediaPlaylist
- (BOOL)beginGeneratingGeniusClusterItemsWithSeedItems:(id)a3 error:(id *)a4;
- (BOOL)existsInLibrary;
- (BOOL)isEqual:(id)a3;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (MPConcreteMediaPlaylist)initWithCoder:(id)a3;
- (MPConcreteMediaPlaylist)initWithProperties:(id)a3 itemsQuery:(id)a4;
- (id)_tokenBinaryIdentifierAsString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)geniusClusterItemsWithCount:(unint64_t)a3 error:(id *)a4;
- (id)multiverseIdentifier;
- (id)representativeItem;
- (id)sagaIDTreeIncludingUndeletablePlaylists:(BOOL)a3;
- (id)valueForProperty:(id)a3;
- (id)valuesForProperties:(id)a3;
- (unint64_t)mediaTypes;
- (void)addItemWithProductID:(id)a3 completionHandler:(id)a4;
- (void)addMediaItems:(id)a3 completionHandler:(id)a4;
- (void)appendItem:(id)a3 completion:(id)a4;
- (void)appendItems:(id)a3 andEntryProperties:(id)a4 completion:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)endGeneratingGeniusClusterItems;
- (void)moveItemFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 completionBlock:(id)a5;
- (void)populateWithSeedItem:(id)a3 queue:(id)a4 completionBlock:(id)a5;
- (void)removeAllItems;
- (void)removeFirstItem;
- (void)removeItems:(id)a3 atFilteredIndexes:(id)a4 completionBlock:(id)a5;
- (void)replaceItems:(id)a3 completion:(id)a4;
- (void)replaceItemsWithPersistentIDs:(id)a3 andEntryProperties:(id)a4 completion:(id)a5;
- (void)setReactionText:(id)a3 onEntryAtPosition:(unint64_t)a4 completion:(id)a5;
- (void)setValue:(id)a3 forProperty:(id)a4 withCompletionBlock:(id)a5;
- (void)setValuesForProperties:(id)a3 trackList:(id)a4 andEntryProperties:(id)a5 withCompletionBlock:(id)a6;
@end

@implementation MPConcreteMediaPlaylist

- (void)endGeneratingGeniusClusterItems
{
  if (self->_clusterPlaylist)
  {
    v4 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
    v3 = [v4 libraryDataProvider];
    [v3 releaseGeniusClusterPlaylist:self->_clusterPlaylist];
    self->_clusterPlaylist = 0;
  }
}

- (id)geniusClusterItemsWithCount:(unint64_t)a3 error:(id *)a4
{
  v17 = a3;
  v6 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v7 = [v6 libraryDataProvider];
  v8 = v7;
  clusterPlaylist = self->_clusterPlaylist;
  if (clusterPlaylist && (v10 = [v7 generateItemIdentifiersForGeniusClusterPlaylist:clusterPlaylist count:&v17 error:a4], v17))
  {
    v11 = v10;
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    v13 = +[MPMediaLibrary defaultMediaLibrary];
    if (v17)
    {
      for (i = 0; i < v17; ++i)
      {
        v15 = [v13 itemWithPersistentID:v11[i]];
        if (v15)
        {
          [v12 addObject:v15];
        }
      }
    }

    free(v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)beginGeneratingGeniusClusterItemsWithSeedItems:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v8 = [v7 libraryDataProvider];
  v9 = v8;
  if (self->_clusterPlaylist)
  {
    [v8 releaseGeniusClusterPlaylist:?];
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v6 count];
    v11 = malloc_type_malloc(8 * [v6 count], 0x100004000313F17uLL);
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        v13 = [v6 objectAtIndex:i];
        v11[i] = [v13 persistentID];
      }
    }

    self->_clusterPlaylist = [v9 createGeniusClusterPlaylistWithSeedItemIdentifiers:v11 count:v10 error:a4];
    free(v11);
  }

  v14 = self->_clusterPlaylist != 0;

  return v14;
}

- (void)populateWithSeedItem:(id)a3 queue:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v9 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

  v12 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v13 = [v12 libraryDataProvider];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(MPConcreteMediaPlaylist *)self valueForProperty:@"playlistPersistentID"];
    v15 = [v14 longLongValue];

    v16 = [v8 valueForProperty:@"persistentID"];
    v17 = [v16 longLongValue];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__MPConcreteMediaPlaylist_populateWithSeedItem_queue_completionBlock___block_invoke;
    v21[3] = &unk_1E76799A8;
    v21[4] = self;
    v22 = v12;
    v24 = v10;
    v23 = v9;
    [v13 seedPlaylistWithIdentifier:v15 withItemWithIdentifier:v17 completionBlock:v21];

    v18 = v22;
LABEL_7:

    goto LABEL_8;
  }

  if (v10)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__MPConcreteMediaPlaylist_populateWithSeedItem_queue_completionBlock___block_invoke_3;
    block[3] = &unk_1E7682370;
    v20 = v10;
    dispatch_async(v9, block);
    v18 = v20;
    goto LABEL_7;
  }

LABEL_8:
}

void __70__MPConcreteMediaPlaylist_populateWithSeedItem_queue_completionBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) _updateLibraryForPlaylistEdit:*(a1 + 40)];
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__MPConcreteMediaPlaylist_populateWithSeedItem_queue_completionBlock___block_invoke_2;
    block[3] = &unk_1E7679980;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)setReactionText:(id)a3 onEntryAtPosition:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v11 = [v10 libraryDataProvider];
  if (objc_opt_respondsToSelector())
  {
    v12 = [(MPConcreteMediaPlaylist *)self valueForProperty:@"playlistPersistentID"];
    v13 = [v12 longLongValue];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__MPConcreteMediaPlaylist_setReactionText_onEntryAtPosition_completion___block_invoke;
    v14[3] = &unk_1E7679958;
    v15 = v9;
    [v11 setReactionText:v8 onEntryAtPosition:a4 inPlaylistWithIdentifier:v13 completion:v14];
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

uint64_t __72__MPConcreteMediaPlaylist_setReactionText_onEntryAtPosition_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)moveItemFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v10 = [v9 libraryDataProvider];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(MPConcreteMediaPlaylist *)self valueForProperty:@"playlistPersistentID"];
    v12 = [v11 longLongValue];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__MPConcreteMediaPlaylist_moveItemFromIndex_toIndex_completionBlock___block_invoke;
    v13[3] = &unk_1E7679930;
    v13[4] = self;
    v14 = v9;
    v15 = v8;
    [v10 moveItemFromIndex:a3 toIndex:a4 inPlaylistWithIdentifier:v12 completionBlock:v13];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

uint64_t __69__MPConcreteMediaPlaylist_moveItemFromIndex_toIndex_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLibraryForPlaylistEdit:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeFirstItem
{
  v4 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v3 = [v4 libraryDataProvider];
  if (objc_opt_respondsToSelector())
  {
    [v3 removeFirstItemFromPlaylistWithIdentifier:{-[MPMediaPlaylist persistentID](self, "persistentID")}];
  }
}

- (void)removeAllItems
{
  v6 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v3 = [v6 libraryDataProvider];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(MPConcreteMediaPlaylist *)self valueForProperty:@"playlistPersistentID"];
    v5 = [v4 longLongValue];

    [v3 removeAllItemsInPlaylistWithIdentifier:v5];
  }
}

- (void)removeItems:(id)a3 atFilteredIndexes:(id)a4 completionBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v10 = [v9 libraryDataProvider];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(MPConcreteMediaPlaylist *)self valueForProperty:@"playlistPersistentID"];
    v12 = [v11 longLongValue];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__MPConcreteMediaPlaylist_removeItems_atFilteredIndexes_completionBlock___block_invoke;
    v13[3] = &unk_1E7679930;
    v13[4] = self;
    v14 = v9;
    v15 = v8;
    [v10 removeItemsAtIndexes:v7 inPlaylistWithIdentifier:v12 completionBlock:v13];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

uint64_t __73__MPConcreteMediaPlaylist_removeItems_atFilteredIndexes_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLibraryForPlaylistEdit:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)addItemWithProductID:(id)a3 completionHandler:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (+[MPMediaLibrary authorizationStatus]== MPMediaLibraryAuthorizationStatusAuthorized)
  {
    v8 = [v6 longLongValue];
    if ([(MPConcreteMediaPlaylist *)self _allowsEditing]&& v8)
    {
      v9 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
      v10 = [v9 libraryDataProvider];
      if (objc_opt_respondsToSelector())
      {
        v11 = [(MPMediaPlaylist *)self persistentID];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __66__MPConcreteMediaPlaylist_addItemWithProductID_completionHandler___block_invoke;
        v20[3] = &unk_1E76816D0;
        v21 = v7;
        [v10 sdk_addItemWithOpaqueIdentifier:v6 toPlaylistWithIdentifier:v11 completionBlock:v20];
        v12 = v21;
      }

      else
      {
        if (!v7)
        {
LABEL_21:

          goto LABEL_22;
        }

        v15 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
        v16 = [v15 localizedStringForKey:@"NOT_SUPPORTED" value:&stru_1F149ECA8 table:@"MediaPlayer"];

        if (v16)
        {
          v22 = *MEMORY[0x1E696A578];
          v23 = v16;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        }

        else
        {
          v12 = 0;
        }

        v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:5 userInfo:v12];
        (*(v7 + 2))(v7, v19);
      }

LABEL_20:

      goto LABEL_21;
    }

    if (v7)
    {
      v14 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
      v10 = [v14 localizedStringForKey:@"NOT_SUPPORTED" value:&stru_1F149ECA8 table:@"MediaPlayer"];

      if (v10)
      {
        v24 = *MEMORY[0x1E696A578];
        v25 = v10;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      }

      else
      {
        v9 = 0;
      }

      v17 = MEMORY[0x1E696ABC0];
      v18 = 5;
LABEL_19:
      v12 = [v17 errorWithDomain:@"MPErrorDomain" code:v18 userInfo:v9];
      (*(v7 + 2))(v7, v12);
      goto LABEL_20;
    }
  }

  else if (v7)
  {
    v13 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
    v10 = [v13 localizedStringForKey:@"PERMISSION_DENIED" value:&stru_1F149ECA8 table:@"MediaPlayer"];

    if (v10)
    {
      v26 = *MEMORY[0x1E696A578];
      v27[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    }

    else
    {
      v9 = 0;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = 1;
    goto LABEL_19;
  }

LABEL_22:
}

void __66__MPConcreteMediaPlaylist_addItemWithProductID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    if (v3)
    {
      v5 = [v3 domain];
      v6 = [v5 isEqualToString:@"MPErrorDomain"];

      if ((v6 & 1) == 0)
      {
        v7 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
        v8 = [v7 localizedStringForKey:@"UNKNOWN_ERROR" value:&stru_1F149ECA8 table:@"MediaPlayer"];

        if (v8)
        {
          v11 = *MEMORY[0x1E696A578];
          v12[0] = v8;
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
        }

        else
        {
          v9 = 0;
        }

        v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:0 userInfo:v9];

        v4 = v10;
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)addMediaItems:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (+[MPMediaLibrary authorizationStatus]!= MPMediaLibraryAuthorizationStatusAuthorized)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
    v9 = [v8 localizedStringForKey:@"PERMISSION_DENIED" value:&stru_1F149ECA8 table:@"MediaPlayer"];

    if (v9)
    {
      v19 = *MEMORY[0x1E696A578];
      v20[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    }

    else
    {
      v10 = 0;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = 1;
LABEL_17:
    v14 = [v12 errorWithDomain:@"MPErrorDomain" code:v13 userInfo:v10];
    v7[2](v7, v14);

    goto LABEL_18;
  }

  if (![(MPConcreteMediaPlaylist *)self _allowsEditing])
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v11 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
    v9 = [v11 localizedStringForKey:@"NOT_SUPPORTED" value:&stru_1F149ECA8 table:@"MediaPlayer"];

    if (v9)
    {
      v17 = *MEMORY[0x1E696A578];
      v18 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    }

    else
    {
      v10 = 0;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = 5;
    goto LABEL_17;
  }

  if ([v6 count])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__MPConcreteMediaPlaylist_addMediaItems_completionHandler___block_invoke;
    v15[3] = &unk_1E767AC48;
    v15[4] = self;
    v16 = v7;
    [(MPConcreteMediaPlaylist *)self appendItems:v6 completion:v15];
  }

  else if (v7)
  {
    v7[2](v7, 0);
  }

LABEL_18:
}

void __59__MPConcreteMediaPlaylist_addMediaItems_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [MPCloudControllerItemIDList cloudItemIDListForPlaylist:*(a1 + 32)];
    v4 = [*(a1 + 32) mediaLibrary];
    v5 = [v4 userIdentity];
    v6 = [MPCloudController controllerWithUserIdentity:v5];
    [v6 setPlaylistProperties:0 trackList:v3 forPlaylistWithPersistentID:objc_msgSend(*(a1 + 32) completionHandler:{"persistentID"), 0}];

    v7 = *(a1 + 40);
    if (!v7)
    {
      return;
    }

    v8 = 0;
  }

  else
  {
    if (!*(a1 + 40))
    {
      return;
    }

    v9 = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
    v10 = [v9 localizedStringForKey:@"UNKNOWN_ERROR" value:&stru_1F149ECA8 table:@"MediaPlayer"];

    if (v10)
    {
      v12 = *MEMORY[0x1E696A578];
      v13[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    }

    else
    {
      v11 = 0;
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:0 userInfo:v11];

    v7 = *(a1 + 40);
  }

  (*(v7 + 16))(v7, v8);
}

- (void)appendItems:(id)a3 andEntryProperties:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v12 = [v11 libraryDataProvider];
  if ([v8 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = [(MPConcreteMediaPlaylist *)self valueForProperty:@"playlistPersistentID"];
    v14 = [v13 longLongValue];

    v15 = [v8 valueForKey:@"persistentID"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__MPConcreteMediaPlaylist_appendItems_andEntryProperties_completion___block_invoke;
    v16[3] = &unk_1E7679930;
    v16[4] = self;
    v17 = v11;
    v18 = v10;
    [v12 addItemsWithIdentifiers:v15 andEntryProperties:v9 toPlaylistWithIdentifier:v14 completionBlock:v16];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

uint64_t __69__MPConcreteMediaPlaylist_appendItems_andEntryProperties_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLibraryForPlaylistEdit:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)appendItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v9 = [v8 libraryDataProvider];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [(MPConcreteMediaPlaylist *)self valueForProperty:@"playlistPersistentID"];
    v11 = [v10 longLongValue];

    v12 = [v6 persistentID];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__MPConcreteMediaPlaylist_appendItem_completion___block_invoke;
    v13[3] = &unk_1E7679930;
    v13[4] = self;
    v14 = v8;
    v15 = v7;
    [v9 addItemWithIdentifier:v12 toPlaylistWithIdentifier:v11 completionBlock:v13];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

uint64_t __49__MPConcreteMediaPlaylist_appendItem_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLibraryForPlaylistEdit:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)replaceItemsWithPersistentIDs:(id)a3 andEntryProperties:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v12 = [v11 libraryDataProvider];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = [(MPConcreteMediaPlaylist *)self valueForProperty:@"playlistPersistentID"];
    v14 = [v13 longLongValue];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__MPConcreteMediaPlaylist_replaceItemsWithPersistentIDs_andEntryProperties_completion___block_invoke;
    v15[3] = &unk_1E7679930;
    v15[4] = self;
    v16 = v11;
    v17 = v10;
    [v12 setItemsWithIdentifiers:v8 andEntryProperties:v9 forPlaylistWithIdentifier:v14 completionBlock:v15];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

uint64_t __87__MPConcreteMediaPlaylist_replaceItemsWithPersistentIDs_andEntryProperties_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLibraryForPlaylistEdit:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)replaceItems:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v9 = [v8 libraryDataProvider];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = self;
    v20 = v9;
    v10 = [(MPConcreteMediaPlaylist *)self valueForProperty:@"playlistPersistentID"];
    v18 = [v10 longLongValue];

    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v24 + 1) + 8 * v16) valueForProperty:{@"persistentID", v18}];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __51__MPConcreteMediaPlaylist_replaceItems_completion___block_invoke;
    v21[3] = &unk_1E7679930;
    v21[4] = v19;
    v22 = v8;
    v23 = v7;
    v9 = v20;
    [v20 setItemsWithIdentifiers:v11 forPlaylistWithIdentifier:v18 completionBlock:v21];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

uint64_t __51__MPConcreteMediaPlaylist_replaceItems_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLibraryForPlaylistEdit:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)valuesForProperties:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v7 = [v4 mutableCopy];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MPConcreteMediaPlaylist_valuesForProperties___block_invoke;
  block[3] = &unk_1E767C7D0;
  v9 = v4;
  v35 = v9;
  v36 = self;
  v10 = v7;
  v37 = v10;
  v11 = v6;
  v38 = v11;
  dispatch_sync(accessQueue, block);
  if ([v10 count])
  {
    v12 = [v5 libraryDataProvider];

    if (v12)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__18853;
      v32 = __Block_byref_object_dispose__18854;
      v33 = 0;
      v13 = self->_accessQueue;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __47__MPConcreteMediaPlaylist_valuesForProperties___block_invoke_2;
      v27[3] = &unk_1E76819F0;
      v27[4] = self;
      v27[5] = &v28;
      dispatch_sync(v13, v27);
      v14 = [v29[5] unsignedLongLongValue];
      v15 = [v5 libraryDataProvider];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __47__MPConcreteMediaPlaylist_valuesForProperties___block_invoke_3;
      v24[3] = &unk_1E7679900;
      v25 = v5;
      v26 = self;
      [v15 loadProperties:v10 ofCollectionWithIdentifier:v14 groupingType:6 completionBlock:v24];

      v16 = self->_accessQueue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __47__MPConcreteMediaPlaylist_valuesForProperties___block_invoke_5;
      v20[3] = &unk_1E76800A0;
      v21 = v10;
      v22 = self;
      v23 = v11;
      dispatch_sync(v16, v20);

      _Block_object_dispose(&v28, 8);
    }
  }

  v17 = v38;
  v18 = v11;

  return v11;
}

void __47__MPConcreteMediaPlaylist_valuesForProperties___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [*(*(a1 + 40) + 96) valueForKey:v6];
        v8 = [MEMORY[0x1E695DFB0] null];
        v9 = [v7 isEqual:v8];

        if ((v9 & 1) == 0)
        {
          if (!v7)
          {
            goto LABEL_10;
          }

          [*(a1 + 56) setObject:v7 forKey:v6];
        }

        [*(a1 + 48) removeObject:v6];
LABEL_10:
      }

      v3 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }
}

void __47__MPConcreteMediaPlaylist_valuesForProperties___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) objectForKey:@"playlistPersistentID"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __47__MPConcreteMediaPlaylist_valuesForProperties___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"seedItems"];
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(a1 + 32) itemWithPersistentID:{objc_msgSend(*(*(&v17 + 1) + 8 * v10), "unsignedLongLongValue")}];
          if (v11)
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = [v3 mutableCopy];
    [v12 setValue:v5 forKey:@"seedItems"];

    v3 = v12;
  }

  if ([v3 count])
  {
    v13 = *(a1 + 40);
    v14 = *(v13 + 88);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__MPConcreteMediaPlaylist_valuesForProperties___block_invoke_4;
    v15[3] = &unk_1E76823C0;
    v15[4] = v13;
    v16 = v3;
    dispatch_sync(v14, v15);
  }
}

void __47__MPConcreteMediaPlaylist_valuesForProperties___block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 96) valueForKey:{v7, v11}];
        if (v8)
        {
          [*(a1 + 48) setObject:v8 forKey:v7];
        }

        else
        {
          v9 = *(*(a1 + 40) + 96);
          v10 = [MEMORY[0x1E695DFB0] null];
          [v9 setObject:v10 forKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __47__MPConcreteMediaPlaylist_valuesForProperties___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 96);
  if (v3)
  {

    [v3 addEntriesFromDictionary:v2];
  }

  else
  {
    v4 = [v2 mutableCopy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    *(v5 + 96) = v4;
  }
}

- (id)valueForProperty:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__18853;
  v43 = __Block_byref_object_dispose__18854;
  v44 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MPConcreteMediaPlaylist_valueForProperty___block_invoke;
  block[3] = &unk_1E7681330;
  v38 = &v39;
  block[4] = self;
  v7 = v4;
  v37 = v7;
  dispatch_sync(accessQueue, block);
  if (!v40[5])
  {
    v8 = [v5 libraryDataProvider];

    if (v8)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__18853;
      v34 = __Block_byref_object_dispose__18854;
      v35 = 0;
      v9 = self->_accessQueue;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __44__MPConcreteMediaPlaylist_valueForProperty___block_invoke_2;
      v29[3] = &unk_1E76819F0;
      v29[4] = self;
      v29[5] = &v30;
      dispatch_sync(v9, v29);
      v10 = [v31[5] unsignedLongLongValue];
      v11 = [v5 libraryDataProvider];
      v12 = [MEMORY[0x1E695DFD8] setWithObject:v7];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __44__MPConcreteMediaPlaylist_valueForProperty___block_invoke_3;
      v26[3] = &unk_1E7679900;
      v27 = v5;
      v28 = self;
      [v11 loadProperties:v12 ofCollectionWithIdentifier:v10 groupingType:6 completionBlock:v26];

      v13 = self->_accessQueue;
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __44__MPConcreteMediaPlaylist_valueForProperty___block_invoke_5;
      v22 = &unk_1E7681330;
      v25 = &v39;
      v23 = self;
      v24 = v7;
      dispatch_sync(v13, &v19);

      _Block_object_dispose(&v30, 8);
    }
  }

  v14 = v40[5];
  v15 = [MEMORY[0x1E695DFB0] null];
  if ([v14 isEqual:v15])
  {
    v16 = 0;
  }

  else
  {
    v16 = v40[5];
  }

  v17 = v16;

  _Block_object_dispose(&v39, 8);

  return v17;
}

void __44__MPConcreteMediaPlaylist_valueForProperty___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 96) valueForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __44__MPConcreteMediaPlaylist_valueForProperty___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) objectForKey:@"playlistPersistentID"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __44__MPConcreteMediaPlaylist_valueForProperty___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"seedItems"];
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(a1 + 32) itemWithPersistentID:{objc_msgSend(*(*(&v17 + 1) + 8 * v10), "unsignedLongLongValue")}];
          if (v11)
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = [v3 mutableCopy];
    [v12 setValue:v5 forKey:@"seedItems"];

    v3 = v12;
  }

  if ([v3 count])
  {
    v13 = *(a1 + 40);
    v14 = *(v13 + 88);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__MPConcreteMediaPlaylist_valueForProperty___block_invoke_4;
    v15[3] = &unk_1E76823C0;
    v15[4] = v13;
    v16 = v3;
    dispatch_sync(v14, v15);
  }
}

void __44__MPConcreteMediaPlaylist_valueForProperty___block_invoke_5(void *a1)
{
  v2 = [*(a1[4] + 96) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = *(a1[4] + 96);
    v6 = [MEMORY[0x1E695DFB0] null];
    [v5 setObject:v6 forKey:a1[5]];
  }
}

void __44__MPConcreteMediaPlaylist_valueForProperty___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 96);
  if (v3)
  {

    [v3 addEntriesFromDictionary:v2];
  }

  else
  {
    v4 = [v2 mutableCopy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    *(v5 + 96) = v4;
  }
}

- (id)multiverseIdentifier
{
  v3 = [(MPConcreteMediaPlaylist *)self mediaLibrary];
  v4 = [v3 multiverseIdentifierForCollectionWithPersistentID:-[MPMediaPlaylist persistentID](self groupingType:{"persistentID"), 6}];

  return v4;
}

- (unint64_t)mediaTypes
{
  v2 = [(MPConcreteMediaPlaylist *)self valueForProperty:@"mediaType"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)representativeItem
{
  v2 = [(MPConcreteMediaPlaylist *)self items];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)sagaIDTreeIncludingUndeletablePlaylists:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v6 = [v5 libraryDataProvider];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 sagaIDTreeForPlaylistWithIdentifier:-[MPMediaPlaylist persistentID](self includeUndeletablePlaylists:{"persistentID"), v3}];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = [(MPMediaPlaylist *)self persistentID];
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "Attempted to fetch saga ID tree for playlist with persistent id %lld, but data provider is missing implementation", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (void)setValue:(id)a3 forProperty:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v12 = [v11 libraryDataProvider];

  if (objc_opt_respondsToSelector())
  {
    v13 = [(MPMediaPlaylist *)self persistentID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__MPConcreteMediaPlaylist_setValue_forProperty_withCompletionBlock___block_invoke;
    v14[3] = &unk_1E76798D8;
    v16 = v10;
    v14[4] = self;
    v15 = v9;
    [v12 setValue:v8 forProperty:v15 ofPlaylistWithIdentifier:v13 completionBlock:v14];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }
}

void __68__MPConcreteMediaPlaylist_setValue_forProperty_withCompletionBlock___block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v4 = a1[4];
  v3 = a1[5];
  v5 = *(v4 + 88);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__MPConcreteMediaPlaylist_setValue_forProperty_withCompletionBlock___block_invoke_2;
  v6[3] = &unk_1E76823C0;
  v6[4] = v4;
  v7 = v3;
  dispatch_sync(v5, v6);
}

uint64_t __68__MPConcreteMediaPlaylist_setValue_forProperty_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 96) removeObjectForKey:*(a1 + 40)];
  result = [@"isActivePlaylist" isEqualToString:*(a1 + 40)];
  if (result)
  {
    v3 = *(*(a1 + 32) + 96);

    return [v3 removeObjectForKey:@"isActiveGeniusPlaylist"];
  }

  return result;
}

- (void)setValuesForProperties:(id)a3 trackList:(id)a4 andEntryProperties:(id)a5 withCompletionBlock:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  v14 = [v13 libraryDataProvider];

  if (objc_opt_respondsToSelector())
  {
    [v14 setValuesForProperties:v15 trackList:v10 andEntryProperties:v11 ofPlaylistWithIdentifier:-[MPMediaPlaylist persistentID](self completionBlock:{"persistentID"), v12}];
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0, 0);
  }
}

- (BOOL)setValue:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__MPConcreteMediaPlaylist_setValue_forProperty___block_invoke;
  v11[3] = &unk_1E76798B0;
  v13 = &v14;
  v9 = v8;
  v12 = v9;
  [(MPConcreteMediaPlaylist *)self setValue:v6 forProperty:v7 withCompletionBlock:v11];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (id)_tokenBinaryIdentifierAsString
{
  v3 = MEMORY[0x1E69B34A0];
  v4 = [(MPMediaPlaylist *)self persistentID];
  v5 = [(MPConcreteMediaPlaylist *)self mediaLibrary];
  v6 = [v5 ml3Library];
  v7 = [v6 libraryUID];
  v8 = [v3 URLForEntityWithPersistentID:v4 libraryUID:v7];
  v9 = [v8 absoluteString];

  return v9;
}

- (BOOL)existsInLibrary
{
  v2 = self;
  v3 = [(MPMediaQuery *)self->_itemsQuery mediaLibrary];
  LOBYTE(v2) = [v3 playlistExistsWithPersistentID:{-[MPMediaPlaylist persistentID](v2, "persistentID")}];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    [v4 encodeObject:self->_itemsQuery forKey:@"MPQuery"];
    [v4 encodeObject:self->_properties forKey:@"MPProperties"];
  }
}

- (MPConcreteMediaPlaylist)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v20.receiver = self;
    v20.super_class = MPConcreteMediaPlaylist;
    v5 = [(MPMediaItemCollection *)&v20 initWithItems:0];
    if (v5)
    {
      v6 = dispatch_queue_create("com.apple.MediaPlayer.MPConcreteMediaPlaylist.accessQueue", 0);
      accessQueue = v5->_accessQueue;
      v5->_accessQueue = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPQuery"];
      itemsQuery = v5->_itemsQuery;
      v5->_itemsQuery = v8;

      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
      v15 = [v4 decodeObjectOfClasses:v14 forKey:@"MPProperties"];
      v16 = [v15 mutableCopy];
      properties = v5->_properties;
      v5->_properties = v16;
    }

    self = v5;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  properties = self->_properties;
  itemsQuery = self->_itemsQuery;

  return [v4 initWithProperties:properties itemsQuery:itemsQuery];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4[13];
    if (v5 == self->_itemsQuery)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(MPMediaQuery *)v5 isEqual:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MPConcreteMediaPlaylist)initWithProperties:(id)a3 itemsQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = MPConcreteMediaPlaylist;
  v8 = [(MPMediaItemCollection *)&v16 initWithItems:0];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.MediaPlayer.MPConcreteMediaPlaylist.accessQueue", 0);
    accessQueue = v8->_accessQueue;
    v8->_accessQueue = v9;

    v11 = [v6 mutableCopy];
    properties = v8->_properties;
    v8->_properties = v11;

    v13 = [v7 copy];
    itemsQuery = v8->_itemsQuery;
    v8->_itemsQuery = v13;
  }

  return v8;
}

@end