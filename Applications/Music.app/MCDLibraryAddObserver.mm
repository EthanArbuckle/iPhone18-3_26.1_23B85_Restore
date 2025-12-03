@interface MCDLibraryAddObserver
- (BOOL)isAlbumAddable;
- (BOOL)isAlbumAdded;
- (BOOL)isCloudLibraryEnabled;
- (BOOL)isPlaylistAddable;
- (BOOL)isPlaylistAdded;
- (BOOL)isSongAddable;
- (BOOL)isSongAdded;
- (BOOL)shouldShowFavoriteSong;
- (void)_addItemToLibrary:(id)library;
- (void)addAlbumToLibrary;
- (void)addPlaylistToLibrary;
- (void)addSongToLibrary;
- (void)contentManager:(id)manager didReceiveResponse:(id)response;
- (void)setSong:(id)song;
- (void)updateRequestForTracklist:(id)tracklist;
@end

@implementation MCDLibraryAddObserver

- (void)updateRequestForTracklist:(id)tracklist
{
  tracklistCopy = tracklist;
  playingItem = [tracklistCopy playingItem];
  metadataObject = [playingItem metadataObject];
  flattenedGenericObject = [metadataObject flattenedGenericObject];

  if ([flattenedGenericObject type] == 1)
  {
    song = [flattenedGenericObject song];
    [(MCDLibraryAddObserver *)self setSong:song];

    v9 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      song2 = [(MCDLibraryAddObserver *)self song];
      v11 = [song2 debugDescription];
      v32 = 138543362;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "LibraryAddObserver: Song updated %{public}@", &v32, 0xCu);
    }
  }

  else
  {
    [(MCDLibraryAddObserver *)self setSong:0];
  }

  playingItemIndexPath = [tracklistCopy playingItemIndexPath];

  if (!playingItemIndexPath)
  {
    [(MCDLibraryAddObserver *)self setDidReceivePlaylistResponse:0];
    album2 = 0;
    v21 = 0;
    goto LABEL_16;
  }

  items = [tracklistCopy items];
  playingItemIndexPath2 = [tracklistCopy playingItemIndexPath];
  v15 = [items sectionAtIndex:{objc_msgSend(playingItemIndexPath2, "section")}];

  metadataObject2 = [v15 metadataObject];
  type = [metadataObject2 type];
  if (type == 2)
  {
    album = [metadataObject2 album];
    v20 = 0;
    album2 = album;
    goto LABEL_12;
  }

  if (type == 4)
  {
    album = [metadataObject2 playlist];
    album2 = 0;
    v20 = album;
LABEL_12:
    v21 = album;
    goto LABEL_14;
  }

  v21 = 0;
  album2 = 0;
  v20 = 0;
LABEL_14:

  [(MCDLibraryAddObserver *)self setDidReceivePlaylistResponse:0];
  if (v20)
  {
    v22 = [MCDStorePlaybackItemsManager alloc];
    v23 = [(MCDPlaylistTracksDataSource *)[MCDPlaylistAddedDataSource alloc] initWithPlaylist:v20];
    v24 = [(_MCDContentManager *)v22 initWithDataSource:v23 delegate:self];
    [(MCDLibraryAddObserver *)self setPlaylistContentManager:v24];

    goto LABEL_17;
  }

LABEL_16:
  [(MCDLibraryAddObserver *)self setPlaylistContentManager:0];
  v20 = 0;
LABEL_17:
  [(MCDLibraryAddObserver *)self setDidReceiveAlbumResponse:0];
  if (!album2)
  {
    song3 = [(MCDLibraryAddObserver *)self song];
    album2 = [song3 album];

    if (v21)
    {
      if (album2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = album2;
      if (album2)
      {
        goto LABEL_20;
      }
    }

    [(MCDLibraryAddObserver *)self setAlbumsContentManager:0];
    goto LABEL_21;
  }

LABEL_20:
  v26 = [MCDStorePlaybackItemsManager alloc];
  v27 = [(MCDAlbumTracksDataSource *)[MCDAlbumAddedDataSource alloc] initWithAlbum:album2 storeContent:0];
  v28 = [(_MCDContentManager *)v26 initWithDataSource:v27 delegate:self];
  [(MCDLibraryAddObserver *)self setAlbumsContentManager:v28];

LABEL_21:
  song4 = [(MCDLibraryAddObserver *)self song];
  if (song4 || ([(MCDLibraryAddObserver *)self album], (song4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v30 = song4;
  }

  else
  {
    playlist = [(MCDLibraryAddObserver *)self playlist];

    if (playlist)
    {
      goto LABEL_25;
    }

    v30 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100DEEFA8(tracklistCopy, v30);
    }
  }

LABEL_25:
}

- (void)setSong:(id)song
{
  songCopy = song;
  if (self->_song != songCopy)
  {
    objc_storeStrong(&self->_song, song);
  }

  songAddStatusObserver = [(MCDLibraryAddObserver *)self songAddStatusObserver];
  v7 = songAddStatusObserver;
  if (songCopy)
  {
    songAddStatusObserver2 = [(MCDLibraryAddObserver *)self songAddStatusObserver];

    if (songAddStatusObserver2)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(MPLibraryAddStatusObserver);

      objc_initWeak(&location, self);
      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_1000F2CAC;
      v13 = &unk_1010982A8;
      objc_copyWeak(&v14, &location);
      [v9 setStatusBlock:&v10];
      [(MCDLibraryAddObserver *)self setSongAddStatusObserver:v9, v10, v11, v12, v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    [v9 configureWithModelObject:songCopy];
  }

  else
  {

    if (v7)
    {
      [(MCDLibraryAddObserver *)self setSongAddStatusObserver:0];
    }
  }
}

- (void)addSongToLibrary
{
  v3 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Adding song to library", v5, 2u);
  }

  song = [(MCDLibraryAddObserver *)self song];
  [(MCDLibraryAddObserver *)self _addItemToLibrary:song];
}

- (void)addAlbumToLibrary
{
  v3 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Adding album to library", v5, 2u);
  }

  album = [(MCDLibraryAddObserver *)self album];
  [(MCDLibraryAddObserver *)self _addItemToLibrary:album];
}

