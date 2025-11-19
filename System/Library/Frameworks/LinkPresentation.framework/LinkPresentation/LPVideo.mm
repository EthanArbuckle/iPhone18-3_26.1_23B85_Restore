@interface LPVideo
- (AVAsset)_asset;
- (BOOL)_canEncodeWithoutComputation;
- (BOOL)hasAudio;
- (BOOL)isEqual:(id)a3;
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
- (CGSize)_intrinsicSizeIfKnown;
- (LPVideo)initWithCoder:(id)a3;
- (LPVideo)initWithData:(id)a3 MIMEType:(id)a4 hasAudio:(BOOL)a5;
- (LPVideo)initWithData:(id)a3 MIMEType:(id)a4 properties:(id)a5;
- (LPVideo)initWithItemProvider:(id)a3 properties:(id)a4;
- (LPVideo)initWithStreamingURL:(id)a3 hasAudio:(BOOL)a4;
- (LPVideo)initWithStreamingURL:(id)a3 properties:(id)a4;
- (LPVideo)initWithYouTubeURL:(id)a3;
- (LPVideo)initWithYouTubeURL:(id)a3 properties:(id)a4;
- (NSItemProvider)_itemProvider;
- (id)_initWithVideo:(id)a3;
- (id)initByReferencingFileURL:(id)a3 MIMEType:(id)a4 hasAudio:(BOOL)a5;
- (id)initByReferencingFileURL:(id)a3 MIMEType:(id)a4 properties:(id)a5;
- (void)_installMediaServicesResetNotificationHandler;
- (void)_intrinsicSizeWithCompletionHandler:(id)a3;
- (void)_mediaServicesWereReset;
- (void)_uninstallMediaServicesResetNotificationHandler;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadAsynchronouslyWithCompletionHandler:(id)a3;
- (void)setFileURL:(id)a3;
@end

@implementation LPVideo

- (id)_initWithVideo:(id)a3
{
  v4 = a3;
  v5 = [v4 data];
  v6 = [v4 fileURL];
  v7 = [v4 MIMEType];
  v8 = [v4 properties];
  v12.receiver = self;
  v12.super_class = LPVideo;
  v9 = [(LPVisualMedia *)&v12 _initWithData:v5 fileURL:v6 MIMEType:v7 properties:v8];

  if (v9)
  {
    objc_storeStrong(v9 + 14, v4[14]);
    objc_storeStrong(v9 + 15, v4[15]);
    v10 = v9;
  }

  return v9;
}

- (LPVideo)initWithData:(id)a3 MIMEType:(id)a4 hasAudio:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(LPVideoProperties);
  [(LPVideoProperties *)v10 setHasAudio:v5];
  v11 = [(LPVideo *)self initWithData:v8 MIMEType:v9 properties:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  return v12;
}

- (id)initByReferencingFileURL:(id)a3 MIMEType:(id)a4 hasAudio:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(LPVideoProperties);
  [(LPVideoProperties *)v10 setHasAudio:v5];
  v11 = [(LPVisualMedia *)self _initByReferencingFileURL:v8 MIMEType:v9 properties:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  return v12;
}

- (id)initByReferencingFileURL:(id)a3 MIMEType:(id)a4 properties:(id)a5
{
  v9.receiver = self;
  v9.super_class = LPVideo;
  v5 = [(LPVisualMedia *)&v9 _initByReferencingFileURL:a3 MIMEType:a4 properties:a5];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (LPVideo)initWithData:(id)a3 MIMEType:(id)a4 properties:(id)a5
{
  v9.receiver = self;
  v9.super_class = LPVideo;
  v5 = [(LPVisualMedia *)&v9 _initWithData:a3 MIMEType:a4 properties:a5];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (LPVideo)initWithStreamingURL:(id)a3 hasAudio:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(LPVideoProperties);
  [(LPVideoProperties *)v7 setHasAudio:v4];
  v8 = [(LPVideo *)self initWithStreamingURL:v6 properties:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

- (LPVideo)initWithStreamingURL:(id)a3 properties:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = LPVideo;
  v8 = [(LPVisualMedia *)&v12 initWithProperties:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_streamingURL, a3);
    v10 = v9;
  }

  return v9;
}

- (LPVideo)initWithYouTubeURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LPVideoProperties);
  [(LPVideoProperties *)v5 setHasAudio:1];
  v6 = [(LPVideo *)self initWithYouTubeURL:v4 properties:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  return v7;
}

