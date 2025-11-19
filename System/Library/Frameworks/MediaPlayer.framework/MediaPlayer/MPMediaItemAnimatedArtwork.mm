@interface MPMediaItemAnimatedArtwork
+ (id)imageEncodeQueue;
+ (id)validatePreviewImage:(id)a3 forRequestedSize:(CGSize)a4;
+ (void)validateAssetFileURL:(id)a3 forRequestedSize:(CGSize)a4 completion:(id)a5;
- (MPMediaItemAnimatedArtwork)initWithArtworkID:(id)a3 previewImageRequestHandler:(id)a4 videoAssetFileURLRequestHandler:(id)a5;
- (id)mrAnimatedArtwork;
@end

@implementation MPMediaItemAnimatedArtwork

- (id)mrAnimatedArtwork
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__MPMediaItemAnimatedArtwork_mrAnimatedArtwork__block_invoke;
  aBlock[3] = &unk_1E7678EA0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MPMediaItemAnimatedArtwork_mrAnimatedArtwork__block_invoke_4;
  v7[3] = &unk_1E7678F18;
  v7[4] = self;
  v4 = _Block_copy(v7);
  v5 = [objc_alloc(MEMORY[0x1E69B0A78]) initWithPreviewFrameDataRequestHandler:v3 artworkAssetFileURLRequestHandler:v4];

  return v5;
}

void __47__MPMediaItemAnimatedArtwork_mrAnimatedArtwork__block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__MPMediaItemAnimatedArtwork_mrAnimatedArtwork__block_invoke_2;
  v12[3] = &unk_1E7678E78;
  v14 = a3;
  v15 = a4;
  v12[4] = v8;
  v13 = v7;
  v10 = *(v9 + 16);
  v11 = v7;
  v10(v9, v12, a3, a4);
}

void __47__MPMediaItemAnimatedArtwork_mrAnimatedArtwork__block_invoke_4(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__MPMediaItemAnimatedArtwork_mrAnimatedArtwork__block_invoke_5;
  v12[3] = &unk_1E7678EF0;
  v14 = a3;
  v15 = a4;
  v12[4] = v8;
  v13 = v7;
  v10 = *(v9 + 16);
  v11 = v7;
  v10(v9, v12, a3, a4);
}

void __47__MPMediaItemAnimatedArtwork_mrAnimatedArtwork__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MPMediaItemAnimatedArtwork_mrAnimatedArtwork__block_invoke_6;
  v5[3] = &unk_1E7678EC8;
  v6 = *(a1 + 40);
  [v4 validateAssetFileURL:v3 forRequestedSize:v5 completion:{*(a1 + 48), *(a1 + 56)}];
}

void __47__MPMediaItemAnimatedArtwork_mrAnimatedArtwork__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() validatePreviewImage:v3 forRequestedSize:{*(a1 + 48), *(a1 + 56)}];

  if (v4)
  {
    v5 = [objc_opt_class() imageEncodeQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__MPMediaItemAnimatedArtwork_mrAnimatedArtwork__block_invoke_3;
    v6[3] = &unk_1E76824C8;
    v7 = v4;
    v8 = *(a1 + 40);
    dispatch_async(v5, v6);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __47__MPMediaItemAnimatedArtwork_mrAnimatedArtwork__block_invoke_3(uint64_t a1)
{
  v2 = UIImageJPEGRepresentation(*(a1 + 32), *MEMORY[0x1E69B1368]);
  (*(*(a1 + 40) + 16))();
}

- (MPMediaItemAnimatedArtwork)initWithArtworkID:(id)a3 previewImageRequestHandler:(id)a4 videoAssetFileURLRequestHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = MPMediaItemAnimatedArtwork;
  v12 = [(MPMediaItemAnimatedArtwork *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_artworkID, a3);
    v14 = _Block_copy(v10);
    previewImageRequestHandler = v13->_previewImageRequestHandler;
    v13->_previewImageRequestHandler = v14;

    v16 = _Block_copy(v11);
    videoAssetFileURLRequestHandler = v13->_videoAssetFileURLRequestHandler;
    v13->_videoAssetFileURLRequestHandler = v16;
  }

  return v13;
}

+ (void)validateAssetFileURL:(id)a3 forRequestedSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__MPMediaItemAnimatedArtwork_validateAssetFileURL_forRequestedSize_completion___block_invoke;
    aBlock[3] = &unk_1E7678DD8;
    v11 = v8;
    v25 = v11;
    v27 = width;
    v28 = height;
    v12 = v10;
    v26 = v12;
    v13 = _Block_copy(aBlock);
    if ([v11 isFileURL])
    {
      v14 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v11 options:0];
      v15 = *MEMORY[0x1E6987608];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__MPMediaItemAnimatedArtwork_validateAssetFileURL_forRequestedSize_completion___block_invoke_958;
      v17[3] = &unk_1E7678E50;
      v20 = v13;
      v22 = width;
      v23 = height;
      v21 = v12;
      v18 = v11;
      v19 = v14;
      v16 = v14;
      [v16 loadTracksWithMediaType:v15 completionHandler:v17];
    }

    else
    {
      (*(v13 + 2))(v13, @"Not a file URL");
    }
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __79__MPMediaItemAnimatedArtwork_validateAssetFileURL_forRequestedSize_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromCGSize(*(a1 + 48));
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Error handling asset file URL (%{public}@) for requested size: %{public}@: %{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __79__MPMediaItemAnimatedArtwork_validateAssetFileURL_forRequestedSize_completion___block_invoke_958(uint64_t a1, void *a2, uint64_t a3)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error loading video tracks: %@", a3];
    (*(v7 + 16))(v7, v8);
  }

  else if ([v5 count] == 1)
  {
    v9 = [v6 objectAtIndexedSubscript:0];
    v30[0] = @"naturalSize";
    v30[1] = @"preferredTransform";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __79__MPMediaItemAnimatedArtwork_validateAssetFileURL_forRequestedSize_completion___block_invoke_2;
    v23[3] = &unk_1E7678E00;
    v24 = v9;
    v26 = *(a1 + 48);
    v28 = *(a1 + 64);
    v27 = *(a1 + 56);
    v25 = *(a1 + 32);
    v11 = v9;
    [v11 loadValuesAsynchronouslyForKeys:v10 completionHandler:v23];
  }

  else
  {
    v12 = *(a1 + 40);
    v29 = @"playable";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__MPMediaItemAnimatedArtwork_validateAssetFileURL_forRequestedSize_completion___block_invoke_3;
    v20[3] = &unk_1E7678E28;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 32);
    *&v18 = v14;
    *(&v18 + 1) = v17;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v21 = v18;
    v22 = v19;
    [v12 loadValuesAsynchronouslyForKeys:v13 completionHandler:v20];
  }
}

