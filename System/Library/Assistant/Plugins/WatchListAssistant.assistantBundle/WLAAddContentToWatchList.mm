@interface WLAAddContentToWatchList
- (void)performWithCompletion:(id)completion;
@end

@implementation WLAAddContentToWatchList

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  NSLog(@"WLAAddContentToWatchList: Got add content request.");
  v5 = +[WLKSettingsStore sharedSettings];
  optedIn = [v5 optedIn];

  if (optedIn)
  {
    canonicalId = [(WLAAddContentToWatchList *)self canonicalId];

    if (canonicalId)
    {
      v8 = [WLKAddToUpNextRequest alloc];
      canonicalId2 = [(WLAAddContentToWatchList *)self canonicalId];
      v10 = [v8 initWithCanonicalID:canonicalId2];

      canonicalId3 = [(WLAAddContentToWatchList *)self canonicalId];
      NSLog(@"WLAAddContentToWatchList: Will perform add favorite request: %p for canonical: %@", v10, canonicalId3);

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __50__WLAAddContentToWatchList_performWithCompletion___block_invoke;
      v15[3] = &unk_83C8;
      v16 = v10;
      v17 = completionCopy;
      v12 = v10;
      [v12 makeRequestWithCompletion:v15];

LABEL_9:
      goto LABEL_10;
    }

    NSLog(@"WLAAddContentToWatchList: No canonical ID provided.");
    if (completionCopy)
    {
      v13 = objc_alloc_init(SACommandFailed);
      goto LABEL_8;
    }
  }

  else
  {
    NSLog(@"WLAAddContentToWatchList: Not opted in.  Bailing out.");
    if (completionCopy)
    {
      v13 = [[SACommandFailed alloc] initWithErrorCode:9056];
LABEL_8:
      v12 = v13;
      dictionary = [v13 dictionary];
      (*(completionCopy + 2))(completionCopy, dictionary);

      goto LABEL_9;
    }
  }

LABEL_10:
}

void __50__WLAAddContentToWatchList_performWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v12 = v5;
  if (!a2)
  {
    NSLog(@"WLAAddContentToWatchList: Add favorite request failed: %@", v5);
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

  NSLog(@"WLAAddContentToWatchList: Add favorite request succeeded.");
  v6 = [*(a1 + 32) response];
  v7 = [v6 responseType];

  if (v7 != &dword_0 + 1)
  {
    NSLog(@"WLAAddContentToWatchList: Added favorite was not on the list.");
    v9 = *(a1 + 40);
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = SACommandSucceeded;
    goto LABEL_9;
  }

  NSLog(@"WLAAddContentToWatchList: Added favorite was already on the list.");
  v8 = objc_alloc_init(SACommandFailed);
  [v8 setErrorCode:SAWLAllItemsInListErrorCode];
  v9 = *(a1 + 40);
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
}

@end