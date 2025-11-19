@interface StickersAppCardViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (id)stickersHostViewController;
- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)addStickerAnimationDidFinishWithCompletion:(id)a3;
- (void)addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4;
- (void)addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4;
- (void)addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)animatedStickerCreationProgressChanged:(id)a3 progress:(double)a4;
- (void)appPresenterCardDidDismiss:(id)a3;
- (void)appPresenterDidDismissFullscreenModal:(id)a3;
- (void)didRemoveStickerPreview;
- (void)didSelectAppWithBundleIdentifier:(id)a3;
- (void)dismiss;
- (void)presentPopoverAtWindowLocation:(CGRect)a3 completion:(id)a4;
- (void)requestStageSticker:(id)a3;
- (void)updateCompactCardHeight:(double)a3;
- (void)updatePopoverWindowLocation:(CGRect)a3 completion:(id)a4;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = StickersAppCardViewController;
  v7 = a4;
  [(StickersAppCardViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000032A4;
  v8[3] = &unk_100010618;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

- (void)dismiss
{
  self->_isPresentingStandaloneFullscreenModal = 0;
  v2 = [(StickersAppCardViewController *)self _remoteViewControllerProxy];
  [v2 dismissCard];
}

- (void)requestStageSticker:(id)a3
{
  v4 = a3;
  v5 = sub_100007044();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 stickerIdentifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Staging sticker with identifier %@", &buf, 0xCu);
  }

  v7 = [(StickersAppCardViewController *)self _remoteViewControllerProxy];
  v8 = [v4 representations];
  if (!v8)
  {
    v9 = [v4 fileURL];
    v10 = v9 == 0;

    if (v10)
    {
      v8 = 0;
    }

    else
    {
      v11 = [v4 fileURL];
      v8 = [MSSticker _stickerRepresentationsForImageFileURL:v11];
    }
  }

  v12 = [v4 stickerIdentifier];
  if (!v12)
  {
    v13 = [v4 fileURL];
    v14 = [v13 lastPathComponent];
    v15 = v14;
    if (v14)
    {
      v12 = v14;
    }

    else
    {
      v16 = +[NSUUID UUID];
      v12 = [v16 UUIDString];
    }
  }

  v17 = objc_opt_new();
  [v17 setIdentifier:v12];
  [v17 setRepresentations:v8];
  v18 = [v4 stickerName];
  [v17 setName:v18];

  v19 = [v4 stickerEffectType];
  v20 = v19;
  if (!v19)
  {
    v19 = &off_100010A70;
  }

  [v17 setEffectType:{objc_msgSend(v19, "intValue")}];

  v21 = [v4 externalURI];
  [v17 setExternalURI:v21];

  v22 = [v4 accessibilityLabel];
  [v17 setAccessibilityLabel:v22];

  v23 = [v4 metadata];
  [v17 setMetadata:v23];

  v24 = [v4 ckAttributionInfo];
  [v17 setAttributionInfo:v24];

  [v7 stageSticker:v17];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100003778;
  v31[3] = &unk_100010640;
  v25 = v4;
  v32 = v25;
  v26 = v12;
  v33 = v26;
  v27 = v8;
  v34 = v27;
  [v7 remoteHandlesRecentsStickerDonationWithCompletionHandler:v31];
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
    v30 = [(StickersAppCardViewController *)self _hostApplicationBundleIdentifier];
    [v28 trackStickerSentFromHostBundleIdentifier:v30];
  }
}

- (void)updateCompactCardHeight:(double)a3
{
  if (self->_compactHeight != a3)
  {
    v5 = [(StickersAppCardViewController *)self appPresenter];
    [v5 setCompactHeight:a3];
    if (self->_compactHeight < a3)
    {
      [v5 updateAppFrameForRotation];
    }

    self->_compactHeight = a3;
  }
}

- (void)presentPopoverAtWindowLocation:(CGRect)a3 completion:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = IMStickersExtensionIdentifier();
  v13 = IMBalloonExtensionIDWithSuffix();

  appPresenter = self->_appPresenter;
  v12 = [(StickersAppCardViewController *)self view];
  [(IMAAppPresenter *)appPresenter presentPopoverAppWithBundleIdentifier:v13 sourceRect:v12 inView:v9 completion:x, y, width, height];
}

