@interface WLASearchPlayableContentFromWatchList
- (void)performWithCompletion:(id)completion;
@end

@implementation WLASearchPlayableContentFromWatchList

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  NSLog(@"WLASearchPlayableContentFromWatchList: Received search playable content request.");
  +[NSDate date];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __63__WLASearchPlayableContentFromWatchList_performWithCompletion___block_invoke;
  v5 = v34[3] = &unk_8350;
  v35 = v5;
  v6 = completionCopy;
  v36 = v6;
  v7 = objc_retainBlock(v34);
  if (![(WLASearchPlayableContentFromWatchList *)self onlyReturnNextItem])
  {
    NSLog(@"WLASearchPlayableContentFromWatchList: Generic search.");
    v8 = objc_alloc_init(NSMutableDictionary);
    canonicalId = [(WLASearchPlayableContentFromWatchList *)self canonicalId];
    v11 = [canonicalId length];

    if (v11)
    {
      canonicalId2 = [(WLASearchPlayableContentFromWatchList *)self canonicalId];
      [v8 setObject:canonicalId2 forKey:WLKSiriSearchRequestOptionCanonicalID];
    }

    title = [(WLASearchPlayableContentFromWatchList *)self title];
    v14 = [title length];

    if (v14)
    {
      title2 = [(WLASearchPlayableContentFromWatchList *)self title];
      [v8 setObject:title2 forKey:WLKSiriSearchRequestOptionTitle];

      siriLocale = [(WLASearchPlayableContentFromWatchList *)self siriLocale];

      if (siriLocale)
      {
        siriLocale2 = [(WLASearchPlayableContentFromWatchList *)self siriLocale];
        [v8 setObject:siriLocale2 forKey:@"locale"];
      }
    }

    contentType = [(WLASearchPlayableContentFromWatchList *)self contentType];
    v19 = [contentType isEqualToString:SAVCSContentTypeMovieValue];

    if (v19)
    {
      v20 = &WLKSiriSearchRequestContentTypeMovie;
    }

    else
    {
      contentType2 = [(WLASearchPlayableContentFromWatchList *)self contentType];
      v22 = [contentType2 isEqualToString:SAVCSContentTypeShowValue];

      if (v22)
      {
        v20 = &WLKSiriSearchRequestContentTypeShow;
      }

      else
      {
        contentType3 = [(WLASearchPlayableContentFromWatchList *)self contentType];
        v24 = [contentType3 isEqualToString:SAVCSContentTypeEpisodeValue];

        if (v24)
        {
          v20 = &WLKSiriSearchRequestContentTypeEpisode;
        }

        else
        {
          contentType4 = [(WLASearchPlayableContentFromWatchList *)self contentType];
          v26 = [contentType4 isEqualToString:SAVCSContentTypeSeasonValue];

          if (!v26)
          {
LABEL_17:
            v27 = [[WLKSiriSearchRequest alloc] initWithQuery:v8];
            NSLog(@"WLASearchPlayableContentFromWatchList: Will make search request %p with options: %@", v27, v8);
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = __63__WLASearchPlayableContentFromWatchList_performWithCompletion___block_invoke_3;
            v28[3] = &unk_83A0;
            v29 = v7;
            [v27 makeRequestWithCompletion:v28];

            goto LABEL_18;
          }

          v20 = &WLKSiriSearchRequestContentTypeSeason;
        }
      }
    }

    [v8 setObject:*v20 forKey:WLKSiriSearchRequestOptionContentType];
    goto LABEL_17;
  }

  NSLog(@"WLASearchPlayableContentFromWatchList: Play the next x request.");
  v8 = objc_alloc_init(WLKContinueWatchingRequestOperation);
  objc_initWeak(&location, v8);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __63__WLASearchPlayableContentFromWatchList_performWithCompletion___block_invoke_2;
  v30[3] = &unk_8378;
  objc_copyWeak(&v32, &location);
  v30[4] = self;
  v31 = v7;
  [v8 setCompletionBlock:v30];
  v9 = +[NSOperationQueue wlkDefaultQueue];
  [v9 addOperation:v8];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
LABEL_18:
}

