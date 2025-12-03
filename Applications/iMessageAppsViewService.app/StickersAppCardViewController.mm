@interface StickersAppCardViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (id)stickersHostViewController;
- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion;
- (void)addStickerAnimationDidFinishWithCompletion:(id)completion;
- (void)addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler;
- (void)addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds;
- (void)addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion;
- (void)animatedStickerCreationProgressChanged:(id)changed progress:(double)progress;
- (void)appPresenterCardDidDismiss:(id)dismiss;
- (void)appPresenterDidDismissFullscreenModal:(id)modal;
- (void)didRemoveStickerPreview;
- (void)didSelectAppWithBundleIdentifier:(id)identifier;
- (void)dismiss;
- (void)presentPopoverAtWindowLocation:(CGRect)location completion:(id)completion;
- (void)requestStageSticker:(id)sticker;
- (void)updateCompactCardHeight:(double)height;
- (void)updatePopoverWindowLocation:(CGRect)location completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation StickersAppCardViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = StickersAppCardViewController;
  [(StickersAppCardViewController *)&v7 viewDidLoad];
  v3 = IMStickersExtensionIdentifier();
  v4 = IMBalloonExtensionIDWithSuffix();
  [IMAAppPresenter loadAppWithIdentifierIfNeeded:v4];

  v5 = objc_alloc_init(IMAAppPresenter);
  appPresenter = self->_appPresenter;
  self->_appPresenter = v5;

  [(IMAAppPresenter *)self->_appPresenter setDelegate:self];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = StickersAppCardViewController;
  coordinatorCopy = coordinator;
  [(StickersAppCardViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000032A4;
  v8[3] = &unk_100010618;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)dismiss
{
  self->_isPresentingStandaloneFullscreenModal = 0;
  _remoteViewControllerProxy = [(StickersAppCardViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismissCard];
}

- (void)requestStageSticker:(id)sticker
{
  stickerCopy = sticker;
  v5 = sub_100007044();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    stickerIdentifier = [stickerCopy stickerIdentifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = stickerIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Staging sticker with identifier %@", &buf, 0xCu);
  }

  _remoteViewControllerProxy = [(StickersAppCardViewController *)self _remoteViewControllerProxy];
  representations = [stickerCopy representations];
  if (!representations)
  {
    fileURL = [stickerCopy fileURL];
    v10 = fileURL == 0;

    if (v10)
    {
      representations = 0;
    }

    else
    {
      fileURL2 = [stickerCopy fileURL];
      representations = [MSSticker _stickerRepresentationsForImageFileURL:fileURL2];
    }
  }

  stickerIdentifier2 = [stickerCopy stickerIdentifier];
  if (!stickerIdentifier2)
  {
    fileURL3 = [stickerCopy fileURL];
    lastPathComponent = [fileURL3 lastPathComponent];
    v15 = lastPathComponent;
    if (lastPathComponent)
    {
      stickerIdentifier2 = lastPathComponent;
    }

    else
    {
      v16 = +[NSUUID UUID];
      stickerIdentifier2 = [v16 UUIDString];
    }
  }

  v17 = objc_opt_new();
  [v17 setIdentifier:stickerIdentifier2];
  [v17 setRepresentations:representations];
  stickerName = [stickerCopy stickerName];
  [v17 setName:stickerName];

  stickerEffectType = [stickerCopy stickerEffectType];
  v20 = stickerEffectType;
  if (!stickerEffectType)
  {
    stickerEffectType = &off_100010A70;
  }

  [v17 setEffectType:{objc_msgSend(stickerEffectType, "intValue")}];

  externalURI = [stickerCopy externalURI];
  [v17 setExternalURI:externalURI];

  accessibilityLabel = [stickerCopy accessibilityLabel];
  [v17 setAccessibilityLabel:accessibilityLabel];

  metadata = [stickerCopy metadata];
  [v17 setMetadata:metadata];

  ckAttributionInfo = [stickerCopy ckAttributionInfo];
  [v17 setAttributionInfo:ckAttributionInfo];

  [_remoteViewControllerProxy stageSticker:v17];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100003778;
  v31[3] = &unk_100010640;
  v25 = stickerCopy;
  v32 = v25;
  v26 = stickerIdentifier2;
  v33 = v26;
  v27 = representations;
  v34 = v27;
  [_remoteViewControllerProxy remoteHandlesRecentsStickerDonationWithCompletionHandler:v31];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v28 = qword_100015E30;
  v38 = qword_100015E30;
  if (!qword_100015E30)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v40 = sub_1000050C4;
    v41 = &unk_100010560;
    v42 = &v35;
    sub_1000050C4(&buf);
    v28 = v36[3];
  }

  v29 = v28;
  _Block_object_dispose(&v35, 8);
  if (objc_opt_respondsToSelector())
  {
    _hostApplicationBundleIdentifier = [(StickersAppCardViewController *)self _hostApplicationBundleIdentifier];
    [v28 trackStickerSentFromHostBundleIdentifier:_hostApplicationBundleIdentifier];
  }
}

- (void)updateCompactCardHeight:(double)height
{
  if (self->_compactHeight != height)
  {
    appPresenter = [(StickersAppCardViewController *)self appPresenter];
    [appPresenter setCompactHeight:height];
    if (self->_compactHeight < height)
    {
      [appPresenter updateAppFrameForRotation];
    }

    self->_compactHeight = height;
  }
}

- (void)presentPopoverAtWindowLocation:(CGRect)location completion:(id)completion
{
  height = location.size.height;
  width = location.size.width;
  y = location.origin.y;
  x = location.origin.x;
  completionCopy = completion;
  v10 = IMStickersExtensionIdentifier();
  v13 = IMBalloonExtensionIDWithSuffix();

  appPresenter = self->_appPresenter;
  view = [(StickersAppCardViewController *)self view];
  [(IMAAppPresenter *)appPresenter presentPopoverAppWithBundleIdentifier:v13 sourceRect:view inView:completionCopy completion:x, y, width, height];
}

- (void)updatePopoverWindowLocation:(CGRect)location completion:(id)completion
{
  height = location.size.height;
  width = location.size.width;
  y = location.origin.y;
  x = location.origin.x;
  appPresenter = self->_appPresenter;
  completionCopy = completion;
  view = [(StickersAppCardViewController *)self view];
  [(IMAAppPresenter *)appPresenter updatePopoverWindowLocation:view inView:completionCopy completion:x, y, width, height];
}

- (void)animatedStickerCreationProgressChanged:(id)changed progress:(double)progress
{
  changedCopy = changed;
  stickersHostViewController = [(StickersAppCardViewController *)self stickersHostViewController];
  [stickersHostViewController _animatedStickerCreationProgressChanged:changedCopy progress:progress];
}

- (void)addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler
{
  representationsCopy = representations;
  handlerCopy = handler;
  stickersHostViewController = [(StickersAppCardViewController *)self stickersHostViewController];
  if (stickersHostViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_initWeak(&location, stickersHostViewController);
    v9 = sub_100007044();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [representationsCopy count];
      *buf = 134217984;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Adding sticker to store with %lu representations", buf, 0xCu);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003E9C;
    v13[3] = &unk_100010668;
    objc_copyWeak(&v15, &location);
    v13[4] = self;
    v14 = handlerCopy;
    [stickersHostViewController _addStickerToStoreWithRepresentations:representationsCopy completionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else if (handlerCopy)
  {
    v11 = sub_100007044();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000730C();
    }

    v12 = [NSError errorWithDomain:IMAErrorDomain code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v12, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
  }
}

- (void)addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds
{
  representationsCopy = representations;
  dsCopy = ds;
  stickersHostViewController = [(StickersAppCardViewController *)self stickersHostViewController];
  if (stickersHostViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_initWeak(&location, stickersHostViewController);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004228;
    v11[3] = &unk_100010690;
    objc_copyWeak(&v13, &location);
    v11[4] = self;
    v12 = dsCopy;
    [stickersHostViewController _addStickerToStoreWithRepresentations:representationsCopy completionWithStickerIDs:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else if (dsCopy)
  {
    v9 = sub_100007044();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000730C();
    }

    v10 = [NSError errorWithDomain:IMAErrorDomain code:1 userInfo:0];
    (*(dsCopy + 2))(dsCopy, 0, v10, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
  }
}

- (void)addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  representationsCopy = representations;
  completionCopy = completion;
  stickersHostViewController = [(StickersAppCardViewController *)self stickersHostViewController];
  if (stickersHostViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000044F8;
    v16[3] = &unk_1000106B8;
    v17 = completionCopy;
    [stickersHostViewController _addStickerToStoreWithRepresentations:representationsCopy sourceRect:v16 completion:{x, y, width, height}];
    v14 = v17;
LABEL_8:

    goto LABEL_9;
  }

  if (completionCopy)
  {
    v15 = sub_100007044();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000730C();
    }

    v14 = [NSError errorWithDomain:IMAErrorDomain code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v14);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  stickerCopy = sticker;
  completionCopy = completion;
  stickersHostViewController = [(StickersAppCardViewController *)self stickersHostViewController];
  if (objc_opt_respondsToSelector())
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000046F8;
    v16[3] = &unk_1000106B8;
    v17 = completionCopy;
    [stickersHostViewController _addStickerToStoreWithUISticker:stickerCopy sourceRect:v16 completion:{x, y, width, height}];
    v14 = v17;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v15 = sub_100007044();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000730C();
    }

    v14 = [NSError errorWithDomain:IMAErrorDomain code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v14);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)addStickerAnimationDidFinishWithCompletion:(id)completion
{
  completionCopy = completion;
  stickersHostViewController = [(StickersAppCardViewController *)self stickersHostViewController];
  if (stickersHostViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [stickersHostViewController _addStickerAnimationDidFinishWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2]();
  }
}

- (void)didRemoveStickerPreview
{
  stickersHostViewController = [(StickersAppCardViewController *)self stickersHostViewController];
  if (stickersHostViewController)
  {
    v3 = stickersHostViewController;
    if (objc_opt_respondsToSelector())
    {
      [v3 _didRemoveStickerPreview];
    }
  }

  _objc_release_x2();
}

- (void)didSelectAppWithBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    [(ImmediatePanGestureRecognizer *)self->_dismissalGestureTracker setEnabled:1];
  }

  else
  {
    [(StickersAppCardViewController *)self dismiss];
  }
}

- (void)appPresenterDidDismissFullscreenModal:(id)modal
{
  if (self->_isPresentingStandaloneFullscreenModal)
  {
    [(StickersAppCardViewController *)self dismiss];
  }
}

- (void)appPresenterCardDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v12 = qword_100015E40;
  v20 = qword_100015E40;
  if (!qword_100015E40)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000527C;
    v16[3] = &unk_100010560;
    v16[4] = &v17;
    sub_10000527C(v16, v4, v5, v6, v7, v8, v9, v10, v15);
    v12 = v18[3];
  }

  v13 = v12;
  _Block_object_dispose(&v17, 8);
  sharedInstance = [v12 sharedInstance];
  if (([sharedInstance stickerDragActiveInCurrentProcess] & 1) == 0)
  {
    [(StickersAppCardViewController *)self dismiss];
  }
}

+ (id)_remoteViewControllerInterface
{
  if (qword_100015E08 != -1)
  {
    sub_1000073C4();
  }

  v3 = qword_100015E00;

  return v3;
}

+ (id)_exportedInterface
{
  if (qword_100015E18 != -1)
  {
    sub_1000073D8();
  }

  v3 = qword_100015E10;

  return v3;
}

- (id)stickersHostViewController
{
  v3 = IMIsStickersStripInCling();
  appPresenter = self->_appPresenter;
  if (v3)
  {
    currentStickerViewController = [(IMAAppPresenter *)appPresenter currentStickerViewController];
  }

  else
  {
    currentAppViewController = [(IMAAppPresenter *)appPresenter currentAppViewController];
    if ([currentAppViewController conformsToProtocol:&OBJC_PROTOCOL___IMAStickerViewController])
    {
      currentStickerViewController = currentAppViewController;
    }

    else
    {
      currentStickerViewController = 0;
    }
  }

  return currentStickerViewController;
}

@end