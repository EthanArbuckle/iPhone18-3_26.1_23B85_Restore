@interface MPModelLibraryPlaylistEditChangeRequestOperation
+ (id)requiredPlaylistEntryProperties;
- (BOOL)_isCloudLibraryEnabled;
- (BOOL)_shouldUploadTracklistToCloudForPlaylist:(id)a3;
- (id)_collaborationTrackEdits;
- (id)_getUpdatedPlaylistPropertiesWithError:(id *)a3;
- (void)_loadUpdatedTrackListWithCompletion:(id)a3;
- (void)execute;
@end

@implementation MPModelLibraryPlaylistEditChangeRequestOperation

+ (id)requiredPlaylistEntryProperties
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v7 = @"MPModelRelationshipPlaylistEntrySong";
  v3 = +[MPPropertySet emptyPropertySet];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [(MPPropertySet *)v2 initWithProperties:MEMORY[0x1E695E0F0] relationships:v4];

  return v5;
}

- (id)_collaborationTrackEdits
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(MPModelLibraryPlaylistEditChangeRequestOperation *)self request];
  v6 = [v5 trackListChanges];
  v7 = v6;
  if (v6 && [v6 hasChanges])
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = [v5 playlistEntries];
    v18 = [v9 allItems];

    v10 = [v7 insertedIndexes];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __76__MPModelLibraryPlaylistEditChangeRequestOperation__collaborationTrackEdits__block_invoke;
    v31[3] = &unk_1E767B418;
    v11 = v18;
    v35 = a2;
    v32 = v11;
    v33 = self;
    v12 = v8;
    v34 = v12;
    [v10 enumerateIndexesUsingBlock:v31];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __76__MPModelLibraryPlaylistEditChangeRequestOperation__collaborationTrackEdits__block_invoke_2;
    v26[3] = &unk_1E767BBF8;
    v13 = v11;
    v30 = a2;
    v27 = v13;
    v28 = self;
    v14 = v12;
    v29 = v14;
    [v7 enumerateMovesUsingBlock:v26];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__MPModelLibraryPlaylistEditChangeRequestOperation__collaborationTrackEdits__block_invoke_4;
    v24[3] = &unk_1E767B460;
    v15 = v4;
    v25 = v15;
    [v14 msv_enumerateKeysAndObjectsOrderedByKeyComparator:&__block_literal_global_72 usingBlock:v24];
    v16 = [v7 deletedIndexes];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__MPModelLibraryPlaylistEditChangeRequestOperation__collaborationTrackEdits__block_invoke_5;
    v19[3] = &unk_1E767B418;
    v23 = a2;
    v20 = v5;
    v21 = self;
    v22 = v15;
    [v16 enumerateIndexesUsingBlock:v19];
  }

  return v4;
}

void __76__MPModelLibraryPlaylistEditChangeRequestOperation__collaborationTrackEdits__block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [v18 song];
  v5 = [v4 identifiers];

  if (!v18)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MPModelLibraryPlaylistEditChangeRequestOperation.mm" lineNumber:519 description:{@"No playlist entry at index %lu", a2}];
  }

  v6 = [v5 universalStore];
  v7 = [v6 subscriptionAdamID];

  if (!v7)
  {
    v8 = [v5 universalStore];
    v7 = [v8 adamID];
  }

  v9 = [v18 universalIdentifier];
  v10 = [v18 positionUniversalIdentifier];
  if (a2)
  {
    v11 = [*(a1 + 32) objectAtIndexedSubscript:a2 - 1];
    v12 = MEMORY[0x1E69E43D0];
    v13 = [v11 positionUniversalIdentifier];
    v14 = [v12 paramsForAddingTrackWithAdamID:v7 itemUUID:v9 itemPositionUUID:v10 afterReferencePositionUUD:v13];
  }

  else
  {
    v14 = [MEMORY[0x1E69E43D0] paramsForAddingTrackWithAdamID:v7 itemUUID:v9 itemPositionUUID:v10 atPosition:1];
  }

  v15 = *(a1 + 48);
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v15 setObject:v14 forKey:v16];
}