void __63__WLASearchPlayableContentFromWatchList_performWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(a1 + 32)];
  v5 = v4;

  NSLog(@"WLASearchPlayableContentFromWatchList: Elapsed Time: %.4f", v5);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }
}

void __63__WLASearchPlayableContentFromWatchList_performWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained response];

  if (v3)
  {
    v4 = [WeakRetained response];
    NSLog(@"WLASearchPlayableContentFromWatchList: Continue watching response received: %@", v4);

    v5 = objc_alloc_init(SAWLWatchListSearchResults);
    v6 = [*(a1 + 32) contentType];
    v7 = [v6 isEqualToString:SAVCSContentTypeMovieValue];

    if (v7)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v8 = [WeakRetained response];
      v9 = [v8 items];

      v10 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v10)
      {
        v11 = *v38;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v37 + 1) + 8 * v12);
          v14 = [v13 movieOrShowContent];
          v15 = [v14 contentType];

          if (v15 == &dword_0 + 1)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_27;
          }
        }

LABEL_26:
        v10 = v13;
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    v18 = [*(a1 + 32) contentType];
    if (([v18 isEqualToString:SAVCSContentTypeEpisodeValue] & 1) == 0)
    {
      v19 = [*(a1 + 32) contentType];
      if (![v19 isEqualToString:SAVCSContentTypeShowValue])
      {
        v30 = [*(a1 + 32) contentType];
        v31 = [v30 isEqualToString:SAVCSContentTypeSeasonValue];

        if ((v31 & 1) == 0)
        {
          v9 = [WeakRetained response];
          v32 = [v9 items];
          v10 = [v32 firstObject];

          goto LABEL_27;
        }

LABEL_17:
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v20 = [WeakRetained response];
        v9 = [v20 items];

        v10 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v10)
        {
          v21 = *v34;
LABEL_19:
          v22 = 0;
          while (1)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v33 + 1) + 8 * v22);
            v23 = [v13 movieOrShowContent];
            v24 = [v23 contentType];

            if (v24 == &dword_4)
            {
              goto LABEL_26;
            }

            if (v10 == ++v22)
            {
              v10 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
              if (v10)
              {
                goto LABEL_19;
              }

              break;
            }
          }
        }

LABEL_27:

        v25 = [v10 movieOrShowContent];
        v26 = objc_alloc_init(SAWLWatchListSearchResult);
        [WLASearchUtilities populateSearchResult:v26 withMetadata:v25];
        v41 = v26;
        v27 = [NSArray arrayWithObjects:&v41 count:1];
        [v5 setMatchedResults:v27];

        NSLog(@"WLASearchPlayableContentFromWatchList: Returning results: %@", v5);
        v28 = *(a1 + 40);
        v29 = [v5 dictionary];
        (*(v28 + 16))(v28, v29);

        goto LABEL_28;
      }
    }

    goto LABEL_17;
  }

  v16 = [WeakRetained error];
  NSLog(@"WLASearchPlayableContentFromWatchList: Continue watching request operation failed: %@", v16);

  v17 = *(a1 + 40);
  v5 = objc_alloc_init(SACommandFailed);
  v10 = [v5 dictionary];
  (*(v17 + 16))(v17, v10);
LABEL_28:
}

void __63__WLASearchPlayableContentFromWatchList_performWithCompletion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v20 = a1;
    NSLog(@"WLASearchPlayableContentFromWatchList: Search response received: %@", v5);
    v7 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v6 items];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = objc_alloc_init(SAWLWatchListSearchResult);
          [WLASearchUtilities populateSearchResult:v14 withMetadata:v13];
          [v7 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v15 = objc_alloc_init(SAWLWatchListSearchResults);
    v16 = [v7 copy];
    [v15 setMatchedResults:v16];

    NSLog(@"WLASearchPlayableContentFromWatchList: Returning results: %@", v15);
    v17 = *(v20 + 32);
    v18 = [v15 dictionary];
    (*(v17 + 16))(v17, v18);
  }

  else
  {
    NSLog(@"WLASearchPlayableContentFromWatchList: Search request failed: %@", a3);
    v19 = *(a1 + 32);
    v7 = objc_alloc_init(SACommandFailed);
    v15 = [v7 dictionary];
    (*(v19 + 16))(v19, v15);
  }
}

@end