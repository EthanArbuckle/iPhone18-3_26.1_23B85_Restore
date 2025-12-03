@interface LPMediaRemotePlaybackObserver
+ (id)shared;
- (BOOL)playbackInformationMatchesPlayingItem:(id)item;
- (double)elapsedFractionForPlaybackInformation:(id)information;
- (double)minimumUpdateInterval;
- (void)addClient:(id)client;
- (void)dispatchPlayingItemDidChangeToAllClients;
- (void)removeClient:(id)client;
- (void)updatePlaybackState;
@end

@implementation LPMediaRemotePlaybackObserver

+ (id)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[LPMediaRemotePlaybackObserver shared];
  }

  v3 = shared_observer_0;

  return v3;
}

void __39__LPMediaRemotePlaybackObserver_shared__block_invoke()
{
  v0 = objc_alloc_init(LPMediaRemotePlaybackObserver);
  v1 = shared_observer_0;
  shared_observer_0 = v0;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  clients = self->_clients;
  v14 = clientCopy;
  if (!clients)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_clients;
    self->_clients = weakObjectsHashTable;

    clients = self->_clients;
    clientCopy = v14;
  }

  [(NSHashTable *)clients addObject:clientCopy];
  [(LPMediaRemotePlaybackObserver *)self minimumUpdateInterval];
  v9 = v8;
  timer = self->_timer;
  if (timer)
  {
    [(NSTimer *)timer timeInterval];
    if (vabdd_f64(v11, v9) < 2.22044605e-16)
    {
      goto LABEL_7;
    }

    timer = self->_timer;
  }

  [(NSTimer *)timer invalidate];
  v12 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_updatePlaybackState selector:0 userInfo:1 repeats:v9];
  v13 = self->_timer;
  self->_timer = v12;

LABEL_7:
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  [(NSHashTable *)self->_clients removeObject:?];
  if (![(NSHashTable *)self->_clients count])
  {
    [(NSTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (double)minimumUpdateInterval
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_clients;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    v6 = INFINITY;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 desiredUpdateIntervalForMediaRemotePlaybackObserver:{self, v12}];
        if (v6 >= v9)
        {
          [v8 desiredUpdateIntervalForMediaRemotePlaybackObserver:self];
          v6 = v10;
        }
      }

      v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = INFINITY;
  }

  return v6;
}

