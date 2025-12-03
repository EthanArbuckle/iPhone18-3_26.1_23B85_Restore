@interface MKLinkPreviewSnapshotRequest
- (BOOL)isCancelled;
- (BOOL)isLoading;
- (MKLinkPreviewSnapshotRequest)initWithMetadata:(id)metadata;
- (void)_annotatedSnapshotImageWithMetadata:(id)metadata isLightMode:(BOOL)mode completionHandler:(id)handler;
- (void)_failWithError:(id)error;
- (void)_handleDirectionsAction;
- (void)_handleGuidesAction;
- (void)_handleLookAroundAction;
- (void)_handleMapSnapshotAction;
- (void)_handleReportAProblemAction;
- (void)cancel;
- (void)dealloc;
- (void)getSnapshotWithCompletionHandler:(id)handler;
@end

@implementation MKLinkPreviewSnapshotRequest

- (void)_handleReportAProblemAction
{
  v2 = MEMORY[0x1A58E9F30](self->_completionHandler, a2);
  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  v4 = [v3 initWithDomain:MKErrorDomain code:1 userInfo:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__MKLinkPreviewSnapshotRequest__handleReportAProblemAction__block_invoke;
  v7[3] = &unk_1E76CDA20;
  v8 = v4;
  v9 = v2;
  v5 = v4;
  v6 = v2;
  _performBlockOnMainThreadIfNeeded(v7);
}

- (void)_handleGuidesAction
{
  v3 = self->_metadata;
  v4 = MEMORY[0x1A58E9F30](self->_completionHandler);
  curatedCollection = [(MKLinkPreviewMetadata *)v3 curatedCollection];

  if (curatedCollection)
  {
    curatedCollection2 = [(MKLinkPreviewMetadata *)v3 curatedCollection];
    v7 = +[MKSystemController sharedInstance];
    [v7 screenScale];
    v9 = v8;

    photos = [curatedCollection2 photos];
    firstObject = [photos firstObject];
    +[MKLinkPreviewSnapshot size];
    v13 = v12;
    v15 = v14;
    v16 = [MEMORY[0x1E69A21D8] defaultPhotoOptionsWithAllowSmaller:1];
    v17 = [firstObject bestPhotoForFrameSize:v16 displayScale:v13 options:{v15, v9}];

    if (v17)
    {
      v18 = [v17 url];
      absoluteString = [v18 absoluteString];
      v20 = [absoluteString length];

      if (v20)
      {
        v21 = +[MKAppImageManager sharedImageManager];
        v22 = [v17 url];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __51__MKLinkPreviewSnapshotRequest__handleGuidesAction__block_invoke;
        v24[3] = &unk_1E76C94A8;
        v24[4] = self;
        v25 = v4;
        [v21 loadAppImageAtURL:v22 completionHandler:v24];
      }
    }
  }

  else
  {
    collectionStorage = [(MKLinkPreviewMetadata *)v3 collectionStorage];

    if (collectionStorage)
    {
      [(MKLinkPreviewSnapshotRequest *)self _handleMapSnapshotAction];
    }
  }
}

void __51__MKLinkPreviewSnapshotRequest__handleGuidesAction__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  if (!v7 || a5)
  {
    [*(a1 + 32) _failWithError:a5];
  }

  else
  {
    +[MKLinkPreviewSnapshot size];
    v9 = v8;
    v11 = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__MKLinkPreviewSnapshotRequest__handleGuidesAction__block_invoke_2;
    v13[3] = &unk_1E76C9480;
    v14 = v7;
    v12 = *(a1 + 40);
    v15 = 0;
    v16 = v12;
    [MKLinkPreviewImageHelper resizeImageIfNeeded:v14 toFrameSize:v13 displayScale:v9 completion:v11, 1.0];
  }
}

void __51__MKLinkPreviewSnapshotRequest__handleGuidesAction__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2)
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MKLinkPreviewSnapshotRequest__handleGuidesAction__block_invoke_3;
  block[3] = &unk_1E76CAA70;
  v9 = v5;
  v11 = *(a1 + 48);
  v10 = *(a1 + 40);
  v6 = v5;
  v7 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__MKLinkPreviewSnapshotRequest__handleGuidesAction__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = objc_alloc_init(MKLinkPreviewSnapshot);
    [(MKLinkPreviewSnapshot *)v3 setLightImage:*(a1 + 32)];
    [(MKLinkPreviewSnapshot *)v3 setDarkImage:*(a1 + 32)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }
}

