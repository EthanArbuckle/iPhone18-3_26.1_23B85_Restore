@interface InlineRecentStickersViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (id)stickerCollectionViewController:(id)a3 requestsMSStickerFromURL:(id)a4 externalURI:(id)a5 localizedDescription:(id)a6 error:(id *)a7;
- (void)applyEffect:(int64_t)a3 toSticker:(id)a4 completion:(id)a5;
- (void)insertSticker:(id)a3 forceStage:(BOOL)a4 frameInRemoteView:(CGRect)a5 completionHandler:(id)a6;
- (void)requestStageStickerWithIdentifier:(id)a3 representations:(id)a4 name:(id)a5 effectType:(int64_t)a6 externalURI:(id)a7 accessibilityLabel:(id)a8 metadata:(id)a9 ckAttributionInfo:(id)a10;
- (void)setHostBundleID:(id)a3;
- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5;
- (void)stickerCollectionViewController:(id)a3 didSelectSticker:(id)a4;
- (void)stickerCollectionViewController:(id)a3 didSelectSticker:(id)a4 withFrame:(CGRect)a5;
- (void)stickerCollectionViewController:(id)a3 isDonePresentingViewController:(id)a4;
- (void)stickerCollectionViewController:(id)a3 isPresentingViewController:(id)a4;
- (void)stickerCollectionViewController:(id)a3 requestsMSStickerFromSticker:(id)a4 completionHandler:(id)a5;
- (void)stickerCollectionViewControllerPrepareForNewSticker:(id)a3 fromPhotoPicker:(BOOL)a4;
- (void)stickerCollectionViewControllerRequestsMoreStickers:(id)a3;
- (void)stickerDragCanceled;
- (void)stickerDruidDragEndedWithIMSticker:(id)a3;
- (void)stickerDruidDragEndedWithMSSticker:(id)a3;
- (void)stickerDruidDragStarted;
- (void)viewDidLoad;
@end

@implementation InlineRecentStickersViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = InlineRecentStickersViewController;
  [(InlineRecentStickersViewController *)&v12 viewDidLoad];
  v3 = [(InlineRecentStickersViewController *)self view];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  if (IMIsStickersStripInCling())
  {
    v5 = +[_MSStickerSendManager sharedInstance];
    [v5 setDelegate:self];

    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v6 = qword_100015DC8;
    v17 = qword_100015DC8;
    if (!qword_100015DC8)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100002A24;
      v13[3] = &unk_100010560;
      v13[4] = &v14;
      sub_100002A24(v13);
      v6 = v15[3];
    }

    v7 = v6;
    _Block_object_dispose(&v14, 8);
    v8 = objc_alloc_init(v6);
    [v8 setDelegate:self];
    [(InlineRecentStickersViewController *)self addChildViewController:v8];
    v9 = [v8 view];
    v10 = [(InlineRecentStickersViewController *)self view];
    [v10 bounds];
    [v9 setFrame:?];

    [v9 setAutoresizingMask:18];
    v11 = [(InlineRecentStickersViewController *)self view];
    [v11 addSubview:v9];

    [v8 didMoveToParentViewController:self];
  }
}

- (void)setHostBundleID:(id)a3
{
  v4 = a3;
  [(InlineRecentStickersViewController *)self _hostAuditToken];
  v5 = SecTaskCreateWithAuditToken(0, &v12);
  if (v5)
  {
    v6 = v5;
    v7 = SecTaskCopyValueForEntitlement(v5, @"application-identifier", 0);
    CFRelease(v6);
  }

  else
  {
    v7 = &stru_1000108B0;
  }

  v8 = [(__CFString *)v7 isEqualToString:@"com.apple.InputUI"];
  v9 = +[_MSStickerSendManager sharedInstance];
  v10 = v9;
  if (v8)
  {
    v11 = v4;
  }

  else
  {
    v11 = v7;
  }

  [v9 setHostBundleID:v11];
}

- (void)applyEffect:(int64_t)a3 toSticker:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 < 1 || ([v7 representations], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "indexOfObjectPassingTest:", &stru_1000103F8), v9, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v8[2](v8, v7);
  }

  else
  {
    v11 = [VKCStickerEffect effectWithType:a3];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100001638;
    v24 = sub_100001648;
    v12 = [v7 representations];
    v25 = [v12 objectAtIndexedSubscript:v10];

    v13 = [UIImage alloc];
    v14 = [v21[5] data];
    v15 = [v13 initWithData:v14];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100001650;
    v16[3] = &unk_100010420;
    v19 = &v20;
    v18 = v8;
    v17 = v7;
    [v11 applyToImage:v15 completion:v16];

    _Block_object_dispose(&v20, 8);
  }
}

