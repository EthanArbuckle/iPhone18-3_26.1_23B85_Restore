@interface MPModelLibrarySDKPlaylistEditChangeRequestOperation
- (void)_executeWithCloudLibraryEnabledConfirmed;
- (void)execute;
@end

@implementation MPModelLibrarySDKPlaylistEditChangeRequestOperation

- (void)_executeWithCloudLibraryEnabledConfirmed
{
  request = [(MPModelLibraryPlaylistEditChangeRequestOperation *)self request];
  playlist = [request playlist];
  v78 = playlist;
  mediaLibrary = [request mediaLibrary];
  playlistName = [request playlistName];
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__31598;
  v87 = __Block_byref_object_dispose__31599;
  v88 = 0;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  shouldCreatePlaylist = [request shouldCreatePlaylist];
  if (shouldCreatePlaylist)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v9 = [mediaLibrary _addPlaylistWithName:playlistName externalVendorIdentifier:bundleIdentifier];
    v10 = v84[5];
    v84[5] = v9;

    if (playlistName)
    {
      [v6 setObject:playlistName forKey:@"name"];
    }

    v11 = [v84[5] valueForProperty:@"dateCreated"];
    if (v11)
    {
      [v6 setObject:v11 forKey:@"dateCreated"];
    }

    if (bundleIdentifier)
    {
      [v6 setObject:bundleIdentifier forKey:@"externalVendorIdentifier"];
    }

    if (v84[5])
    {
      v12 = [MPModelPlaylist alloc];
      v13 = [MPIdentifierSet alloc];
      v14 = +[MPModelPlaylistKind identityKind];
      v160[0] = MEMORY[0x1E69E9820];
      v160[1] = 3221225472;
      v160[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke;
      v160[3] = &unk_1E767B4E0;
      v161 = mediaLibrary;
      v162 = &v83;
      v15 = [(MPIdentifierSet *)v13 initWithSource:@"LibrarySDKPlaylistEdit" modelKind:v14 block:v160];
      v79 = [(MPModelObject *)v12 initWithIdentifiers:v15 block:&__block_literal_global_127];
    }

    else
    {
      v79 = 0;
    }

    playlist = v78;
  }

  else
  {
    identifiers = [playlist identifiers];
    library = [identifiers library];
    persistentID = [library persistentID];

    if (persistentID)
    {
      v19 = [mediaLibrary playlistWithPersistentID:persistentID];
    }

    else
    {
      v19 = 0;
    }

    objc_storeStrong(v84 + 5, v19);
    if (persistentID)
    {
    }

    v79 = playlist;
  }

  if (v84[5])
  {
    v154 = 0;
    v155 = &v154;
    v156 = 0x3032000000;
    v157 = __Block_byref_object_copy__31598;
    v158 = __Block_byref_object_dispose__31599;
    v159 = 0;
    v20 = dispatch_queue_create("com.apple.MediaPlayer.MPModelLibraryPlaylistEditChangeRequestOperation.accessQueue", 0);
    v21 = dispatch_group_create();
    playlistEntries = [request playlistEntries];

    if (playlistEntries)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelLibraryPlaylistEditChangeRequestOperation.mm" lineNumber:660 description:{@"To use the SDK Playlist Edit Change Request, the musicKitPlaylistEntries should be used instead of the playlistEntries property."}];
    }

    musicKitPlaylistEntries = [request musicKitPlaylistEntries];
    v23 = objc_alloc_init(MPMutableSectionedCollection);
    v148 = 0;
    v149 = &v148;
    v150 = 0x3032000000;
    v151 = __Block_byref_object_copy__31598;
    v152 = __Block_byref_object_dispose__31599;
    v153 = 0;
    v76 = v23;
    [(MPMutableSectionedCollection *)v23 appendSection:&stru_1F149ECA8];
    if (musicKitPlaylistEntries)
    {
      v24 = objc_alloc_init(MPCloudControllerItemIDList);
      v25 = v155[5];
      v155[5] = v24;

      v147[0] = MEMORY[0x1E69E9820];
      v147[1] = 3221225472;
      v147[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_4;
      v147[3] = &unk_1E767B508;
      v147[4] = &v154;
      v147[5] = &v148;
      [musicKitPlaylistEntries enumerateItemsUsingBlock:v147];
    }

    if (v149[5])
    {
      completeResponseHandler = [(MPModelLibraryPlaylistEditChangeRequestOperation *)self completeResponseHandler];
      playlistDescription = completeResponseHandler;
      if (completeResponseHandler)
      {
        (*(completeResponseHandler + 16))(completeResponseHandler, v149[5], 0);
      }

      [(MPAsyncOperation *)self finishWithError:v149[5]];
LABEL_64:

      _Block_object_dispose(&v148, 8);
      _Block_object_dispose(&v154, 8);

      playlist = v78;
      goto LABEL_65;
    }

    v72 = playlistName != 0;
    if (playlistName)
    {
      dispatch_group_enter(v21);
      v31 = v84[5];
      v142[0] = MEMORY[0x1E69E9820];
      v142[1] = 3221225472;
      v142[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_5;
      v142[3] = &unk_1E767B530;
      v143 = v20;
      v144 = v6;
      v32 = playlistName;
      v145 = v32;
      v146 = v21;
      [v31 setValue:v32 forProperty:@"name" withCompletionBlock:v142];
    }

    playlistDescription = [request playlistDescription];
    if (playlistDescription)
    {
      dispatch_group_enter(v21);
      v33 = v84[5];
      v137[0] = MEMORY[0x1E69E9820];
      v137[1] = 3221225472;
      v137[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_7;
      v137[3] = &unk_1E767B530;
      v138 = v20;
      v139 = v6;
      v34 = playlistDescription;
      v140 = v34;
      v141 = v21;
      [v33 setValue:v34 forProperty:@"descriptionInfo" withCompletionBlock:v137];

      v72 = 1;
    }

    isPublicPlaylist = [request isPublicPlaylist];
    if (isPublicPlaylist)
    {
      dispatch_group_enter(v21);
      v35 = v84[5];
      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 3221225472;
      v132[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_9;
      v132[3] = &unk_1E767B530;
      v133 = v20;
      v134 = v6;
      v36 = isPublicPlaylist;
      v135 = v36;
      v136 = v21;
      [v35 setValue:v36 forProperty:@"cloudIsPublic" withCompletionBlock:v132];
    }

    isVisiblePlaylist = [request isVisiblePlaylist];
    if (isVisiblePlaylist)
    {
      dispatch_group_enter(v21);
      v37 = v84[5];
      v127[0] = MEMORY[0x1E69E9820];
      v127[1] = 3221225472;
      v127[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_11;
      v127[3] = &unk_1E767B530;
      v128 = v20;
      v129 = v6;
      v38 = isVisiblePlaylist;
      v130 = v38;
      v131 = v21;
      [v37 setValue:v38 forProperty:@"cloudIsVisible" withCompletionBlock:v127];
    }

    isCuratorPlaylist = [request isCuratorPlaylist];
    if (isCuratorPlaylist)
    {
      dispatch_group_enter(v21);
      v39 = v84[5];
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_13;
      v122[3] = &unk_1E767B530;
      v123 = v20;
      v124 = v6;
      v40 = isCuratorPlaylist;
      v125 = v40;
      v126 = v21;
      [v39 setValue:v40 forProperty:@"cloudIsCuratorPlaylist" withCompletionBlock:v122];
    }

    isOwner = [request isOwner];
    if (isOwner)
    {
      dispatch_group_enter(v21);
      v41 = v84[5];
      v117[0] = MEMORY[0x1E69E9820];
      v117[1] = 3221225472;
      v117[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_15;
      v117[3] = &unk_1E767B530;
      v118 = v20;
      v119 = v6;
      v42 = isOwner;
      v120 = v42;
      v121 = v21;
      [v41 setValue:v42 forProperty:@"iO" withCompletionBlock:v117];
    }

    authorDisplayName = [request authorDisplayName];
    if ([authorDisplayName length])
    {
      dispatch_group_enter(v21);
      v43 = v84[5];
      v112[0] = MEMORY[0x1E69E9820];
      v112[1] = 3221225472;
      v112[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_17;
      v112[3] = &unk_1E767B530;
      v113 = v20;
      v114 = v6;
      v44 = authorDisplayName;
      v115 = v44;
      v116 = v21;
      [v43 setValue:v44 forProperty:@"externalVendorDisplayName" withCompletionBlock:v112];

      v45 = v113;
    }

    else
    {
      if ((shouldCreatePlaylist & 1) == 0 && ![authorDisplayName isEqualToString:&stru_1F149ECA8])
      {
        goto LABEL_61;
      }

      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      localizedInfoDictionary = [mainBundle2 localizedInfoDictionary];
      v47 = [localizedInfoDictionary objectForKey:@"CFBundleDisplayName"];

      if (![v47 length])
      {
        localizedInfoDictionary2 = [mainBundle2 localizedInfoDictionary];
        v49 = [localizedInfoDictionary2 objectForKey:@"CFBundleExecutable"];

        v47 = v49;
      }

      if (![v47 length])
      {
        infoDictionary = [mainBundle2 infoDictionary];
        v51 = [infoDictionary objectForKey:@"CFBundleDisplayName"];

        v47 = v51;
      }

      infoDictionary2 = [mainBundle2 infoDictionary];
      v53 = [infoDictionary2 objectForKey:@"CFBundleExecutable"];

      if (![v53 length])
      {
        v54 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1A238D000, v54, OS_LOG_TYPE_ERROR, "Could not resolve default author display name", buf, 2u);
        }
      }

      if (v53)
      {
        dispatch_group_enter(v21);
        v55 = v84[5];
        v106[0] = MEMORY[0x1E69E9820];
        v106[1] = 3221225472;
        v106[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_143;
        v106[3] = &unk_1E767B530;
        v107 = v20;
        v108 = v6;
        v56 = v53;
        v109 = v56;
        v110 = v21;
        [v55 setValue:v56 forProperty:@"externalVendorDisplayName" withCompletionBlock:v106];

        v57 = v107;
      }

      else
      {
        v57 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPModelLibrarySDKPlaylistEditChangeRequestOperationErrorDomain" code:-10004 userInfo:0];
        completeResponseHandler2 = [(MPModelLibraryPlaylistEditChangeRequestOperation *)self completeResponseHandler];
        v59 = completeResponseHandler2;
        if (completeResponseHandler2)
        {
          (*(completeResponseHandler2 + 16))(completeResponseHandler2, v57, 0);
        }

        [(MPAsyncOperation *)self finishWithError:v57];
      }

      v45 = mainBundle2;
    }

LABEL_61:
    if (((shouldCreatePlaylist | !v72) & 1) == 0)
    {
      dispatch_group_enter(v21);
      date = [MEMORY[0x1E695DF00] date];
      v61 = v84[5];
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_3_145;
      v101[3] = &unk_1E767B530;
      v102 = v20;
      v103 = v6;
      v104 = date;
      v105 = v21;
      v62 = date;
      [v61 setValue:v62 forProperty:@"dateModified" withCompletionBlock:v101];
    }

    dispatch_group_enter(v21);
    v63 = v84[5];
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_5_147;
    v97[3] = &unk_1E767B568;
    v98 = v20;
    v64 = v6;
    v99 = v64;
    v65 = v21;
    v100 = v65;
    [v63 setValue:MEMORY[0x1E695E118] forProperty:@"isExternalVendorPlaylist" withCompletionBlock:v97];
    v66 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_7_149;
    block[3] = &unk_1E767B5B8;
    v67 = v64;
    v96 = shouldCreatePlaylist;
    v90 = v67;
    selfCopy = self;
    v94 = &v154;
    v95 = &v83;
    v92 = mediaLibrary;
    v93 = v79;
    dispatch_group_notify(v65, v66, block);

    goto LABEL_64;
  }

  v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPModelLibrarySDKPlaylistEditChangeRequestOperationErrorDomain" code:-10004 userInfo:0];
  completeResponseHandler3 = [(MPModelLibraryPlaylistEditChangeRequestOperation *)self completeResponseHandler];
  v30 = completeResponseHandler3;
  if (completeResponseHandler3)
  {
    (*(completeResponseHandler3 + 16))(completeResponseHandler3, v28, 0);
  }

  [(MPAsyncOperation *)self finishWithError:v28];

LABEL_65:
  _Block_object_dispose(&v83, 8);
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_2;
  v5[3] = &unk_1E767B4B8;
  v5[4] = *(a1 + 40);
  [v3 setLibraryIdentifiersWithDatabaseID:v4 block:v5];
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = a2;
  v6 = [v20 identifiers];
  v7 = [v6 universalStore];

  v8 = [v20 identifiers];
  v9 = [v8 personalizedStore];
  v10 = [v9 cloudID];

  v11 = [v7 adamID];
  if (!v11)
  {
    v11 = [v7 subscriptionAdamID];
    if (!v11)
    {
      v11 = [v7 purchasedAdamID];
    }
  }

  if (v10)
  {
    v12 = 0;
LABEL_8:
    [*(*(*(a1 + 32) + 8) + 40) addCloudItemID:v10 idType:v12];
    goto LABEL_9;
  }

  if (v11)
  {
    v12 = 1;
    v10 = v11;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = *(*(*(a1 + 32) + 8) + 40);
    v14 = [v20 identifiers];
    v15 = [v14 universalStore];
    v16 = [v15 globalPlaylistID];
    [v13 addPlaylistID:v16];
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPPlaylistUpdateErrorDomain" code:-1 debugDescription:@"Failed to generate the necessary identifiers for an item attempting to be added to a playlist."];
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *a4 = 1;
  }

LABEL_9:
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_5(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_6;
    v4[3] = &unk_1E76823C0;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    dispatch_sync(v3, v4);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_7(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_8;
    v4[3] = &unk_1E76823C0;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    dispatch_sync(v3, v4);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_9(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_10;
    v4[3] = &unk_1E76823C0;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    dispatch_sync(v3, v4);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_11(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_12;
    v4[3] = &unk_1E76823C0;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    dispatch_sync(v3, v4);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_13(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_14;
    v4[3] = &unk_1E76823C0;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    dispatch_sync(v3, v4);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_15(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_16;
    v4[3] = &unk_1E76823C0;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    dispatch_sync(v3, v4);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_17(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_18;
    v4[3] = &unk_1E76823C0;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    dispatch_sync(v3, v4);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_143(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_2_144;
    v4[3] = &unk_1E76823C0;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    dispatch_sync(v3, v4);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_3_145(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_4_146;
    v4[3] = &unk_1E76823C0;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    dispatch_sync(v3, v4);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_5_147(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_6_148;
    block[3] = &unk_1E7682518;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    dispatch_sync(v3, block);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_7_149(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 32);
    if (v2)
    {
LABEL_5:
      v3 = *(a1 + 40);
      if (*(a1 + 80) == 1)
      {
        v4 = [v3 userIdentity];
        v5 = [MPCloudController controllerWithUserIdentity:v4];
        v6 = [*(*(*(a1 + 72) + 8) + 40) persistentID];
        v7 = *(*(*(a1 + 64) + 8) + 40);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_8_150;
        v20[3] = &unk_1E767B590;
        v8 = *(a1 + 32);
        v9 = *(a1 + 48);
        v20[4] = *(a1 + 40);
        v10 = v9;
        v11 = *(a1 + 72);
        v21 = v10;
        v23 = v11;
        v22 = *(a1 + 56);
        [v5 sdk_createPlaylistWithPersistenID:v6 properties:v8 tracklist:v7 completionHandler:v20];

        v12 = v21;
      }

      else
      {
        v13 = [v3 userIdentity];
        v14 = [MPCloudController controllerWithUserIdentity:v13];
        v15 = *(*(*(a1 + 64) + 8) + 40);
        v16 = [*(*(*(a1 + 72) + 8) + 40) persistentID];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_9_151;
        v18[3] = &unk_1E767B680;
        v18[4] = *(a1 + 40);
        v19 = *(a1 + 56);
        [v14 sdk_setPlaylistProperties:v2 trackList:v15 forPlaylistWithPersistentID:v16 completionHandler:v18];

        v12 = v19;
      }

      return;
    }
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = 0;
    goto LABEL_5;
  }

  v17 = [*(a1 + 40) completeResponseHandler];
  if (v17)
  {
    (*(v17 + 2))(v17, 0, *(a1 + 56));
  }

  [*(a1 + 40) finish];
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_8_150(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [*(a1 + 32) completeResponseHandler];
  if (v4)
  {
    if (v5)
    {
      [*(a1 + 40) removePlaylist:*(*(*(a1 + 56) + 8) + 40)];
      (v4)[2](v4, v5, 0);
    }

    else
    {
      v4[2](v4, 0, *(a1 + 48));
    }
  }

  [*(a1 + 32) finish];
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_9_151(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) completeResponseHandler];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5, *(a1 + 40));
  }

  [*(a1 + 32) finish];
}

void __95__MPModelLibrarySDKPlaylistEditChangeRequestOperation__executeWithCloudLibraryEnabledConfirmed__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPersistentID:{objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "persistentID")}];
}

- (void)execute
{
  v3 = objc_alloc_init(MEMORY[0x1E69E43E8]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__MPModelLibrarySDKPlaylistEditChangeRequestOperation_execute__block_invoke;
  v4[3] = &unk_1E767B488;
  v4[4] = self;
  [v3 requestCapabilitiesWithCompletionHandler:v4];
}

void __62__MPModelLibrarySDKPlaylistEditChangeRequestOperation_execute__block_invoke(uint64_t a1, __int16 a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if ((a2 & 0x100) != 0)
  {
    [*(a1 + 32) _executeWithCloudLibraryEnabledConfirmed];
  }

  else
  {
    if (v5)
    {
      [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibrarySDKPlaylistEditChangeRequestOperationErrorDomain" code:-10004 underlyingError:v5 debugDescription:@"Unable to check cloud service capabilities."];
    }

    else
    {
      [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibrarySDKPlaylistEditChangeRequestOperationErrorDomain" code:-10005 debugDescription:@"Add to cloud music library capability is missing."];
    }
    v6 = ;
    [*(a1 + 32) finishWithError:v6];
  }
}

@end