- (void)dispatchPlayingItemDidChangeToAllClients
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_clients;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) mediaRemotePlaybackObserverPlayingItemDidChange:{self, v7}];
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updatePlaybackState
{
  v76[2] = *MEMORY[0x1E69E9840];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2050000000;
  v2 = getMPCPlayerRequestClass_softClass;
  v68 = getMPCPlayerRequestClass_softClass;
  if (!getMPCPlayerRequestClass_softClass)
  {
    v60 = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = __getMPCPlayerRequestClass_block_invoke;
    v63 = &unk_1E7A35518;
    v64 = &v65;
    __getMPCPlayerRequestClass_block_invoke(&v60);
    v2 = v66[3];
  }

  v3 = v2;
  _Block_object_dispose(&v65, 8);
  v58 = [[v2 alloc] init];
  v4 = objc_alloc(getMPPropertySetClass());
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v5 = getMPModelRelationshipGenericSongSymbolLoc_ptr;
  v68 = getMPModelRelationshipGenericSongSymbolLoc_ptr;
  if (!getMPModelRelationshipGenericSongSymbolLoc_ptr)
  {
    v60 = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = __getMPModelRelationshipGenericSongSymbolLoc_block_invoke;
    v63 = &unk_1E7A35518;
    v64 = &v65;
    v6 = MediaPlayerLibrary_1();
    v7 = dlsym(v6, "MPModelRelationshipGenericSong");
    *(v64[1] + 24) = v7;
    getMPModelRelationshipGenericSongSymbolLoc_ptr = *(v64[1] + 24);
    v5 = v66[3];
  }

  _Block_object_dispose(&v65, 8);
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPModelRelationshipGenericSong(void)"];
    [currentHandler handleFailureInFunction:v44 file:@"LPMediaRemotePlaybackObserver.m" lineNumber:30 description:{@"%s", dlerror()}];

    goto LABEL_28;
  }

  v57 = *v5;
  v75[0] = v57;
  v8 = objc_alloc(getMPPropertySetClass());
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v9 = getMPModelRelationshipSongAlbumSymbolLoc_ptr;
  v68 = getMPModelRelationshipSongAlbumSymbolLoc_ptr;
  if (!getMPModelRelationshipSongAlbumSymbolLoc_ptr)
  {
    v60 = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = __getMPModelRelationshipSongAlbumSymbolLoc_block_invoke;
    v63 = &unk_1E7A35518;
    v64 = &v65;
    v10 = MediaPlayerLibrary_1();
    v11 = dlsym(v10, "MPModelRelationshipSongAlbum");
    *(v64[1] + 24) = v11;
    getMPModelRelationshipSongAlbumSymbolLoc_ptr = *(v64[1] + 24);
    v9 = v66[3];
  }

  _Block_object_dispose(&v65, 8);
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPModelRelationshipSongAlbum(void)"];
    [currentHandler2 handleFailureInFunction:v46 file:@"LPMediaRemotePlaybackObserver.m" lineNumber:33 description:{@"%s", dlerror()}];

    goto LABEL_28;
  }

  v56 = *v9;
  v73 = v56;
  v12 = [objc_alloc(getMPPropertySetClass()) initWithProperties:0 relationships:0];
  v74 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  v14 = [v8 initWithProperties:0 relationships:v13];
  v76[0] = v14;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v15 = getMPModelRelationshipGenericPodcastEpisodeSymbolLoc_ptr;
  v68 = getMPModelRelationshipGenericPodcastEpisodeSymbolLoc_ptr;
  if (!getMPModelRelationshipGenericPodcastEpisodeSymbolLoc_ptr)
  {
    v60 = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = __getMPModelRelationshipGenericPodcastEpisodeSymbolLoc_block_invoke;
    v63 = &unk_1E7A35518;
    v64 = &v65;
    v16 = MediaPlayerLibrary_1();
    v17 = dlsym(v16, "MPModelRelationshipGenericPodcastEpisode");
    *(v64[1] + 24) = v17;
    getMPModelRelationshipGenericPodcastEpisodeSymbolLoc_ptr = *(v64[1] + 24);
    v15 = v66[3];
  }

  _Block_object_dispose(&v65, 8);
  if (!v15)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPModelRelationshipGenericPodcastEpisode(void)"];
    [currentHandler3 handleFailureInFunction:v48 file:@"LPMediaRemotePlaybackObserver.m" lineNumber:28 description:{@"%s", dlerror()}];

    goto LABEL_28;
  }

  v18 = *v15;
  v75[1] = v18;
  v19 = objc_alloc(getMPPropertySetClass());
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v20 = getMPModelRelationshipPodcastEpisodePodcastSymbolLoc_ptr;
  v68 = getMPModelRelationshipPodcastEpisodePodcastSymbolLoc_ptr;
  if (!getMPModelRelationshipPodcastEpisodePodcastSymbolLoc_ptr)
  {
    v60 = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = __getMPModelRelationshipPodcastEpisodePodcastSymbolLoc_block_invoke;
    v63 = &unk_1E7A35518;
    v64 = &v65;
    v21 = MediaPlayerLibrary_1();
    v22 = dlsym(v21, "MPModelRelationshipPodcastEpisodePodcast");
    *(v64[1] + 24) = v22;
    getMPModelRelationshipPodcastEpisodePodcastSymbolLoc_ptr = *(v64[1] + 24);
    v20 = v66[3];
  }

  _Block_object_dispose(&v65, 8);
  if (!v20)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPModelRelationshipPodcastEpisodePodcast(void)"];
    [currentHandler4 handleFailureInFunction:v50 file:@"LPMediaRemotePlaybackObserver.m" lineNumber:32 description:{@"%s", dlerror()}];

    goto LABEL_28;
  }

  v23 = *v20;
  v71 = v23;
  v24 = [objc_alloc(getMPPropertySetClass()) initWithProperties:0 relationships:0];
  v72 = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v26 = [v19 initWithProperties:0 relationships:v25];
  v76[1] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v28 = [v4 initWithProperties:0 relationships:v27];
  [v58 setPlayingItemProperties:v28];

  v29 = objc_alloc(getMPPropertySetClass());
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v30 = getMPModelRelationshipGenericPlaylistSymbolLoc_ptr;
  v68 = getMPModelRelationshipGenericPlaylistSymbolLoc_ptr;
  if (!getMPModelRelationshipGenericPlaylistSymbolLoc_ptr)
  {
    v60 = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = __getMPModelRelationshipGenericPlaylistSymbolLoc_block_invoke;
    v63 = &unk_1E7A35518;
    v64 = &v65;
    v31 = MediaPlayerLibrary_1();
    v32 = dlsym(v31, "MPModelRelationshipGenericPlaylist");
    *(v64[1] + 24) = v32;
    getMPModelRelationshipGenericPlaylistSymbolLoc_ptr = *(v64[1] + 24);
    v30 = v66[3];
  }

  _Block_object_dispose(&v65, 8);
  if (!v30)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPModelRelationshipGenericPlaylist(void)"];
    [currentHandler5 handleFailureInFunction:v52 file:@"LPMediaRemotePlaybackObserver.m" lineNumber:27 description:{@"%s", dlerror()}];

    goto LABEL_28;
  }

  v33 = *v30;
  v69[0] = v33;
  v34 = [getMPPropertySetClass() propertySetWithProperties:MEMORY[0x1E695E0F0]];
  v70[0] = v34;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v35 = getMPModelRelationshipGenericRadioStationSymbolLoc_ptr;
  v68 = getMPModelRelationshipGenericRadioStationSymbolLoc_ptr;
  if (!getMPModelRelationshipGenericRadioStationSymbolLoc_ptr)
  {
    v60 = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = __getMPModelRelationshipGenericRadioStationSymbolLoc_block_invoke;
    v63 = &unk_1E7A35518;
    v64 = &v65;
    v36 = MediaPlayerLibrary_1();
    v37 = dlsym(v36, "MPModelRelationshipGenericRadioStation");
    *(v64[1] + 24) = v37;
    getMPModelRelationshipGenericRadioStationSymbolLoc_ptr = *(v64[1] + 24);
    v35 = v66[3];
  }

  _Block_object_dispose(&v65, 8);
  if (!v35)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPModelRelationshipGenericRadioStation(void)"];
    [currentHandler6 handleFailureInFunction:v54 file:@"LPMediaRemotePlaybackObserver.m" lineNumber:29 description:{@"%s", dlerror()}];