- (LPVideo)initWithYouTubeURL:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LPVideo;
  v9 = [(LPVisualMedia *)&v12 initWithProperties:v8];
  if (v9 && [LPPresentationSpecializations isYouTubeEmbedURL:v7])
  {
    objc_storeStrong(&v9->_youTubeURL, a3);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (LPVideo)initWithItemProvider:(id)a3 properties:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = LPVideo;
  v8 = [(LPVisualMedia *)&v12 initWithProperties:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemProvider, a3);
    v10 = v9;
  }

  return v9;
}

- (void)dealloc
{
  [(LPVideo *)self _uninstallMediaServicesResetNotificationHandler];
  v3.receiver = self;
  v3.super_class = LPVideo;
  [(LPVideo *)&v3 dealloc];
}

- (LPVideo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LPVideoProperties);
  -[LPVideoProperties setHasAudio:](v5, "setHasAudio:", [v4 decodeBoolForKey:@"hasAudio"]);
  v6 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"overlappingControlsColor"];
  [(LPVideoProperties *)v5 _setOverlappingControlsColor:v6];

  v14.receiver = self;
  v14.super_class = LPVideo;
  v7 = [(LPVisualMedia *)&v14 initWithCoder:v4 properties:v5];
  if (v7)
  {
    v8 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"streamingURL"];
    streamingURL = v7->_streamingURL;
    v7->_streamingURL = v8;

    v10 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"youTubeURL"];
    youTubeURL = v7->_youTubeURL;
    v7->_youTubeURL = v10;

    v12 = v7;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ([(LPVideo *)self needsAsynchronousLoad])
  {
    if ([v4 _lp_coderType] != 1)
    {
      v5 = LPLogChannelSerialization();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE886000, v5, OS_LOG_TYPE_DEFAULT, "Trying to encode an LPVideo with an unloaded item provider.", buf, 2u);
      }
    }
  }

  v9.receiver = self;
  v9.super_class = LPVideo;
  [(LPVisualMedia *)&v9 encodeWithCoder:v4];
  [v4 _lp_encodeURLIfNotNilOrLocalFile:self->_streamingURL forKey:@"streamingURL"];
  [v4 _lp_encodeURLIfNotNilOrLocalFile:self->_youTubeURL forKey:@"youTubeURL"];
  v6 = [(LPVisualMedia *)self properties];
  [v4 encodeBool:objc_msgSend(v6 forKey:{"hasAudio"), @"hasAudio"}];

  v7 = [(LPVisualMedia *)self properties];
  v8 = [v7 _overlappingControlsColor];
  [v4 _lp_encodeObjectIfNotNil:v8 forKey:@"overlappingControlsColor"];
}