- (void)_handleLookAroundAction
{
  completionHandler = self->_completionHandler;
  v3 = self->_metadata;
  v4 = MEMORY[0x1A58E9F30](completionHandler);
  v5 = objc_alloc_init(MKLookAroundSnapshotOptions);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = [bundleIdentifier isEqualToString:@"com.apple.Maps"];

  _options = [(MKLookAroundSnapshotOptions *)v5 _options];
  [_options _setUseSnapshotService:v8 ^ 1u];

  +[MKLinkPreviewSnapshot size];
  [(MKLookAroundSnapshotOptions *)v5 setSize:?];
  scene = [(MKLinkPreviewMetadata *)v3 scene];
  v11 = [[MKLookAroundSnapshotter alloc] initWithScene:scene options:v5];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__MKLinkPreviewSnapshotRequest__handleLookAroundAction__block_invoke;
  v13[3] = &unk_1E76C9458;
  v14 = v4;
  v12 = v4;
  [(MKLookAroundSnapshotter *)v11 getSnapshotWithCompletionHandler:v13];
}

void __55__MKLinkPreviewSnapshotRequest__handleLookAroundAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "Error: MKAnnotatedMapSnapshotter startWithQueue failed: %{public}@", buf, 0xCu);
    }
  }

  v8 = [v5 image];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MKLinkPreviewSnapshotRequest__handleLookAroundAction__block_invoke_14;
  block[3] = &unk_1E76CAA70;
  v13 = v8;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__MKLinkPreviewSnapshotRequest__handleLookAroundAction__block_invoke_14(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = objc_alloc_init(MKLinkPreviewSnapshot);
    [(MKLinkPreviewSnapshot *)v3 setLightImage:*(a1 + 32)];
    [(MKLinkPreviewSnapshot *)v3 setDarkImage:*(a1 + 32)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }
}

- (void)_handleMapSnapshotAction
{
  v3 = self->_metadata;
  v4 = MEMORY[0x1A58E9F30](self->_completionHandler);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__21563;
  v30[4] = __Block_byref_object_dispose__21564;
  v31 = objc_alloc_init(MKLinkPreviewSnapshot);
  mapItems = [(MKLinkPreviewMetadata *)v3 mapItems];
  v6 = [mapItems count];

  if (v6)
  {
    v7 = dispatch_group_create();
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__21563;
    v28[4] = __Block_byref_object_dispose__21564;
    v29 = 0;
    dispatch_group_enter(v7);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __56__MKLinkPreviewSnapshotRequest__handleMapSnapshotAction__block_invoke;
    v24[3] = &unk_1E76C93E0;
    v8 = v7;
    v25 = v8;
    v26 = v28;
    v27 = v30;
    [(MKLinkPreviewSnapshotRequest *)self _annotatedSnapshotImageWithMetadata:v3 isLightMode:1 completionHandler:v24];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__21563;
    v22[4] = __Block_byref_object_dispose__21564;
    v23 = 0;
    dispatch_group_enter(v8);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__MKLinkPreviewSnapshotRequest__handleMapSnapshotAction__block_invoke_2;
    v18[3] = &unk_1E76C93E0;
    v9 = v8;
    v19 = v9;
    v20 = v22;
    v21 = v30;
    [(MKLinkPreviewSnapshotRequest *)self _annotatedSnapshotImageWithMetadata:v3 isLightMode:0 completionHandler:v18];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__MKLinkPreviewSnapshotRequest__handleMapSnapshotAction__block_invoke_3;
    block[3] = &unk_1E76C9430;
    v15 = v28;
    v16 = v22;
    v14 = v4;
    v17 = v30;
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(v28, 8);
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__MKLinkPreviewSnapshotRequest__handleMapSnapshotAction__block_invoke_6;
    v10[3] = &unk_1E76C9408;
    v11 = v4;
    v12 = v30;
    _performBlockOnMainThreadIfNeeded(v10);
    v9 = v11;
  }

  _Block_object_dispose(v30, 8);
}

void __56__MKLinkPreviewSnapshotRequest__handleMapSnapshotAction__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v10 = a2;
  dispatch_group_leave(v6);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  [*(*(a1[6] + 8) + 40) setLightImage:v10];
}

