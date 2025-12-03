@interface WLAPlayContent
+ (unint64_t)_WLKContentTypeForSAVCSContentType:(id)type;
- (void)performWithCompletion:(id)completion;
@end

@implementation WLAPlayContent

+ (unint64_t)_WLKContentTypeForSAVCSContentType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:SAVCSContentTypeMovieValue])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:SAVCSContentTypeShowValue])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:SAVCSContentTypeSeasonValue])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:SAVCSContentTypeEpisodeValue])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  utsId = [(WLAPlayContent *)self utsId];
  contentType = [(WLAPlayContent *)self contentType];
  v7 = [objc_opt_class() _WLKContentTypeForSAVCSContentType:contentType];
  NSLog(@"WLAPlayContent: Got play request for content type '%@', canonical ID '%@'", contentType, utsId);
  +[NSDate date];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __40__WLAPlayContent_performWithCompletion___block_invoke;
  v8 = v20[3] = &unk_82B0;
  v21 = v8;
  v23 = v7;
  v9 = completionCopy;
  v22 = v9;
  v10 = objc_retainBlock(v20);
  if ([utsId length] && ((objc_msgSend(contentType, "isEqualToString:", SAVCSContentTypeMovieValue) & 1) != 0 || (objc_msgSend(contentType, "isEqualToString:", SAVCSContentTypeEpisodeValue) & 1) != 0 || (objc_msgSend(contentType, "isEqualToString:", SAVCSContentTypeShowValue) & 1) != 0 || objc_msgSend(contentType, "isEqualToString:", SAVCSContentTypeSeasonValue)))
  {
    v11 = [[WLKContentPlayRequest alloc] initWithCanonicalID:utsId];
    NSLog(@"WLAPlayContent: Will enqueue playables request: %@", v11);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __40__WLAPlayContent_performWithCompletion___block_invoke_2;
    v14[3] = &unk_8300;
    v15 = contentType;
    v16 = utsId;
    v19 = v7;
    v17 = v10;
    v18 = v9;
    [v11 makeRequestWithCompletion:v14];

    dictionary = v15;
LABEL_9:

    goto LABEL_10;
  }

  NSLog(@"WLAPlayContent: Unsupported content type for play command: %@, canonical ID: %@", contentType, utsId);
  if (v9)
  {
    v13 = [SACommandFailed alloc];
    v11 = [v13 initWithErrorCode:SAVCSCannotPlayContentErrorCode];
    dictionary = [v11 dictionary];
    (*(v9 + 2))(v9, dictionary);
    goto LABEL_9;
  }

LABEL_10:
}

void __40__WLAPlayContent_performWithCompletion___block_invoke(void *a1, int a2)
{
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:a1[4]];
  v6 = v5;

  NSLog(@"WLAPlayContent: Elapsed Time: %.4f", v6);
  v7 = a1[6];
  if (a2)
  {
    v8 = @"WLAPlayContent: Successfully opened playable directly.";
    if (v7 == 4)
    {
      v8 = @"WLAPlayContent: Opening episode playable succeeded.";
    }

    if (v7 == 3)
    {
      NSLog(@"WLAPlayContent: Opening season playable succeeded.");
    }

    else
    {
      NSLog(&v8->isa);
    }

    v9 = a1[5];
    if (v9)
    {
      v10 = objc_alloc_init(SACommandSucceeded);
LABEL_16:
      v14 = v10;
      v13 = [v10 dictionary];
      (*(v9 + 16))(v9, v13);
    }
  }

  else
  {
    v11 = @"WLAPlayContent: Failed to open playable directly.";
    if (v7 == 4)
    {
      v11 = @"WLAPlayContent: Opening episode playable failed.";
    }

    if (v7 == 3)
    {
      NSLog(@"WLAPlayContent: Opening season playable failed.");
    }

    else
    {
      NSLog(&v11->isa);
    }

    v9 = a1[5];
    if (v9)
    {
      v12 = [SACommandFailed alloc];
      v10 = [v12 initWithErrorCode:SAVCSCannotPlayContentErrorCode];
      goto LABEL_16;
    }
  }
}

