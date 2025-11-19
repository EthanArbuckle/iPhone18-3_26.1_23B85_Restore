@interface MCDLibraryAddObserver
- (BOOL)isAlbumAddable;
- (BOOL)isAlbumAdded;
- (BOOL)isCloudLibraryEnabled;
- (BOOL)isPlaylistAddable;
- (BOOL)isPlaylistAdded;
- (BOOL)isSongAddable;
- (BOOL)isSongAdded;
- (BOOL)shouldShowFavoriteSong;
- (void)_addItemToLibrary:(id)a3;
- (void)addAlbumToLibrary;
- (void)addPlaylistToLibrary;
- (void)addSongToLibrary;
- (void)contentManager:(id)a3 didReceiveResponse:(id)a4;
- (void)setSong:(id)a3;
- (void)updateRequestForTracklist:(id)a3;
@end

@implementation MCDLibraryAddObserver

- (void)updateRequestForTracklist:(id)a3
{
  v4 = a3;
  v5 = [v4 playingItem];
  v6 = [v5 metadataObject];
  v7 = [v6 flattenedGenericObject];

  if ([v7 type] == 1)
  {
    v8 = [v7 song];
    [(MCDLibraryAddObserver *)self setSong:v8];

    v9 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(MCDLibraryAddObserver *)self song];
      v11 = [v10 debugDescription];
      v32 = 138543362;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "LibraryAddObserver: Song updated %{public}@", &v32, 0xCu);
    }
  }

  else
  {
    [(MCDLibraryAddObserver *)self setSong:0];
  }

  v12 = [v4 playingItemIndexPath];

  if (!v12)
  {
    [(MCDLibraryAddObserver *)self setDidReceivePlaylistResponse:0];
    v19 = 0;
    v21 = 0;
    goto LABEL_16;
  }

  v13 = [v4 items];
  v14 = [v4 playingItemIndexPath];
  v15 = [v13 sectionAtIndex:{objc_msgSend(v14, "section")}];

  v16 = [v15 metadataObject];
  v17 = [v16 type];
  if (v17 == 2)
  {
    v18 = [v16 album];
    v20 = 0;
    v19 = v18;
    goto LABEL_12;
  }

  if (v17 == 4)
  {
    v18 = [v16 playlist];
    v19 = 0;
    v20 = v18;
LABEL_12:
    v21 = v18;
    goto LABEL_14;
  }

  v21 = 0;
  v19 = 0;
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
  if (!v19)
  {
    v25 = [(MCDLibraryAddObserver *)self song];
    v19 = [v25 album];

    if (v21)
    {
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = v19;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    [(MCDLibraryAddObserver *)self setAlbumsContentManager:0];
    goto LABEL_21;
  }

LABEL_20:
  v26 = [MCDStorePlaybackItemsManager alloc];
  v27 = [(MCDAlbumTracksDataSource *)[MCDAlbumAddedDataSource alloc] initWithAlbum:v19 storeContent:0];
  v28 = [(_MCDContentManager *)v26 initWithDataSource:v27 delegate:self];
  [(MCDLibraryAddObserver *)self setAlbumsContentManager:v28];

LABEL_21:
  v29 = [(MCDLibraryAddObserver *)self song];
  if (v29 || ([(MCDLibraryAddObserver *)self album], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v30 = v29;
  }

  else
  {
    v31 = [(MCDLibraryAddObserver *)self playlist];

    if (v31)
    {
      goto LABEL_25;
    }

    v30 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100DEEFA8(v4, v30);
    }
  }

LABEL_25:
}

- (void)setSong:(id)a3
{
  v5 = a3;
  if (self->_song != v5)
  {
    objc_storeStrong(&self->_song, a3);
  }

  v6 = [(MCDLibraryAddObserver *)self songAddStatusObserver];
  v7 = v6;
  if (v5)
  {
    v8 = [(MCDLibraryAddObserver *)self songAddStatusObserver];

    if (v8)
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

    [v9 configureWithModelObject:v5];
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

  v4 = [(MCDLibraryAddObserver *)self song];
  [(MCDLibraryAddObserver *)self _addItemToLibrary:v4];
}

- (void)addAlbumToLibrary
{
  v3 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Adding album to library", v5, 2u);
  }

  v4 = [(MCDLibraryAddObserver *)self album];
  [(MCDLibraryAddObserver *)self _addItemToLibrary:v4];
}

- (void)addPlaylistToLibrary
{
  v3 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Adding playlist to library", v5, 2u);
  }

  v4 = [(MCDLibraryAddObserver *)self playlist];
  [(MCDLibraryAddObserver *)self _addItemToLibrary:v4];
}

