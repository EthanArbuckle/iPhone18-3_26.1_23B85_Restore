@interface MPStoreLyricsRequestOperation
+ (BOOL)supportsLyricsForURLBag:(id)a3;
+ (id)_lyricsURLForURLBag:(id)a3;
- (MPStoreLyricsRequestOperation)init;
- (void)_enqueueOperationWithURL:(id)a3 storeURLBag:(id)a4 allowingAuthentication:(BOOL)a5;
- (void)cancel;
- (void)execute;
- (void)finishWithError:(id)a3;
@end

@implementation MPStoreLyricsRequestOperation

- (void)_enqueueOperationWithURL:(id)a3 storeURLBag:(id)a4 allowingAuthentication:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__40153;
  v19[4] = __Block_byref_object_dispose__40154;
  v20 = 0;
  v10 = objc_alloc(MEMORY[0x1E69E43A0]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke;
  v14[3] = &unk_1E767D1B8;
  v18 = a5;
  v11 = v8;
  v15 = v11;
  v16 = self;
  v17 = v19;
  v12 = [v10 initWithStartHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke_5;
  v13[3] = &unk_1E76819F0;
  v13[4] = self;
  v13[5] = v19;
  [v12 setCancellationHandler:v13];
  [(NSOperationQueue *)self->_operationQueue addOperation:v12];

  _Block_object_dispose(v19, 8);
}

void __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E69E4618]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke_2;
  v19[3] = &__block_descriptor_33_e26_v16__0__ICRequestContext_8l;
  v20 = *(a1 + 56);
  v5 = [v4 initWithBlock:v19];
  v6 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:*(a1 + 32)];
  [v6 setHTTPMethod:@"GET"];
  v7 = *(a1 + 40);
  v8 = *(v7 + 280);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke_3;
  v13[3] = &unk_1E767D190;
  v9 = *(a1 + 48);
  v17 = v3;
  v18 = v9;
  v14 = v6;
  v15 = v5;
  v16 = v7;
  v10 = v3;
  v11 = v5;
  v12 = v6;
  dispatch_async(v8, v13);
}

void __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 280);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke_6;
  block[3] = &unk_1E7680410;
  block[4] = *(a1 + 40);
  dispatch_async(v1, block);
}

void __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke_6(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = [MEMORY[0x1E69E4678] defaultSession];
    [v2 cancelRequest:*(*(*(a1 + 32) + 8) + 40)];
  }
}

void __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E4680];
  v4 = a2;
  v5 = [v3 activeAccount];
  [v4 setIdentity:v5];

  v6 = objc_alloc(MEMORY[0x1E69E4628]);
  if (*(a1 + 32))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [v6 initWithUserInteractionLevel:v7];
  [v4 setAuthenticationProvider:v8];
}

void __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke_3(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69E4620]) initWithURLRequest:a1[4] requestContext:a1[5]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x1E69E4678] defaultSession];
  v6 = *(*(a1[8] + 8) + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke_4;
  v8[3] = &unk_1E767D168;
  v7 = a1[7];
  v8[4] = a1[6];
  v9 = v7;
  [v5 enqueueDataRequest:v6 withCompletionHandler:v8];
}

void __93__MPStoreLyricsRequestOperation__enqueueOperationWithURL_storeURLBag_allowingAuthentication___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isCancelled] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isCancelled"))
  {
    goto LABEL_25;
  }

  v7 = v6;
  v8 = [v5 urlResponse];
  v9 = [v5 parsedBodyDictionary];
  if (!v7 && [v8 statusCode] != 200)
  {
    v17 = MEMORY[0x1E696ABC0];
    v23 = @"HTTPStatusCodeKey";
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "statusCode")}];
    v24[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v7 = [v17 errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3003 userInfo:v19];

    v13 = 0;
    goto LABEL_21;
  }

  if (!v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = -3003;
    goto LABEL_9;
  }

  if ([v9 ic_intValueForKey:@"error"] == 214)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = -3005;
LABEL_9:
    v12 = [v10 errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:v11 userInfo:0];

    v13 = 0;
    v7 = v12;
    goto LABEL_21;
  }

  v14 = [v9 ic_stringValueForKey:@"ttml"];
  v15 = [v9 ic_stringValueForKey:@"lyricsId"];
  if (v14)
  {
    if (_NSIsNSString())
    {
      v16 = v15;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v20 = 0;
        goto LABEL_19;
      }

      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", objc_msgSend(v15, "longLongValue")];
    }

    v20 = v16;
LABEL_19:
    v13 = objc_opt_new();
    [v13 setLyricsContent:v14];
    [v13 setLyricsID:v20];
    goto LABEL_20;
  }

  [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3004 userInfo:0];
  v13 = 0;
  v7 = v20 = v7;
LABEL_20:

LABEL_21:
  [*(a1 + 40) finishWithError:v7];
  [*(a1 + 32) finishWithError:v7];
  if (v13)
  {
    v21 = [*(a1 + 32) responseHandler];

    if (v21)
    {
      v22 = [*(a1 + 32) responseHandler];
      (v22)[2](v22, v13, 0);
    }
  }

