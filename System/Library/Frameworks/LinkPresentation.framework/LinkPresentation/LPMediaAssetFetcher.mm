@interface LPMediaAssetFetcher
- (LPMediaAssetFetcher)init;
- (id)audioProperties;
- (id)videoProperties;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_completedWithAudio:(id)audio;
- (void)_completedWithVideo:(id)video;
- (void)_resolveVideo;
- (void)cancel;
- (void)fetchWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)stopLoading;
@end

@implementation LPMediaAssetFetcher

- (LPMediaAssetFetcher)init
{
  v6.receiver = self;
  v6.super_class = LPMediaAssetFetcher;
  v2 = [(LPFetcher *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldDownloadIfPossible = 1;
    v4 = v2;
  }

  return v3;
}

- (void)fetchWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  self->_loadingIsNonAppInitiated = [configurationCopy loadingIsNonAppInitiated];
  v8 = _Block_copy(handlerCopy);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v8;

  self->_fetchIsNotUserInitiated = [configurationCopy fetchIsNotUserInitiated];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__LPMediaAssetFetcher_fetchWithConfiguration_completionHandler___block_invoke;
  block[3] = &unk_1E7A35450;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_resolveVideo
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(LPMediaAssetFetcher *)self URL];

  if (v3)
  {
    v4 = [(LPMediaAssetFetcher *)self URL];
    v5 = [LPPresentationSpecializations isYouTubeEmbedURL:v4];

    if (v5)
    {
      self->_hasAudio = 1;
      v6 = [LPVideo alloc];
      v23 = [(LPMediaAssetFetcher *)self URL];
      videoProperties = [(LPMediaAssetFetcher *)self videoProperties];
      v8 = [(LPVideo *)v6 initWithYouTubeURL:v23 properties:videoProperties];
      [(LPMediaAssetFetcher *)self _completedWithVideo:v8];
    }

    else if (self->_fetchIsNotUserInitiated)
    {
      v9 = LPLogChannelFetching();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        _loggingID = [(LPFetcher *)self _loggingID];
        _os_log_impl(&dword_1AE886000, v9, OS_LOG_TYPE_DEFAULT, "LPMediaAssetFetcher<%d>: forcing video to stream instead of downloading", buf, 8u);
      }

      v10 = [LPVideo alloc];
      v11 = [(LPMediaAssetFetcher *)self URL];
      videoProperties2 = [(LPMediaAssetFetcher *)self videoProperties];
      v13 = [(LPVideo *)v10 initWithStreamingURL:v11 properties:videoProperties2];
      [(LPMediaAssetFetcher *)self _completedWithVideo:v13];
    }

    else
    {
      v14 = [(LPMediaAssetFetcher *)self URL];
      v15 = +[LPTestingOverrides customLoader];

      if (v15)
      {
        v16 = +[LPTestingOverrides customLoader];
        v17 = [v16 overrideURLForMediaURL:v14];

        v14 = v17;
      }

      v18 = [MEMORY[0x1E6988168] assetWithURL:v14];
      asset = self->_asset;
      self->_asset = v18;

      v20 = +[LPTestingOverrides customLoader];

      if (v20)
      {
        v21 = +[LPTestingOverrides customLoader];
        resourceLoader = [(AVURLAsset *)self->_asset resourceLoader];
        [v21 installCustomMediaLoader:resourceLoader];
      }

      [AVURLAsset loadValuesAsynchronouslyForKeys:"loadValuesAsynchronouslyForKeys:completionHandler:" completionHandler:?];
    }
  }

  else
  {

    [(LPMediaAssetFetcher *)self _completedWithVideo:0];
  }
}

void __36__LPMediaAssetFetcher__resolveVideo__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__LPMediaAssetFetcher__resolveVideo__block_invoke_2;
  v4[3] = &unk_1E7A35478;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __36__LPMediaAssetFetcher__resolveVideo__block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = *v26;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(a1 + 40) + 48) statusOfValueForKey:*(*(&v25 + 1) + 8 * i) error:0] != 2)
        {
          [*(a1 + 40) _completedWithVideo:0];

          return;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = [*(*(a1 + 40) + 48) isPlayable];
  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = [v7[6] tracksWithMediaCharacteristic:*MEMORY[0x1E69874F8]];
    *(*(a1 + 40) + 56) = [v8 count] != 0;

    v9 = *(a1 + 40);
    v10 = *(v9 + 48);
    if (v10 && ([v10 duration], v9 = *(a1 + 40), (v24 & 0x1D) == 1) && *(v9 + 90) == 1)
    {
      v11 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
      v12 = +[LPTestingOverrides customLoader];

      if (v12)
      {
        v13 = +[LPTestingOverrides customLoader];
        [v13 installCustomURLSessionLoader:v11];
      }

      v14 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v11 delegate:*(a1 + 40) delegateQueue:0];
      v15 = *(a1 + 40);
      v16 = *(v15 + 72);
      *(v15 + 72) = v14;

      v17 = [*(a1 + 40) URL];
      v18 = [v17 _lp_requestWithAttribution:*(*(a1 + 40) + 88)];

      v19 = [*(*(a1 + 40) + 72) dataTaskWithRequest:v18];
      [v19 resume];
    }

    else
    {
      v20 = [LPVideo alloc];
      v21 = [*(a1 + 40) URL];
      v22 = [*(a1 + 40) videoProperties];
      v23 = [(LPVideo *)v20 initWithStreamingURL:v21 properties:v22];
      [v9 _completedWithVideo:v23];
    }
  }

  else
  {
    [v7 _completedWithVideo:0];
  }
}

