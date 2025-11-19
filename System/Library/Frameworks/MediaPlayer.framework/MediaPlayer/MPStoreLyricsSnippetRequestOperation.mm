@interface MPStoreLyricsSnippetRequestOperation
- (void)execute;
- (void)finishWithError:(id)a3;
@end

@implementation MPStoreLyricsSnippetRequestOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MPStoreLyricsSnippetRequestOperation;
  [(MPAsyncOperation *)&v7 finishWithError:v4];
  if (v4)
  {
    v5 = [(MPStoreLyricsSnippetRequestOperation *)self responseHandler];

    if (v5)
    {
      v6 = [(MPStoreLyricsSnippetRequestOperation *)self responseHandler];
      (v6)[2](v6, 0, v4);
    }
  }
}

- (void)execute
{
  v3 = [(MPStoreLyricsSnippetRequestOperation *)self snippetURL];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69E4618]);
    v5 = [MEMORY[0x1E69E4680] activeAccount];
    v6 = [v4 initWithIdentity:v5];

    v7 = [MEMORY[0x1E69E4658] sharedBagProvider];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__MPStoreLyricsSnippetRequestOperation_execute__block_invoke;
    v9[3] = &unk_1E767D230;
    v9[4] = self;
    [v7 getBagForRequestContext:v6 withCompletionHandler:v9];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreLyricsSnippetRequestErrorDomain" code:-3001 userInfo:0];
    [(MPStoreLyricsSnippetRequestOperation *)self finishWithError:v8];
  }
}

void __47__MPStoreLyricsSnippetRequestOperation_execute__block_invoke(uint64_t a1, void *a2)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v3 = [a2 dictionaryForBagKey:*MEMORY[0x1E69E42D0]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 ic_stringValueForKey:@"default"];
    if (v5)
    {
      v6 = objc_opt_new();
      [v6 setScheme:@"https"];
      [v6 setHost:v5];
      v43 = v4;
      v7 = MEMORY[0x1E696AEC0];
      v8 = [*(a1 + 32) snippetURL];
      v9 = [v8 countryCode];
      v10 = [*(a1 + 32) snippetURL];
      v11 = [v7 stringWithFormat:@"/v1/lyrics/%@/snippet/songs/%lld", v9, objc_msgSend(v10, "songAdamID")];
      [v6 setPath:v11];

      v42 = v5;
      v12 = MEMORY[0x1E696AF60];
      v13 = MEMORY[0x1E696AEC0];
      v41 = [*(a1 + 32) snippetURL];
      [v41 startTime];
      v40 = [v13 stringWithFormat:@"%.03f", v14];
      v39 = [v12 queryItemWithName:@"ts" value:v40];
      v45[0] = v39;
      v15 = MEMORY[0x1E696AF60];
      v16 = MEMORY[0x1E696AEC0];
      v38 = [*(a1 + 32) snippetURL];
      [v38 endTime];
      v37 = [v16 stringWithFormat:@"%.03f", v17];
      v18 = [v15 queryItemWithName:@"te" value:v37];
      v45[1] = v18;
      v19 = MEMORY[0x1E696AF60];
      v20 = [*(a1 + 32) snippetURL];
      v21 = [v20 language];
      v22 = [v19 queryItemWithName:@"l" value:v21];
      v45[2] = v22;
      v23 = MEMORY[0x1E696AF60];
      v24 = [*(a1 + 32) snippetURL];
      v25 = [v24 signature];
      v26 = [v23 queryItemWithName:@"tk" value:v25];
      v45[3] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
      [v6 setQueryItems:v27];

      v28 = [objc_alloc(MEMORY[0x1E69E4478]) initWithBlock:&__block_literal_global_40320];
      v29 = objc_alloc(MEMORY[0x1E69E4480]);
      v30 = MEMORY[0x1E696AF68];
      v31 = [v6 URL];
      v32 = [v30 requestWithURL:v31];
      v33 = [v29 initWithURLRequest:v32 requestContext:v28];

      v5 = v42;
      v34 = [MEMORY[0x1E69E4678] defaultSession];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __47__MPStoreLyricsSnippetRequestOperation_execute__block_invoke_3;
      v44[3] = &unk_1E767D208;
      v44[4] = *(a1 + 32);
      [v34 enqueueDataRequest:v33 withCompletionHandler:v44];

      v4 = v43;
    }

    else
    {
      v36 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreLyricsSnippetRequestErrorDomain" code:-3002 userInfo:0];
      [*(a1 + 32) finishWithError:v36];
    }
  }

  else
  {
    v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreLyricsSnippetRequestErrorDomain" code:-3002 userInfo:0];
    [*(a1 + 32) finishWithError:v35];
  }
}

void __47__MPStoreLyricsSnippetRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v7 = [v5 urlResponse];
    v8 = [v6 parsedBody];
    if ([v7 statusCode] != 200)
    {
      v15 = *(a1 + 32);
      v16 = MEMORY[0x1E696ABC0];
      v21 = @"HTTPStatusCodeKey";
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "statusCode")}];
      v22[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 errorWithDomain:@"MPStoreLyricsSnippetRequestErrorDomain" code:-3003 userInfo:v18];
      [v15 finishWithError:v19];

LABEL_11:
      goto LABEL_12;
    }

    if (v8)
    {
      v9 = [v8 ic_dictionaryValueForKey:@"results"];
      v10 = [*(a1 + 32) responseHandler];

      if (!v10)
      {
LABEL_10:

        goto LABEL_11;
      }

      v11 = [*(a1 + 32) responseHandler];
      v12 = [v9 ic_stringValueForKey:@"text"];
      (v11)[2](v11, v12, 0);

      v13 = *(a1 + 32);
      v14 = 0;
    }

    else
    {
      v20 = *(a1 + 32);
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreLyricsSnippetRequestErrorDomain" code:-3003 userInfo:0];
      v13 = v20;
      v14 = v9;
    }

    [v13 finishWithError:v14];
    goto LABEL_10;
  }

  [*(a1 + 32) finishWithError:a3];
LABEL_12:
}

void __47__MPStoreLyricsSnippetRequestOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v3 = [MEMORY[0x1E69E43B0] clientInfoForMusicKitRequestWithClientIdentifier:v5 clientVersion:@"1"];
  [v2 setClientInfo:v3];
  v4 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  [v2 setIdentityStore:v4];
}

@end