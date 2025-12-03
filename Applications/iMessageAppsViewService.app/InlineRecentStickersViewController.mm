@interface InlineRecentStickersViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (id)stickerCollectionViewController:(id)controller requestsMSStickerFromURL:(id)l externalURI:(id)i localizedDescription:(id)description error:(id *)error;
- (void)applyEffect:(int64_t)effect toSticker:(id)sticker completion:(id)completion;
- (void)insertSticker:(id)sticker forceStage:(BOOL)stage frameInRemoteView:(CGRect)view completionHandler:(id)handler;
- (void)requestStageStickerWithIdentifier:(id)identifier representations:(id)representations name:(id)name effectType:(int64_t)type externalURI:(id)i accessibilityLabel:(id)label metadata:(id)metadata ckAttributionInfo:(id)self0;
- (void)setHostBundleID:(id)d;
- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion;
- (void)stickerCollectionViewController:(id)controller didSelectSticker:(id)sticker;
- (void)stickerCollectionViewController:(id)controller didSelectSticker:(id)sticker withFrame:(CGRect)frame;
- (void)stickerCollectionViewController:(id)controller isDonePresentingViewController:(id)viewController;
- (void)stickerCollectionViewController:(id)controller isPresentingViewController:(id)viewController;
- (void)stickerCollectionViewController:(id)controller requestsMSStickerFromSticker:(id)sticker completionHandler:(id)handler;
- (void)stickerCollectionViewControllerPrepareForNewSticker:(id)sticker fromPhotoPicker:(BOOL)picker;
- (void)stickerCollectionViewControllerRequestsMoreStickers:(id)stickers;
- (void)stickerDragCanceled;
- (void)stickerDruidDragEndedWithIMSticker:(id)sticker;
- (void)stickerDruidDragEndedWithMSSticker:(id)sticker;
- (void)stickerDruidDragStarted;
- (void)viewDidLoad;
@end

@implementation InlineRecentStickersViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = InlineRecentStickersViewController;
  [(InlineRecentStickersViewController *)&v12 viewDidLoad];
  view = [(InlineRecentStickersViewController *)self view];
  v4 = +[UIColor clearColor];
  [view setBackgroundColor:v4];

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
    view2 = [v8 view];
    view3 = [(InlineRecentStickersViewController *)self view];
    [view3 bounds];
    [view2 setFrame:?];

    [view2 setAutoresizingMask:18];
    view4 = [(InlineRecentStickersViewController *)self view];
    [view4 addSubview:view2];

    [v8 didMoveToParentViewController:self];
  }
}

- (void)setHostBundleID:(id)d
{
  dCopy = d;
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
    v11 = dCopy;
  }

  else
  {
    v11 = v7;
  }

  [v9 setHostBundleID:v11];
}

- (void)applyEffect:(int64_t)effect toSticker:(id)sticker completion:(id)completion
{
  stickerCopy = sticker;
  completionCopy = completion;
  if (effect < 1 || ([stickerCopy representations], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "indexOfObjectPassingTest:", &stru_1000103F8), v9, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    completionCopy[2](completionCopy, stickerCopy);
  }

  else
  {
    v11 = [VKCStickerEffect effectWithType:effect];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100001638;
    v24 = sub_100001648;
    representations = [stickerCopy representations];
    v25 = [representations objectAtIndexedSubscript:v10];

    v13 = [UIImage alloc];
    data = [v21[5] data];
    v15 = [v13 initWithData:data];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100001650;
    v16[3] = &unk_100010420;
    v19 = &v20;
    v18 = completionCopy;
    v17 = stickerCopy;
    [v11 applyToImage:v15 completion:v16];

    _Block_object_dispose(&v20, 8);
  }
}