- (void)updatePopoverWindowLocation:(CGRect)a3 completion:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  appPresenter = self->_appPresenter;
  v10 = a4;
  v11 = [(StickersAppCardViewController *)self view];
  [(IMAAppPresenter *)appPresenter updatePopoverWindowLocation:v11 inView:v10 completion:x, y, width, height];
}

- (void)animatedStickerCreationProgressChanged:(id)a3 progress:(double)a4
{
  v6 = a3;
  v7 = [(StickersAppCardViewController *)self stickersHostViewController];
  [v7 _animatedStickerCreationProgressChanged:v6 progress:a4];
}

- (void)addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(StickersAppCardViewController *)self stickersHostViewController];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_initWeak(&location, v8);
    v9 = sub_100007044();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 count];
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
    v14 = v7;
    [v8 _addStickerToStoreWithRepresentations:v6 completionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else if (v7)
  {
    v11 = sub_100007044();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000730C();
    }

    v12 = [NSError errorWithDomain:IMAErrorDomain code:1 userInfo:0];
    (*(v7 + 2))(v7, v12, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
  }
}

- (void)addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(StickersAppCardViewController *)self stickersHostViewController];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_initWeak(&location, v8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004228;
    v11[3] = &unk_100010690;
    objc_copyWeak(&v13, &location);
    v11[4] = self;
    v12 = v7;
    [v8 _addStickerToStoreWithRepresentations:v6 completionWithStickerIDs:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else if (v7)
  {
    v9 = sub_100007044();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000730C();
    }

    v10 = [NSError errorWithDomain:IMAErrorDomain code:1 userInfo:0];
    (*(v7 + 2))(v7, 0, v10, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
  }
}

- (void)addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v13 = [(StickersAppCardViewController *)self stickersHostViewController];
  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000044F8;
    v16[3] = &unk_1000106B8;
    v17 = v12;
    [v13 _addStickerToStoreWithRepresentations:v11 sourceRect:v16 completion:{x, y, width, height}];
    v14 = v17;
LABEL_8:

    goto LABEL_9;
  }

  if (v12)
  {
    v15 = sub_100007044();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000730C();
    }

    v14 = [NSError errorWithDomain:IMAErrorDomain code:1 userInfo:0];
    (*(v12 + 2))(v12, 0, v14);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v13 = [(StickersAppCardViewController *)self stickersHostViewController];
  if (objc_opt_respondsToSelector())
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000046F8;
    v16[3] = &unk_1000106B8;
    v17 = v12;
    [v13 _addStickerToStoreWithUISticker:v11 sourceRect:v16 completion:{x, y, width, height}];
    v14 = v17;
LABEL_7:

    goto LABEL_8;
  }

  if (v12)
  {
    v15 = sub_100007044();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000730C();
    }

    v14 = [NSError errorWithDomain:IMAErrorDomain code:1 userInfo:0];
    (*(v12 + 2))(v12, 0, v14);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)addStickerAnimationDidFinishWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(StickersAppCardViewController *)self stickersHostViewController];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 _addStickerAnimationDidFinishWithCompletion:v5];
  }

  else
  {
    v5[2]();
  }
}

- (void)didRemoveStickerPreview
{
  v2 = [(StickersAppCardViewController *)self stickersHostViewController];
  if (v2)
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v3 _didRemoveStickerPreview];
    }
  }

  _objc_release_x2();
}

- (void)didSelectAppWithBundleIdentifier:(id)a3
{
  if (a3)
  {
    [(ImmediatePanGestureRecognizer *)self->_dismissalGestureTracker setEnabled:1];
  }

  else
  {
    [(StickersAppCardViewController *)self dismiss];
  }
}

- (void)appPresenterDidDismissFullscreenModal:(id)a3
{
  if (self->_isPresentingStandaloneFullscreenModal)
  {
    [(StickersAppCardViewController *)self dismiss];
  }
}

- (void)appPresenterCardDidDismiss:(id)a3
{
  v11 = a3;
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
  v14 = [v12 sharedInstance];
  if (([v14 stickerDragActiveInCurrentProcess] & 1) == 0)
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
    v5 = [(IMAAppPresenter *)appPresenter currentStickerViewController];
  }

  else
  {
    v6 = [(IMAAppPresenter *)appPresenter currentAppViewController];
    if ([v6 conformsToProtocol:&OBJC_PROTOCOL___IMAStickerViewController])
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end