- (void)stopLoading
{
  [(AVURLAsset *)self->_asset cancelLoading];
  session = self->_session;

  [(NSURLSession *)session invalidateAndCancel];
}

- (void)cancel
{
  [(LPMediaAssetFetcher *)self stopLoading];
  asset = self->_asset;
  self->_asset = 0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)_completedWithVideo:(id)video
{
  videoCopy = video;
  [(LPMediaAssetFetcher *)self stopLoading];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__LPMediaAssetFetcher__completedWithVideo___block_invoke;
  v6[3] = &unk_1E7A35478;
  v6[4] = self;
  v7 = videoCopy;
  v5 = videoCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __43__LPMediaAssetFetcher__completedWithVideo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = _Block_copy(v3);
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [[LPFetcherVideoResponse alloc] initWithVideo:*(a1 + 40) fetcher:*(a1 + 32)];
      v7 = v6;
    }

    else
    {
      v8 = [LPFetcherErrorResponse alloc];
      v7 = makeLPError(2, 0);
      v6 = [(LPFetcherErrorResponse *)v8 initWithError:v7 fetcher:*(a1 + 32)];
    }

    v9 = v6;
    v4[2](v4, v6);
    if (!v5)
    {
    }

    v2 = *(a1 + 32);
  }

  v10 = *(v2 + 48);
  *(v2 + 48) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

- (void)_completedWithAudio:(id)audio
{
  audioCopy = audio;
  [(LPMediaAssetFetcher *)self stopLoading];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__LPMediaAssetFetcher__completedWithAudio___block_invoke;
  v6[3] = &unk_1E7A35478;
  v6[4] = self;
  v7 = audioCopy;
  v5 = audioCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __43__LPMediaAssetFetcher__completedWithAudio___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = [[LPFetcherAudioResponse alloc] initWithAudio:*(a1 + 40) fetcher:*(a1 + 32)];
      v5 = v4;
    }

    else
    {
      v6 = [LPFetcherErrorResponse alloc];
      v5 = makeLPError(2, 0);
      v4 = [(LPFetcherErrorResponse *)v6 initWithError:v5 fetcher:*(a1 + 32)];
    }

    v7 = v4;
    (*(v2 + 16))(v2, v4);
    if (!v3)
    {
    }
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  *(v8 + 48) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

- (id)videoProperties
{
  v3 = [objc_opt_class() videoPropertiesForFetcher:self];
  [v3 setHasAudio:self->_hasAudio];

  return v3;
}

- (id)audioProperties
{
  v3 = objc_opt_class();

  return [v3 audioPropertiesForFetcher:self];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  if ([taskCopy countOfBytesExpectedToReceive] <= 10485760 && objc_msgSend(taskCopy, "countOfBytesReceived") <= 10485760)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF88]);
    receivedData = self->_receivedData;
    self->_receivedData = v12;

    mIMEType = [responseCopy MIMEType];
    MIMEType = self->_MIMEType;
    self->_MIMEType = mIMEType;

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  handlerCopy[2](handlerCopy, v11);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  if ([taskCopy countOfBytesExpectedToReceive] <= 10485760 && objc_msgSend(taskCopy, "countOfBytesReceived") <= 10485760)
  {
    [(NSMutableData *)self->_receivedData appendData:dataCopy];
  }

  else
  {
    [taskCopy cancel];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__LPMediaAssetFetcher_URLSession_task_didCompleteWithError___block_invoke;
  v8[3] = &unk_1E7A35478;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __60__LPMediaAssetFetcher_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 40))
  {
    return;
  }

  v3 = *(a1 + 40) || ![*(v1 + 80) length] || objc_msgSend(*(*(a1 + 32) + 80), "length") > 0xA00000;
  v4 = [LPMIMETypeRegistry isHLSType:*(*(a1 + 32) + 64)];
  if (v4)
  {
    v3 = 1;
    *(*(a1 + 32) + 56) = 1;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 64))
  {
    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v3 = 1;
    *(v5 + 56) = 1;
    if (v4)
    {
LABEL_15:
      v7 = *(a1 + 32);
      v8 = [LPVideo alloc];
      v9 = *(a1 + 32);
      if (v3)
      {
        v20 = [v9 URL];
        v10 = [*(a1 + 32) videoProperties];
        v11 = [(LPVideo *)v8 initWithStreamingURL:v20 properties:v10];
        [v7 _completedWithVideo:v11];
      }

      else
      {
        v12 = v9[10];
        v13 = v9[8];
        v20 = [v9 videoProperties];
        v10 = [(LPVideo *)v8 initWithData:v12 MIMEType:v13 properties:?];
        [v7 _completedWithVideo:v10];
      }

      goto LABEL_19;
    }
  }

  v19 = [*(*(a1 + 32) + 48) tracksWithMediaCharacteristic:*MEMORY[0x1E6987590]];
  v6 = [v19 count];

  if (v6)
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 32);
  if (v14[56] == 1)
  {
    v15 = [LPAudio alloc];
    v20 = [*(a1 + 32) URL];
    v16 = [*(a1 + 32) audioProperties];
    v17 = [(LPAudio *)v15 initWithStreamingURL:v20 properties:v16];
    [v14 _completedWithAudio:v17];

LABEL_19:

    return;
  }

  v18 = *(a1 + 32);

  [v18 _completedWithVideo:0];
}

@end