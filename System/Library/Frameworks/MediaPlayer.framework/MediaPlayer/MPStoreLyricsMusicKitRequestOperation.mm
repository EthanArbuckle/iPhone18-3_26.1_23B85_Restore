@interface MPStoreLyricsMusicKitRequestOperation
+ (BOOL)supportsLyricsForURLBag:(id)bag;
+ (id)_lyricsURLForURLBag:(id)bag identifier:(int64_t)identifier;
- (MPStoreLyricsMusicKitRequestOperation)init;
- (void)_enqueueOperationWithURL:(id)l;
- (void)cancel;
- (void)execute;
- (void)finishWithError:(id)error;
@end

@implementation MPStoreLyricsMusicKitRequestOperation

- (void)_enqueueOperationWithURL:(id)l
{
  lCopy = l;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__39977;
  v16[4] = __Block_byref_object_dispose__39978;
  v17 = 0;
  qualityOfService = [(NSOperationQueue *)self->_operationQueue qualityOfService];
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x1E69E43A0]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__MPStoreLyricsMusicKitRequestOperation__enqueueOperationWithURL___block_invoke;
  v11[3] = &unk_1E767D078;
  objc_copyWeak(v14, &location);
  v7 = lCopy;
  v12 = v7;
  v13 = v16;
  v14[1] = qualityOfService;
  v8 = [v6 initWithStartHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__MPStoreLyricsMusicKitRequestOperation__enqueueOperationWithURL___block_invoke_5;
  v9[3] = &unk_1E767D0A0;
  objc_copyWeak(&v10, &location);
  v9[4] = v16;
  [v8 setCancellationHandler:v9];
  [(NSOperationQueue *)self->_operationQueue addOperation:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(v16, 8);
}

void __66__MPStoreLyricsMusicKitRequestOperation__enqueueOperationWithURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v3, "isCancelled") & 1) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E69E4478]) initWithBlock:&__block_literal_global_39983];
    v6 = [MEMORY[0x1E696AF68] requestWithURL:*(a1 + 32)];
    v7 = WeakRetained[35];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__MPStoreLyricsMusicKitRequestOperation__enqueueOperationWithURL___block_invoke_3;
    v12[3] = &unk_1E767D050;
    v8 = *(a1 + 40);
    v13 = v6;
    v14 = v5;
    v9 = *(a1 + 56);
    v17 = v8;
    v18 = v9;
    v15 = WeakRetained;
    v16 = v3;
    v10 = v5;
    v11 = v6;
    dispatch_async(v7, v12);
  }
}

void __66__MPStoreLyricsMusicKitRequestOperation__enqueueOperationWithURL___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained[35];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MPStoreLyricsMusicKitRequestOperation__enqueueOperationWithURL___block_invoke_6;
  block[3] = &unk_1E7680410;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

void __66__MPStoreLyricsMusicKitRequestOperation__enqueueOperationWithURL___block_invoke_6(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = [MEMORY[0x1E69E4678] defaultSession];
    [v2 cancelRequest:*(*(*(a1 + 32) + 8) + 40)];
  }
}

void __66__MPStoreLyricsMusicKitRequestOperation__enqueueOperationWithURL___block_invoke_3(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69E4480]) initWithURLRequest:a1[4] requestContext:a1[5]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x1E69E4678] sharedSessionManager];
  v6 = [v5 sessionWithQualityOfService:a1[9]];

  v7 = *(*(a1[8] + 8) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__MPStoreLyricsMusicKitRequestOperation__enqueueOperationWithURL___block_invoke_4;
  v9[3] = &unk_1E767D168;
  v8 = a1[7];
  v9[4] = a1[6];
  v10 = v8;
  [v6 enqueueDataRequest:v7 withCompletionHandler:v9];
}