void __40__WLAPlayContent_performWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 playable];
  v8 = v7;
  if (v7)
  {
    NSLog(@"WLAPlayContent: Got a playable: %@", v7);
    if ([*(a1 + 32) isEqualToString:SAVCSContentTypeSeasonValue])
    {
      NSLog(@"WLAPlayContent: Will enqueue season content request operation.");
      v9 = [[WLKBasicContentRequestOperation alloc] initWithContentID:*(a1 + 40) caller:0];
      objc_initWeak(&location, v9);
      v10 = v26;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = __40__WLAPlayContent_performWithCompletion___block_invoke_3;
      v26[3] = &unk_82D8;
      objc_copyWeak(v30, &location);
      v27 = *(a1 + 40);
      v11 = v8;
      v12 = *(a1 + 64);
      v28 = v11;
      v30[1] = v12;
      v29 = *(a1 + 48);
      [v9 setCompletionBlock:v26];
      v13 = +[NSOperationQueue wlkDefaultQueue];
      [v13 addOperation:v9];

      v14 = v27;
    }

    else
    {
      if (![*(a1 + 32) isEqualToString:SAVCSContentTypeEpisodeValue])
      {
        [WLKPlayableUtilities openPlayable:v8 forContentType:*(a1 + 64) canonicalID:*(a1 + 40) showCanonicalID:0 seasonCanonicalID:0];
        (*(*(a1 + 48) + 16))();
        goto LABEL_10;
      }

      NSLog(@"WLAPlayContent: Will enqueue episode content request operation.");
      v9 = [[WLKBasicContentRequestOperation alloc] initWithContentID:*(a1 + 40) caller:0];
      objc_initWeak(&location, v9);
      v10 = v21;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __40__WLAPlayContent_performWithCompletion___block_invoke_4;
      v21[3] = &unk_82D8;
      objc_copyWeak(v25, &location);
      v22 = *(a1 + 40);
      v18 = v8;
      v19 = *(a1 + 64);
      v23 = v18;
      v25[1] = v19;
      v24 = *(a1 + 48);
      [v9 setCompletionBlock:v21];
      v20 = +[NSOperationQueue wlkDefaultQueue];
      [v20 addOperation:v9];

      v14 = v22;
    }

    objc_destroyWeak(v10 + 7);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

  NSLog(@"WLAPlayContent: No playable returned for play request for content type: %@, canonical ID: %@, error: %@", *(a1 + 32), *(a1 + 40), v6);
  v15 = *(a1 + 56);
  if (v15)
  {
    v16 = [SACommandFailed alloc];
    v9 = [v16 initWithErrorCode:SAVCSCannotPlayContentErrorCode];
    v17 = [v9 dictionary];
    (*(v15 + 16))(v15, v17);

LABEL_9:
  }

LABEL_10:
}

void __40__WLAPlayContent_performWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained basicContentMetadata];
  v3 = *(a1 + 32);
  v4 = [v2 canonicalShowID];
  [WLKPlayableUtilities openPlayable:*(a1 + 40) forContentType:*(a1 + 64) canonicalID:v3 showCanonicalID:v4 seasonCanonicalID:0];
  (*(*(a1 + 48) + 16))();
}

void __40__WLAPlayContent_performWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained basicContentMetadata];
  v3 = *(a1 + 32);
  v4 = [v2 canonicalShowID];
  v5 = [v2 canonicalSeasonID];
  [WLKPlayableUtilities openPlayable:*(a1 + 40) forContentType:*(a1 + 64) canonicalID:v3 showCanonicalID:v4 seasonCanonicalID:v5];
  (*(*(a1 + 48) + 16))();
}

@end