void __76__MPModelLibraryPlaylistEditChangeRequestOperation__collaborationTrackEdits__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:?];
  v15 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MPModelLibraryPlaylistEditChangeRequestOperation.mm" lineNumber:542 description:{@"No playlist entry at index %lu", a3}];

    v5 = 0;
  }

  v6 = [v5 universalIdentifier];
  v7 = [v15 positionUniversalIdentifier];
  if (a3)
  {
    v8 = [*(a1 + 32) objectAtIndexedSubscript:a3 - 1];
    v9 = MEMORY[0x1E69E43D0];
    v10 = [v8 positionUniversalIdentifier];
    v11 = [v9 paramsForMovingTrackWithItemUUID:v6 withNewItemPositionUUID:v7 afterReferencePositionUUD:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E69E43D0] paramsForMovingTrackWithItemUUID:v6 withNewItemPositionUUID:v7 toPosition:1];
  }

  v12 = *(a1 + 48);
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v12 setObject:v11 forKey:v13];
}

void __76__MPModelLibraryPlaylistEditChangeRequestOperation__collaborationTrackEdits__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) deletedEntryUUIDs];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v9 = [v4 objectForKey:v5];

  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MPModelLibraryPlaylistEditChangeRequestOperation.mm" lineNumber:567 description:{@"No uuid for deleted entry at position %lu", a2}];
  }

  v6 = *(a1 + 48);
  v7 = [MEMORY[0x1E69E43D0] paramsForRemovingTrackWithItemUUID:?];
  [v6 addObject:v7];
}

- (void)_loadUpdatedTrackListWithCompletion:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPModelLibraryPlaylistEditChangeRequestOperation *)self request];
  v6 = [v5 playlistEntries];
  v7 = [v5 mediaLibrary];
  v8 = [v5 playlist];
  if (![v8 hasLoadedValueForKey:@"MPModelPropertyPlaylistType"])
  {
    v9 = 0;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = [v8 type] == 3;
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [v5 createFolder];
LABEL_6:
  if (v6 == 0 || v9 || v10)
  {
    (*(v4 + 2))(v4, 0, 0);
  }

  else
  {
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = __Block_byref_object_copy__31598;
    v42[4] = __Block_byref_object_dispose__31599;
    v43 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "totalItemCount")}];
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x4812000000;
    v38[3] = __Block_byref_object_copy__52;
    v38[4] = __Block_byref_object_dispose__53;
    v38[5] = "";
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x4812000000;
    v32 = __Block_byref_object_copy__54;
    v33 = __Block_byref_object_dispose__55;
    v34 = "";
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __88__MPModelLibraryPlaylistEditChangeRequestOperation__loadUpdatedTrackListWithCompletion___block_invoke;
    v24[3] = &unk_1E767B3A0;
    v25 = v6;
    v26 = v38;
    v27 = &v29;
    v28 = v42;
    [v25 enumerateItemIdentifiersUsingBlock:v24];
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__MPModelLibraryPlaylistEditChangeRequestOperation__loadUpdatedTrackListWithCompletion___block_invoke_2;
    aBlock[3] = &unk_1E767B3C8;
    v22 = v38;
    v13 = v12;
    v19 = v13;
    v14 = v11;
    v20 = v14;
    v21 = v4;
    v23 = v42;
    v15 = _Block_copy(aBlock);
    v16 = v15;
    if (v30[7] != v30[6])
    {
      v17 = MEMORY[0x1A58DF9B0]();
      *&v44 = mlcore::PlaylistItemPropertyPersistentID(v17);
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
    }

    (*(v15 + 2))(v15);

    _Block_object_dispose(&v29, 8);
    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    _Block_object_dispose(v38, 8);
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    _Block_object_dispose(v42, 8);
  }
}