void __66__MPStoreLyricsMusicKitRequestOperation__enqueueOperationWithURL___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0 && (objc_msgSend(*(a1 + 40), "isCancelled") & 1) == 0)
  {
    if (v6)
    {
      v7 = [v6 msv_errorByWrappingWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3007 debugDescription:@"Data request error"];
      [*(a1 + 40) finishWithError:v7];
      [*(a1 + 32) finishWithError:v7];
LABEL_17:

      goto LABEL_18;
    }

    v7 = [v5 urlResponse];
    v8 = [v5 parsedBodyDictionary];
    if ([v7 statusCode] == 200)
    {
      if (v8)
      {
        v9 = [v8 ic_arrayValueForKey:@"data"];
        v22 = [v9 firstObject];
        v10 = [v22 ic_dictionaryValueForKey:@"attributes"];
        v11 = [v10 ic_stringValueForKey:@"ttml"];
        v12 = [v10 ic_dictionaryValueForKey:@"playParams"];
        v13 = [v12 ic_stringValueForKey:@"id"];

        if (v11)
        {
          v21 = v9;
          v14 = objc_opt_new();
          [v14 setLyricsContent:v11];
          [v14 setLyricsID:v13];
          v15 = [*(a1 + 32) responseHandler];

          if (v15)
          {
            v16 = [*(a1 + 32) responseHandler];
            (v16)[2](v16, v14, 0);
          }

          [*(a1 + 32) finish];
          v9 = v21;
        }

        else
        {
          v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3004 debugDescription:@"Couldn't find ttml property in received response dictionary"];
          [*(a1 + 40) finishWithError:v14];
          [*(a1 + 32) finishWithError:v14];
        }

        goto LABEL_16;
      }

      v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3003 debugDescription:@"Invalid response dictionary received"];
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v23 = @"HTTPStatusCodeKey";
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "statusCode")}];
      v24[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v20 = [v17 msv_errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3003 userInfo:v19 debugDescription:@"Invalid response status code received"];
    }

    [*(a1 + 40) finishWithError:v20];
    [*(a1 + 32) finishWithError:v20];

LABEL_16:
    goto LABEL_17;
  }

LABEL_18:
}

void __66__MPStoreLyricsMusicKitRequestOperation__enqueueOperationWithURL___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = ICBundleIdentifierForSystemApplicationType();
  v3 = [MEMORY[0x1E69E43B0] clientInfoForMusicKitRequestWithClientIdentifier:v6 clientVersion:@"1"];
  [v2 setClientInfo:v3];
  v4 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  [v2 setIdentityStore:v4];

  v5 = [MEMORY[0x1E69E4680] activeAccount];
  [v2 setIdentity:v5];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  v7.receiver = self;
  v7.super_class = MPStoreLyricsMusicKitRequestOperation;
  [(MPAsyncOperation *)&v7 finishWithError:errorCopy];
  if (errorCopy)
  {
    responseHandler = [(MPStoreLyricsMusicKitRequestOperation *)self responseHandler];

    if (responseHandler)
    {
      responseHandler2 = [(MPStoreLyricsMusicKitRequestOperation *)self responseHandler];
      (responseHandler2)[2](responseHandler2, 0, errorCopy);
    }
  }
}

- (void)cancel
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MPStoreLyricsMusicKitRequestOperation;
  [(MPAsyncOperation *)&v13 cancel];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  v3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3008 debugDescription:@"Operation was cancelled"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  operations = [(NSOperationQueue *)self->_operationQueue operations];
  v5 = [operations countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(operations);
        }

        [*(*(&v9 + 1) + 8 * v8++) finishWithError:v3];
      }

      while (v6 != v8);
      v6 = [operations countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }

  [(MPStoreLyricsMusicKitRequestOperation *)self finishWithError:v3];
}