- (void)addPlaylistToLibrary
{
  v3 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Adding playlist to library", v5, 2u);
  }

  playlist = [(MCDLibraryAddObserver *)self playlist];
  [(MCDLibraryAddObserver *)self _addItemToLibrary:playlist];
}

- (void)_addItemToLibrary:(id)library
{
  libraryCopy = library;
  if (libraryCopy)
  {
    v5 = objc_alloc_init(MPMutableSectionedCollection);
    [v5 appendSection:&stru_101107168];
    [v5 appendItem:libraryCopy];
    v6 = objc_alloc_init(MPModelLibraryImportChangeRequest);
    [v6 setShouldLibraryAdd:1];
    [v6 setModelObjects:v5];
    referralObject = [(MCDLibraryAddObserver *)self referralObject];
    [v6 setReferralObject:referralObject];

    v8 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000F300C;
    v9[3] = &unk_1010982D0;
    v10 = libraryCopy;
    [v8 performLibraryImportChangeRequest:v6 withRelatedModelObjects:0 completion:v9];
  }

  else
  {
    v5 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100DEF020(v5);
    }
  }
}

- (BOOL)isCloudLibraryEnabled
{
  v2 = +[MPCloudController sharedCloudController];
  isCloudLibraryEnabled = [v2 isCloudLibraryEnabled];

  return isCloudLibraryEnabled;
}

- (BOOL)isSongAddable
{
  songAddStatusObserver = [(MCDLibraryAddObserver *)self songAddStatusObserver];
  currentStatus = [songAddStatusObserver currentStatus];

  v5 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    song = [(MCDLibraryAddObserver *)self song];
    if ([(MCDLibraryAddObserver *)self isCloudLibraryEnabled])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v12 = 134218754;
    if ([(MCDLibraryAddObserver *)self isSongAdded])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v13 = song;
    if (currentStatus == 2)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v14 = 2114;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "isSongAddable: %p\n\tisCloudLibraryEnabled: %{public}@\n\tlibraryAdded: %{public}@\n\tlibraryAddEligible: %{public}@", &v12, 0x2Au);
  }

  isCloudLibraryEnabled = [(MCDLibraryAddObserver *)self isCloudLibraryEnabled];
  result = 0;
  if (isCloudLibraryEnabled)
  {
    if (currentStatus == 2)
    {
      return ![(MCDLibraryAddObserver *)self isSongAdded];
    }
  }

  return result;
}

- (BOOL)isSongAdded
{
  songAddStatusObserver = [(MCDLibraryAddObserver *)self songAddStatusObserver];
  v3 = [songAddStatusObserver currentStatus] == 1;

  return v3;
}

