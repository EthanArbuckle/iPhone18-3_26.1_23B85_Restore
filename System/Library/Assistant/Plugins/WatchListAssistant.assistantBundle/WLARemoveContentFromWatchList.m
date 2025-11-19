@interface WLARemoveContentFromWatchList
- (void)performWithCompletion:(id)a3;
@end

@implementation WLARemoveContentFromWatchList

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  NSLog(@"WLARemoveContentFromWatchList: Received remove content request.");
  v5 = +[WLKSettingsStore sharedSettings];
  v6 = [v5 optedIn];

  if ((v6 & 1) == 0)
  {
    NSLog(@"WLARemoveContentFromWatchList: Not opted in.  Bailing.");
    if (!v4)
    {
      goto LABEL_8;
    }

    v13 = [[SACommandFailed alloc] initWithErrorCode:9056];
LABEL_6:
    v12 = v13;
    v14 = [v13 dictionary];
    v4[2](v4, v14);

    goto LABEL_7;
  }

  v7 = [(WLARemoveContentFromWatchList *)self canonicalId];

  if (v7)
  {
    v8 = [WLKRemoveFavoriteRequest alloc];
    v9 = [(WLARemoveContentFromWatchList *)self canonicalId];
    v10 = [v8 initWithCanonicalID:v9];

    v11 = [(WLARemoveContentFromWatchList *)self canonicalId];
    NSLog(@"WLARemoveContentFromWatchList: Will issue remove request %p for canonical ID %@", v10, v11);

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __55__WLARemoveContentFromWatchList_performWithCompletion___block_invoke;
    v27[3] = &unk_83C8;
    v28 = v10;
    v29 = v4;
    v12 = v10;
    [v12 makeRequestWithCompletion:v27];

LABEL_7:
    goto LABEL_8;
  }

  v15 = [(WLARemoveContentFromWatchList *)self title];
  v16 = [v15 length];

  if (!v16)
  {
    NSLog(@"WLARemoveContentFromWatchList: No title to search.");
    if (!v4)
    {
      goto LABEL_8;
    }

    v13 = objc_alloc_init(SACommandFailed);
    goto LABEL_6;
  }

  v17 = [(WLARemoveContentFromWatchList *)self title];
  NSLog(@"WLARemoveContentFromWatchList: The title (%@) has a non-zero length.", v17);

  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = [(WLARemoveContentFromWatchList *)self title];
  v20 = [v19 length];

  if (v20)
  {
    v21 = [(WLARemoveContentFromWatchList *)self title];
    [v18 setObject:v21 forKey:WLKSearchWatchListRequestOptionTitle];

    v22 = [(WLARemoveContentFromWatchList *)self siriLocale];

    if (v22)
    {
      v23 = [(WLARemoveContentFromWatchList *)self siriLocale];
      [v18 setObject:v23 forKey:@"locale"];
    }
  }

  v24 = [[WLKSearchWatchListRequest alloc] initWithQuery:v18];
  NSLog(@"WLARemoveContentFromWatchList: Will enqueue search request %p with options %@", v24, v18);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __55__WLARemoveContentFromWatchList_performWithCompletion___block_invoke_2;
  v25[3] = &unk_8418;
  v26 = v4;
  [v24 makeRequestWithCompletion:v25];

LABEL_8:
}

void __55__WLARemoveContentFromWatchList_performWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v12 = v5;
  if (!a2)
  {
    NSLog(@"WLARemoveContentFromWatchList: Remove item request failed: %@", v5);
    v9 = *(a1 + 40);
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = SACommandFailed;
LABEL_9:
    v8 = objc_alloc_init(v10);
LABEL_10:
    v11 = [v8 dictionary];
    (*(v9 + 16))(v9, v11);

    goto LABEL_11;
  }

  v6 = [*(a1 + 32) response];
  v7 = [v6 responseType];

  if (v7 != &dword_0 + 2)
  {
    NSLog(@"WLARemoveContentFromWatchList: Successfully removed item from list.");
    v9 = *(a1 + 40);
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = SACommandSucceeded;
    goto LABEL_9;
  }

  NSLog(@"WLARemoveContentFromWatchList: Item was not on list.");
  v8 = objc_alloc_init(SACommandFailed);
  [v8 setErrorCode:SAWLItemNotInListErrorCode];
  v9 = *(a1 + 40);
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
}

void __55__WLARemoveContentFromWatchList_performWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  NSLog(@"WLARemoveContentFromWatchList: Search request finished.");
  v7 = [v5 items];
  v8 = [v7 count];

  if (v8 < 2)
  {
    v21 = [v5 items];
    v22 = [v21 count];

    if (v22 == &dword_0 + 1)
    {
      NSLog(@"WLARemoveContentFromWatchList: Singular response received.");
      v23 = [v5 items];
      v24 = [v23 firstObject];

      v25 = [v24 canonicalID];
      if ([v25 length])
      {
        v26 = [[WLKRemoveFavoriteRequest alloc] initWithCanonicalID:v25];
        NSLog(@"WLARemoveContentFromWatchList: Will issue remove favorites request %p for canonical ID %@.", v26, v25);
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = __55__WLARemoveContentFromWatchList_performWithCompletion___block_invoke_3;
        v30[3] = &unk_83F0;
        v31 = *(a1 + 32);
        [v26 makeRequestWithCompletion:v30];

LABEL_22:
        goto LABEL_23;
      }
    }
  }

  else
  {
    v29 = a1;
    v9 = objc_alloc_init(NSMutableArray);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = [v5 items];
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = objc_alloc_init(SAWLWatchListSearchResult);
          [WLASearchUtilities populateSearchResult:v16 withMetadata:v15];
          [v9 addObject:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v12);
    }

    v17 = objc_alloc_init(SAWLWatchListSearchResults);
    v18 = [v9 copy];
    [v17 setMatchedResults:v18];

    NSLog(@"WLARemoveContentFromWatchList: Returning multiple results.");
    a1 = v29;
    v19 = *(v29 + 32);
    if (v19)
    {
      v20 = [v17 dictionary];
      (*(v19 + 16))(v19, v20);
    }
  }

  NSLog(@"WLARemoveContentFromWatchList: Failed to find item.");
  if (v5)
  {
    NSLog(@"WLARemoveContentFromWatchList: Failure response: %@", v5);
    v24 = objc_alloc_init(SACommandFailed);
    [v24 setErrorCode:SAWLItemNotInListErrorCode];
    v27 = *(a1 + 32);
    if (!v27)
    {
LABEL_23:

      goto LABEL_24;
    }

    v28 = v24;
    goto LABEL_21;
  }

  NSLog(@"WLARemoveContentFromWatchList: No failure response: %@", v6);
  v27 = *(a1 + 32);
  if (v27)
  {
    v28 = objc_alloc_init(SACommandFailed);
    v24 = v28;
LABEL_21:
    v25 = [v28 dictionary];
    (*(v27 + 16))(v27, v25);
    goto LABEL_22;
  }

LABEL_24:
}

void __55__WLARemoveContentFromWatchList_performWithCompletion___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (a2)
  {
    NSLog(@"WLARemoveContentFromWatchList: Successfully removed item.");
    v6 = *(a1 + 32);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = SACommandSucceeded_ptr;
  }

  else
  {
    NSLog(@"WLARemoveContentFromWatchList: Failed to remove item: %@", v5);
    v6 = *(a1 + 32);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = SACommandFailed_ptr;
  }

  v8 = objc_alloc_init(*v7);
  v9 = [v8 dictionary];
  (*(v6 + 16))(v6, v9);

LABEL_7:
}

@end