- (void)requestStageStickerWithIdentifier:(id)identifier representations:(id)representations name:(id)name effectType:(int64_t)type externalURI:(id)i accessibilityLabel:(id)label metadata:(id)metadata ckAttributionInfo:(id)self0
{
  identifierCopy = identifier;
  representationsCopy = representations;
  nameCopy = name;
  iCopy = i;
  labelCopy = label;
  metadataCopy = metadata;
  infoCopy = info;
  v22 = sub_100007044();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifierCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Staging sticker with identifier %@", &buf, 0xCu);
  }

  v23 = objc_opt_new();
  [v23 setIdentifier:identifierCopy];
  [v23 setRepresentations:representationsCopy];
  [v23 setName:nameCopy];
  [v23 setEffectType:type];
  [v23 setExternalURI:iCopy];
  [v23 setAccessibilityLabel:labelCopy];
  [v23 setMetadata:metadataCopy];
  [v23 setAttributionInfo:infoCopy];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100001A80;
  v45[3] = &unk_100010448;
  v45[4] = self;
  [(InlineRecentStickersViewController *)self applyEffect:type toSticker:v23 completion:v45];
  _remoteProxy = [(InlineRecentStickersViewController *)self _remoteProxy];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100001AE0;
  v36[3] = &unk_100010470;
  v25 = identifierCopy;
  v37 = v25;
  v26 = representationsCopy;
  v38 = v26;
  typeCopy = type;
  v27 = iCopy;
  v39 = v27;
  v28 = nameCopy;
  v40 = v28;
  v29 = labelCopy;
  v41 = v29;
  v30 = metadataCopy;
  v42 = v30;
  v31 = infoCopy;
  v43 = v31;
  [_remoteProxy remoteHandlesRecentsStickerDonationWithCompletionHandler:v36];

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
    _hostApplicationBundleIdentifier = [(InlineRecentStickersViewController *)self _hostApplicationBundleIdentifier];
    [v32 trackStickerSentFromHostBundleIdentifier:_hostApplicationBundleIdentifier];
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

- (void)stickerCollectionViewController:(id)controller didSelectSticker:(id)sticker
{
  v4 = sub_100007044();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000071C4();
  }
}

- (void)stickerCollectionViewController:(id)controller didSelectSticker:(id)sticker withFrame:(CGRect)frame
{
  v5 = sub_100007044();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000071C4();
  }
}

- (void)stickerCollectionViewControllerPrepareForNewSticker:(id)sticker fromPhotoPicker:(BOOL)picker
{
  v4 = sub_100007044();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000071F8();
  }
}

- (void)stickerCollectionViewControllerRequestsMoreStickers:(id)stickers
{
  _remoteViewControllerProxy = [(InlineRecentStickersViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy presentCard];
}

- (void)stickerCollectionViewController:(id)controller requestsMSStickerFromSticker:(id)sticker completionHandler:(id)handler
{
  stickerCopy = sticker;
  handlerCopy = handler;
  representations = [stickerCopy representations];
  v8 = [representations sortedArrayUsingComparator:&stru_100010510];

  v40 = stickerCopy;
  representations2 = [stickerCopy representations];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [representations2 count]);

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
        data = [v16 data];
        [v17 setData:data];

        v19 = [v16 uti];
        identifier = [v19 identifier];
        [v17 setType:identifier];

        [v16 size];
        [v17 setSize:?];
        role = [v16 role];
        [v17 setRole:role];

        [v10 addObject:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v13);
  }

  v22 = [NSMutableDictionary dictionaryWithCapacity:3];
  if (objc_opt_respondsToSelector())
  {
    attributionInfo = [v40 attributionInfo];

    if (attributionInfo)
    {
      attributionInfo2 = [v40 attributionInfo];
      adamID = [attributionInfo2 adamID];
      [v22 setObject:adamID forKeyedSubscript:IMFileTransferAttributionInfoAdamIDKey];

      attributionInfo3 = [v40 attributionInfo];
      bundleIdentifier = [attributionInfo3 bundleIdentifier];
      [v22 setObject:bundleIdentifier forKeyedSubscript:IMFileTransferAttributionInfoBundleIDKey];

      attributionInfo4 = [v40 attributionInfo];
      name = [attributionInfo4 name];
      [v22 setObject:name forKeyedSubscript:IMFileTransferAttributionInfoAppNameKey];
    }
  }

  v30 = v22;
  if (objc_opt_respondsToSelector())
  {
    accessibilityName = [v40 accessibilityName];
  }

  else
  {
    accessibilityName = 0;
  }

  v31 = [MSSticker alloc];
  identifier2 = [v40 identifier];
  name2 = [v40 name];
  effect = [v40 effect];
  externalURI = [v40 externalURI];
  metadata = [v40 metadata];
  v37 = [v31 initWithStickerIdentifier:identifier2 representations:v10 stickerName:name2 effectType:effect externalURI:externalURI localizedDescription:accessibilityName metadata:metadata attributionInfo:v30];

  handlerCopy[2](handlerCopy, v37, 0);
}

