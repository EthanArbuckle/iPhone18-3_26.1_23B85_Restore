@interface PPXJSALibraryManager
- (void)addBookToWantToReadCollection:(id)a3 :(id)a4 :(id)a5;
- (void)assetsOfPurchasedBooks:(id)a3;
- (void)cancelDownloadForBook:(id)a3 :(id)a4 :(id)a5;
- (void)downloadBooks:(id)a3 :(id)a4;
- (void)filterPurchasedBooks:(id)a3 callback:(id)a4;
- (void)getCollectionNameForCollectionID:(id)a3 :(id)a4;
- (void)getStoreIDsWithAvailableUpdatesWithCompletion:(id)a3;
- (void)getVersion:(id)a3;
- (void)openBook:(id)a3 :(id)a4 :(id)a5 :(id)a6;
- (void)openSampleBook:(id)a3 downloadSampleURL:(id)a4 options:(id)a5 callback:(id)a6 tracker:(id)a7;
- (void)previewAudiobook:(id)a3 :(id)a4 :(id)a5 :(id)a6;
- (void)removeBookFromWantToReadCollection:(id)a3 :(id)a4 :(id)a5;
- (void)showCollection:(id)a3 :(id)a4;
- (void)updateBooks:(id)a3 :(id)a4;
@end

@implementation PPXJSALibraryManager

- (void)getVersion:(id)a3
{
  v3 = a3;
  v4 = +[JSABridge sharedInstance];
  v6 = &off_1000324D8;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 enqueueValueCall:v3 arguments:v5 file:@"PPXJSALibraryManager.m" line:36];
}

- (void)addBookToWantToReadCollection:(id)a3 :(id)a4 :(id)a5
{
  v7 = a4;
  v8 = a3;
  [PPXBookDataStoreServices addStoreIDToWantToRead:v8 tracker:a5];
  v9 = BSUIGetLibraryItemStateUpdater();
  [v9 updateWantToReadState:1 identifier:v8];

  v10 = BSUIGetLibraryItemStateUpdater();
  [v10 updateItemOfInterestForItemIdentifier:v8];

  v11 = +[JSABridge sharedInstance];
  [v11 enqueueValueCall:v7 arguments:0 file:@"PPXJSALibraryManager.m" line:44];
}

- (void)removeBookFromWantToReadCollection:(id)a3 :(id)a4 :(id)a5
{
  v7 = a4;
  v8 = a3;
  [PPXBookDataStoreServices removeAssetFromWantToRead:v8 tracker:a5];
  v9 = BSUIGetLibraryItemStateUpdater();
  [v9 updateWantToReadState:0 identifier:v8];

  v10 = BSUIGetLibraryItemStateUpdater();
  [v10 updateItemOfInterestForItemIdentifier:v8];

  v11 = +[JSABridge sharedInstance];
  [v11 enqueueValueCall:v7 arguments:0 file:@"PPXJSALibraryManager.m" line:52];
}

- (void)downloadBooks:(id)a3 :(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PPXProductPageActions sharedInstance];
  [v7 downloadBooks:v6];

  v8 = +[JSABridge sharedInstance];
  v10 = &off_100032500;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [v8 enqueueValueCall:v5 arguments:v9 file:@"PPXJSALibraryManager.m" line:60];
}

- (void)openBook:(id)a3 :(id)a4 :(id)a5 :(id)a6
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[PPXProductPageActions sharedInstance];
  [v11 openBook:v10 options:v9];

  v12 = +[JSABridge sharedInstance];
  [v12 enqueueValueCall:v8 arguments:0 file:@"PPXJSALibraryManager.m" line:84];
}

- (void)openSampleBook:(id)a3 downloadSampleURL:(id)a4 options:(id)a5 callback:(id)a6 tracker:(id)a7
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = +[PPXProductPageActions sharedInstance];
  [v12 openSampleBook:v11 withSampleURL:v10];

  v13 = +[JSABridge sharedInstance];
  [v13 enqueueValueCall:v9 arguments:0 file:@"PPXJSALibraryManager.m" line:90];
}

- (void)previewAudiobook:(id)a3 :(id)a4 :(id)a5 :(id)a6
{
  v7 = a5;
  v8 = a3;
  v9 = +[PPXProductPageActions sharedInstance];
  [v9 previewAudiobook:v8];

  v10 = +[JSABridge sharedInstance];
  [v10 enqueueValueCall:v7 arguments:0 file:@"PPXJSALibraryManager.m" line:96];
}

- (void)updateBooks:(id)a3 :(id)a4
{
  v4 = a4;
  v5 = +[JSABridge sharedInstance];
  [v5 enqueueValueCall:v4 arguments:0 file:@"PPXJSALibraryManager.m" line:102];
}

- (void)cancelDownloadForBook:(id)a3 :(id)a4 :(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = +[PPXProductPageActions sharedInstance];
  [v8 cancelDownloadForBook:v7];

  v9 = +[JSABridge sharedInstance];
  [v9 enqueueValueCall:v6 arguments:0 file:@"PPXJSALibraryManager.m" line:108];
}

- (void)showCollection:(id)a3 :(id)a4
{
  v4 = a4;
  v5 = +[JSABridge sharedInstance];
  [v5 enqueueValueCall:v4 arguments:0 file:@"PPXJSALibraryManager.m" line:114];
}

- (void)getCollectionNameForCollectionID:(id)a3 :(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isObject])
  {
    v7 = [BCCollection titleForDefaultCollectionID:v5];
    if (v7)
    {
      v8 = +[JSABridge sharedInstance];
      v13 = v7;
      v9 = [NSArray arrayWithObjects:&v13 count:1];
      [v8 enqueueValueCall:v6 arguments:v9 file:@"PPXJSALibraryManager.m" line:124];
    }

    else
    {
      v10 = +[BCCloudCollectionsManager sharedManager];
      v8 = [v10 collectionDetailManager];

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000377C;
      v11[3] = &unk_100031468;
      v12 = v6;
      [v8 collectionDetailForCollectionID:v5 completion:v11];
      v9 = v12;
    }
  }
}

- (void)getStoreIDsWithAvailableUpdatesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[JSABridge sharedInstance];
  [v4 enqueueValueCall:v3 arguments:&off_100032550 file:@"PPXJSALibraryManager.m" line:136];
}

- (void)filterPurchasedBooks:(id)a3 callback:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v8 isArray])
  {
    v6 = [v8 toArray];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = +[JSABridge sharedInstance];
  [v7 enqueueValueCall:v5 arguments:v6 file:@"PPXJSALibraryManager.m" line:143];
}

- (void)assetsOfPurchasedBooks:(id)a3
{
  v3 = a3;
  v4 = +[JSABridge sharedInstance];
  [v4 enqueueValueCall:v3 arguments:&__NSArray0__struct file:@"PPXJSALibraryManager.m" line:153];
}

@end