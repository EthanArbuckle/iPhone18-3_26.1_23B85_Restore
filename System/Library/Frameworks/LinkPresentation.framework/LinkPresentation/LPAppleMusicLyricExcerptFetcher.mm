@interface LPAppleMusicLyricExcerptFetcher
- (LPAppleMusicLyricExcerptFetcher)init;
- (void)cancel;
- (void)completedWithLyrics:(id)a3;
- (void)fetchWithConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation LPAppleMusicLyricExcerptFetcher

- (LPAppleMusicLyricExcerptFetcher)init
{
  v6.receiver = self;
  v6.super_class = LPAppleMusicLyricExcerptFetcher;
  v2 = [(LPFetcher *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)fetchWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v5;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__LPAppleMusicLyricExcerptFetcher_fetchWithConfiguration_completionHandler___block_invoke;
  block[3] = &unk_1E7A35450;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__LPAppleMusicLyricExcerptFetcher_fetchWithConfiguration_completionHandler___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getMPStoreLyricsSnippetRequestClass_softClass;
  v13 = getMPStoreLyricsSnippetRequestClass_softClass;
  if (!getMPStoreLyricsSnippetRequestClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getMPStoreLyricsSnippetRequestClass_block_invoke;
    v9[3] = &unk_1E7A35518;
    v9[4] = &v10;
    __getMPStoreLyricsSnippetRequestClass_block_invoke(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [[v2 alloc] init];
  [v4 setSnippetURL:*(*(a1 + 32) + 56)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__LPAppleMusicLyricExcerptFetcher_fetchWithConfiguration_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7A36038;
  v8[4] = *(a1 + 32);
  v5 = [v4 newOperationWithResponseHandler:v8];
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;

  [*(*(a1 + 32) + 48) start];
}

void __76__LPAppleMusicLyricExcerptFetcher_fetchWithConfiguration_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = objc_alloc_init(LPLyricExcerptMetadata);
    v7 = MEMORY[0x1E696AD98];
    [*(*(a1 + 32) + 56) startTime];
    v8 = [v7 numberWithDouble:?];
    [(LPLyricExcerptMetadata *)v6 setStartTime:v8];

    v9 = MEMORY[0x1E696AD98];
    [*(*(a1 + 32) + 56) endTime];
    v10 = [v9 numberWithDouble:?];
    [(LPLyricExcerptMetadata *)v6 setEndTime:v10];

    v11 = [*(*(a1 + 32) + 56) language];
    [(LPLyricExcerptMetadata *)v6 setLanguage:v11];

    [(LPLyricExcerptMetadata *)v6 setLyrics:v12];
    [*(a1 + 32) completedWithLyrics:v6];
  }

  else
  {
    [*(a1 + 32) completedWithLyrics:0];
  }
}

- (void)cancel
{
  [(NSOperation *)self->_operation cancel];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)completedWithLyrics:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__LPAppleMusicLyricExcerptFetcher_completedWithLyrics___block_invoke;
  v6[3] = &unk_1E7A35478;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __55__LPAppleMusicLyricExcerptFetcher_completedWithLyrics___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = _Block_copy(v3);
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [[LPFetcherLyricsResponse alloc] initWithLyrics:*(a1 + 40) fetcher:*(a1 + 32)];
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
    v3 = *(v2 + 40);
  }

  *(v2 + 40) = 0;
}

@end