- (BOOL)_canEncodeWithoutComputation
{
  v3 = [(LPVisualMedia *)self fileURL];

  if (v3)
  {
    return 0;
  }

  if (self->_streamingURL || self->_youTubeURL)
  {
    return 1;
  }

  v6 = [(LPVisualMedia *)self _cachedData];
  v4 = v6 != 0;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPVideo;
  if ([(LPVisualMedia *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if (objectsAreEqual_1(v6[14], self->_streamingURL))
      {
        v5 = objectsAreEqual_1(v6[15], self->_youTubeURL);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setFileURL:(id)a3
{
  v4 = a3;
  if ([v4 isFileURL])
  {
    v7 = self;
    v5 = &v7;
    v6 = v4;
  }

  else
  {
    v6 = 0;
    v8.receiver = self;
    v5 = &v8;
  }

  v5->super_class = LPVideo;
  [(objc_super *)v5 setFileURL:v6, v7];
}

- (BOOL)hasAudio
{
  v2 = [(LPVisualMedia *)self properties];
  v3 = [v2 hasAudio];

  return v3;
}

- (CGSize)_intrinsicSizeIfKnown
{
  width = self->_intrinsicSize.width;
  height = self->_intrinsicSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_intrinsicSizeWithCompletionHandler:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_streamingURL != 0)
  {
    goto LABEL_2;
  }

  v7 = [(LPVisualMedia *)self fileURL];
  if (v7)
  {
  }

  else
  {
    v8 = [(LPVisualMedia *)self data];

    if (!v8)
    {
LABEL_2:
      v5.n128_u64[0] = *MEMORY[0x1E695F060];
      v6.n128_u64[0] = *(MEMORY[0x1E695F060] + 8);
LABEL_3:
      v4[2](v4, v5, v6);
      goto LABEL_4;
    }
  }

  v5.n128_u64[0] = *&self->_intrinsicSize.width;
  v6.n128_u64[0] = *&self->_intrinsicSize.height;
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  if (v5.n128_f64[0] != *MEMORY[0x1E695F060] || v6.n128_f64[0] != v10)
  {
    goto LABEL_3;
  }

  v12 = [(LPVideo *)self _asset];
  if (v12 && !self->_startedFetchingIntrinsicSize)
  {
    self->_startedFetchingIntrinsicSize = 1;
    v19 = @"tracks";
    v20[0] = &unk_1F2483980;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__LPVideo__intrinsicSizeWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E7A36A70;
    v15 = v12;
    v17 = self;
    v18 = v4;
    v16 = &unk_1F2483980;
    [v15 loadValuesAsynchronouslyForKeys:&unk_1F2483998 keysForCollectionKeys:v13 completionHandler:v14];
  }

  else
  {
    (v4[2])(v4, v9, v10);
  }

LABEL_4:
}

void __47__LPVideo__intrinsicSizeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) statusOfValueForKey:@"tracks" error:0] == 2)
  {
    [*(a1 + 32) tracksWithMediaType:*MEMORY[0x1E6987608]];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v2 = v30 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v3)
    {
      v4 = *v30;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v30 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v7 = *(a1 + 40);
          v8 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
          if (v8)
          {
            v9 = *v26;
            while (2)
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v26 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                if ([v6 statusOfValueForKey:*(*(&v25 + 1) + 8 * j) error:0] != 2)
                {
                  v23[0] = MEMORY[0x1E69E9820];
                  v23[1] = 3221225472;
                  v23[2] = __47__LPVideo__intrinsicSizeWithCompletionHandler___block_invoke_3;
                  v23[3] = &unk_1E7A35CA0;
                  v24 = *(a1 + 56);
                  dispatch_async(MEMORY[0x1E69E96A0], v23);

                  goto LABEL_22;
                }
              }

              v8 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
              if (v8)
              {
                continue;
              }

              break;
            }
          }

          if ([v6 isPlayable] && objc_msgSend(v6, "isEnabled"))
          {
            v11 = *(a1 + 48);
            [v6 naturalSize];
            v17 = v13;
            v18 = v12;
            if (v6)
            {
              [v6 preferredTransform];
              v14 = v21;
              v15 = v22;
            }

            else
            {
              v14 = 0uLL;
              v15 = 0uLL;
            }

            *(v11 + 72) = vmlaq_n_f64(vmulq_n_f64(v15, v17), v14, v18);
            *(*(a1 + 48) + 72) = vabsq_f64(*(*(a1 + 48) + 72));
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __47__LPVideo__intrinsicSizeWithCompletionHandler___block_invoke_4;
            v19[3] = &unk_1E7A35428;
            v16 = *(a1 + 56);
            v19[4] = *(a1 + 48);
            v20 = v16;
            dispatch_async(MEMORY[0x1E69E96A0], v19);
            v7 = v20;
LABEL_22:

            goto LABEL_23;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__LPVideo__intrinsicSizeWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7A35CA0;
    v34 = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v2 = v34;
  }
}