void __56__MKLinkPreviewSnapshotRequest__handleMapSnapshotAction__block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v10 = a2;
  dispatch_group_leave(v6);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  [*(*(a1[6] + 8) + 40) setDarkImage:v10];
}

void __56__MKLinkPreviewSnapshotRequest__handleMapSnapshotAction__block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) || *(*(*(a1 + 48) + 8) + 40))
  {
    v2 = objc_alloc(MEMORY[0x1E696ABC0]);
    v3 = [v2 initWithDomain:MKErrorDomain code:1 userInfo:MEMORY[0x1E695E0F8]];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__MKLinkPreviewSnapshotRequest__handleMapSnapshotAction__block_invoke_4;
    v11[3] = &unk_1E76CDA20;
    v4 = *(a1 + 32);
    v12 = v3;
    v13 = v4;
    v5 = v3;
    _performBlockOnMainThreadIfNeeded(v11);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__MKLinkPreviewSnapshotRequest__handleMapSnapshotAction__block_invoke_5;
    v8[3] = &unk_1E76C9408;
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    v9 = v6;
    v10 = v7;
    _performBlockOnMainThreadIfNeeded(v8);
    v5 = v9;
  }
}

- (void)_handleDirectionsAction
{
  v2 = MEMORY[0x1A58E9F30](self->_completionHandler, a2);
  v3 = objc_alloc_init(MKLinkPreviewSnapshot);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MKLinkPreviewSnapshotRequest__handleDirectionsAction__block_invoke;
  v6[3] = &unk_1E76CDA20;
  v7 = v3;
  v8 = v2;
  v4 = v3;
  v5 = v2;
  _performBlockOnMainThreadIfNeeded(v6);
}

- (void)_failWithError:(id)error
{
  errorCopy = error;
  [(MKLinkPreviewSnapshotRequest *)self cancel];
  v5 = MEMORY[0x1A58E9F30](self->_completionHandler);
  if (errorCopy)
  {
    v6 = errorCopy;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = [v7 initWithDomain:MKErrorDomain code:1 userInfo:0];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__MKLinkPreviewSnapshotRequest__failWithError___block_invoke;
  v10[3] = &unk_1E76CDA20;
  v11 = v6;
  v12 = v5;
  v8 = v6;
  v9 = v5;
  _performBlockOnMainThreadIfNeeded(v10);
}

- (void)_annotatedSnapshotImageWithMetadata:(id)metadata isLightMode:(BOOL)mode completionHandler:(id)handler
{
  modeCopy = mode;
  metadataCopy = metadata;
  handlerCopy = handler;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v11 = [bundleIdentifier isEqualToString:@"com.apple.Maps"];

  [metadataCopy coordinateRegion];
  if (fabs(v15) > 180.0 || fabs(v12) > 90.0 || v13 < 0.0 || v13 > 180.0 || v14 < 0.0 || v14 > 360.0)
  {
    v29 = [MKAnnotatedMapSnapshotter alloc];
    mapItems = [metadataCopy mapItems];
    mapCamera = [metadataCopy mapCamera];
    +[MKLinkPreviewSnapshot size];
    v28 = -[MKAnnotatedMapSnapshotter initWithMapItems:camera:mapSize:mapType:useSnapshotService:](v29, "initWithMapItems:camera:mapSize:mapType:useSnapshotService:", mapItems, mapCamera, [metadataCopy mapType], v11 ^ 1u, v31, v32);
  }

  else
  {
    v16 = [MKAnnotatedMapSnapshotter alloc];
    mapItems = [metadataCopy mapItems];
    [metadataCopy coordinateRegion];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    +[MKLinkPreviewSnapshot size];
    v28 = -[MKAnnotatedMapSnapshotter initWithMapItems:region:mapSize:mapType:useSnapshotService:](v16, "initWithMapItems:region:mapSize:mapType:useSnapshotService:", mapItems, [metadataCopy mapType], v11 ^ 1u, v19, v21, v23, v25, v26, v27);
  }

  if (modeCopy)
  {
    v33 = 1;
  }

  else
  {
    v33 = 2;
  }

  v34 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v33];
  [(MKAnnotatedMapSnapshotter *)v28 setTraitCollection:v34];
  v35 = dispatch_get_global_queue(25, 0);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __98__MKLinkPreviewSnapshotRequest__annotatedSnapshotImageWithMetadata_isLightMode_completionHandler___block_invoke;
  v37[3] = &unk_1E76CD9A8;
  v38 = handlerCopy;
  v36 = handlerCopy;
  [(MKAnnotatedMapSnapshotter *)v28 startWithQueue:v35 completionHandler:v37];
}