void __88__MPModelLibraryPlaylistEditChangeRequestOperation__loadUpdatedTrackListWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = a2;
  v5 = a3;
  v6 = [v5 library];
  v7 = [v6 persistentID];

  if (v7)
  {
    v8 = *(*(a1 + 40) + 8);
    LOBYTE(v37) = 0;
    *(&v37 + 1) = v7;
    std::vector<_MPModelLibraryPlaylistEditIdentifier>::push_back[abi:ne200100](v8 + 48, &v37);
    v9 = *(*(a1 + 48) + 8);
    v11 = v9[7];
    v10 = v9[8];
    if (v11 >= v10)
    {
      v19 = v9[6];
      v20 = v11 - v19;
      v21 = (v11 - v19) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v23 = v10 - v19;
      if (v23 >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v24);
      }

      v25 = (v11 - v19) >> 3;
      v26 = (8 * v21);
      v27 = (8 * v21 - 8 * v25);
      *v26 = v7;
      v12 = v26 + 1;
      memcpy(v27, v19, v20);
      v28 = v9[6];
      v9[6] = v27;
      v9[7] = v12;
      v9[8] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v11 = v7;
      v12 = v11 + 1;
    }

    v9[7] = v12;
  }

  else
  {
    v13 = [*(a1 + 32) itemAtIndexPath:v36];
    v14 = [v13 song];
    v15 = [v14 identifiers];
    v16 = [v15 library];
    v17 = [v16 persistentID];

    if (v17)
    {
      v18 = *(*(a1 + 40) + 8);
      LOBYTE(v37) = 1;
      *(&v37 + 1) = v17;
      std::vector<_MPModelLibraryPlaylistEditIdentifier>::push_back[abi:ne200100](v18 + 48, &v37);
    }
  }

  v29 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v30 = [*(a1 + 32) itemAtIndexPath:v36];
  if ([v30 hasLoadedValueForKey:@"MPModelPropertyPlaylistEntryUniversalIdentifier"])
  {
    v31 = [v30 universalIdentifier];
    [v29 setObject:v31 forKey:@"entryUniversalIdentifier"];
  }

  if ([v30 hasLoadedValueForKey:@"MPModelPropertyPlaylistEntryPositionUniversalIdentifier"])
  {
    v32 = [v30 positionUniversalIdentifier];
    [v29 setObject:v32 forKey:@"entryPositionUniversalIdentifier"];
  }

  v33 = [v36 indexAtPosition:1];
  v34 = *(*(*(a1 + 56) + 8) + 40);
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v33];
  [v34 setObject:v29 forKeyedSubscript:v35];
}

uint64_t __88__MPModelLibraryPlaylistEditChangeRequestOperation__loadUpdatedTrackListWithCompletion___block_invoke_2(void *a1)
{
  v2 = *(a1[7] + 8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  if (v3 != v4)
  {
    while (!*v3)
    {
      v6 = a1[4];
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*(v3 + 8)];
      v8 = [v6 objectForKey:v7];
      v5 = [v8 longLongValue];

      if (v5)
      {
        goto LABEL_7;
      }

LABEL_8:
      v3 += 16;
      if (v3 == v4)
      {
        goto LABEL_9;
      }
    }

    if (*v3 != 1)
    {
      goto LABEL_8;
    }

    v5 = *(v3 + 8);
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    v9 = a1[5];
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    [v9 addObject:v10];

    goto LABEL_8;
  }

LABEL_9:
  v11 = *(a1[6] + 16);

  return v11();
}

void __88__MPModelLibraryPlaylistEditChangeRequestOperation__loadUpdatedTrackListWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7[7] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7[0] = &unk_1F1497538;
    v7[1] = a1 + 32;
    v7[3] = v7;
    mlcore::PropertiesQueryResult::enumerateResults();
    std::__function::__value_func<void ()(mlcore::PropertyCache const&,BOOL &)>::~__value_func[abi:ne200100](v7);
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