- (void)loadAsynchronouslyWithCompletionHandler:(id)a3
{
  v4 = a3;
  itemProviderLoadGroup = self->_itemProviderLoadGroup;
  if (!itemProviderLoadGroup)
  {
    v6 = dispatch_group_create();
    v7 = self->_itemProviderLoadGroup;
    self->_itemProviderLoadGroup = v6;

    dispatch_group_enter(self->_itemProviderLoadGroup);
    itemProvider = self->_itemProvider;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__LPVideo_loadAsynchronouslyWithCompletionHandler___block_invoke_2;
    v12[3] = &unk_1E7A35678;
    v12[4] = self;
    [(NSItemProvider *)itemProvider _lp_loadFirstDataRepresentationMatchingMIMETypePredicate:&__block_literal_global_15 completionHandler:v12];
    itemProviderLoadGroup = self->_itemProviderLoadGroup;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__LPVideo_loadAsynchronouslyWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7A356A0;
  block[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_group_notify(itemProviderLoadGroup, MEMORY[0x1E69E96A0], block);
}

void __51__LPVideo_loadAsynchronouslyWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [[LPVideo alloc] initWithData:v9 MIMEType:v5 hasAudio:1];
    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = v6;
  }

  dispatch_group_leave(*(*(a1 + 32) + 64));
}

uint64_t __51__LPVideo_loadAsynchronouslyWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (NSItemProvider)_itemProvider
{
  itemProvider = self->_itemProvider;
  if (itemProvider)
  {
    v3 = itemProvider;
  }

  else
  {
    v5 = [(LPVisualMedia *)self data];
    v6 = MEMORY[0x1E696ACA0];
    v7 = [(LPVisualMedia *)self MIMEType];
    v3 = [v6 _lp_itemProviderWithData:v5 MIMEType:v7];
  }

  return v3;
}

