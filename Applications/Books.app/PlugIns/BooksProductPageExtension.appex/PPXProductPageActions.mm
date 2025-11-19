@interface PPXProductPageActions
+ (id)sharedInstance;
- (PPXProductPageActions)init;
- (void)cancelDownloadForBook:(id)a3;
- (void)dealloc;
- (void)downloadBookWithRedownloadParameters:(id)a3 isAudiobook:(BOOL)a4 hasRacSupport:(BOOL)a5 uiManager:(id)a6 tracker:(id)a7;
- (void)downloadBooks:(id)a3;
- (void)openBook:(id)a3 options:(id)a4;
- (void)openSampleBook:(id)a3 withSampleURL:(id)a4;
- (void)previewAudiobook:(id)a3;
- (void)removeDownload:(id)a3 isAudiobook:(BOOL)a4;
@end

@implementation PPXProductPageActions

+ (id)sharedInstance
{
  if (qword_1000387A8 != -1)
  {
    sub_10001F138();
  }

  v3 = qword_1000387A0;

  return v3;
}

- (PPXProductPageActions)init
{
  v9.receiver = self;
  v9.super_class = PPXProductPageActions;
  v2 = [(PPXProductPageActions *)&v9 init];
  if (v2)
  {
    v3 = [BUNetworkMonitor alloc];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("PPXProductPageActions.networkMonitorQueue", v4);
    v6 = [v3 initWithQueue:v5];
    [(PPXProductPageActions *)v2 setNetworkMonitor:v6];

    v7 = [(PPXProductPageActions *)v2 networkMonitor];
    [v7 start];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(PPXProductPageActions *)self networkMonitor];
  [v3 stop];

  v4.receiver = self;
  v4.super_class = PPXProductPageActions;
  [(PPXProductPageActions *)&v4 dealloc];
}

- (void)removeDownload:(id)a3 isAudiobook:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!v5)
  {
    goto LABEL_14;
  }

  if (!v4)
  {
    v14 = +[BLLibrary defaultBookLibrary];
    v17 = 0;
    [v14 removeBookFromLibraryWithIdentifier:v5 error:&v17];
    v15 = v17;

    if (v15)
    {
      v16 = BCProductPageExtensionLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10001F14C(v15, v16);
      }

      goto LABEL_13;
    }

LABEL_12:
    v15 = BSUIGetLibraryItemStateUpdater();
    [v15 updateStateToDeletedForIdentifier:v5];
LABEL_13:

    goto LABEL_14;
  }

  v6 = +[BLMediaQuery audiobooksQuery];
  if (v6)
  {
    v7 = v6;
    v18 = v5;
    v8 = [NSArray arrayWithObjects:&v18 count:1];
    v9 = [MPMediaPropertyPredicate predicateWithValue:v8 forProperty:MPMediaItemPropertyStorePlaylistID comparisonType:108];
    [v7 addFilterPredicate:v9];
    v10 = +[MPMediaLibrary defaultMediaLibrary];
    v11 = [v7 items];
    v12 = [v10 removeItems:v11];

    v13 = BCProductPageExtensionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001F1C4(v12, v13);
    }

    if (v12)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
}

- (void)downloadBooks:(id)a3
{
  v3 = a3;
  v4 = +[BUAccountsProvider sharedProvider];
  v5 = [v4 activeStoreAccount];
  v6 = [v5 ams_DSID];

  if (v6)
  {
    v26 = v3;
    v7 = [NSSet setWithArray:v3];
    v8 = +[BLJaliscoReadOnlyDAAPClient sharedClient];
    v32 = v6;
    v9 = [NSArray arrayWithObjects:&v32 count:1];
    v25 = v7;
    v10 = [v8 fetchServerItemsForStoreIDs:v7 andDSIDS:v9];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [v16 storeID];
          if (v17)
          {
            v18 = BSUIGetLibraryItemStateUpdater();
            [v18 updateStateToPurchasingForIdentifier:v17];

            v19 = [v16 storeDownloadParameters];
            v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v17 longLongValue]);
            v21 = [BLPurchaseRequest requestWithBuyParameters:v19 storeIdentifier:v20];

            v22 = +[JSABridge sharedInstance];
            v23 = [v22 windowManager];

            v24 = +[BLDownloadQueue sharedInstance];
            [v24 purchaseWithRequest:v21 uiManager:v23 completion:&stru_1000316D8];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v3 = v26;
  }
}

- (void)downloadBookWithRedownloadParameters:(id)a3 isAudiobook:(BOOL)a4 hasRacSupport:(BOOL)a5 uiManager:(id)a6 tracker:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = [BLUtilities storeIDFromBuyParameters:v10];
  v13 = [v12 stringValue];

  v14 = BSUIGetLibraryItemStateUpdater();
  [v14 updateStateToPurchasingForIdentifier:v13];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000051A0;
  v22[3] = &unk_100031728;
  v23 = v10;
  v24 = v13;
  v26 = a4;
  v25 = v11;
  v27 = a5;
  v15 = v11;
  v16 = v13;
  v17 = v10;
  v18 = objc_retainBlock(v22);
  (v18[2])(v18, v19, v20, v21);
}

- (void)cancelDownloadForBook:(id)a3
{
  v3 = a3;
  v4 = +[PPXBLDownloadController sharedController];
  [v4 cancelDownloadForAssetID:v3];
}

- (void)openBook:(id)a3 options:(id)a4
{
  v4 = [NSString stringWithFormat:@"ibooks://storeid/%@", a4, a3];
  v5 = [NSURL URLWithString:v4];
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v11 = 0;
  v7 = [v6 openSensitiveURL:v5 withOptions:0 error:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = BCProductPageExtensionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001F298();
    }
  }
}

- (void)openSampleBook:(id)a3 withSampleURL:(id)a4
{
  v4 = [NSString stringWithFormat:@"itms-bookss://?action=read-sample-book&contentId=%@", a4, a3];
  v5 = [NSURL URLWithString:v4];
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v11 = 0;
  v7 = [v6 openSensitiveURL:v5 withOptions:0 error:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = BCProductPageExtensionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001F300();
    }
  }
}

- (void)previewAudiobook:(id)a3
{
  v3 = [NSString stringWithFormat:@"itms-bookss://?action=preview-audiobook&contentId=%@", a3];
  v4 = [NSURL URLWithString:v3];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v10 = 0;
  v6 = [v5 openSensitiveURL:v4 withOptions:0 error:&v10];
  v7 = v10;

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = BCProductPageExtensionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001F368();
    }
  }
}

@end