- (id)_getUpdatedPlaylistPropertiesWithError:(id *)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(MPModelLibraryPlaylistEditChangeRequestOperation *)self request];
  v34 = [v6 shouldCreatePlaylist];
  v7 = [v6 playlistName];
  v35 = v7;
  if (v7)
  {
    [v5 setObject:v7 forKey:@"name"];
  }

  v37 = [v6 playlist];
  v36 = [v6 parentPlaylist];
  if (v36)
  {
    v8 = [v37 identifiers];
    v9 = [v8 library];
    v10 = [v9 persistentID];

    v11 = [v36 identifiers];
    v12 = [v11 library];
    v13 = [v12 persistentID];

    if (!v13)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithLongLong:0];
      [v5 setObject:v17 forKey:@"parentPersistentID"];

      goto LABEL_18;
    }

    v14 = [v6 mediaLibrary];
    v15 = v14;
    if (v14 && [v14 playlistExistsWithPersistentID:v13])
    {
      if (v10 != v13)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
        [v5 setObject:v18 forKey:@"parentPersistentID"];

LABEL_17:
        goto LABEL_18;
      }

      v16 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v39 = self;
        v40 = 2048;
        v41 = v10;
        v42 = 2048;
        v43 = v10;
        _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Can't set parent persistent ID=%lld for playlist with persistent ID=%lld since the persistent IDs match", buf, 0x20u);
      }
    }

    else
    {
      v16 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v39 = self;
        v40 = 2048;
        v41 = v13;
        v42 = 2048;
        v43 = v10;
        _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Can't set parent persistent ID=%lld for playlist with persistent ID=%lld since the parent playlist isn't in the database", buf, 0x20u);
      }
    }

    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPModelLibraryPlaylistEditChangeRequestOperationErrorDomain" code:-10005 userInfo:0];
      goto LABEL_54;
    }

    goto LABEL_17;
  }

LABEL_18:
  v15 = [v6 playlistDescription];
  if (v15)
  {
    [v5 setObject:v15 forKey:@"descriptionInfo"];
  }

  if ([v37 hasLoadedValueForKey:@"MPModelPropertyPlaylistType"])
  {
    v19 = [v37 type] == 3;
  }

  else
  {
    v19 = 0;
  }

  if (((v37 == 0) & [v6 createFolder]) == 1)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v5 setObject:v20 forKey:@"isFolder"];
  }

  else
  {
    if (v19)
    {
      goto LABEL_32;
    }

    v20 = [v6 isPublicPlaylist];
    if (v20)
    {
      [v5 setObject:v20 forKey:@"cloudIsPublic"];
    }

    v21 = [v6 isVisiblePlaylist];
    if (v21)
    {
      [v5 setObject:v21 forKey:@"cloudIsVisible"];
    }
  }

LABEL_32:
  v22 = [v6 isCuratorPlaylist];
  if (v22)
  {
    [v5 setObject:v22 forKey:@"cloudIsCuratorPlaylist"];
  }

  v23 = [v6 isOwner];
  if (v23)
  {
    [v5 setObject:v23 forKey:@"iO"];
  }

  v24 = [v6 authorStoreIdentifier];
  v25 = v24;
  if (v24)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v24, "integerValue")}];
    [v5 setObject:v26 forKey:@"cloudAuthorStoreID"];
  }

  v27 = [v6 editSessionID];
  if (v27)
  {
    [v5 setObject:v27 forKey:@"editSessionID"];
  }

  v28 = [v6 coverArtworkRecipe];
  v29 = [v6 playlistEntries];
  v30 = v29;
  if (v34)
  {
    v31 = [MEMORY[0x1E695DF00] now];
    [v5 setObject:v31 forKey:@"dateCreated"];
LABEL_48:

    goto LABEL_49;
  }

  if (v35 || v15 || v29 || v28 || [v6 didSetPlaylistUserImage])
  {
    v31 = [MEMORY[0x1E695DF00] date];
    [v5 setObject:v31 forKey:@"dateModified"];
    goto LABEL_48;
  }

LABEL_49:
  v32 = [v6 playlistUserImage];
  if (v32)
  {

    v28 = @"{version:0.0}";
LABEL_52:
    [v5 setObject:v28 forKey:@"coverArtworkRecipe"];
    goto LABEL_53;
  }

  if (v28)
  {
    goto LABEL_52;
  }

LABEL_53:

LABEL_54:

  return v5;
}

- (BOOL)_shouldUploadTracklistToCloudForPlaylist:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 hasLoadedValueForKey:@"MPModelPropertyPlaylistUserEditableComponents"])
  {
    v5 = [v4 userEditableComponents] & 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)_isCloudLibraryEnabled
{
  v2 = [(MPAsyncOperation *)self userIdentity];
  v3 = [MPCloudController controllerWithUserIdentity:v2];
  v4 = [v3 isCloudLibraryEnabled];

  return v4;
}