- (AVAsset)_asset
{
  v32[2] = *MEMORY[0x1E69E9840];
  asset = self->_asset;
  if (asset)
  {
    v3 = asset;
  }

  else
  {
    streamingURL = self->_streamingURL;
    if (streamingURL)
    {
      v6 = streamingURL;
      v7 = +[LPTestingOverrides customLoader];

      if (v7)
      {
        v8 = +[LPTestingOverrides customLoader];
        v9 = [v8 overrideURLForMediaURL:v6];

        v6 = v9;
      }

      v10 = [MEMORY[0x1E6988168] assetWithURL:v6];
      v11 = self->_asset;
      self->_asset = v10;

      v12 = +[LPTestingOverrides customLoader];

      if (v12)
      {
        v13 = +[LPTestingOverrides customLoader];
        v14 = [(AVURLAsset *)self->_asset resourceLoader];
        [v13 installCustomMediaLoader:v14];
      }

      [(LPVideo *)self _installMediaServicesResetNotificationHandler];
      v3 = self->_asset;
    }

    else
    {
      v15 = [(LPVisualMedia *)self data];

      if (v15)
      {
        v16 = MEMORY[0x1E6988168];
        v17 = MEMORY[0x1E695DFF8];
        v18 = MEMORY[0x1E696AEC0];
        v19 = [MEMORY[0x1E696AFB0] UUID];
        v20 = [v19 UUIDString];
        v21 = [v18 stringWithFormat:@"link-presentation-video://video/%@", v20];
        v22 = [v17 URLWithString:v21];
        v23 = *MEMORY[0x1E6987BF8];
        v31[0] = *MEMORY[0x1E6987BD8];
        v31[1] = v23;
        v32[0] = &unk_1F2483548;
        v32[1] = MEMORY[0x1E695E118];
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
        v25 = [v16 URLAssetWithURL:v22 options:v24];

        if (!self->_mediaLoadingQueue)
        {
          v26 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
          v27 = dispatch_queue_create("com.apple.LinkPresentation.MediaFetching", v26);
          mediaLoadingQueue = self->_mediaLoadingQueue;
          self->_mediaLoadingQueue = v27;
        }

        v29 = [v25 resourceLoader];
        [v29 setDelegate:self queue:self->_mediaLoadingQueue];

        objc_storeStrong(&self->_asset, v25);
        [(LPVideo *)self _installMediaServicesResetNotificationHandler];
        v3 = self->_asset;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (void)_installMediaServicesResetNotificationHandler
{
  [(LPVideo *)self _uninstallMediaServicesResetNotificationHandler];
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = +[LPMediaPlaybackManager shared];
  v5 = [v4 audioSession];
  v6 = [MEMORY[0x1E696ADC8] mainQueue];
  v7 = *MEMORY[0x1E6958128];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__LPVideo__installMediaServicesResetNotificationHandler__block_invoke;
  v10[3] = &unk_1E7A36A98;
  objc_copyWeak(&v11, &location);
  v8 = [v3 addObserverForName:v7 object:v5 queue:v6 usingBlock:v10];
  mediaServicesResetNotificationHandler = self->_mediaServicesResetNotificationHandler;
  self->_mediaServicesResetNotificationHandler = v8;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __56__LPVideo__installMediaServicesResetNotificationHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mediaServicesWereReset];
}

- (void)_mediaServicesWereReset
{
  asset = self->_asset;
  self->_asset = 0;

  [(LPVideo *)self _uninstallMediaServicesResetNotificationHandler];
}

- (void)_uninstallMediaServicesResetNotificationHandler
{
  if (self->_mediaServicesResetNotificationHandler)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_mediaServicesResetNotificationHandler];

    mediaServicesResetNotificationHandler = self->_mediaServicesResetNotificationHandler;
  }

  else
  {
    mediaServicesResetNotificationHandler = 0;
  }

  self->_mediaServicesResetNotificationHandler = 0;
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 request];
  v9 = [v8 URL];
  v10 = [(AVURLAsset *)self->_asset URL];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [v7 contentInformationRequest];

    if (v12)
    {
      v13 = [(LPVisualMedia *)self MIMEType];
      v14 = [LPMIMETypeRegistry UTIForMIMEType:v13];

      v15 = [v7 contentInformationRequest];
      [v15 setContentType:v14];

      v16 = [(LPVisualMedia *)self data];
      v17 = [v16 length];
      v18 = [v7 contentInformationRequest];
      [v18 setContentLength:v17];

      v19 = [v7 contentInformationRequest];
      [v19 setByteRangeAccessSupported:1];
    }

    v20 = [v7 dataRequest];

    if (v20)
    {
      v21 = [v7 dataRequest];
      v22 = [v21 requestedOffset];
      v23 = [(LPVisualMedia *)self data];
      v24 = [v23 length];
      v25 = v24 - [v21 requestedOffset];

      if (!v25)
      {
        goto LABEL_15;
      }

      if (([v21 requestsAllDataToEndOfResource] & 1) == 0)
      {
        v26 = [v21 requestedLength];
        if (v26 < v25)
        {
          v25 = v26;
        }
      }

      v27 = [(LPVisualMedia *)self data];
      v28 = [v27 subdataWithRange:{v22, v25}];

      if (!v28)
      {
LABEL_15:

        v29 = 0;
        goto LABEL_14;
      }

      [v21 respondWithData:v28];
    }

    [v7 finishLoading];
  }

  else
  {
    [v7 finishLoadingWithError:0];
  }

  v29 = 1;
LABEL_14:

  return v29;
}

@end