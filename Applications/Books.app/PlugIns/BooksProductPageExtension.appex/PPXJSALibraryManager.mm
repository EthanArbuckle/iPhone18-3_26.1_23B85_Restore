@interface PPXJSALibraryManager
- (void)addBookToWantToReadCollection:(id)collection :(id)a4 :(id)a5;
- (void)assetsOfPurchasedBooks:(id)books;
- (void)cancelDownloadForBook:(id)book :(id)a4 :(id)a5;
- (void)downloadBooks:(id)books :(id)a4;
- (void)filterPurchasedBooks:(id)books callback:(id)callback;
- (void)getCollectionNameForCollectionID:(id)d :(id)a4;
- (void)getStoreIDsWithAvailableUpdatesWithCompletion:(id)completion;
- (void)getVersion:(id)version;
- (void)openBook:(id)book :(id)a4 :(id)a5 :(id)a6;
- (void)openSampleBook:(id)book downloadSampleURL:(id)l options:(id)options callback:(id)callback tracker:(id)tracker;
- (void)previewAudiobook:(id)audiobook :(id)a4 :(id)a5 :(id)a6;
- (void)removeBookFromWantToReadCollection:(id)collection :(id)a4 :(id)a5;
- (void)showCollection:(id)collection :(id)a4;
- (void)updateBooks:(id)books :(id)a4;
@end

@implementation PPXJSALibraryManager

- (void)getVersion:(id)version
{
  versionCopy = version;
  v4 = +[JSABridge sharedInstance];
  v6 = &off_1000324D8;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 enqueueValueCall:versionCopy arguments:v5 file:@"PPXJSALibraryManager.m" line:36];
}

- (void)addBookToWantToReadCollection:(id)collection :(id)a4 :(id)a5
{
  v7 = a4;
  collectionCopy = collection;
  [PPXBookDataStoreServices addStoreIDToWantToRead:collectionCopy tracker:a5];
  v9 = BSUIGetLibraryItemStateUpdater();
  [v9 updateWantToReadState:1 identifier:collectionCopy];

  v10 = BSUIGetLibraryItemStateUpdater();
  [v10 updateItemOfInterestForItemIdentifier:collectionCopy];

  v11 = +[JSABridge sharedInstance];
  [v11 enqueueValueCall:v7 arguments:0 file:@"PPXJSALibraryManager.m" line:44];
}

- (void)removeBookFromWantToReadCollection:(id)collection :(id)a4 :(id)a5
{
  v7 = a4;
  collectionCopy = collection;
  [PPXBookDataStoreServices removeAssetFromWantToRead:collectionCopy tracker:a5];
  v9 = BSUIGetLibraryItemStateUpdater();
  [v9 updateWantToReadState:0 identifier:collectionCopy];

  v10 = BSUIGetLibraryItemStateUpdater();
  [v10 updateItemOfInterestForItemIdentifier:collectionCopy];

  v11 = +[JSABridge sharedInstance];
  [v11 enqueueValueCall:v7 arguments:0 file:@"PPXJSALibraryManager.m" line:52];
}

- (void)downloadBooks:(id)books :(id)a4
{
  v5 = a4;
  booksCopy = books;
  v7 = +[PPXProductPageActions sharedInstance];
  [v7 downloadBooks:booksCopy];

  v8 = +[JSABridge sharedInstance];
  v10 = &off_100032500;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [v8 enqueueValueCall:v5 arguments:v9 file:@"PPXJSALibraryManager.m" line:60];
}

- (void)openBook:(id)book :(id)a4 :(id)a5 :(id)a6
{
  v8 = a5;
  v9 = a4;
  bookCopy = book;
  v11 = +[PPXProductPageActions sharedInstance];
  [v11 openBook:bookCopy options:v9];

  v12 = +[JSABridge sharedInstance];
  [v12 enqueueValueCall:v8 arguments:0 file:@"PPXJSALibraryManager.m" line:84];
}

- (void)openSampleBook:(id)book downloadSampleURL:(id)l options:(id)options callback:(id)callback tracker:(id)tracker
{
  callbackCopy = callback;
  lCopy = l;
  bookCopy = book;
  v12 = +[PPXProductPageActions sharedInstance];
  [v12 openSampleBook:bookCopy withSampleURL:lCopy];

  v13 = +[JSABridge sharedInstance];
  [v13 enqueueValueCall:callbackCopy arguments:0 file:@"PPXJSALibraryManager.m" line:90];
}

- (void)previewAudiobook:(id)audiobook :(id)a4 :(id)a5 :(id)a6
{
  v7 = a5;
  audiobookCopy = audiobook;
  v9 = +[PPXProductPageActions sharedInstance];
  [v9 previewAudiobook:audiobookCopy];

  v10 = +[JSABridge sharedInstance];
  [v10 enqueueValueCall:v7 arguments:0 file:@"PPXJSALibraryManager.m" line:96];
}

- (void)updateBooks:(id)books :(id)a4
{
  v4 = a4;
  v5 = +[JSABridge sharedInstance];
  [v5 enqueueValueCall:v4 arguments:0 file:@"PPXJSALibraryManager.m" line:102];
}

- (void)cancelDownloadForBook:(id)book :(id)a4 :(id)a5
{
  v6 = a5;
  bookCopy = book;
  v8 = +[PPXProductPageActions sharedInstance];
  [v8 cancelDownloadForBook:bookCopy];

  v9 = +[JSABridge sharedInstance];
  [v9 enqueueValueCall:v6 arguments:0 file:@"PPXJSALibraryManager.m" line:108];
}

- (void)showCollection:(id)collection :(id)a4
{
  v4 = a4;
  v5 = +[JSABridge sharedInstance];
  [v5 enqueueValueCall:v4 arguments:0 file:@"PPXJSALibraryManager.m" line:114];
}

- (void)getCollectionNameForCollectionID:(id)d :(id)a4
{
  dCopy = d;
  v6 = a4;
  if ([v6 isObject])
  {
    v7 = [BCCollection titleForDefaultCollectionID:dCopy];
    if (v7)
    {
      collectionDetailManager = +[JSABridge sharedInstance];
      v13 = v7;
      v9 = [NSArray arrayWithObjects:&v13 count:1];
      [collectionDetailManager enqueueValueCall:v6 arguments:v9 file:@"PPXJSALibraryManager.m" line:124];
    }

    else
    {
      v10 = +[BCCloudCollectionsManager sharedManager];
      collectionDetailManager = [v10 collectionDetailManager];

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000377C;
      v11[3] = &unk_100031468;
      v12 = v6;
      [collectionDetailManager collectionDetailForCollectionID:dCopy completion:v11];
      v9 = v12;
    }
  }
}

- (void)getStoreIDsWithAvailableUpdatesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[JSABridge sharedInstance];
  [v4 enqueueValueCall:completionCopy arguments:&off_100032550 file:@"PPXJSALibraryManager.m" line:136];
}

- (void)filterPurchasedBooks:(id)books callback:(id)callback
{
  booksCopy = books;
  callbackCopy = callback;
  if ([booksCopy isArray])
  {
    toArray = [booksCopy toArray];
  }

  else
  {
    toArray = &__NSArray0__struct;
  }

  v7 = +[JSABridge sharedInstance];
  [v7 enqueueValueCall:callbackCopy arguments:toArray file:@"PPXJSALibraryManager.m" line:143];
}

- (void)assetsOfPurchasedBooks:(id)books
{
  booksCopy = books;
  v4 = +[JSABridge sharedInstance];
  [v4 enqueueValueCall:booksCopy arguments:&__NSArray0__struct file:@"PPXJSALibraryManager.m" line:153];
}

@end