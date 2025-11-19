@interface BKAudiobookNowPlayingAdaptorMediaLibrary
- (id)nowPlayingInfoCenter:(id)a3 artworkForContentItem:(id)a4 size:(CGSize)a5 completion:(id)a6;
- (id)nowPlayingInfoCenter:(id)a3 contentItemForID:(id)a4;
- (id)nowPlayingInfoCenter:(id)a3 contentItemIDForOffset:(int64_t)a4;
- (void)_fireAndFreeArtworkCompletionBlocksWithImage:(id)a3 error:(id)a4;
- (void)coverWillChangeTo:(CGImage *)a3;
- (void)dealloc;
- (void)nowPlayingInfoChanged:(BOOL)a3;
- (void)player:(id)a3 audiobookDidChange:(id)a4;
- (void)setSessionID:(id)a3;
@end

@implementation BKAudiobookNowPlayingAdaptorMediaLibrary

- (void)dealloc
{
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self _fireAndFreeArtworkCompletionBlocksWithImage:0 error:0];
  v3.receiver = self;
  v3.super_class = BKAudiobookNowPlayingAdaptorMediaLibrary;
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)&v3 dealloc];
}

- (void)setSessionID:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKAudiobookNowPlayingAdaptorMediaLibrary;
  [(BKAudiobookNowPlayingAdaptor *)&v4 setSessionID:a3];
  [(BKAudiobookNowPlayingAdaptor *)self invalidatePlaybackQueue];
}

- (id)nowPlayingInfoCenter:(id)a3 contentItemIDForOffset:(int64_t)a4
{
  if ([(BKAudiobookNowPlayingAdaptor *)self audiobookPlayerActiveOutput])
  {
    objc_opt_class();
    v6 = [(BKAudiobookNowPlayingAdaptor *)self player];
    v7 = [v6 currentAudiobook];
    v8 = BUDynamicCast();

    if (v8)
    {
      objc_opt_class();
      v9 = [(BKAudiobookNowPlayingAdaptor *)self player];
      v10 = [v9 currentChapter];
      v11 = BUDynamicCast();

      if (v11)
      {
        v12 = [(BKAudiobookNowPlayingAdaptor *)self player];
        v13 = [v12 currentChapterIndex];

        v14 = [v8 chapters];
        v15 = [v14 count];

        if (&v13[a4] >= v15)
        {
          v18 = 0;
          v20 = 0;
        }

        else
        {
          objc_opt_class();
          v16 = [v8 chapters];
          v17 = [v16 objectAtIndexedSubscript:&v13[a4]];
          v18 = BUDynamicCast();

          v19 = [v18 contentItem];
          v20 = [v19 identifier];
        }

        v26 = BKAudiobooksNowPlayingAdaptorLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [NSNumber numberWithInteger:a4];
          v28 = [v18 contentItem];
          v29 = [v28 identifier];
          v30 = [NSNumber numberWithInteger:v13];
          v32 = 138412802;
          v33 = v27;
          v34 = 2112;
          v35 = v29;
          v36 = 2112;
          v37 = v30;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "contentItemIDForOffset[%@]=%@ chapter=%@", &v32, 0x20u);
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v21 = [(BKAudiobookNowPlayingAdaptor *)self player];
      v22 = [v21 currentAudiobook];
      v23 = [v22 isAudiobookPreview];

      v20 = 0;
      if (v23 && !a4)
      {
        v24 = [(BKAudiobookNowPlayingAdaptor *)self player];
        v25 = [v24 currentAudiobook];
        v20 = [v25 assetID];
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)nowPlayingInfoCenter:(id)a3 contentItemForID:(id)a4
{
  v5 = a4;
  v6 = [(BKAudiobookNowPlayingAdaptor *)self player];
  v7 = [v6 currentAudiobook];

  if (![(BKAudiobookNowPlayingAdaptor *)self audiobookPlayerActiveOutput])
  {
    v12 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  v8 = BUDynamicCast();
  if (v8)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [(BKAudiobookNowPlayingAdaptor *)self player];
    v10 = [v9 currentAudiobook];
    v11 = [v10 chapters];

    v12 = [v11 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v12)
    {
      v34 = v7;
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          objc_opt_class();
          v16 = BUDynamicCast();
          v17 = [v16 contentItem];
          v18 = [v17 identifier];
          v19 = [v18 isEqualToString:v5];

          if (v19)
          {
            v12 = v17;
            v20 = BKAudiobooksNowPlayingAdaptorLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v12 identifier];
              *buf = 138412546;
              v42 = v21;
              v43 = 2112;
              v44 = v12;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "contentItemForID[%@]=%@", buf, 0x16u);
            }

            v7 = v34;
            goto LABEL_16;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v7 = v34;
    }
  }

  else
  {
    if (![v7 isAudiobookPreview] || (objc_msgSend(v7, "assetID"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v5, "isEqual:", v22), v22, !v23))
    {
      v12 = 0;
      goto LABEL_23;
    }

    v24 = [MPNowPlayingContentItem alloc];
    v25 = [v7 assetID];
    v12 = [v24 initWithIdentifier:v25];

    [v12 setMediaType:4];
    v26 = [v7 author];
    [v12 setTrackArtistName:v26];

    v27 = [v7 author];
    [v12 setAlbumArtistName:v27];

    v28 = [v7 title];
    [v12 setTitle:v28];

    v29 = [v7 title];
    [v12 setAlbumName:v29];

    [v7 duration];
    [v12 setDuration:?];
    [v12 setElapsedTime:0.0];
    [v12 setPlaybackRate:0.0];
    LODWORD(v30) = 1.0;
    [v12 setDefaultPlaybackRate:v30];
    [v12 setNumberOfChildren:0];
    [v12 setContainer:0];
    [v12 setHasArtwork:1];
    [v12 setPlayable:1];
    v39[0] = kMRMediaRemoteNowPlayingInfoChapterNumber;
    v39[1] = kMRMediaRemoteNowPlayingInfoTotalChapterCount;
    v40[0] = &off_3E0D8;
    v40[1] = &off_3E0F0;
    v39[2] = kMRMediaRemoteNowPlayingInfoUniqueIdentifier;
    v31 = [v7 assetID];
    v40[2] = v31;
    v11 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:3];

    [v12 setNowPlayingInfo:v11];
    [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setContentItemForPreviews:v12];
    v16 = BKAudiobooksNowPlayingAdaptorLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v12 identifier];
      *buf = 138412546;
      v42 = v32;
      v43 = 2112;
      v44 = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "contentItemForID[%@]=%@", buf, 0x16u);
    }