- (void)execute
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(MPModelLibraryPlaylistEditChangeRequestOperation *)self request];
  v4 = [v3 playlist];
  v15 = [v3 mediaLibrary];
  v5 = [v3 shouldCreatePlaylist];
  v6 = [v3 createFolder];
  if ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistIsCollaborative"])
  {
    v7 = [v4 isCollaborative];
  }

  else
  {
    v7 = 0;
  }

  v14 = [v3 coverArtworkRecipe];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__31598;
  v16[4] = __Block_byref_object_dispose__31599;
  v17 = 0;
  v8 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = self;
    v36 = 2114;
    v37 = v4;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting operation with playlist %{public}@", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke;
  aBlock[3] = &unk_1E767BC48;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_3;
  v32[3] = &unk_1E767BC48;
  v32[4] = self;
  v10 = _Block_copy(v32);
  v31 = 0;
  v11 = [(MPModelLibraryPlaylistEditChangeRequestOperation *)self _getUpdatedPlaylistPropertiesWithError:&v31];
  v12 = v31;
  if (v12)
  {
    v9[2](v9, v12, 0);
    v10[2](v10, v12, 0);
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_5;
    v18[3] = &unk_1E767B310;
    v13 = v3;
    v28 = v5;
    v19 = v13;
    v20 = self;
    v21 = v11;
    v22 = v15;
    v27 = v16;
    v29 = v6;
    v23 = v4;
    v25 = v9;
    v26 = v10;
    v24 = v14;
    v30 = v7;
    [(MPModelLibraryPlaylistEditChangeRequestOperation *)self _loadUpdatedTrackListWithCompletion:v18];
  }

  _Block_object_dispose(v16, 8);
}

void __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) localPersistenceResponseHandler];
  if (v7)
  {
    v8 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_2;
    block[3] = &unk_1E7681568;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) completeResponseHandler];
  if (v7)
  {
    v8 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_4;
    block[3] = &unk_1E7681568;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }

  [*(a1 + 32) finishWithError:v5];
}

void __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v107 = *MEMORY[0x1E69E9840];
  v66 = a2;
  v65 = a3;
  group = dispatch_group_create();
  v64 = [*(a1 + 32) children];
  dispatch_group_enter(group);
  if (*(a1 + 104) != 1)
  {
    v34 = [*(a1 + 64) identifiers];
    v35 = [v34 library];
    v36 = [v35 persistentID];

    v37 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 40);
      v39 = [v66 count];
      v40 = *(a1 + 48);
      *buf = 138544130;
      v99 = v38;
      v100 = 2048;
      v101 = v36;
      v102 = 2048;
      v103 = v39;
      v104 = 2114;
      v105 = v40;
      _os_log_impl(&dword_1A238D000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating existing playlist with persistent ID=%lld, %lu tracks and properties: '%{public}@", buf, 0x2Au);
    }

    v41 = [*(a1 + 64) identifiers];
    v42 = [v41 universalStore];
    v63 = [v42 globalPlaylistID];

    if (v36)
    {
      v43 = group;
      v44 = [*(a1 + 56) playlistWithPersistentID:v36];
    }

    else
    {
      v43 = group;
      if (!v63)
      {
        goto LABEL_29;
      }

      v44 = [*(a1 + 56) playlistWithGlobalID:?];
    }

    if (v44)
    {
      v45 = v44;
      v33 = [v44 valueForProperty:@"coverArtworkRecipe"];
      v46 = *(a1 + 48);
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_24;
      v85[3] = &unk_1E767B220;
      v86 = v43;
      v32 = v45;
      [v45 setValuesForProperties:v46 trackList:v66 andEntryProperties:v65 withCompletionBlock:v85];

LABEL_30:
      objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(a1 + 64));
      goto LABEL_31;
    }

