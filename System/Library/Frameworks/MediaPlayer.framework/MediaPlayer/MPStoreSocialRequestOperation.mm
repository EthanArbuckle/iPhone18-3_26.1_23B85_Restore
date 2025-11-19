@interface MPStoreSocialRequestOperation
+ (id)_stringRepresentationForHTTPBodyType:(int64_t)a3;
+ (id)_stringRepresentationForHTTPMethod:(int64_t)a3;
+ (id)_urlStringForKey:(id)a3 inBag:(id)a4;
- (MPStoreSocialRequestOperation)initWithDataSource:(id)a3;
- (id)_requestURLFromBag:(id)a3;
- (void)cancel;
- (void)execute;
- (void)setResponseHandler:(id)a3;
@end

@implementation MPStoreSocialRequestOperation

- (id)_requestURLFromBag:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPStoreSocialRequestOperationDataSource *)self->_dataSource bagKey];
  if (v5)
  {
    v6 = [objc_opt_class() _urlStringForKey:v5 inBag:v4];
    if (v6)
    {
      goto LABEL_15;
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [(MPStoreSocialRequestOperationDataSource *)self->_dataSource fallbackBagKeys];
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [objc_opt_class() _urlStringForKey:*(*(&v18 + 1) + 8 * i) inBag:v4];
            if (v12)
            {
              v13 = v12;

              goto LABEL_16;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(MPStoreSocialRequestOperationDataSource *)self->_dataSource fallbackURLString], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = 0;
    goto LABEL_18;
  }

LABEL_15:
  v13 = v6;
LABEL_16:
  v14 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v13];
  v15 = [(MPStoreSocialRequestOperationDataSource *)self->_dataSource queryItems];
  [v14 setQueryItems:v15];

  v16 = [v14 URL];

LABEL_18:

  return v16;
}

- (void)execute
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__MPStoreSocialRequestOperation_execute__block_invoke;
  aBlock[3] = &unk_1E767D2A0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = objc_alloc(MEMORY[0x1E69E4618]);
  v5 = [MEMORY[0x1E69E4680] activeAccount];
  v6 = [v4 initWithIdentity:v5];

  v7 = [MEMORY[0x1E69E4658] sharedBagProvider];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__MPStoreSocialRequestOperation_execute__block_invoke_2;
  v9[3] = &unk_1E767D2F0;
  v9[4] = self;
  v10 = v3;
  v8 = v3;
  [v7 getBagForRequestContext:v6 withCompletionHandler:v9];
}

void __40__MPStoreSocialRequestOperation_execute__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 280);
  *(v4 + 280) = 0;

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__40917;
  v14 = __Block_byref_object_dispose__40918;
  v15 = 0;
  v6 = *(a1 + 32);
  v7 = *(v6 + 272);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__MPStoreSocialRequestOperation_execute__block_invoke_4;
  v9[3] = &unk_1E76819F0;
  v9[4] = v6;
  v9[5] = &v10;
  dispatch_sync(v7, v9);
  v8 = v11[5];
  if (v8)
  {
    (*(v8 + 16))(v8, v3 == 0, v3);
  }

  [*(a1 + 32) finishWithError:v3];
  _Block_object_dispose(&v10, 8);
}

void __40__MPStoreSocialRequestOperation_execute__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) _requestURLFromBag:a2];
    v6 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v5];
    v7 = [objc_opt_class() _stringRepresentationForHTTPMethod:{objc_msgSend(*(*(a1 + 32) + 288), "httpMethod")}];
    [v6 setHTTPMethod:v7];
    v8 = [*(*(a1 + 32) + 288) httpBody];
    if (v8)
    {
      v9 = [objc_opt_class() _stringRepresentationForHTTPBodyType:{objc_msgSend(*(*(a1 + 32) + 288), "httpBodyType")}];
      [v6 setValue:v9 forHTTPHeaderField:@"Content-Type"];

      [v6 setHTTPBody:v8];
    }

    v10 = objc_alloc(MEMORY[0x1E69E4618]);
    v11 = [MEMORY[0x1E69E4680] activeAccount];
    v12 = [v10 initWithIdentity:v11];

    v13 = [objc_alloc(MEMORY[0x1E69E4620]) initWithURLRequest:v6 requestContext:v12];
    v14 = *(a1 + 32);
    v15 = *(v14 + 280);
    *(v14 + 280) = v13;

    v16 = [MEMORY[0x1E69E4678] defaultSession];
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = *(v18 + 280);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __40__MPStoreSocialRequestOperation_execute__block_invoke_3;
    v20[3] = &unk_1E767D2C8;
    v20[4] = v18;
    v21 = v17;
    [v16 enqueueDataRequest:v19 withCompletionHandler:v20];
  }
}

void __40__MPStoreSocialRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  v6 = [v5 urlResponse];
  v7 = [v5 parsedBodyDictionary];

  v8 = v12;
  if (!v12)
  {
    if ([*(a1 + 32) isCancelled])
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreSocialErrorDomain" code:-3001 userInfo:0];
    }

    else if ([v6 statusCode] == 200)
    {
      if (v7)
      {
        v10 = [v7 ic_stringValueForKey:@"status"];
        v11 = [v10 isEqualToString:@"success"];

        if (v11)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPStoreSocialErrorDomain" code:-3000 userInfo:0];
    }

    else
    {
      v9 = +[MPStoreSocialServiceController _internalErrorForHTTPResponseCode:](MPStoreSocialServiceController, "_internalErrorForHTTPResponseCode:", [v6 statusCode]);
    }

    v8 = v9;
  }

LABEL_11:
  (*(*(a1 + 40) + 16))();
}

void __40__MPStoreSocialRequestOperation_execute__block_invoke_4(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 296));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = MPStoreSocialRequestOperation;
  [(MPAsyncOperation *)&v4 cancel];
  if (self->_request)
  {
    v3 = [MEMORY[0x1E69E4678] defaultSession];
    [v3 cancelRequest:self->_request];
  }
}

- (void)setResponseHandler:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MPStoreSocialRequestOperation_setResponseHandler___block_invoke;
  v7[3] = &unk_1E76824C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

void __52__MPStoreSocialRequestOperation_setResponseHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 296);
  *(v3 + 296) = v2;
}

- (MPStoreSocialRequestOperation)initWithDataSource:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MPStoreSocialRequestOperation;
  v6 = [(MPAsyncOperation *)&v10 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.MPStoreSocialRequestOperation.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v6->_accessQueue;
    v6->_accessQueue = v7;

    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v6;
}

+ (id)_urlStringForKey:(id)a3 inBag:(id)a4
{
  v5 = a3;
  v6 = [a4 dictionaryForBagKey:*MEMORY[0x1E69E4318]];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:v5];
    if (_NSIsNSString())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_stringRepresentationForHTTPMethod:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E767D310[a3];
  }
}

+ (id)_stringRepresentationForHTTPBodyType:(int64_t)a3
{
  v3 = @"application/json; charset=utf-8";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"application/x-www-form-urlencoded";
  }
}

@end