LABEL_16:
  }

LABEL_23:
LABEL_24:

  return v12;
}

- (id)nowPlayingInfoCenter:(id)a3 artworkForContentItem:(id)a4 size:(CGSize)a5 completion:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [(BKAudiobookNowPlayingAdaptor *)self audiobookPlayerActiveOutput];
  v15 = BKAudiobooksNowPlayingAdaptorLog();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Attempting to fetch artwork for active audiobook.", buf, 2u);
    }

    v17 = [(BKAudiobookNowPlayingAdaptor *)self player];
    v18 = [v17 currentAudiobook];

    objc_initWeak(buf, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_C1B0;
    v21[3] = &unk_3CD58;
    objc_copyWeak(v25, buf);
    v19 = v18;
    v22 = v19;
    v23 = self;
    v24 = v13;
    v25[1] = *&width;
    v25[2] = *&height;
    [v19 artworkWithCompletion:v21];

    objc_destroyWeak(v25);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_213DC(v16);
    }

    (*(v13 + 2))(v13, 0, 0);
  }

  return 0;
}

- (void)nowPlayingInfoChanged:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = [(BKAudiobookNowPlayingAdaptor *)self player];
  v6 = [v5 currentChapter];
  v7 = BUDynamicCast();

  v8 = [(BKAudiobookNowPlayingAdaptor *)self player];
  [v8 playbackRate];
  v10 = v9;

  v11 = [(BKAudiobookNowPlayingAdaptor *)self player];
  [v11 positionInCurrentChapter];
  v13 = v12;

  if (v3)
  {
    v14 = [(BKAudiobookNowPlayingAdaptor *)self player];
    v15 = [v14 isPlaying];

    if (!v15)
    {
      v10 = 0.0;
    }
  }

  v16 = [v7 contentItem];
  v17 = [(BKAudiobookNowPlayingAdaptor *)self player];
  v18 = [v17 currentAudiobook];
  v19 = [v18 isAudiobookPreview];

  if (v19)
  {
    v21 = [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self contentItemForPreviews];

    v16 = v21;
  }

  if (v16)
  {
    *&v20 = v10;
    [v16 setElapsedTime:v13 playbackRate:v20];
    v22 = [(BKAudiobookNowPlayingAdaptor *)self player];
    [v22 playbackRate];
    [v16 setDefaultPlaybackRate:?];

    v23 = [v16 userInfo];
    if (!v23)
    {
      v23 = +[NSDictionary dictionary];
    }

    v24 = [(BKAudiobookNowPlayingAdaptor *)self player];
    if ([v24 isStalling])
    {
      v25 = &dword_0 + 1;
    }

    else
    {
      v26 = [(BKAudiobookNowPlayingAdaptor *)self player];
      v25 = [v26 isLoadingResources];
    }

    v27 = MPNowPlayingContentItemUserInfoKeyIsLoading;
    v28 = [v23 objectForKey:MPNowPlayingContentItemUserInfoKeyIsLoading];
    v29 = [v28 BOOLValue];

    if (v25 != v29)
    {
      v30 = [v23 mutableCopy];
      v31 = [NSNumber numberWithBool:v25];
      [v30 setObject:v31 forKey:v27];

      [v16 setUserInfo:v30];
    }

    v32 = BKAudiobooksNowPlayingAdaptorLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v16 identifier];
      [v16 playbackRate];
      v35 = v34;
      [v16 elapsedTime];
      v37 = v36;
      v38 = [NSNumber numberWithBool:v25];
      v45 = 138413058;
      v46 = v33;
      v47 = 2048;
      v48 = v35;
      v49 = 2048;
      v50 = v37;
      v51 = 2112;
      v52 = v38;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "nowPlayingInfoChanged identifier=%@ rate=%f elapsedTime=%f isLoading=%@", &v45, 0x2Au);
    }
  }

  else
  {
    v23 = BKAudiobooksNowPlayingAdaptorLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v45) = 0;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "nowPlayingInfoChanged no contentItem available", &v45, 2u);
    }
  }

  v39 = [(BKAudiobookNowPlayingAdaptor *)self player];
  [v39 playbackRate];
  v41 = v40;
  v42 = +[MPRemoteCommandCenter sharedCommandCenter];
  v43 = [v42 changePlaybackRateCommand];
  LODWORD(v44) = v41;
  [v43 setPreferredRate:v44];
}