LABEL_29:
    dispatch_group_leave(v43);
    v32 = 0;
    v33 = &stru_1F149ECA8;
    goto LABEL_30;
  }

  v5 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [v66 count];
    v8 = *(a1 + 48);
    *buf = 138543874;
    v99 = v6;
    v100 = 2048;
    v101 = v7;
    v102 = 2114;
    v103 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating new playlist with %lu tracks and properties: '%{public}@", buf, 0x20u);
  }

  v63 = [*(a1 + 32) playlistName];
  v9 = [*(a1 + 56) addPlaylistWithName:? properties:? trackList:? playlistEntryProperties:?];
  if (v9)
  {
    v10 = [MPModelPlaylist alloc];
    v11 = [MPIdentifierSet alloc];
    v12 = +[MPModelPlaylistKind identityKind];
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_14;
    v95[3] = &unk_1E767EE00;
    v96 = *(a1 + 56);
    v97 = v9;
    v13 = [(MPIdentifierSet *)v11 initWithSource:@"LibraryPlaylistEdit" modelKind:v12 block:v95];
    v62 = v9;
    v14 = [(MPModelObject *)v10 initWithIdentifiers:v13 block:&__block_literal_global_31632];
    v15 = *(*(a1 + 96) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (*(*(*(a1 + 96) + 8) + 40) && *(a1 + 105) == 1 && v64)
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      obj = v64;
      v17 = [obj countByEnumeratingWithState:&v91 objects:v106 count:16];
      if (v17)
      {
        v18 = *v92;
        do
        {
          v19 = 0;
          v67 = v17;
          do
          {
            if (*v92 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v91 + 1) + 8 * v19);
            v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v22 = MEMORY[0x1E696AD98];
            v23 = [*(*(*(a1 + 96) + 8) + 40) identifiers];
            v24 = [v23 library];
            v25 = [v22 numberWithLongLong:{objc_msgSend(v24, "persistentID")}];

            [v21 setObject:v25 forKey:@"parentPersistentID"];
            v26 = [v20 identifiers];
            v27 = [v26 library];
            v28 = [v27 persistentID];

            if (v28)
            {
              v29 = [*(a1 + 56) playlistWithPersistentID:v28];
              if (v29)
              {
                v70 = v25;
                dispatch_group_enter(group);
                v87[0] = MEMORY[0x1E69E9820];
                v87[1] = 3221225472;
                v87[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_4_22;
                v87[3] = &unk_1E767B1F0;
                v87[4] = *(a1 + 40);
                v30 = v21;
                v31 = v21;
                v88 = v31;
                v90 = v28;
                v89 = group;
                [v29 setValuesForProperties:v31 trackList:0 andEntryProperties:0 withCompletionBlock:v87];

                v17 = v67;
                v21 = v30;
                v25 = v70;
              }
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [obj countByEnumeratingWithState:&v91 objects:v106 count:16];
        }

        while (v17);
      }
    }

    v9 = v62;
  }

  v32 = v9;
  dispatch_group_leave(group);
  v33 = &stru_1F149ECA8;
LABEL_31:

  v47 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_2_25;
  block[3] = &unk_1E767B2E8;
  v48 = *(a1 + 40);
  v49 = v32;
  v72 = v32;
  v73 = v48;
  v50 = *(a1 + 80);
  v51 = *(a1 + 88);
  v82 = *(a1 + 104);
  v74 = *(a1 + 72);
  v75 = v33;
  v52 = *(a1 + 32);
  v53 = *(a1 + 96);
  v76 = v52;
  v81 = v53;
  v54 = *(a1 + 48);
  v83 = *(a1 + 105);
  v77 = v54;
  v78 = v64;
  v55 = *(a1 + 56);
  v84 = *(a1 + 106);
  v56 = *(a1 + 64);
  *&v57 = v55;
  *(&v57 + 1) = v56;
  *&v58 = v50;
  *(&v58 + 1) = v51;
  v80 = v58;
  v79 = v57;
  v59 = v64;
  v60 = v33;
  v61 = v49;
  dispatch_group_notify(group, v47, block);
}

void __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_2_15;
  v5[3] = &unk_1E7680B00;
  v6 = *(a1 + 40);
  [v3 setLibraryIdentifiersWithDatabaseID:v4 block:v5];
}

