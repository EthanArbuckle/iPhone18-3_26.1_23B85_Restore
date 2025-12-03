@interface MCDLibraryPlaybackManager
- (id)playbackRequestForAlbum:(id)album;
- (id)playbackRequestForPlaylist:(id)playlist;
- (void)_initiatePlaybackAndPushNPViewControllerForPlaybackRequest:(id)request startItemIdentifiers:(id)identifiers shuffle:(BOOL)shuffle playActivityFeatureName:(id)name;
- (void)_initiatePlaybackForItemKind:(id)kind sectionKind:(id)sectionKind object:(id)object lastResponse:(id)response shuffled:(BOOL)shuffled forceScopingToResponseResults:(BOOL)results playActivityFeatureName:(id)name;
- (void)initiatePlaybackForAlbum:(id)album lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name;
- (void)initiatePlaybackForGenre:(id)genre lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name;
- (void)initiatePlaybackForPerson:(id)person lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name;
- (void)initiatePlaybackForPlaylist:(id)playlist lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name;
- (void)initiatePlaybackForPlaylistEntry:(id)entry lastResponse:(id)response shuffled:(BOOL)shuffled forceScopingToResponseResults:(BOOL)results playActivityFeatureName:(id)name;
- (void)initiatePlaybackForSong:(id)song sectionKind:(id)kind lastResponse:(id)response shuffled:(BOOL)shuffled forceScopingToResponseResults:(BOOL)results playActivityFeatureName:(id)name;
- (void)initiateRadioPlaybackForArtist:(id)artist playActivityFeatureName:(id)name;
@end

@implementation MCDLibraryPlaybackManager

- (void)_initiatePlaybackForItemKind:(id)kind sectionKind:(id)sectionKind object:(id)object lastResponse:(id)response shuffled:(BOOL)shuffled forceScopingToResponseResults:(BOOL)results playActivityFeatureName:(id)name
{
  resultsCopy = results;
  shuffledCopy = shuffled;
  kindCopy = kind;
  responseCopy = response;
  nameCopy = name;
  objectCopy = object;
  sectionKindCopy = sectionKind;
  v19 = objc_alloc_init(MPModelLibraryRequest);
  [v19 setItemKind:kindCopy];
  [v19 setSectionKind:sectionKindCopy];

  if (!responseCopy)
  {
    identifiers = [objectCopy identifiers];
    v38 = identifiers;
    scopedContainers2 = [NSArray arrayWithObjects:&v38 count:1];
    [v19 setAllowedItemIdentifiers:scopedContainers2];
LABEL_10:

    goto LABEL_11;
  }

  v34 = shuffledCopy;
  identifiers = [responseCopy request];
  scopedContainers = [identifiers scopedContainers];
  firstObject = [scopedContainers firstObject];

  if (firstObject)
  {
    itemSortDescriptors = [identifiers itemSortDescriptors];
    [v19 setItemSortDescriptors:itemSortDescriptors];

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
      sectionKind = [identifiers sectionKind];
      [v19 setSectionKind:sectionKind];
    }

    shuffledCopy = v34;
    scopedContainers2 = [identifiers scopedContainers];
    [v19 setScopedContainers:scopedContainers2];
    goto LABEL_10;
  }

  if (!resultsCopy)
  {
    shuffledCopy = v34;
    if (v34)
    {
      goto LABEL_11;
    }

    scopedContainers2 = [identifiers itemSortDescriptors];
    [v19 setItemSortDescriptors:scopedContainers2];
    goto LABEL_10;
  }

  v29 = +[NSMutableArray array];
  results = [responseCopy results];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001026A4;
  v36[3] = &unk_101098778;
  v37 = v29;
  v31 = v29;
  [results enumerateItemIdentifiersUsingBlock:v36];

  [v19 setScopedContainers:v31];
  shuffledCopy = v34;
LABEL_11:

  identifiers2 = [objectCopy identifiers];

  [(MCDLibraryPlaybackManager *)self _initiatePlaybackAndPushNPViewControllerForPlaybackRequest:v19 startItemIdentifiers:identifiers2 shuffle:shuffledCopy playActivityFeatureName:nameCopy];
}

- (void)initiatePlaybackForSong:(id)song sectionKind:(id)kind lastResponse:(id)response shuffled:(BOOL)shuffled forceScopingToResponseResults:(BOOL)results playActivityFeatureName:(id)name
{
  resultsCopy = results;
  shuffledCopy = shuffled;
  nameCopy = name;
  responseCopy = response;
  kindCopy = kind;
  songCopy = song;
  v18 = [MPModelSong kindWithVariants:3];
  [(MCDLibraryPlaybackManager *)self _initiatePlaybackForItemKind:v18 sectionKind:kindCopy object:songCopy lastResponse:responseCopy shuffled:shuffledCopy forceScopingToResponseResults:resultsCopy playActivityFeatureName:nameCopy];
}

