@interface LPStreamingMediaMetadataProviderSpecialization
+ (id)specializedMetadataProviderForResourceWithContext:(id)a3;
- (void)cancel;
- (void)done;
- (void)fail;
- (void)start;
@end

@implementation LPStreamingMediaMetadataProviderSpecialization

+ (id)specializedMetadataProviderForResourceWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 MIMEType];
  v5 = [LPMIMETypeRegistry isMediaType:v4];

  if (v5)
  {
    v6 = [(LPMetadataProviderSpecialization *)[LPStreamingMediaMetadataProviderSpecialization alloc] initWithContext:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)start
{
  v3 = objc_alloc_init(LPFetcherConfiguration);
  v4 = [(LPMetadataProviderSpecialization *)self context];
  v5 = [v4 webView];
  [(LPFetcherConfiguration *)v3 setWebViewForProcessSharing:v5];

  v6 = [(LPMetadataProviderSpecialization *)self context];
  -[LPFetcherConfiguration setFetchIsNotUserInitiated:](v3, "setFetchIsNotUserInitiated:", [v6 fetchIsNotUserInitiated]);

  v7 = objc_alloc_init(LPMediaAssetFetcher);
  fetcher = self->_fetcher;
  self->_fetcher = v7;

  v9 = [(LPMetadataProviderSpecialization *)self context];
  v10 = [v9 postRedirectURL];
  [(LPMediaAssetFetcher *)self->_fetcher setURL:v10];

  v11 = self->_fetcher;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__LPStreamingMediaMetadataProviderSpecialization_start__block_invoke;
  v12[3] = &unk_1E7A35590;
  v12[4] = self;
  [(LPMediaAssetFetcher *)v11 fetchWithConfiguration:v3 completionHandler:v12];
}

void __55__LPStreamingMediaMetadataProviderSpecialization_start__block_invoke(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if ((v4[24] & 1) == 0)
  {
    if (!v3)
    {
LABEL_5:
      [v4 fail];
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 audio];
      v6 = v5;
      if (v5)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __55__LPStreamingMediaMetadataProviderSpecialization_start__block_invoke_2;
        block[3] = &unk_1E7A35478;
        block[4] = *(a1 + 32);
        v7 = &v23;
        v6 = v5;
        v23 = v6;
        dispatch_async(MEMORY[0x1E69E96A0], block);
LABEL_11:

LABEL_13:
        goto LABEL_14;
      }
    }

    else
    {
      v8 = [v3 video];
      v6 = v8;
      if (v8)
      {
        v9 = MEMORY[0x1E6987E68];
        v10 = [v8 _asset];
        v11 = [v9 assetImageGeneratorWithAsset:v10];
        v12 = *(a1 + 32);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        [*(*(a1 + 32) + 40) setMaximumSize:{900.0, 900.0}];
        v14 = *(*(a1 + 32) + 40);
        v20 = *MEMORY[0x1E6960CC0];
        v21 = *(MEMORY[0x1E6960CC0] + 16);
        v15 = [MEMORY[0x1E696B098] valueWithCMTime:&v20];
        v24[0] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __55__LPStreamingMediaMetadataProviderSpecialization_start__block_invoke_3;
        v18[3] = &unk_1E7A35568;
        v18[4] = *(a1 + 32);
        v17 = v6;
        v19 = v17;
        [v14 generateCGImagesAsynchronouslyForTimes:v16 completionHandler:v18];

        v7 = &v19;
        v6 = v17;
        goto LABEL_11;
      }
    }

    [*(a1 + 32) fail];
    goto LABEL_13;
  }

LABEL_14:
}

void __55__LPStreamingMediaMetadataProviderSpecialization_start__block_invoke_2(uint64_t a1)
{
  v19 = objc_alloc_init(LPFileMetadata);
  v2 = [*(a1 + 32) context];
  v3 = [v2 postRedirectURL];
  v4 = [v3 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];
  [(LPFileMetadata *)v19 setName:v5];

  v6 = [*(a1 + 32) context];
  v7 = [v6 MIMEType];
  v8 = [LPMIMETypeRegistry UTIForMIMEType:v7];
  [(LPFileMetadata *)v19 setType:v8];

  v9 = [*(a1 + 32) createMetadataWithSpecialization:v19];
  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = v9;

  [*(*(a1 + 32) + 48) setAudio:*(a1 + 40)];
  v12 = objc_alloc_init(LPAudioMetadata);
  [*(*(a1 + 32) + 48) setAudioMetadata:v12];

  v13 = [*(a1 + 32) context];
  v14 = [v13 postRedirectURL];
  v15 = [*(*(a1 + 32) + 48) audioMetadata];
  [v15 setURL:v14];

  v16 = [*(a1 + 32) context];
  v17 = [v16 MIMEType];
  v18 = [*(*(a1 + 32) + 48) audioMetadata];
  [v18 setType:v17];

  [*(a1 + 32) done];
}

void __55__LPStreamingMediaMetadataProviderSpecialization_start__block_invoke_3(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  if ((*(*(a1 + 32) + 24) & 1) == 0)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__LPStreamingMediaMetadataProviderSpecialization_start__block_invoke_4;
    block[3] = &unk_1E7A35540;
    v9 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v11 = v9;
    v12 = a3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __55__LPStreamingMediaMetadataProviderSpecialization_start__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) createMetadataWithSpecialization:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  [*(*(a1 + 32) + 48) setVideo:*(a1 + 40)];
  v5 = objc_alloc_init(LPVideoMetadata);
  [*(*(a1 + 32) + 48) setVideoMetadata:v5];

  v6 = [*(a1 + 32) context];
  v7 = [v6 postRedirectURL];
  v8 = [*(*(a1 + 32) + 48) videoMetadata];
  [v8 setURL:v7];

  v9 = [*(a1 + 32) context];
  v10 = [v9 MIMEType];
  v11 = [*(*(a1 + 32) + 48) videoMetadata];
  [v11 setType:v10];

  if (*(a1 + 48))
  {
    v12 = [[LPImage alloc] _initWithCGImage:*(a1 + 48)];
    [*(*(a1 + 32) + 48) setImage:v12];

    CFRelease(*(a1 + 48));
  }

  v13 = *(a1 + 32);

  return [v13 done];
}

- (void)cancel
{
  self->_cancelled = 1;
  [(LPMediaAssetFetcher *)self->_fetcher cancel];
  videoImageGenerator = self->_videoImageGenerator;

  [(AVAssetImageGenerator *)videoImageGenerator cancelAllCGImageGeneration];
}

- (void)fail
{
  v3 = [(LPMetadataProviderSpecialization *)self delegate];
  [v3 metadataProviderSpecializationDidFail:self];

  [(LPStreamingMediaMetadataProviderSpecialization *)self cancel];
}

- (void)done
{
  v3 = [(LPMetadataProviderSpecialization *)self delegate];
  [v3 metadataProviderSpecialization:self didCompleteWithMetadata:self->_metadata];
}

@end