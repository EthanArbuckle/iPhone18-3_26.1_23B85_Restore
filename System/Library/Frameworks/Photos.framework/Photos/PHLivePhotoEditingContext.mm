@interface PHLivePhotoEditingContext
+ (id)errorWithUnderlyingError:(id)a3;
- (CMTime)duration;
- (CMTime)photoTime;
- (PHLivePhotoEditingContext)initWithLivePhotoEditingInput:(PHContentEditingInput *)livePhotoInput;
- (void)prepareLivePhotoForPlaybackWithTargetSize:(CGSize)targetSize options:(NSDictionary *)options completionHandler:(void *)handler;
- (void)saveLivePhotoToOutput:(PHContentEditingOutput *)output options:(NSDictionary *)options completionHandler:(void *)handler;
@end

@implementation PHLivePhotoEditingContext

- (void)saveLivePhotoToOutput:(PHContentEditingOutput *)output options:(NSDictionary *)options completionHandler:(void *)handler
{
  v8 = output;
  v9 = options;
  v10 = handler;
  if (self->_editSession)
  {
    if ([(PHContentEditingOutput *)v8 isLoopingLivePhoto])
    {
      v11 = [(PHContentEditingOutput *)v8 renderURLWithExtensionForMediaType:1];
      [(PHContentEditingOutput *)v8 renderedContentURL];
    }

    else
    {
      v11 = [(PHContentEditingOutput *)v8 renderedContentURL];
      [(PHContentEditingOutput *)v8 renderedVideoComplementContentURL];
    }
    v12 = ;
    v13 = [MEMORY[0x1E69C06F8] destinationWithPhotoURL:v11 videoURL:v12];
    editSession = self->_editSession;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PHLivePhotoEditingContext_saveLivePhotoToOutput_options_completionHandler___block_invoke;
    v15[3] = &unk_1E75AA5B8;
    v16 = v10;
    [(PFLivePhotoEditSession *)editSession exportToDestination:v13 options:v9 completionHandler:v15];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
    (*(v10 + 2))(v10, 0, v11);
  }
}

- (void)prepareLivePhotoForPlaybackWithTargetSize:(CGSize)targetSize options:(NSDictionary *)options completionHandler:(void *)handler
{
  height = targetSize.height;
  width = targetSize.width;
  v9 = handler;
  editSession = self->_editSession;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __97__PHLivePhotoEditingContext_prepareLivePhotoForPlaybackWithTargetSize_options_completionHandler___block_invoke;
  v12[3] = &unk_1E75AA590;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [(PFLivePhotoEditSession *)editSession prepareForPlaybackWithTargetSize:options options:v12 completionHandler:width, height];
}

void __97__PHLivePhotoEditingContext_prepareLivePhotoForPlaybackWithTargetSize_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [objc_opt_class() errorWithUnderlyingError:v9];

  if (v7)
  {
    v11 = [v7 videoAsset];
    v22 = 0uLL;
    v23 = 0;
    [v7 photoTime];
    v12 = [v8 videoComposition];
    if (v8)
    {
      [v8 audioVolume];
      v14 = v13;
    }

    else
    {
      v14 = 1.0;
    }

    [v7 photoExifOrientation];
    v16 = PLImageOrientationFromExifOrientation();
    v17 = [PHLivePhoto alloc];
    v18 = [v7 photo];
    v20 = v22;
    v21 = v23;
    v15 = [(PHLivePhoto *)v17 initWithImage:v18 uiOrientation:v16 videoAsset:v11 photoTime:&v20 asset:0 options:0 videoComposition:v12];
    *&v19 = v14;
    [(PHLivePhoto *)v15 setAudioVolume:v19];
  }

  else
  {
    v15 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (CMTime)photoTime
{
  result = self->_editSession;
  if (result)
  {
    return [(CMTime *)result photoTime];
  }

  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  return result;
}

- (CMTime)duration
{
  result = self->_editSession;
  if (result)
  {
    return [(CMTime *)result duration];
  }

  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  return result;
}

- (PHLivePhotoEditingContext)initWithLivePhotoEditingInput:(PHContentEditingInput *)livePhotoInput
{
  v4 = livePhotoInput;
  v5 = [(PHContentEditingInput *)v4 livePhoto];
  v6 = [v5 imageURL];
  v7 = [v5 videoURL];
  v16 = 0uLL;
  v17 = 0;
  if (v5)
  {
    [v5 photoTime];
  }

  if ([(PHContentEditingInput *)v4 mediaSubtypes]== 8 && [(PHContentEditingInput *)v4 playbackStyle]== 5)
  {
    v16 = *MEMORY[0x1E6960CC0];
    v17 = *(MEMORY[0x1E6960CC0] + 16);
  }

  if (v5)
  {
    if (v6)
    {
      if (v7)
      {
        if (BYTE12(v16))
        {
          v15.receiver = self;
          v15.super_class = PHLivePhotoEditingContext;
          self = [(PHLivePhotoEditingContext *)&v15 init];
          if (self)
          {
            v8 = objc_alloc(MEMORY[0x1E69C06F0]);
            v9 = [(PHContentEditingInput *)v4 fullSizeImageOrientation];
            v13 = v16;
            v14 = v17;
            v10 = [v8 initWithPhotoURL:v6 videoURL:v7 photoTime:&v13 photoOrientation:v9];
            editSession = self->_editSession;
            self->_editSession = v10;
          }
        }
      }
    }
  }

  return self;
}

+ (id)errorWithUnderlyingError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E69C09C0]])
    {
      v6 = [v4 code];

      if (v6 == 3)
      {
        v7 = 3072;
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {

      v7 = -1;
    }

    v8 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:v7 userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end