- (void)_addItemToLibrary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MPMutableSectionedCollection);
    [v5 appendSection:&stru_101107168];
    [v5 appendItem:v4];
    v6 = objc_alloc_init(MPModelLibraryImportChangeRequest);
    [v6 setShouldLibraryAdd:1];
    [v6 setModelObjects:v5];
    v7 = [(MCDLibraryAddObserver *)self referralObject];
    [v6 setReferralObject:v7];

    v8 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000F300C;
    v9[3] = &unk_1010982D0;
    v10 = v4;
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
  v3 = [v2 isCloudLibraryEnabled];

  return v3;
}

- (BOOL)isSongAddable
{
  v3 = [(MCDLibraryAddObserver *)self songAddStatusObserver];
  v4 = [v3 currentStatus];

  v5 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(MCDLibraryAddObserver *)self song];
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

    v13 = v6;
    if (v4 == 2)
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

  v10 = [(MCDLibraryAddObserver *)self isCloudLibraryEnabled];
  result = 0;
  if (v10)
  {
    if (v4 == 2)
    {
      return ![(MCDLibraryAddObserver *)self isSongAdded];
    }
  }

  return result;
}

- (BOOL)isSongAdded
{
  v2 = [(MCDLibraryAddObserver *)self songAddStatusObserver];
  v3 = [v2 currentStatus] == 1;

  return v3;
}

- (BOOL)shouldShowFavoriteSong
{
  v3 = [(MCDLibraryAddObserver *)self songAddStatusObserver];
  v4 = [v3 currentStatus];

  v5 = [(MCDLibraryAddObserver *)self song];
  v6 = [v5 identifiers];
  v7 = [v6 library];
  v8 = [v7 databaseID];
  v25 = self;
  if (v8)
  {
    v23 = [(MCDLibraryAddObserver *)self song];
    v24 = v4;
    v9 = [v23 identifiers];
    v10 = [v9 library];
    v11 = [v10 databaseID];
    +[MPMediaLibrary deviceMediaLibrary];
    v13 = v12 = v5;
    v14 = [v13 uniqueIdentifier];
    v15 = [v11 isEqualToString:v14] ^ 1;

    v5 = v12;
    v4 = v24;
  }

  else
  {
    v15 = 0;
  }

  v16 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [(MCDLibraryAddObserver *)v25 song];
    v18 = v17;
    v19 = @"NO";
    if (v4 == 1)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    *buf = 134218754;
    v27 = v17;
    if (v4 == 2)
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

  return ((v4 - 1) < 2) & (v15 ^ 1);
}

- (BOOL)isAlbumAddable
{
  v3 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(MCDLibraryAddObserver *)self album];
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

    v8 = [(MCDLibraryAddObserver *)self album];
    v13 = 134219010;
    if ([v8 isLibraryAddEligible])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v14 = v4;
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
    v10 = [(MCDLibraryAddObserver *)self album];
    if ([v10 isLibraryAddEligible])
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
  v2 = [(MCDLibraryAddObserver *)self album];
  v3 = [v2 isLibraryAdded];

  return v3;
}

- (BOOL)isPlaylistAddable
{
  v3 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(MCDLibraryAddObserver *)self playlist];
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

    v12 = v4;
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
    v8 = [(MCDLibraryAddObserver *)self playlist];
    if (v8)
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
  v2 = [(MCDLibraryAddObserver *)self playlist];
  v3 = [v2 isLibraryAdded];

  return v3;
}

- (void)contentManager:(id)a3 didReceiveResponse:(id)a4
{
  v5 = a4;
  v6 = [v5 results];
  v7 = [v6 firstSection];

  v8 = [v7 type];
  if (v8 == 4)
  {
    [(MCDLibraryAddObserver *)self setDidReceivePlaylistResponse:1];
    v14 = [v7 playlist];
    [(MCDLibraryAddObserver *)self setPlaylist:v14];

    v10 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(MCDLibraryAddObserver *)self playlist];
      v12 = [v11 debugDescription];
      v15 = 138543362;
      v16 = v12;
      v13 = "LibraryAddObserver: Playlist updated %{public}@";
      goto LABEL_7;
    }
  }

  else if (v8 == 2)
  {
    [(MCDLibraryAddObserver *)self setDidReceiveAlbumResponse:1];
    v9 = [v7 album];
    [(MCDLibraryAddObserver *)self setAlbum:v9];

    v10 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(MCDLibraryAddObserver *)self album];
      v12 = [v11 debugDescription];
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
      sub_100DEF064(v5, v10);
    }
  }
}

@end