- (void)requestStageStickerWithIdentifier:(id)a3 representations:(id)a4 name:(id)a5 effectType:(int64_t)a6 externalURI:(id)a7 accessibilityLabel:(id)a8 metadata:(id)a9 ckAttributionInfo:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = sub_100007044();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Staging sticker with identifier %@", &buf, 0xCu);
  }

  v23 = objc_opt_new();
  [v23 setIdentifier:v15];
  [v23 setRepresentations:v16];
  [v23 setName:v17];
  [v23 setEffectType:a6];
  [v23 setExternalURI:v18];
  [v23 setAccessibilityLabel:v19];
  [v23 setMetadata:v20];
  [v23 setAttributionInfo:v21];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100001A80;
  v45[3] = &unk_100010448;
  v45[4] = self;
  [(InlineRecentStickersViewController *)self applyEffect:a6 toSticker:v23 completion:v45];
  v24 = [(InlineRecentStickersViewController *)self _remoteProxy];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100001AE0;
  v36[3] = &unk_100010470;
  v25 = v15;
  v37 = v25;
  v26 = v16;
  v38 = v26;
  v44 = a6;
  v27 = v18;
  v39 = v27;
  v28 = v17;
  v40 = v28;
  v29 = v19;
  v41 = v29;
  v30 = v20;
  v42 = v30;
  v31 = v21;
  v43 = v31;
  [v24 remoteHandlesRecentsStickerDonationWithCompletionHandler:v36];

  v46 = 0;
  v47 = &v46;
  v48 = 0x2050000000;
  v32 = qword_100015DE8;
  v49 = qword_100015DE8;
  if (!qword_100015DE8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v51 = sub_100002D94;
    v52 = &unk_100010560;
    v53 = &v46;
    sub_100002D94(&buf);
    v32 = v47[3];
  }

  v33 = v32;
  _Block_object_dispose(&v46, 8);
  if (objc_opt_respondsToSelector())
  {
    v34 = [(InlineRecentStickersViewController *)self _hostApplicationBundleIdentifier];
    [v32 trackStickerSentFromHostBundleIdentifier:v34];
  }
}

+ (id)_remoteViewControllerInterface
{
  if (qword_100015DA0 != -1)
  {
    sub_10000719C();
  }

  v3 = qword_100015D98;

  return v3;
}

+ (id)_exportedInterface
{
  if (qword_100015DB0 != -1)
  {
    sub_1000071B0();
  }

  v3 = qword_100015DA8;

  return v3;
}

- (void)stickerCollectionViewController:(id)a3 didSelectSticker:(id)a4
{
  v4 = sub_100007044();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000071C4();
  }
}

- (void)stickerCollectionViewController:(id)a3 didSelectSticker:(id)a4 withFrame:(CGRect)a5
{
  v5 = sub_100007044();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000071C4();
  }
}

- (void)stickerCollectionViewControllerPrepareForNewSticker:(id)a3 fromPhotoPicker:(BOOL)a4
{
  v4 = sub_100007044();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000071F8();
  }
}

- (void)stickerCollectionViewControllerRequestsMoreStickers:(id)a3
{
  v3 = [(InlineRecentStickersViewController *)self _remoteViewControllerProxy];
  [v3 presentCard];
}