- (id)stickerCollectionViewController:(id)controller requestsMSStickerFromURL:(id)l externalURI:(id)i localizedDescription:(id)description error:(id *)error
{
  descriptionCopy = description;
  iCopy = i;
  lCopy = l;
  v13 = [[MSSticker alloc] initWithContentsOfURL:lCopy externalURI:iCopy localizedDescription:descriptionCopy error:error];

  return v13;
}

- (void)stickerCollectionViewController:(id)controller isPresentingViewController:(id)viewController
{
  v4 = sub_100007044();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000722C();
  }
}

- (void)stickerCollectionViewController:(id)controller isDonePresentingViewController:(id)viewController
{
  v4 = sub_100007044();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000722C();
  }
}

- (void)insertSticker:(id)sticker forceStage:(BOOL)stage frameInRemoteView:(CGRect)view completionHandler:(id)handler
{
  stickerCopy = sticker;
  stickerIdentifier = [stickerCopy stickerIdentifier];
  uUIDString = [stickerIdentifier UUIDString];

  if (!uUIDString)
  {
    imageFileURL = [stickerCopy imageFileURL];
    lastPathComponent = [imageFileURL lastPathComponent];
    v11 = lastPathComponent;
    if (lastPathComponent)
    {
      uUIDString = lastPathComponent;
    }

    else
    {
      v12 = +[NSUUID UUID];
      uUIDString = [v12 UUIDString];
    }
  }

  stickerEffectType = [stickerCopy stickerEffectType];
  representations = [stickerCopy representations];
  stickerName = [stickerCopy stickerName];
  externalURI = [stickerCopy externalURI];
  localizedDescription = [stickerCopy localizedDescription];
  metadata = [stickerCopy metadata];
  attributionInfo = [stickerCopy attributionInfo];
  [(InlineRecentStickersViewController *)self requestStageStickerWithIdentifier:uUIDString representations:representations name:stickerName effectType:stickerEffectType externalURI:externalURI accessibilityLabel:localizedDescription metadata:metadata ckAttributionInfo:attributionInfo];
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

- (void)stickerDruidDragEndedWithIMSticker:(id)sticker
{
  stickerCopy = sticker;
  v5 = qword_100015DC0;
  _remoteProxy = [(InlineRecentStickersViewController *)self _remoteProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002814;
  v9[3] = &unk_100010538;
  v10 = stickerCopy;
  v11 = v5;
  v7 = v5;
  v8 = stickerCopy;
  [_remoteProxy remoteHandlesRecentsStickerDonationWithCompletionHandler:v9];
}

- (void)stickerDruidDragEndedWithMSSticker:(id)sticker
{
  stickerCopy = sticker;
  v4 = sub_100001BA8();
  stickerPackGUID = [stickerCopy stickerPackGUID];
  representations = [stickerCopy representations];
  stickerEffectType = [stickerCopy stickerEffectType];
  externalURI = [stickerCopy externalURI];
  stickerName = [stickerCopy stickerName];
  localizedDescription = [stickerCopy localizedDescription];
  metadata = [stickerCopy metadata];
  attributionInfo = [stickerCopy attributionInfo];

  [v4 donateStickerToRecentsWithIdentifier:stickerPackGUID representations:representations stickerEffectType:stickerEffectType externalURI:externalURI name:stickerName accessibilityLabel:localizedDescription metadata:metadata ckAttributionInfo:attributionInfo];
  v13 = qword_100015DB8;
  qword_100015DB8 = 0;

  v14 = qword_100015DC0;
  qword_100015DC0 = 0;
}

- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion
{
  v5 = sub_100007044();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100007260();
  }
}

@end