- (void)execute
{
  if ([(MPStoreLyricsMusicKitRequestOperation *)self songAdamID])
  {
    if (!self->_operationQueue)
    {
      v3 = objc_opt_new();
      operationQueue = self->_operationQueue;
      self->_operationQueue = v3;

      [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:2];
      [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.MediaPlayer.MPStoreLyricsMusicKitRequestOperation.operationQueue"];
      currentThread = [MEMORY[0x1E696AF00] currentThread];
      -[NSOperationQueue setQualityOfService:](self->_operationQueue, "setQualityOfService:", [currentThread qualityOfService]);
    }

    v6 = objc_alloc(MEMORY[0x1E69E4618]);
    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
    v8 = [v6 initWithIdentity:activeAccount];

    mEMORY[0x1E69E4658] = [MEMORY[0x1E69E4658] sharedBagProvider];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__MPStoreLyricsMusicKitRequestOperation_execute__block_invoke;
    v11[3] = &unk_1E767D230;
    v11[4] = self;
    [mEMORY[0x1E69E4658] getBagForRequestContext:v8 withCompletionHandler:v11];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3001 debugDescription:@"No adam ID provided"];
    [(MPStoreLyricsMusicKitRequestOperation *)self finishWithError:v10];
  }
}

void __48__MPStoreLyricsMusicKitRequestOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v5 msv_errorByWrappingWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3002 debugDescription:@"Failed to load bag for activeAccount"];
      [v6 finishWithError:v7];
    }

    else
    {
      v8 = [objc_opt_class() _lyricsURLForURLBag:v11 identifier:{objc_msgSend(*(a1 + 32), "songAdamID")}];
      v9 = *(a1 + 32);
      if (v8)
      {
        v7 = v8;
        [v9 _enqueueOperationWithURL:v8];
      }

      else
      {
        v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3002 debugDescription:@"Failed to generate Lyrics URL from bag values and identifier"];
        [v9 finishWithError:v10];

        v7 = 0;
      }
    }
  }
}

- (MPStoreLyricsMusicKitRequestOperation)init
{
  v6.receiver = self;
  v6.super_class = MPStoreLyricsMusicKitRequestOperation;
  v2 = [(MPAsyncOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlayer.LyricsMusicKitRequest.access", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

+ (id)_lyricsURLForURLBag:(id)bag identifier:(int64_t)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  v6 = [bagCopy stringForBagKey:*MEMORY[0x1E69E42E0]];
  if (_NSIsNSString())
  {
    v7 = MEMORY[0x1E696AEC0];
    if (identifier)
    {
      v8 = &v25 + 1;
      quot = identifier;
      do
      {
        v10 = lldiv(quot, 10);
        quot = v10.quot;
        if (v10.rem >= 0)
        {
          LOBYTE(v11) = v10.rem;
        }

        else
        {
          v11 = -v10.rem;
        }

        *(v8 - 2) = v11 + 48;
        v12 = (v8 - 2);
        --v8;
      }

      while (v10.quot);
      if (identifier < 0)
      {
        *(v8 - 2) = 45;
        v12 = (v8 - 2);
      }

      v13 = CFStringCreateWithBytes(0, v12, &v25 - v12, 0x8000100u, 0);
    }

    else
    {
      v13 = @"0";
    }

    v14 = [v7 stringWithFormat:@"%@/%@%@/%@%@", @"/v1/catalog", v6, @"/songs", v13, @"/syllable-lyrics"];

    v16 = MEMORY[0x1E696AF20];
    v17 = MusicURLWithPathUsingURLBag(v14, bagCopy, 0);
    v18 = [v16 componentsWithURL:v17 resolvingAgainstBaseURL:1];

    v19 = MusicURLQueryItemLanguageWithURLBag(bagCopy);
    if (v19)
    {
      queryItems = [v18 queryItems];
      v21 = queryItems;
      if (!queryItems)
      {
        queryItems = MEMORY[0x1E695E0F0];
      }

      v22 = [queryItems arrayByAddingObject:v19];
      [v18 setQueryItems:v22];
    }

    v15 = [v18 URL];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_ERROR, "countryCode not found in bag", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

+ (BOOL)supportsLyricsForURLBag:(id)bag
{
  v3 = [self _lyricsURLForURLBag:bag identifier:0];
  v4 = v3 != 0;

  return v4;
}

@end