- (void)initiatePlaybackForPlaylistEntry:(id)entry lastResponse:(id)response shuffled:(BOOL)shuffled forceScopingToResponseResults:(BOOL)results playActivityFeatureName:(id)name
{
  resultsCopy = results;
  shuffledCopy = shuffled;
  nameCopy = name;
  responseCopy = response;
  entryCopy = entry;
  v15 = [MPModelSong kindWithVariants:3];
  v18 = v15;
  v16 = [NSArray arrayWithObjects:&v18 count:1];
  v17 = [MPModelPlaylistEntry kindWithKinds:v16];

  [(MCDLibraryPlaybackManager *)self _initiatePlaybackForItemKind:v17 object:entryCopy lastResponse:responseCopy shuffled:shuffledCopy forceScopingToResponseResults:resultsCopy playActivityFeatureName:nameCopy];
}

- (void)initiatePlaybackForPerson:(id)person lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name
{
  shuffledCopy = shuffled;
  nameCopy = name;
  personCopy = person;
  v11 = objc_alloc_init(MPModelLibraryRequest);
  v12 = [MPModelSong kindWithVariants:1];
  [v11 setItemKind:v12];

  v14 = personCopy;
  v13 = [NSArray arrayWithObjects:&v14 count:1];

  [v11 setScopedContainers:v13];
  [(MCDLibraryPlaybackManager *)self _initiatePlaybackAndPushNPViewControllerForPlaybackRequest:v11 startItemIdentifiers:0 shuffle:shuffledCopy playActivityFeatureName:nameCopy];
}

- (void)initiatePlaybackForGenre:(id)genre lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name
{
  shuffledCopy = shuffled;
  nameCopy = name;
  genreCopy = genre;
  v11 = objc_alloc_init(MPModelLibraryRequest);
  v12 = [MPModelSong kindWithVariants:1];
  [v11 setItemKind:v12];

  v14 = genreCopy;
  v13 = [NSArray arrayWithObjects:&v14 count:1];

  [v11 setScopedContainers:v13];
  [(MCDLibraryPlaybackManager *)self _initiatePlaybackAndPushNPViewControllerForPlaybackRequest:v11 startItemIdentifiers:0 shuffle:shuffledCopy playActivityFeatureName:nameCopy];
}

- (id)playbackRequestForAlbum:(id)album
{
  albumCopy = album;
  v4 = objc_alloc_init(MPModelLibraryRequest);
  v5 = [MPModelSong kindWithVariants:3];
  [v4 setItemKind:v5];

  v13 = albumCopy;
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

- (void)initiatePlaybackForAlbum:(id)album lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name
{
  shuffledCopy = shuffled;
  nameCopy = name;
  v10 = [(MCDLibraryPlaybackManager *)self playbackRequestForAlbum:album];
  [(MCDLibraryPlaybackManager *)self _initiatePlaybackAndPushNPViewControllerForPlaybackRequest:v10 startItemIdentifiers:0 shuffle:shuffledCopy playActivityFeatureName:nameCopy];
}

- (id)playbackRequestForPlaylist:(id)playlist
{
  playlistCopy = playlist;
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
  v13 = playlistCopy;
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  [v4 setScopedContainers:v10];

  preferredTracklistSortDescriptors = [playlistCopy preferredTracklistSortDescriptors];

  [v4 setItemSortDescriptors:preferredTracklistSortDescriptors];

  return v4;
}

- (void)initiatePlaybackForPlaylist:(id)playlist lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name
{
  shuffledCopy = shuffled;
  nameCopy = name;
  v10 = [(MCDLibraryPlaybackManager *)self playbackRequestForPlaylist:playlist];
  [(MCDLibraryPlaybackManager *)self _initiatePlaybackAndPushNPViewControllerForPlaybackRequest:v10 startItemIdentifiers:0 shuffle:shuffledCopy playActivityFeatureName:nameCopy];
}

- (void)initiateRadioPlaybackForArtist:(id)artist playActivityFeatureName:(id)name
{
  artistCopy = artist;
  nameCopy = name;
  v8 = [MPCPlaybackIntent radioPlaybackIntentFromArtist:artistCopy];
  [v8 setPlayActivityFeatureName:nameCopy];

  v9 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    name = [artistCopy name];
    *buf = 138543362;
    v15 = name;
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

- (void)_initiatePlaybackAndPushNPViewControllerForPlaybackRequest:(id)request startItemIdentifiers:(id)identifiers shuffle:(BOOL)shuffle playActivityFeatureName:(id)name
{
  shuffleCopy = shuffle;
  requestCopy = request;
  identifiersCopy = identifiers;
  nameCopy = name;
  if ([(MCDPlaybackManager *)self localContentOnly])
  {
    [requestCopy setFilteringOptions:{objc_msgSend(requestCopy, "filteringOptions") | 2}];
  }

  if ([(MCDPlaybackManager *)self favoriteContentOnly])
  {
    [requestCopy setFilteringOptions:{objc_msgSend(requestCopy, "filteringOptions") | 0x200000}];
  }

  v13 = [requestCopy playbackIntentWithStartItemIdentifiers:identifiersCopy];
  v14 = v13;
  if (shuffleCopy)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  [v13 setShuffleMode:v15];
  [v14 setPlayActivityFeatureName:nameCopy];

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