void __79__MPMediaItemAnimatedArtwork_validateAssetFileURL_forRequestedSize_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v34 = 0;
  v3 = [v2 statusOfValueForKey:@"naturalSize" error:&v34];
  v4 = v34;
  v5 = v4;
  if (v3 != 2)
  {
    v8 = v4;
LABEL_7:
    v15 = *(a1 + 48);
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not load video dimensions: %@", v5];
    (*(v15 + 16))(v15, v16);

    goto LABEL_13;
  }

  v6 = *(a1 + 32);
  v33 = v5;
  v7 = [v6 statusOfValueForKey:@"preferredTransform" error:&v33];
  v8 = v33;

  if (v7 != 2)
  {
    v5 = v8;
    goto LABEL_7;
  }

  [*(a1 + 32) naturalSize];
  v11 = v9;
  v12 = *(a1 + 32);
  if (v12)
  {
    v29 = v10;
    v30 = v9;
    [v12 preferredTransform];
    v10 = v29;
    v11 = v30;
    v14 = v31;
    v13 = v32;
  }

  else
  {
    v14 = 0uLL;
    v13 = 0uLL;
  }

  v17 = vmlaq_n_f64(vmulq_n_f64(v13, v10), v14, v11);
  height = v17.height;
  if (v17.height == 0.0 || (v19 = *(a1 + 72), v19 == 0.0))
  {
    v20 = *(a1 + 48);
    v21 = MEMORY[0x1E696AEC0];
    v22 = NSStringFromCGSize(v17);
    [v21 stringWithFormat:@"Invalid video dimensions: %@", v22];
  }

  else
  {
    v24 = *(a1 + 64) / v19;
    v25 = v24 * 0.97;
    v26 = v24 * 1.03;
    if (v17.width / v17.height >= v25 && v17.width / v17.height <= v26)
    {
      (*(*(a1 + 56) + 16))();
      goto LABEL_13;
    }

    v20 = *(a1 + 48);
    v28 = MEMORY[0x1E696AEC0];
    v22 = NSStringFromCGSize(v17);
    [v28 stringWithFormat:@"Incorrect video aspect ratio. Video dimensions: %@", v22];
  }
  v23 = ;
  (*(v20 + 16))(v20, v23);

LABEL_13:
}

void __79__MPMediaItemAnimatedArtwork_validateAssetFileURL_forRequestedSize_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = [v2 statusOfValueForKey:@"playable" error:&v8];
  v4 = v8;
  if (v3 == 2)
  {
    if ([*(a1 + 32) isPlayable])
    {
      v5 = *(*(a1 + 56) + 16);
    }

    else
    {
      v5 = *(*(a1 + 48) + 16);
    }

    v5();
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not load playable status: %@", v4];
    (*(v6 + 16))(v6, v7);
  }
}

+ (id)validatePreviewImage:(id)a3 forRequestedSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  [v6 size];
  if (v8 == 0.0 || height == 0.0)
  {
    v13 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v27.width = width;
      v27.height = height;
      v14 = NSStringFromCGSize(v27);
      [v7 size];
      v15 = NSStringFromCGSize(v28);
      v19 = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v16 = "Error handling preview image for requested size: %{public}@. Invalid preview image dimensions: %{public}@";
      goto LABEL_12;
    }

LABEL_13:

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  [v7 size];
  v10 = v9;
  [v7 size];
  if (v10 / v11 < width / height * 0.97 || v10 / v11 > width / height * 1.03)
  {
    v13 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25.width = width;
      v25.height = height;
      v14 = NSStringFromCGSize(v25);
      [v7 size];
      v15 = NSStringFromCGSize(v26);
      v19 = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v16 = "Error handling preview image for requested size: %{public}@. Incorrect aspect ratio. Preview image dimensions: %{public}@";
LABEL_12:
      _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, v16, &v19, 0x16u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v17 = v7;
LABEL_15:

  return v17;
}

+ (id)imageEncodeQueue
{
  if (imageEncodeQueue_onceToken != -1)
  {
    dispatch_once(&imageEncodeQueue_onceToken, &__block_literal_global_951);
  }

  v3 = imageEncodeQueue_imageEncodeQueue;

  return v3;
}

void __46__MPMediaItemAnimatedArtwork_imageEncodeQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.MediaPlayer.MPMediaItemAnimatedArtwork/imageEncodeQueue", 0);
  v1 = imageEncodeQueue_imageEncodeQueue;
  imageEncodeQueue_imageEncodeQueue = v0;
}

@end