void __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_4_22(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 56);
      v10 = 138544130;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to set properties=%{public}@ for child playlist with persistent ID=%lld, error=%{public}@", &v10, 0x2Au);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_2_25(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if ((*(a1 + 128) & 1) == 0 && *(a1 + 48))
    {
      v2 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 40);
        v4 = *(a1 + 48);
        *buf = 138543618;
        v82 = v3;
        v83 = 2114;
        v84 = v4;
        _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating cover artwork recipe: '%{public}@", buf, 0x16u);
      }

      if (([*(a1 + 48) isEqualToString:*(a1 + 56)] & 1) == 0)
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 32);
        v7 = *(a1 + 48);
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_27;
        v77[3] = &unk_1E767B248;
        v78 = v5;
        v79 = *(a1 + 64);
        v8 = v5;
        [v6 setValue:v7 forProperty:@"coverArtworkRecipe" withCompletionBlock:v77];
      }
    }

    if ([*(a1 + 64) didSetPlaylistUserImage])
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 64) playlistUserImage];
      [v9 setUserSelectedArtworkImage:v10];
    }

    (*(*(a1 + 104) + 16))();
    if (![*(a1 + 40) _isCloudLibraryEnabled])
    {
      (*(*(a1 + 112) + 16))();
      return;
    }

    v11 = *(a1 + 40);
    v12 = [v11 request];
    v13 = [v12 playlist];
    LODWORD(v11) = [v11 _shouldUploadTracklistToCloudForPlaylist:v13];

    if (v11)
    {
      v14 = [MPCloudControllerItemIDList cloudItemIDListForPlaylist:*(a1 + 32)];
    }

    else
    {
      v14 = 0;
    }

    if ([*(a1 + 72) count] || v14)
    {
      if (*(a1 + 128) == 1)
      {
        v18 = [*(a1 + 40) userIdentity];
        v19 = [MPCloudController controllerWithUserIdentity:v18];
        v20 = [*(a1 + 32) persistentID];
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_2_30;
        v70[3] = &unk_1E767B270;
        v75 = *(a1 + 120);
        v76 = *(a1 + 129);
        v21 = *(a1 + 72);
        v71 = *(a1 + 80);
        v22 = *(a1 + 88);
        v23 = *(a1 + 40);
        v72 = v22;
        v73 = v23;
        v74 = *(a1 + 112);
        [v19 createPlaylistWithPersistentID:v20 properties:v21 trackList:v14 completionHandler:v70];

        v24 = v71;
LABEL_39:

        return;
      }

      if (*(a1 + 130) != 1)
      {
        v45 = [*(a1 + 40) userIdentity];
        v46 = [MPCloudController controllerWithUserIdentity:v45];
        v47 = *(a1 + 72);
        v48 = [*(a1 + 32) persistentID];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_4_38;
        v57[3] = &unk_1E767B298;
        v49 = *(a1 + 112);
        v50 = *(a1 + 120);
        v58 = v49;
        v59 = v50;
        [v46 setPlaylistProperties:v47 trackList:v14 forPlaylistWithPersistentID:v48 completionHandler:v57];

        v24 = v58;
        goto LABEL_39;
      }

      v25 = [*(a1 + 96) identifiers];
      v26 = [v25 library];
      v56 = [v26 persistentID];

      v27 = [MEMORY[0x1E695DFD8] setWithObject:@"parentPersistentID"];
      v28 = [*(a1 + 72) mutableCopy];
      v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v24 = v27;
      v30 = [v24 countByEnumeratingWithState:&v66 objects:v80 count:16];
      if (v30)
      {
        v31 = *v67;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v67 != v31)
            {
              objc_enumerationMutation(v24);
            }

            v33 = *(*(&v66 + 1) + 8 * i);
            v34 = [*(a1 + 72) objectForKey:v33];
            v35 = v34 == 0;

            if (!v35)
            {
              [v28 removeObjectForKey:v33];
              v36 = [*(a1 + 72) objectForKey:v33];
              [v29 setObject:v36 forKey:v33];
            }
          }

          v30 = [v24 countByEnumeratingWithState:&v66 objects:v80 count:16];
        }

        while (v30);
      }

      if ([v28 count])
      {
        v37 = [*(a1 + 40) userIdentity];
        v38 = [MPCloudController controllerWithUserIdentity:v37];
        v39 = [*(a1 + 40) _collaborationTrackEdits];
        v40 = v61;
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_35;
        v61[3] = &unk_1E767B2C0;
        v41 = v29;
        v42 = *(a1 + 40);
        v61[4] = v41;
        v61[5] = v42;
        v62 = v14;
        v63 = *(a1 + 32);
        v43 = *(a1 + 112);
        v44 = *(a1 + 120);
        v64 = v43;
        v65 = v44;
        [v38 editCollaborationWithPersistentID:v56 properties:v28 trackEdits:v39 completion:v61];
      }

      else
      {
        if (![v29 count])
        {
          (*(*(a1 + 112) + 16))();
          goto LABEL_38;
        }

        v51 = [*(a1 + 40) userIdentity];
        v52 = [MPCloudController controllerWithUserIdentity:v51];
        v53 = [*(a1 + 32) persistentID];
        v40 = v60;
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_3_37;
        v60[3] = &unk_1E767B298;
        v54 = *(a1 + 112);
        v55 = *(a1 + 120);
        v60[4] = v54;
        v60[5] = v55;
        [v52 setPlaylistProperties:v29 trackList:v14 forPlaylistWithPersistentID:v53 completionHandler:v60];
      }

