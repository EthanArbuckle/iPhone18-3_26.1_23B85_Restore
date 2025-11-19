@interface BKAudiobookPlayerDataSource
- (BKAudiobookPlayerDataSourceDelegate)delegate;
- (BOOL)_fetchKeysForMediaItem:(id)a3 loadingRequest:(id)a4;
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation BKAudiobookPlayerDataSource

- (void)setDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != v4)
  {
    v6 = BKAudiobooksStreamingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Data source delegate changed to %@.", &v7, 0xCu);
    }

    objc_storeWeak(&self->_delegate, v4);
  }
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v5 = a4;
  v6 = BKAudiobooksStreamingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AVAsset requested %@", &v23, 0xCu);
  }

  v7 = [v5 request];
  v8 = [v7 URL];
  v9 = [v8 lastPathComponent];

  v10 = [v9 pathExtension];
  v11 = [v10 lowercaseString];

  if ([v11 bk_isPlaylistExtension])
  {
    v12 = [(BKAudiobookPlayerDataSource *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(BKAudiobookPlayerDataSource *)self delegate];
      v15 = [v14 playerDataSource:self shouldWaitForLoadingOfRequestedPlaylist:v5 fileName:v9];
LABEL_9:
      v18 = v15;
LABEL_14:

      goto LABEL_16;
    }
  }

  else if ([v11 bk_isAudioFileExtension])
  {
    v16 = [(BKAudiobookPlayerDataSource *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v14 = [(BKAudiobookPlayerDataSource *)self delegate];
      v15 = [v14 playerDataSource:self shouldWaitForLoadingOfRequestedAudioFile:v5 fileName:v9];
      goto LABEL_9;
    }
  }

  else if (ICSecureKeyDeliveryRequestSupportsAssetResourceLoadingRequest())
  {
    v19 = BKAudiobooksStreamingLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v9;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "AVAsset requested skd file '%@'.", &v23, 0xCu);
    }

    v14 = [(BKAudiobookPlayerDataSource *)self delegate];
    v20 = [v14 mediaItem];
    v18 = [(BKAudiobookPlayerDataSource *)self _fetchKeysForMediaItem:v20 loadingRequest:v5];

    goto LABEL_14;
  }

  v18 = 0;
LABEL_16:
  v21 = BKAudiobooksStreamingLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = v9;
    v25 = 1024;
    v26 = v18;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "AVAsset request of '%@' wait for loading? %d", &v23, 0x12u);
  }

  return v18;
}

- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4
{
  v5 = a4;
  v6 = BKAudiobooksStreamingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AVAsset cancelled request %@", &v10, 0xCu);
  }

  v7 = [(BKAudiobookPlayerDataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(BKAudiobookPlayerDataSource *)self delegate];
    [v9 playerDataSource:self didCancelLoadingRequest:v5];
  }
}

- (BOOL)_fetchKeysForMediaItem:(id)a3 loadingRequest:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 request];
  v8 = [v7 URL];
  v9 = [v8 absoluteString];

  v10 = +[BLHLSKeyFetcher sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_AF70;
  v14[3] = &unk_3CCE8;
  v15 = v6;
  v11 = v6;
  v12 = [v10 fetchOfflineKeyForMediaItem:v5 identity:v9 completion:v14];

  return 1;
}

- (BKAudiobookPlayerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end