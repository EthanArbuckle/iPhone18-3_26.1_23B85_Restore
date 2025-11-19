@interface MCDLibraryPlaybackManager
- (id)playbackRequestForAlbum:(id)a3;
- (id)playbackRequestForPlaylist:(id)a3;
- (void)_initiatePlaybackAndPushNPViewControllerForPlaybackRequest:(id)a3 startItemIdentifiers:(id)a4 shuffle:(BOOL)a5 playActivityFeatureName:(id)a6;
- (void)_initiatePlaybackForItemKind:(id)a3 sectionKind:(id)a4 object:(id)a5 lastResponse:(id)a6 shuffled:(BOOL)a7 forceScopingToResponseResults:(BOOL)a8 playActivityFeatureName:(id)a9;
- (void)initiatePlaybackForAlbum:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6;
- (void)initiatePlaybackForGenre:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6;
- (void)initiatePlaybackForPerson:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6;
- (void)initiatePlaybackForPlaylist:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6;
- (void)initiatePlaybackForPlaylistEntry:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 forceScopingToResponseResults:(BOOL)a6 playActivityFeatureName:(id)a7;
- (void)initiatePlaybackForSong:(id)a3 sectionKind:(id)a4 lastResponse:(id)a5 shuffled:(BOOL)a6 forceScopingToResponseResults:(BOOL)a7 playActivityFeatureName:(id)a8;
- (void)initiateRadioPlaybackForArtist:(id)a3 playActivityFeatureName:(id)a4;
@end

@implementation MCDLibraryPlaybackManager

- (void)_initiatePlaybackForItemKind:(id)a3 sectionKind:(id)a4 object:(id)a5 lastResponse:(id)a6 shuffled:(BOOL)a7 forceScopingToResponseResults:(BOOL)a8 playActivityFeatureName:(id)a9
{
  v9 = a8;
  v10 = a7;
  v14 = a3;
  v15 = a6;
  v16 = a9;
  v17 = a5;
  v18 = a4;
  v19 = objc_alloc_init(MPModelLibraryRequest);
  [v19 setItemKind:v14];
  [v19 setSectionKind:v18];

  if (!v15)
  {
    v20 = [v17 identifiers];
    v38 = v20;
    v28 = [NSArray arrayWithObjects:&v38 count:1];
    [v19 setAllowedItemIdentifiers:v28];
LABEL_10:

    goto LABEL_11;
  }

  v34 = v10;
  v20 = [v15 request];
  v21 = [v20 scopedContainers];
  v22 = [v21 firstObject];

  if (v22)
  {
    v23 = [v20 itemSortDescriptors];
    [v19 setItemSortDescriptors:v23];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [MPModelSong kindWithVariants:3];
      v39 = v24;
      v25 = [NSArray arrayWithObjects:&v39 count:1];
      v26 = [MPModelPlaylistEntry kindWithKinds:v25];
      v27 = [MPModelPlaylist kindWithVariants:215 playlistEntryKind:v26 options:0];
      [v19 setSectionKind:v27];
    }

    else
    {
      v32 = [v20 sectionKind];
      [v19 setSectionKind:v32];
    }

    v10 = v34;
    v28 = [v20 scopedContainers];
    [v19 setScopedContainers:v28];
    goto LABEL_10;
  }

  if (!v9)
  {
    v10 = v34;
    if (v34)
    {
      goto LABEL_11;
    }

    v28 = [v20 itemSortDescriptors];
    [v19 setItemSortDescriptors:v28];
    goto LABEL_10;
  }

  v29 = +[NSMutableArray array];
  v30 = [v15 results];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001026A4;
  v36[3] = &unk_101098778;
  v37 = v29;
  v31 = v29;
  [v30 enumerateItemIdentifiersUsingBlock:v36];

  [v19 setScopedContainers:v31];
  v10 = v34;
LABEL_11:

  v33 = [v17 identifiers];

  [(MCDLibraryPlaybackManager *)self _initiatePlaybackAndPushNPViewControllerForPlaybackRequest:v19 startItemIdentifiers:v33 shuffle:v10 playActivityFeatureName:v16];
}

- (void)initiatePlaybackForSong:(id)a3 sectionKind:(id)a4 lastResponse:(id)a5 shuffled:(BOOL)a6 forceScopingToResponseResults:(BOOL)a7 playActivityFeatureName:(id)a8
{
  v8 = a7;
  v9 = a6;
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [MPModelSong kindWithVariants:3];
  [(MCDLibraryPlaybackManager *)self _initiatePlaybackForItemKind:v18 sectionKind:v16 object:v17 lastResponse:v15 shuffled:v9 forceScopingToResponseResults:v8 playActivityFeatureName:v14];
}

- (void)initiatePlaybackForPlaylistEntry:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 forceScopingToResponseResults:(BOOL)a6 playActivityFeatureName:(id)a7
{
  v7 = a6;
  v8 = a5;
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [MPModelSong kindWithVariants:3];
  v18 = v15;
  v16 = [NSArray arrayWithObjects:&v18 count:1];
  v17 = [MPModelPlaylistEntry kindWithKinds:v16];

  [(MCDLibraryPlaybackManager *)self _initiatePlaybackForItemKind:v17 object:v14 lastResponse:v13 shuffled:v8 forceScopingToResponseResults:v7 playActivityFeatureName:v12];
}