LABEL_28:
    __break(1u);
  }

  v38 = *v35;
  v69[1] = v38;
  v39 = [getMPPropertySetClass() propertySetWithProperties:MEMORY[0x1E695E0F0]];
  v70[1] = v39;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v41 = [v29 initWithProperties:0 relationships:v40];
  [v58 setQueueSectionProperties:v41];

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __52__LPMediaRemotePlaybackObserver_updatePlaybackState__block_invoke;
  v59[3] = &unk_1E7A37248;
  v59[4] = self;
  v42 = [v58 performWithCompletion:v59];
}

void __52__LPMediaRemotePlaybackObserver_updatePlaybackState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__LPMediaRemotePlaybackObserver_updatePlaybackState__block_invoke_2;
  aBlock[3] = &unk_1E7A35450;
  aBlock[4] = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = [v3 tracklist];
  v6 = [v5 playingItemIndexPath];

  if (v6)
  {
    v7 = [v3 tracklist];
    v8 = [v7 items];
    v9 = [v3 tracklist];
    v10 = [v9 playingItemIndexPath];
    v11 = [v8 itemAtIndexPath:v10];

    v12 = [v11 metadataObject];
    v13 = v12;
    if (v11 && v12)
    {
      v14 = [v3 tracklist];
      v15 = [v14 items];
      v16 = [v3 tracklist];
      v17 = [v16 playingItemIndexPath];
      v18 = [v15 sectionAtIndex:{objc_msgSend(v17, "indexAtPosition:", 0)}];

      v19 = [v18 metadataObject];
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      [v11 duration];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v21 = (v20 - 0.0) * 0.0 + 0.0;
      if (v21 >= 0.0)
      {
        v21 = *(&v35 + 1);
      }

      v22 = fmax(v21, 0.0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__LPMediaRemotePlaybackObserver_updatePlaybackState__block_invoke_4;
      block[3] = &unk_1E7A37220;
      block[4] = *(a1 + 32);
      v33 = 0;
      v25 = v13;
      v26 = v19;
      v27 = v34;
      v28 = v35;
      v29 = v36;
      v30 = v37;
      v31 = v22;
      v32 = 0;
      v23 = v19;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v4[2](v4);
    }
  }

  else
  {
    v4[2](v4);
  }
}