- (void)player:(id)a3 audiobookDidChange:(id)a4
{
  v5.receiver = self;
  v5.super_class = BKAudiobookNowPlayingAdaptorMediaLibrary;
  [(BKAudiobookNowPlayingAdaptor *)&v5 player:a3 audiobookDidChange:a4];
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self _fireAndFreeArtworkCompletionBlocksWithImage:0 error:0];
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setNowPlayingAudiobookArtworkForPreviews:0];
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setContentItemForPreviews:0];
}

- (void)coverWillChangeTo:(CGImage *)a3
{
  if (a3)
  {
    v4 = [UIImage imageWithCGImage:?];
    [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setNowPlayingAudiobookArtworkForPreviews:v4];

    v5 = [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self nowPlayingAudiobookArtworkForPreviews];
    [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self _fireAndFreeArtworkCompletionBlocksWithImage:v5 error:0];
  }
}

- (void)_fireAndFreeArtworkCompletionBlocksWithImage:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self artworkCompletionBlocks];
  v9 = [v8 copy];

  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setArtworkCompletionBlocks:0];
  v10 = BKAudiobooksNowPlayingAdaptorLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [v6 size];
    v11 = NSStringFromCGSize(v24);
    *buf = 138543362;
    v23 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Finished generating artwork for active preview audiobook (%{public}@)", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v17 + 1) + 8 * v16) + 16))(*(*(&v17 + 1) + 8 * v16));
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

@end