- (void)initiatePlaybackForPerson:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a3;
  v11 = objc_alloc_init(MPModelLibraryRequest);
  v12 = [MPModelSong kindWithVariants:1];
  [v11 setItemKind:v12];

  v14 = v10;
  v13 = [NSArray arrayWithObjects:&v14 count:1];

  [v11 setScopedContainers:v13];
  [(MCDLibraryPlaybackManager *)self _initiatePlaybackAndPushNPViewControllerForPlaybackRequest:v11 startItemIdentifiers:0 shuffle:v6 playActivityFeatureName:v9];
}

- (void)initiatePlaybackForGenre:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a3;
  v11 = objc_alloc_init(MPModelLibraryRequest);
  v12 = [MPModelSong kindWithVariants:1];
  [v11 setItemKind:v12];

  v14 = v10;
  v13 = [NSArray arrayWithObjects:&v14 count:1];

  [v11 setScopedContainers:v13];
  [(MCDLibraryPlaybackManager *)self _initiatePlaybackAndPushNPViewControllerForPlaybackRequest:v11 startItemIdentifiers:0 shuffle:v6 playActivityFeatureName:v9];
}

- (id)playbackRequestForAlbum:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MPModelLibraryRequest);
  v5 = [MPModelSong kindWithVariants:3];
  [v4 setItemKind:v5];

  v13 = v3;
  v6 = [NSArray arrayWithObjects:&v13 count:1];
  [v4 setScopedContainers:v6];

  v7 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertySongDiscNumber ascending:1];
  v12[0] = v7;
  v8 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertySongTrackNumber ascending:1];
  v12[1] = v8;
  v9 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertySongTitle ascending:1];
  v12[2] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:3];

  [v4 setItemSortDescriptors:v10];

  return v4;
}

- (void)initiatePlaybackForAlbum:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = [(MCDLibraryPlaybackManager *)self playbackRequestForAlbum:a3];
  [(MCDLibraryPlaybackManager *)self _initiatePlaybackAndPushNPViewControllerForPlaybackRequest:v10 startItemIdentifiers:0 shuffle:v6 playActivityFeatureName:v9];
}

- (id)playbackRequestForPlaylist:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MPModelLibraryRequest);
  v5 = [MPModelSong kindWithVariants:3];
  v6 = [MPModelTVEpisode kindWithVariants:3];
  v14[0] = v5;
  v14[1] = v6;
  v7 = [NSArray arrayWithObjects:v14 count:2];
  v8 = [MPModelPlaylistEntry kindWithKinds:v7];

  v9 = [MPModelPlaylist kindWithVariants:215 playlistEntryKind:v8 options:0];
  [v4 setSectionKind:v9];
  [v4 setItemKind:v8];
  v13 = v3;
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  [v4 setScopedContainers:v10];

  v11 = [v3 preferredTracklistSortDescriptors];

  [v4 setItemSortDescriptors:v11];

  return v4;
}

- (void)initiatePlaybackForPlaylist:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = [(MCDLibraryPlaybackManager *)self playbackRequestForPlaylist:a3];
  [(MCDLibraryPlaybackManager *)self _initiatePlaybackAndPushNPViewControllerForPlaybackRequest:v10 startItemIdentifiers:0 shuffle:v6 playActivityFeatureName:v9];
}

- (void)initiateRadioPlaybackForArtist:(id)a3 playActivityFeatureName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MPCPlaybackIntent radioPlaybackIntentFromArtist:v6];
  [v8 setPlayActivityFeatureName:v7];

  v9 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 name];
    *buf = 138543362;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Initiating radio playback for artist: %{public}@", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100103104;
  v12[3] = &unk_1010987A0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [(MCDPlaybackManager *)self setupPlaybackRequestWithCompletion:v12];
}

- (void)_initiatePlaybackAndPushNPViewControllerForPlaybackRequest:(id)a3 startItemIdentifiers:(id)a4 shuffle:(BOOL)a5 playActivityFeatureName:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(MCDPlaybackManager *)self localContentOnly])
  {
    [v10 setFilteringOptions:{objc_msgSend(v10, "filteringOptions") | 2}];
  }

  if ([(MCDPlaybackManager *)self favoriteContentOnly])
  {
    [v10 setFilteringOptions:{objc_msgSend(v10, "filteringOptions") | 0x200000}];
  }

  v13 = [v10 playbackIntentWithStartItemIdentifiers:v11];
  v14 = v13;
  if (v7)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  [v13 setShuffleMode:v15];
  [v14 setPlayActivityFeatureName:v12];

  v16 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Initiating playback for library content", buf, 2u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100103310;
  v18[3] = &unk_1010987A0;
  v18[4] = self;
  v19 = v14;
  v17 = v14;
  [(MCDPlaybackManager *)self setupPlaybackRequestWithCompletion:v18];
}

@end