void __52__LPMediaRemotePlaybackObserver_updatePlaybackState__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__LPMediaRemotePlaybackObserver_updatePlaybackState__block_invoke_3;
  block[3] = &unk_1E7A35450;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __52__LPMediaRemotePlaybackObserver_updatePlaybackState__block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  *(*(a1 + 32) + 41) = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  *(*(a1 + 32) + 24) = 0;
  v6 = *(a1 + 32);

  return [v6 dispatchPlayingItemDidChangeToAllClients];
}

uint64_t __52__LPMediaRemotePlaybackObserver_updatePlaybackState__block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 40) = *(a1 + 128);
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 48));
  *(*(a1 + 32) + 41) = *(a1 + 104);
  *(*(a1 + 32) + 24) = *(a1 + 112);
  *(*(a1 + 32) + 32) = *(a1 + 120);
  v2 = *(a1 + 32);

  return [v2 dispatchPlayingItemDidChangeToAllClients];
}

- (double)elapsedFractionForPlaybackInformation:(id)information
{
  informationCopy = information;
  v5 = informationCopy;
  v6 = 1.0;
  if (!self->_enqueuedItemIsLive)
  {
    lyricExcerpt = [informationCopy lyricExcerpt];

    if (lyricExcerpt)
    {
      lyricExcerpt2 = [v5 lyricExcerpt];
      startTime = [lyricExcerpt2 startTime];
      [startTime doubleValue];
      v11 = v10;

      endTime = [lyricExcerpt2 endTime];
      [endTime doubleValue];
      v13 = v11 + -1.0;
      v6 = 1.0;
      v15 = v14 + 1.0;

      if (v15 - v13 != 0.0)
      {
        v6 = fmax((self->_elapsedTime - v13) / (v15 - v13), 0.0);
      }
    }

    else
    {
      v6 = self->_elapsedTime / self->_totalTime;
    }
  }

  return v6;
}

- (BOOL)playbackInformationMatchesPlayingItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!self->_enqueuedItem)
  {
    goto LABEL_45;
  }

  type = [itemCopy type];
  v7 = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        if ([(MPModelGenericObject *)self->_enqueuedItem type]!= 1)
        {
          goto LABEL_45;
        }

        v48 = MEMORY[0x1E696AD98];
        song = [(MPModelGenericObject *)self->_enqueuedItem song];
        album = [song album];
        identifiers = [album identifiers];
        universalStore = [identifiers universalStore];
        v53 = [v48 numberWithLongLong:{objc_msgSend(universalStore, "adamID")}];
        stringValue = [v53 stringValue];

        if (stringValue)
        {
LABEL_36:
          storeIdentifier = [v5 storeIdentifier];
          v7 = [storeIdentifier isEqualToString:stringValue];

LABEL_40:
          goto LABEL_46;
        }