- (BOOL)shouldShowFavoriteSong
{
  songAddStatusObserver = [(MCDLibraryAddObserver *)self songAddStatusObserver];
  currentStatus = [songAddStatusObserver currentStatus];

  song = [(MCDLibraryAddObserver *)self song];
  identifiers = [song identifiers];
  library = [identifiers library];
  databaseID = [library databaseID];
  selfCopy = self;
  if (databaseID)
  {
    song2 = [(MCDLibraryAddObserver *)self song];
    v24 = currentStatus;
    identifiers2 = [song2 identifiers];
    library2 = [identifiers2 library];
    databaseID2 = [library2 databaseID];
    +[MPMediaLibrary deviceMediaLibrary];
    v13 = v12 = song;
    uniqueIdentifier = [v13 uniqueIdentifier];
    v15 = [databaseID2 isEqualToString:uniqueIdentifier] ^ 1;

    song = v12;
    currentStatus = v24;
  }

  else
  {
    v15 = 0;
  }

  v16 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    song3 = [(MCDLibraryAddObserver *)selfCopy song];
    v18 = song3;
    v19 = @"NO";
    if (currentStatus == 1)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    *buf = 134218754;
    v27 = song3;
    if (currentStatus == 2)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v29 = v20;
    v28 = 2114;
    v30 = 2114;
    if (v15)
    {
      v19 = @"YES";
    }

    v31 = v21;
    v32 = 2114;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "shouldShowFavoriteSong: %p\n\tlibraryAdded: %{public}@\n\tlibraryAddEligible: %{public}@\n\tisHomeSharing: %{public}@", buf, 0x2Au);
  }

  return ((currentStatus - 1) < 2) & (v15 ^ 1);
}

- (BOOL)isAlbumAddable
{
  v3 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    album = [(MCDLibraryAddObserver *)self album];
    if ([(MCDLibraryAddObserver *)self didReceiveAlbumResponse])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    if ([(MCDLibraryAddObserver *)self isCloudLibraryEnabled])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    if ([(MCDLibraryAddObserver *)self isAlbumAdded])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    album2 = [(MCDLibraryAddObserver *)self album];
    v13 = 134219010;
    if ([album2 isLibraryAddEligible])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v14 = album;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "isAlbumAddable: %p\n\tdidReceiveAlbumResponse: %{public}@\n\tisCloudLibraryEnabled: %{public}@\n\tlibraryAdded: %{public}@\n\tlibraryAddEligible: %{public}@", &v13, 0x34u);
  }

  if ([(MCDLibraryAddObserver *)self didReceiveAlbumResponse]&& [(MCDLibraryAddObserver *)self isCloudLibraryEnabled])
  {
    album3 = [(MCDLibraryAddObserver *)self album];
    if ([album3 isLibraryAddEligible])
    {
      v11 = ![(MCDLibraryAddObserver *)self isAlbumAdded];
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)isAlbumAdded
{
  album = [(MCDLibraryAddObserver *)self album];
  isLibraryAdded = [album isLibraryAdded];

  return isLibraryAdded;
}

- (BOOL)isPlaylistAddable
{
  v3 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    playlist = [(MCDLibraryAddObserver *)self playlist];
    if ([(MCDLibraryAddObserver *)self didReceivePlaylistResponse])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    if ([(MCDLibraryAddObserver *)self isCloudLibraryEnabled])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v11 = 134218754;
    if ([(MCDLibraryAddObserver *)self isPlaylistAdded])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v12 = playlist;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "isPlaylistAddable: %p\n\tdidReceivePlaylistResponse: %{public}@\n\tisCloudLibraryEnabled: %{public}@\n\tlibraryAdded: %{public}@", &v11, 0x2Au);
  }

  if ([(MCDLibraryAddObserver *)self didReceivePlaylistResponse]&& [(MCDLibraryAddObserver *)self isCloudLibraryEnabled])
  {
    playlist2 = [(MCDLibraryAddObserver *)self playlist];
    if (playlist2)
    {
      v9 = ![(MCDLibraryAddObserver *)self isPlaylistAdded];
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isPlaylistAdded
{
  playlist = [(MCDLibraryAddObserver *)self playlist];
  isLibraryAdded = [playlist isLibraryAdded];

  return isLibraryAdded;
}

- (void)contentManager:(id)manager didReceiveResponse:(id)response
{
  responseCopy = response;
  results = [responseCopy results];
  firstSection = [results firstSection];

  type = [firstSection type];
  if (type == 4)
  {
    [(MCDLibraryAddObserver *)self setDidReceivePlaylistResponse:1];
    playlist = [firstSection playlist];
    [(MCDLibraryAddObserver *)self setPlaylist:playlist];

    v10 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      playlist2 = [(MCDLibraryAddObserver *)self playlist];
      v12 = [playlist2 debugDescription];
      v15 = 138543362;
      v16 = v12;
      v13 = "LibraryAddObserver: Playlist updated %{public}@";
      goto LABEL_7;
    }
  }

  else if (type == 2)
  {
    [(MCDLibraryAddObserver *)self setDidReceiveAlbumResponse:1];
    album = [firstSection album];
    [(MCDLibraryAddObserver *)self setAlbum:album];

    v10 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      playlist2 = [(MCDLibraryAddObserver *)self album];
      v12 = [playlist2 debugDescription];
      v15 = 138543362;
      v16 = v12;
      v13 = "LibraryAddObserver: Album updated %{public}@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v13, &v15, 0xCu);
    }
  }

  else
  {
    v10 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100DEF064(responseCopy, v10);
    }
  }
}

@end