- (void)stickerCollectionViewController:(id)a3 requestsMSStickerFromSticker:(id)a4 completionHandler:(id)a5
{
  v6 = a4;
  v39 = a5;
  v7 = [v6 representations];
  v8 = [v7 sortedArrayUsingComparator:&stru_100010510];

  v40 = v6;
  v9 = [v6 representations];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        v17 = objc_opt_new();
        v18 = [v16 data];
        [v17 setData:v18];

        v19 = [v16 uti];
        v20 = [v19 identifier];
        [v17 setType:v20];

        [v16 size];
        [v17 setSize:?];
        v21 = [v16 role];
        [v17 setRole:v21];

        [v10 addObject:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v13);
  }

  v22 = [NSMutableDictionary dictionaryWithCapacity:3];
  if (objc_opt_respondsToSelector())
  {
    v23 = [v40 attributionInfo];

    if (v23)
    {
      v24 = [v40 attributionInfo];
      v25 = [v24 adamID];
      [v22 setObject:v25 forKeyedSubscript:IMFileTransferAttributionInfoAdamIDKey];

      v26 = [v40 attributionInfo];
      v27 = [v26 bundleIdentifier];
      [v22 setObject:v27 forKeyedSubscript:IMFileTransferAttributionInfoBundleIDKey];

      v28 = [v40 attributionInfo];
      v29 = [v28 name];
      [v22 setObject:v29 forKeyedSubscript:IMFileTransferAttributionInfoAppNameKey];
    }
  }

  v30 = v22;
  if (objc_opt_respondsToSelector())
  {
    v38 = [v40 accessibilityName];
  }

  else
  {
    v38 = 0;
  }

  v31 = [MSSticker alloc];
  v32 = [v40 identifier];
  v33 = [v40 name];
  v34 = [v40 effect];
  v35 = [v40 externalURI];
  v36 = [v40 metadata];
  v37 = [v31 initWithStickerIdentifier:v32 representations:v10 stickerName:v33 effectType:v34 externalURI:v35 localizedDescription:v38 metadata:v36 attributionInfo:v30];

  v39[2](v39, v37, 0);
}

- (id)stickerCollectionViewController:(id)a3 requestsMSStickerFromURL:(id)a4 externalURI:(id)a5 localizedDescription:(id)a6 error:(id *)a7
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[MSSticker alloc] initWithContentsOfURL:v12 externalURI:v11 localizedDescription:v10 error:a7];

  return v13;
}

- (void)stickerCollectionViewController:(id)a3 isPresentingViewController:(id)a4
{
  v4 = sub_100007044();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000722C();
  }
}

- (void)stickerCollectionViewController:(id)a3 isDonePresentingViewController:(id)a4
{
  v4 = sub_100007044();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000722C();
  }
}

- (void)insertSticker:(id)a3 forceStage:(BOOL)a4 frameInRemoteView:(CGRect)a5 completionHandler:(id)a6
{
  v20 = a3;
  v7 = [v20 stickerIdentifier];
  v8 = [v7 UUIDString];

  if (!v8)
  {
    v9 = [v20 imageFileURL];
    v10 = [v9 lastPathComponent];
    v11 = v10;
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v12 = +[NSUUID UUID];
      v8 = [v12 UUIDString];
    }
  }

  v13 = [v20 stickerEffectType];
  v14 = [v20 representations];
  v15 = [v20 stickerName];
  v16 = [v20 externalURI];
  v17 = [v20 localizedDescription];
  v18 = [v20 metadata];
  v19 = [v20 attributionInfo];
  [(InlineRecentStickersViewController *)self requestStageStickerWithIdentifier:v8 representations:v14 name:v15 effectType:v13 externalURI:v16 accessibilityLabel:v17 metadata:v18 ckAttributionInfo:v19];
}

- (void)stickerDragCanceled
{
  v2 = qword_100015DB8;
  qword_100015DB8 = 0;

  v3 = qword_100015DC0;
  qword_100015DC0 = 0;
}

- (void)stickerDruidDragStarted
{
  objc_storeStrong(&qword_100015DB8, self);
  qword_100015DC0 = +[NSUUID UUID];

  _objc_release_x1();
}

- (void)stickerDruidDragEndedWithIMSticker:(id)a3
{
  v4 = a3;
  v5 = qword_100015DC0;
  v6 = [(InlineRecentStickersViewController *)self _remoteProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002814;
  v9[3] = &unk_100010538;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  [v6 remoteHandlesRecentsStickerDonationWithCompletionHandler:v9];
}

- (void)stickerDruidDragEndedWithMSSticker:(id)a3
{
  v3 = a3;
  v4 = sub_100001BA8();
  v5 = [v3 stickerPackGUID];
  v6 = [v3 representations];
  v7 = [v3 stickerEffectType];
  v8 = [v3 externalURI];
  v9 = [v3 stickerName];
  v10 = [v3 localizedDescription];
  v11 = [v3 metadata];
  v12 = [v3 attributionInfo];

  [v4 donateStickerToRecentsWithIdentifier:v5 representations:v6 stickerEffectType:v7 externalURI:v8 name:v9 accessibilityLabel:v10 metadata:v11 ckAttributionInfo:v12];
  v13 = qword_100015DB8;
  qword_100015DB8 = 0;

  v14 = qword_100015DC0;
  qword_100015DC0 = 0;
}

- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v5 = sub_100007044();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100007260();
  }
}

@end