LABEL_39:
        v7 = 0;
        goto LABEL_40;
      }

      if (type != 2)
      {
        goto LABEL_46;
      }

      identifiers2 = [(MPModelGenericObject *)self->_enqueuedItemContext identifiers];
      radio = [identifiers2 radio];
      stationStringID = [radio stationStringID];

      if (!stationStringID)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ([(MPModelGenericObject *)self->_enqueuedItem type]!= 1)
      {
        goto LABEL_45;
      }

      v25 = MEMORY[0x1E696AD98];
      identifiers3 = [(MPModelGenericObject *)self->_enqueuedItem identifiers];
      universalStore2 = [identifiers3 universalStore];
      v28 = [v25 numberWithLongLong:{objc_msgSend(universalStore2, "adamID")}];
      stationStringID = [v28 stringValue];

      if (!stationStringID)
      {
        goto LABEL_37;
      }

      lyricExcerpt = [v5 lyricExcerpt];

      if (lyricExcerpt)
      {
        lyricExcerpt2 = [v5 lyricExcerpt];
        startTime = [lyricExcerpt2 startTime];
        [startTime doubleValue];
        v33 = v32;

        endTime = [lyricExcerpt2 endTime];
        [endTime doubleValue];
        v36 = v35;
        v37 = v33 + -1.0;

        elapsedTime = self->_elapsedTime;
        v7 = 0;
        if (elapsedTime < v37 || elapsedTime > v36 + 1.0)
        {
          goto LABEL_38;
        }
      }
    }

    goto LABEL_32;
  }

  if (type > 4)
  {
    if (type != 5)
    {
      if (type != 6)
      {
        goto LABEL_46;
      }

      if ([(MPModelGenericObject *)self->_enqueuedItem type]!= 1)
      {
LABEL_45:
        v7 = 0;
        goto LABEL_46;
      }

      song2 = [(MPModelGenericObject *)self->_enqueuedItem song];
      identifiers4 = [song2 identifiers];
      stationStringID = [identifiers4 contentItemID];

      if (stationStringID)
      {
        v22 = MEMORY[0x1E696AEC0];
        persistentIdentifier = [v5 persistentIdentifier];
        v24 = [v22 stringWithFormat:@"id=%@_", persistentIdentifier];
        v7 = [stationStringID containsString:v24];

LABEL_33:
LABEL_38:

        goto LABEL_46;
      }

LABEL_37:
      v7 = 0;
      goto LABEL_38;
    }

    if ([(MPModelGenericObject *)self->_enqueuedItem type]!= 1)
    {
      goto LABEL_45;
    }

    identifiers5 = [(MPModelGenericObject *)self->_enqueuedItemContext identifiers];
    universalStore3 = [identifiers5 universalStore];
    stationStringID = [universalStore3 globalPlaylistID];

    if (!stationStringID)
    {
      goto LABEL_37;
    }

LABEL_32:
    persistentIdentifier = [v5 storeIdentifier];
    v7 = [persistentIdentifier isEqualToString:stationStringID];
    goto LABEL_33;
  }

  if (type == 3)
  {
    if ([(MPModelGenericObject *)self->_enqueuedItem type]!= 12)
    {
      goto LABEL_45;
    }

    v39 = MEMORY[0x1E696AD98];
    podcastEpisode = [(MPModelGenericObject *)self->_enqueuedItem podcastEpisode];
    podcast = [podcastEpisode podcast];
    identifiers6 = [podcast identifiers];
    universalStore4 = [identifiers6 universalStore];
    v44 = [v39 numberWithLongLong:{objc_msgSend(universalStore4, "adamID")}];
    stringValue = [v44 stringValue];

    if (stringValue)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  if ([(MPModelGenericObject *)self->_enqueuedItem type]!= 12)
  {
    goto LABEL_45;
  }

  v8 = MEMORY[0x1E696AD98];
  identifiers7 = [(MPModelGenericObject *)self->_enqueuedItem identifiers];
  universalStore5 = [identifiers7 universalStore];
  v11 = [v8 numberWithLongLong:{objc_msgSend(universalStore5, "adamID")}];
  stringValue2 = [v11 stringValue];

  if (stringValue2)
  {
    v13 = stringValue2;
    v14 = v13;
    if (([v13 hasPrefix:@"1000"] & 1) == 0)
    {
      v15 = [@"1000" stringByAppendingString:v13];

      v14 = v15;
    }

    storeIdentifier2 = [v5 storeIdentifier];
    if ([storeIdentifier2 isEqualToString:v13])
    {
      v7 = 1;
    }

    else
    {
      storeIdentifier3 = [v5 storeIdentifier];
      v7 = [storeIdentifier3 isEqualToString:v14];
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_46:
  return v7;
}

- (void)playbackInformationMatchesPlayingItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "LPMediaRemotePlaybackObserver -matchesNowPlayingItem threw an exception: %@", &v2, 0xCu);
}

@end