LABEL_38:
      goto LABEL_39;
    }
  }

  else
  {
    v15 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      *buf = 138543362;
      v82 = v16;
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create or find media playlist", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPModelLibraryPlaylistEditChangeRequestOperationErrorDomain" code:-10004 userInfo:0];
    (*(*(a1 + 104) + 16))();
    (*(*(a1 + 112) + 16))();
  }
}

void __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_27(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) removeArtworkWithSourceType:200];
    [*(a1 + 32) removeArtworkWithSourceType:600];
    v3 = [*(a1 + 40) playlistUserImage];

    if (!v3)
    {
      v4 = *(a1 + 32);

      [v4 removeArtworkWithSourceType:100];
    }
  }
}

void __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_2_30(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = a3;
  if (*(*(*(a1 + 64) + 8) + 40) && *(a1 + 72) == 1 && *(a1 + 32))
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = MEMORY[0x1E696AD98];
    v5 = [*(*(*(a1 + 64) + 8) + 40) identifiers];
    v6 = [v5 library];
    v7 = [v4 numberWithLongLong:{objc_msgSend(v6, "persistentID")}];

    v19 = v7;
    [v21 setObject:v7 forKey:@"parentPersistentID"];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = *(a1 + 32);
    v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = [v11 identifiers];
          v13 = [v12 library];
          v14 = [v13 persistentID];

          if (v14)
          {
            v15 = [*(a1 + 40) playlistWithPersistentID:v14];
            if (v15)
            {
              if ([*(a1 + 48) _shouldUploadTracklistToCloudForPlaylist:v11])
              {
                v16 = [MPCloudControllerItemIDList cloudItemIDListForPlaylist:v15];
              }

              else
              {
                v16 = 0;
              }

              v17 = [*(a1 + 48) userIdentity];
              v18 = [MPCloudController controllerWithUserIdentity:v17];
              v23[0] = MEMORY[0x1E69E9820];
              v23[1] = 3221225472;
              v23[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_3_31;
              v23[3] = &unk_1E7680878;
              v23[4] = *(a1 + 48);
              v24 = v21;
              v25 = v14;
              [v18 setPlaylistProperties:v24 trackList:v16 forPlaylistWithPersistentID:v14 completionHandler:v23];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }
  }

  (*(*(a1 + 56) + 16))();
}

void __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_35(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 40) userIdentity];
    v3 = [MPCloudController controllerWithUserIdentity:v2];
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) persistentID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_2_36;
    v10[3] = &unk_1E767B298;
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v11 = v7;
    v12 = v8;
    [v3 setPlaylistProperties:v4 trackList:v5 forPlaylistWithPersistentID:v6 completionHandler:v10];
  }

  else
  {
    v9 = *(*(a1 + 64) + 16);

    v9();
  }
}

void __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_3_31(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      v8 = 138544130;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2048;
      v13 = v7;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to set properties=%{public}@ for child cloud playlist with persistent ID=%lld, error=%{public}@", &v8, 0x2Au);
    }
  }
}

void __59__MPModelLibraryPlaylistEditChangeRequestOperation_execute__block_invoke_2_15(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPersistentID:{objc_msgSend(*(a1 + 32), "persistentID")}];
}

@end