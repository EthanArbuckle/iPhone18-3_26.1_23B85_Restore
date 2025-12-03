@interface BKAudiobookPlayerDataSource
- (BKAudiobookPlayerDataSourceDelegate)delegate;
- (BOOL)_fetchKeysForMediaItem:(id)item loadingRequest:(id)request;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request;
- (void)setDelegate:(id)delegate;
@end

@implementation BKAudiobookPlayerDataSource

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    v6 = BKAudiobooksStreamingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = delegateCopy;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Data source delegate changed to %@.", &v7, 0xCu);
    }

    objc_storeWeak(&self->_delegate, delegateCopy);
  }
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  resourceCopy = resource;
  v6 = BKAudiobooksStreamingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = resourceCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AVAsset requested %@", &v23, 0xCu);
  }

  request = [resourceCopy request];
  v8 = [request URL];
  lastPathComponent = [v8 lastPathComponent];

  pathExtension = [lastPathComponent pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  if ([lowercaseString bk_isPlaylistExtension])
  {
    delegate = [(BKAudiobookPlayerDataSource *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(BKAudiobookPlayerDataSource *)self delegate];
      v15 = [delegate2 playerDataSource:self shouldWaitForLoadingOfRequestedPlaylist:resourceCopy fileName:lastPathComponent];
LABEL_9:
      v18 = v15;
LABEL_14:

      goto LABEL_16;
    }
  }

  else if ([lowercaseString bk_isAudioFileExtension])
  {
    delegate3 = [(BKAudiobookPlayerDataSource *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate2 = [(BKAudiobookPlayerDataSource *)self delegate];
      v15 = [delegate2 playerDataSource:self shouldWaitForLoadingOfRequestedAudioFile:resourceCopy fileName:lastPathComponent];
      goto LABEL_9;
    }
  }

  else if (ICSecureKeyDeliveryRequestSupportsAssetResourceLoadingRequest())
  {
    v19 = BKAudiobooksStreamingLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = lastPathComponent;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "AVAsset requested skd file '%@'.", &v23, 0xCu);
    }

    delegate2 = [(BKAudiobookPlayerDataSource *)self delegate];
    mediaItem = [delegate2 mediaItem];
    v18 = [(BKAudiobookPlayerDataSource *)self _fetchKeysForMediaItem:mediaItem loadingRequest:resourceCopy];

    goto LABEL_14;
  }

  v18 = 0;
LABEL_16:
  v21 = BKAudiobooksStreamingLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = lastPathComponent;
    v25 = 1024;
    v26 = v18;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "AVAsset request of '%@' wait for loading? %d", &v23, 0x12u);
  }

  return v18;
}

- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request
{
  requestCopy = request;
  v6 = BKAudiobooksStreamingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = requestCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AVAsset cancelled request %@", &v10, 0xCu);
  }

  delegate = [(BKAudiobookPlayerDataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(BKAudiobookPlayerDataSource *)self delegate];
    [delegate2 playerDataSource:self didCancelLoadingRequest:requestCopy];
  }
}

- (BOOL)_fetchKeysForMediaItem:(id)item loadingRequest:(id)request
{
  itemCopy = item;
  requestCopy = request;
  request = [requestCopy request];
  v8 = [request URL];
  absoluteString = [v8 absoluteString];

  v10 = +[BLHLSKeyFetcher sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_AF70;
  v14[3] = &unk_3CCE8;
  v15 = requestCopy;
  v11 = requestCopy;
  v12 = [v10 fetchOfflineKeyForMediaItem:itemCopy identity:absoluteString completion:v14];

  return 1;
}

- (BKAudiobookPlayerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end