LABEL_25:
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = MPStoreLyricsRequestOperation;
  [(MPAsyncOperation *)&v3 cancel];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(MPAsyncOperation *)self finish];
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MPStoreLyricsRequestOperation;
  [(MPAsyncOperation *)&v7 finishWithError:v4];
  if (v4)
  {
    v5 = [(MPStoreLyricsRequestOperation *)self responseHandler];

    if (v5)
    {
      v6 = [(MPStoreLyricsRequestOperation *)self responseHandler];
      (v6)[2](v6, 0, v4);
    }
  }
}

- (void)execute
{
  if ([(MPStoreLyricsRequestOperation *)self songAdamID])
  {
    if (!self->_operationQueue)
    {
      v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      operationQueue = self->_operationQueue;
      self->_operationQueue = v3;

      [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:2];
      [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.MediaPlayer.MPStoreLyricsRequestOperation.operationQueue"];
      v5 = self->_operationQueue;
      v6 = [MEMORY[0x1E696AF00] currentThread];
      -[NSOperationQueue setQualityOfService:](v5, "setQualityOfService:", [v6 qualityOfService]);
    }

    v7 = objc_alloc(MEMORY[0x1E69E4618]);
    v8 = [MEMORY[0x1E69E4680] activeAccount];
    v9 = [v7 initWithIdentity:v8];

    v10 = [MEMORY[0x1E69E4658] sharedBagProvider];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__MPStoreLyricsRequestOperation_execute__block_invoke;
    v12[3] = &unk_1E767D230;
    v12[4] = self;
    [v10 getBagForRequestContext:v9 withCompletionHandler:v12];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3001 userInfo:0];
    [(MPStoreLyricsRequestOperation *)self finishWithError:v11];
  }
}

void __40__MPStoreLyricsRequestOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696AA08];
    v33 = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v10 = [v8 errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3002 userInfo:v9];

    [*(a1 + 32) finishWithError:v10];
  }

  else
  {
    v11 = [objc_opt_class() _lyricsURLForURLBag:v5];
    if (v11)
    {
      v10 = v11;
      v12 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v11 resolvingAgainstBaseURL:0];
      v13 = [v12 queryItems];
      v14 = [v13 mutableCopy];

      if (!v14)
      {
        v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      }

      v15 = 0x1E696A000uLL;
      v16 = objc_alloc(MEMORY[0x1E696AF60]);
      quot = [*(a1 + 32) songAdamID];
      if (quot)
      {
        v18 = quot;
        v19 = &v34 + 1;
        do
        {
          v20 = lldiv(quot, 10);
          quot = v20.quot;
          if (v20.rem >= 0)
          {
            LOBYTE(v21) = v20.rem;
          }

          else
          {
            v21 = -v20.rem;
          }

          *(v19 - 2) = v21 + 48;
          v22 = (v19 - 2);
          --v19;
        }

        while (v20.quot);
        if (v18 < 0)
        {
          *(v19 - 2) = 45;
          v22 = (v19 - 2);
        }

        v23 = CFStringCreateWithBytes(0, v22, &v34 - v22, 0x8000100u, 0);
        v15 = 0x1E696A000;
      }

      else
      {
        v23 = @"0";
      }

      v25 = [v16 initWithName:@"id" value:v23];

      [v14 addObject:v25];
      v26 = objc_alloc(*(v15 + 3936));
      v27 = [MEMORY[0x1E695DF58] preferredLanguages];
      v28 = [v27 firstObject];
      v29 = [v26 initWithName:@"l" value:v28];

      [v14 addObject:v29];
      [v12 setQueryItems:v14];
      v30 = [v12 URL];
      if (v30)
      {
        [*(a1 + 32) _enqueueOperationWithURL:v30 storeURLBag:v5 allowingAuthentication:1];
      }

      else
      {
        v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3000 userInfo:0];
        [*(a1 + 32) finishWithError:v31];
      }
    }

    else
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreLyricsRequestErrorDomain" code:-3002 userInfo:0];
      [*(a1 + 32) finishWithError:v24];

      v10 = 0;
    }
  }
}

- (MPStoreLyricsRequestOperation)init
{
  v6.receiver = self;
  v6.super_class = MPStoreLyricsRequestOperation;
  v2 = [(MPAsyncOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlayer.LyricsRequest.access", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

+ (id)_lyricsURLForURLBag:(id)a3
{
  v3 = [a3 dictionaryForBagKey:*MEMORY[0x1E69E4320]];
  if (!_NSIsNSDictionary())
  {
    goto LABEL_8;
  }

  v4 = [v3 objectForKey:@"ttmlLyrics"];
  if (!v4)
  {
    v4 = [v3 objectForKey:@"lyrics"];
  }

  if ((_NSIsNSString() & 1) == 0)
  {

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    goto LABEL_10;
  }

LABEL_9:
  v5 = 0;
LABEL_10:

  return v5;
}

+ (BOOL)supportsLyricsForURLBag:(id)a3
{
  v3 = [a1 _lyricsURLForURLBag:a3];
  v4 = v3 != 0;

  return v4;
}

@end