void __98__MKLinkPreviewSnapshotRequest__annotatedSnapshotImageWithMetadata_isLightMode_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "Error: MKAnnotatedMapSnapshotter startWithQueue failed: %{public}@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__MKLinkPreviewSnapshotRequest__annotatedSnapshotImageWithMetadata_isLightMode_completionHandler___block_invoke_9;
  block[3] = &unk_1E76CAA70;
  v12 = v5;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __98__MKLinkPreviewSnapshotRequest__annotatedSnapshotImageWithMetadata_isLightMode_completionHandler___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) image];

  v3 = *(a1 + 48);
  if (v2)
  {
    v7 = [*(a1 + 32) image];
    (*(v3 + 16))(v3, v7, 0);
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(v3 + 16);
    v6 = *(a1 + 48);

    v5(v6, 0, v4);
  }
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_loading && !self->_cancelled)
  {
    self->_cancelled = 1;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)getSnapshotWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_lock_with_options();
  if (self->_loading)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    v5 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_ERROR, "Cannot call [MKLinkPreviewMetadataRequest getMetadataWithCompletionHandler:] on a metadata request which is already loading", buf, 2u);
    }

    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = [v6 initWithDomain:MKErrorDomain code:1 userInfo:0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__MKLinkPreviewSnapshotRequest_getSnapshotWithCompletionHandler___block_invoke;
    v20[3] = &unk_1E76CDA20;
    v21 = v7;
    v22 = handlerCopy;
    v8 = v7;
    _performBlockOnMainThreadIfNeeded(v20);

    v9 = v22;
  }

  else
  {
    self->_loading = 1;
    os_unfair_lock_unlock(&self->_stateLock);
    v10 = MEMORY[0x1A58E9F30](handlerCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v10;

    actionType = [(MKLinkPreviewMetadata *)self->_metadata actionType];
    if (actionType > 4)
    {
      switch(actionType)
      {
        case 5:
          [(MKLinkPreviewSnapshotRequest *)self _handleLookAroundAction];
          goto LABEL_20;
        case 6:
          [(MKLinkPreviewSnapshotRequest *)self _handleGuidesAction];
          goto LABEL_20;
        case 7:
          [(MKLinkPreviewSnapshotRequest *)self _handleReportAProblemAction];
          goto LABEL_20;
      }
    }

    else
    {
      if ((actionType - 2) < 3)
      {
        [(MKLinkPreviewSnapshotRequest *)self _handleMapSnapshotAction];
        goto LABEL_20;
      }

      if (actionType == 1)
      {
        [(MKLinkPreviewSnapshotRequest *)self _handleDirectionsAction];
        goto LABEL_20;
      }
    }

    v13 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      actionType2 = [(MKLinkPreviewMetadata *)self->_metadata actionType];
      *buf = 134217984;
      v24 = actionType2;
      _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_ERROR, "Unknown URL ActionType encountered : %lu", buf, 0xCu);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = [v15 initWithDomain:MKErrorDomain code:1 userInfo:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__MKLinkPreviewSnapshotRequest_getSnapshotWithCompletionHandler___block_invoke_3;
    v17[3] = &unk_1E76CDA20;
    v18 = v16;
    v19 = handlerCopy;
    v8 = v16;
    _performBlockOnMainThreadIfNeeded(v17);

    v9 = v19;
  }

LABEL_20:
}

- (BOOL)isLoading
{
  os_unfair_lock_lock_with_options();
  loading = self->_loading;
  os_unfair_lock_unlock(&self->_stateLock);
  return loading;
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock_with_options();
  cancelled = self->_cancelled;
  os_unfair_lock_unlock(&self->_stateLock);
  return cancelled;
}

- (void)dealloc
{
  [(MKLinkPreviewSnapshotRequest *)self cancel];
  v3.receiver = self;
  v3.super_class = MKLinkPreviewSnapshotRequest;
  [(MKLinkPreviewSnapshotRequest *)&v3 dealloc];
}

- (MKLinkPreviewSnapshotRequest)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = MKLinkPreviewSnapshotRequest;
  v6 = [(MKLinkPreviewSnapshotRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadata, metadata);
  }

  return v7;
}

@end