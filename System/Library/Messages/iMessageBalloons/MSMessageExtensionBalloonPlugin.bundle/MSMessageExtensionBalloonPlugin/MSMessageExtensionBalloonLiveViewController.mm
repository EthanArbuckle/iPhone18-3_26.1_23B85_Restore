@interface MSMessageExtensionBalloonLiveViewController
+ (int64_t)_convertUserInterfaceStyle:(int64_t)a3;
- (BOOL)_hasValidSnapshot;
- (BOOL)_isInShelf;
- (BOOL)_isShowingLoadingView;
- (BOOL)_shouldUseBackwardsCompatibilityOffsets;
- (BOOL)isInShelf;
- (CGSize)contentSize;
- (CGSize)lastRequestSize;
- (CGSize)liveView:(id)a3 sizeThatFits:(CGSize)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (IMPluginPayload)payload;
- (MSMessageExtensionBalloonLiveViewController)initWithDataSource:(id)a3 fromMe:(BOOL)a4 conversationID:(id)a5 recipients:(id)a6;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIImage)appIcon;
- (id)_snapshotView;
- (id)conversationState;
- (id)messageTintColor;
- (id)remoteBalloonViewControllerContextIdentifier:(id)a3;
- (id)snapshotIdentifier;
- (void)_handleApplicationStateResumeFromInActive:(id)a3;
- (void)_handleDynamicTextSizeChange:(id)a3;
- (void)_handleLocaleChange:(id)a3;
- (void)_handleRemoteConnectionInterrupted:(id)a3;
- (void)_handleUpdatedMessageTintColor:(id)a3;
- (void)_initializeContentSize;
- (void)_initializeStaticView;
- (void)_presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7;
- (void)_presentContextMenuWithButtonTitles:(id)a3 imageNames:(id)a4 buttonFrame:(CGRect)a5 completion:(id)a6;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3;
- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap;
- (void)_remoteViewProvidesExplicitSizeSnapshot;
- (void)_requestMessageTintColor;
- (void)_requestResize;
- (void)_swapOutSnapshotView;
- (void)clearShelfPayload;
- (void)configureLiveViewForDisplay:(id)a3;
- (void)createRemoteBalloonViewControllerIsResuming:(BOOL)a3;
- (void)createRemoveViewController;
- (void)dealloc;
- (void)didChangeBackgroundLuminance:(double)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4;
- (void)loadView;
- (void)pluginPayloadDidChangeForLiveView:(id)a3;
- (void)refreshConversationState;
- (void)reloadRemoteViewIsResuming:(BOOL)a3;
- (void)remoteBalloonViewControllerDidLoad:(id)a3;
- (void)remoteBalloonViewControllerWillLoad:(id)a3;
- (void)requestSizeThatFits:(CGSize)a3 presentationStyle:(unint64_t)a4 completionHandler:(id)a5;
- (void)requestSnapshot;
- (void)sendDidBecomeActiveMessage;
- (void)setHasLiveViewSize:(BOOL)a3;
- (void)setNeedsResize:(BOOL)a3;
- (void)startListeningForSnapshotRemovalStatus;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillMoveToWindow:(id)a3;
@end

@implementation MSMessageExtensionBalloonLiveViewController

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = MSMessageExtensionBalloonLiveViewController;
  [(MSMessageExtensionBalloonLiveViewController *)&v5 didMoveToParentViewController:?];
  if (!a3)
  {
    [(_MSRemoteBalloonViewController *)self->_remoteViewController purgeRemoteViewController];
  }
}

- (void)dealloc
{
  v3 = [(MSMessageExtensionBalloonLiveViewController *)self sizeUpdater];
  [v3 invalidate];

  [(_MSRemoteBalloonViewController *)self->_remoteViewController setDelegate:0];
  v4.receiver = self;
  v4.super_class = MSMessageExtensionBalloonLiveViewController;
  [(MSMessageExtensionBalloonLiveViewController *)&v4 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = MSMessageExtensionBalloonLiveViewController;
  [(MSMessageExtensionBalloonLiveViewController *)&v4 viewDidLayoutSubviews];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17A90;
  block[3] = &unk_4CE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)viewWillAppear:(BOOL)a3
{
  v25.receiver = self;
  v25.super_class = MSMessageExtensionBalloonLiveViewController;
  [(MSMessageExtensionBalloonLiveViewController *)&v25 viewWillAppear:a3];
  v4 = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
  v5 = [v4 wantsLoadingView];

  if ((v5 & 1) == 0)
  {
    [(MSMessageExtensionBalloonLiveViewController *)self createRemoveViewController];
  }

  v6 = [(MSMessageExtensionBalloonLiveViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
  v12 = vabdd_f64(v8, v11);
  v14 = vabdd_f64(v10, v13);

  if (v12 >= 0.00000011920929 || v14 >= 0.00000011920929)
  {
    v16 = ms_defaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(MSMessageExtensionBalloonLiveViewController *)self view];
      [v17 bounds];
      v32.width = v18;
      v32.height = v19;
      v20 = NSStringFromCGSize(v32);
      [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
      v21 = NSStringFromCGSize(v33);
      v22 = [(MSMessageBalloonLiveViewController *)self dataSource];
      v23 = [v22 messageGUID];
      *buf = 138412802;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "LiveBubble. NeedResize because current view size %@ != contentSize %@ for messageGUID: %@", buf, 0x20u);
    }

    v24 = [(MSMessageBalloonLiveViewController *)self dataSource];
    [v24 needsResize];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MSMessageExtensionBalloonLiveViewController;
  [(MSMessageExtensionBalloonLiveViewController *)&v7 viewDidAppear:a3];
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_2D3BC();
  }

  v5 = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
  v6 = [v5 wantsLoadingView];

  if (v6)
  {
    [(MSMessageExtensionBalloonLiveViewController *)self createRemoveViewController];
  }
}

- (void)createRemoveViewController
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 isRunningTest:CKPluginChatItemPPTName];

  if (v4)
  {
    v5 = dispatch_time(0, 10000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_17E54;
    block[3] = &unk_4CE30;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }

  else
  {

    [(MSMessageExtensionBalloonLiveViewController *)self createRemoteBalloonViewControllerIsResuming:0];
  }
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  *a4 = 1;
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)messageTintColor
{
  if (!self->_haveUpToDateMessageTintColor)
  {
    [(MSMessageExtensionBalloonLiveViewController *)self _requestMessageTintColor];
  }

  lastKnownMessageTintColor = self->_lastKnownMessageTintColor;

  return lastKnownMessageTintColor;
}

- (void)_requestMessageTintColor
{
  v3 = [(MSMessageExtensionBalloonLiveViewController *)self _remoteProxy];
  if (v3)
  {
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1805C;
    v5[3] = &unk_4D588;
    objc_copyWeak(&v6, &location);
    [v3 _requestMessageTintColor:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_2D3F0();
    }
  }
}

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18230;
  block[3] = &unk_4D560;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_handleUpdatedMessageTintColor:(id)a3
{
  self->_haveUpToDateMessageTintColor = 1;
  objc_storeStrong(&self->_lastKnownMessageTintColor, a3);
  v4 = [(MSMessageBalloonLiveViewController *)self tintColorDelegate];
  [v4 liveViewControllerDidUpdateMessageTintColor:self];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_18450;
  v10[3] = &unk_4D5B0;
  v10[4] = self;
  [(MSMessageExtensionBalloonLiveViewController *)self requestSizeThatFits:2 presentationStyle:v10 completionHandler:a3.width, a3.height];
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
    v5 = NSStringFromCGSize(v15);
    v6 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v7 = [v6 messageGUID];
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "LiveBubble. Returning contentSize: %@ | messageGUID: %@", buf, 0x16u);
  }

  [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setNeedsResize:(BOOL)a3
{
  if (self->_needsResize != a3)
  {
    self->_needsResize = a3;
    if (a3)
    {
      [(MSMessageExtensionBalloonLiveViewController *)self beginHoldingSnapshotForReason:3];
      height = CGSizeZero.height;

      [(MSMessageExtensionBalloonLiveViewController *)self setLastRequestSize:CGSizeZero.width, height];
    }
  }
}

- (void)setHasLiveViewSize:(BOOL)a3
{
  if (self->_hasLiveViewSize != a3)
  {
    self->_hasLiveViewSize = a3;
    if (a3)
    {
      [(MSMessageExtensionBalloonLiveViewController *)self endHoldingSnapshotForReason:0];
    }

    else
    {
      [(MSMessageExtensionBalloonLiveViewController *)self beginHoldingSnapshotForReason:0];
    }
  }
}

- (void)requestSizeThatFits:(CGSize)a3 presentationStyle:(unint64_t)a4 completionHandler:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  if ([(MSMessageExtensionBalloonLiveViewController *)self needsResize])
  {
    v10 = [(MSMessageExtensionBalloonLiveViewController *)self _remoteProxy];
    v11 = v10 == 0;

    v12 = ms_defaultLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v34 = [(MSMessageBalloonLiveViewController *)self dataSource];
        v35 = [v34 messageGUID];
        remoteViewController = self->_remoteViewController;
        *buf = 138412546;
        v49 = v35;
        v50 = 2112;
        v51 = remoteViewController;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "LiveBubble. Early returning size request for messageGUID: %@. Reason: remoteProxy is nil, remoteViewController %@", buf, 0x16u);
      }

      [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
      v9[2](v9, 0);
    }

    else
    {
      if (v13)
      {
        v14 = [(MSMessageBalloonLiveViewController *)self dataSource];
        v15 = [v14 messageGUID];
        *buf = 138412290;
        v49 = v15;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "LiveBubble. Attempting to request new size for messageGUID: %@", buf, 0xCu);
      }

      [(MSMessageExtensionBalloonLiveViewController *)self lastRequestSize];
      v18 = CGSizeZero.height;
      v19 = vabdd_f64(CGSizeZero.width, width) >= 0.00000011920929;
      v20 = vabdd_f64(v18, height) >= 0.00000011920929 || v19;
      v21 = vabdd_f64(v16, width) >= 0.00000011920929;
      v22 = vabdd_f64(v17, height) >= 0.00000011920929 || v21;
      [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
      v24 = vabdd_f64(v23, CGSizeZero.width);
      v26 = vabdd_f64(v25, v18) < 0.00000011920929 && v24 < 0.00000011920929;
      if (v26 || (v20 & v22 & 1) != 0)
      {
        [(MSMessageExtensionBalloonLiveViewController *)self setLastRequestSize:width, height];
        v37 = [(MSMessageExtensionBalloonLiveViewController *)self sizeUpdater];
        [v37 invalidate];

        [(MSMessageExtensionBalloonLiveViewController *)self setSizeUpdater:0];
        v38 = +[UIApplication sharedApplication];
        LOBYTE(v37) = [v38 isRunningTest];

        objc_initWeak(buf, self);
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_18AA4;
        v44[3] = &unk_4D628;
        v46[1] = *&width;
        v46[2] = *&height;
        v46[3] = a4;
        objc_copyWeak(v46, buf);
        v44[4] = self;
        v45 = v9;
        v47 = v37;
        v39 = objc_retainBlock(v44);
        v40 = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
        LODWORD(v38) = [v40 wantsLoadingView];

        if (v38)
        {
          v41 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v39 block:0.25];
          [(MSMessageExtensionBalloonLiveViewController *)self setSizeUpdater:v41];
        }

        else
        {
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_19138;
          v42[3] = &unk_4CFE8;
          v43 = v39;
          dispatch_async(&_dispatch_main_q, v42);
          v41 = v43;
        }

        objc_destroyWeak(v46);
        objc_destroyWeak(buf);
      }

      else
      {
        v27 = ms_defaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [(MSMessageBalloonLiveViewController *)self dataSource];
          v29 = [v28 messageGUID];
          v30 = [NSNumber numberWithBool:v22];
          v31 = [NSNumber numberWithBool:v20];
          [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
          v32 = NSStringFromCGSize(v58);
          v33 = [NSNumber numberWithBool:[(MSMessageExtensionBalloonLiveViewController *)self needsResize]];
          *buf = 138413314;
          v49 = v29;
          v50 = 2112;
          v51 = v30;
          v52 = 2112;
          v53 = v31;
          v54 = 2112;
          v55 = v32;
          v56 = 2112;
          v57 = v33;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "LiveBubble. Early returning size request for messageGUID : %@ | lastRequestSize != size : %@ | size != 0 : %@| current contentSize : %@ | needsResize : %@", buf, 0x34u);
        }

        [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
        v9[2](v9, 0);
      }
    }
  }

  else
  {
    [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
    v9[2](v9, 0);
  }
}

- (void)requestSnapshot
{
  v3 = [(MSMessageExtensionBalloonLiveViewController *)self _shouldUseBackwardsCompatibilityOffsets];
  v4 = [(MSMessageExtensionBalloonLiveViewController *)self view];
  v5 = [v4 staticView];
  if (v5)
  {

LABEL_7:
    v16 = ms_defaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(MSMessageBalloonLiveViewController *)self dataSource];
      v18 = [v17 messageGUID];
      v19 = [(MSMessageExtensionBalloonLiveViewController *)self view];
      v20 = [v19 staticView];
      v21 = [(MSMessageExtensionBalloonLiveViewController *)self view];
      [v21 bounds];
      v45.width = v22;
      v45.height = v23;
      v24 = NSStringFromCGSize(v45);
      [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
      v25 = NSStringFromCGSize(v46);
      *buf = 138413058;
      v38 = v18;
      v39 = 2112;
      v40 = v20;
      v41 = 2112;
      v42 = v24;
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "LiveBubble. Not taking snapshot for messageGUID: %@. staticView %@ != nil or current view size %@ != contentSize %@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  v6 = [(MSMessageExtensionBalloonLiveViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
  v12 = vabdd_f64(v8, v11);
  v14 = vabdd_f64(v10, v13);

  if (v12 >= 0.00000011920929 || v14 >= 0.00000011920929)
  {
    goto LABEL_7;
  }

  v26 = [(MSMessageExtensionBalloonLiveViewController *)self _isInShelf];
  v27 = ms_defaultLog();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v28)
    {
      v29 = [(MSMessageBalloonLiveViewController *)self dataSource];
      v30 = [v29 messageGUID];
      *buf = 138412290;
      v38 = v30;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "LiveBubble. Took snapshot for shelf message. messageGUID: %@ ", buf, 0xCu);
    }

    v31 = [(MSMessageExtensionBalloonLiveViewController *)self view];
    v16 = [v31 snapshotViewAfterScreenUpdates:0];

    [(MSMessageExtensionBalloonLiveViewController *)self setSnapshotView:v16];
  }

  else
  {
    if (v28)
    {
      v32 = [(MSMessageExtensionBalloonLiveViewController *)self payload];
      v33 = [v32 messageGUID];
      *buf = 138412290;
      v38 = v33;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "LiveBubble. Requesting snapshot for messageGUID: %@", buf, 0xCu);
    }

    if ([(_MSRemoteBalloonViewController *)self->_remoteViewController providesExplicitSizeSnapshot])
    {
      [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
      v16 = [NSValue valueWithCGSize:?];
    }

    else
    {
      v16 = 0;
    }

    v34 = [(MSMessageExtensionBalloonLiveViewController *)self _remoteProxy];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_194F8;
    v35[3] = &unk_4D678;
    v35[4] = self;
    v36 = v3;
    [v34 _requestSnapshotThatFits:v16 completion:v35];
  }

LABEL_9:
}

- (id)snapshotIdentifier
{
  if ([(MSMessageExtensionBalloonLiveViewController *)self _isInShelf])
  {
    v3 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v4 = [v3 chat];
    v5 = [v4 guid];
    v6 = [NSString stringWithFormat:@"%@-ShelfIdentifier", v5];
  }

  else
  {
    v3 = [(MSMessageExtensionBalloonLiveViewController *)self payload];
    v6 = [v3 messageGUID];
  }

  return v6;
}

- (void)clearShelfPayload
{
  if ([(MSMessageExtensionBalloonLiveViewController *)self _isInShelf])
  {
    v3 = [(_MSRemoteBalloonViewController *)self->_remoteViewController requestUUID];
    if (v3)
    {
      v10 = v3;
      v4 = +[IMBalloonPluginManager sharedInstance];
      v5 = [(MSMessageBalloonLiveViewController *)self dataSource];
      v6 = [v5 pluginPayload];
      v7 = [v6 pluginBundleID];
      v8 = [v4 balloonPluginForBundleID:v7];

      v9 = [v8 extension];
      [v9 cancelExtensionRequestWithIdentifier:v10];

      v3 = v10;
    }
  }
}

- (void)reloadRemoteViewIsResuming:(BOOL)a3
{
  v3 = a3;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2D444();
  }

  [(MSMessageExtensionBalloonLiveViewController *)self createRemoteBalloonViewControllerIsResuming:v3];
}

- (id)conversationState
{
  v2 = [(MSMessageBalloonLiveViewController *)self conversationStateFactory];
  v3 = [v2 conversationState];

  return v3;
}

- (MSMessageExtensionBalloonLiveViewController)initWithDataSource:(id)a3 fromMe:(BOOL)a4 conversationID:(id)a5 recipients:(id)a6
{
  v12.receiver = self;
  v12.super_class = MSMessageExtensionBalloonLiveViewController;
  v6 = [(MSMessageBalloonLiveViewController *)&v12 initWithDataSource:a3 fromMe:a4 conversationID:a5 recipients:a6];
  if (v6)
  {
    v7 = objc_alloc_init(_TtC31MSMessageExtensionBalloonPlugin29MSExtensionViewLoadingTracker);
    snapshotTracker = v6->_snapshotTracker;
    v6->_snapshotTracker = v7;

    [(MSMessageExtensionBalloonLiveViewController *)v6 startListeningForSnapshotRemovalStatus];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v6 selector:"_handleDynamicTextSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
    [v9 addObserver:v6 selector:"_handleLocaleChange:" name:NSCurrentLocaleDidChangeNotification object:0];
    [v9 addObserver:v6 selector:"_handleRemoteConnectionInterrupted:" name:IMExtensionRemoteConnectionWasInterrupted object:0];
    if (CKIsRunningInMacCatalyst())
    {
      [v9 addObserver:v6 selector:"_handleApplicationStateResumeFromInActive:" name:CKApplicationStateResumeFromInActiveNotification object:0];
    }

    if (CKIsRunningInCarouselNotification())
    {
      v10 = ms_defaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_2D478();
      }

      [(MSMessageExtensionBalloonLiveViewController *)v6 createRemoteBalloonViewControllerIsResuming:0];
    }
  }

  return v6;
}

- (void)loadView
{
  v3 = [MSMessageExtensionBalloonLiveView alloc];
  v4 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v5 = [(MSMessageExtensionBalloonLiveView *)v3 initWithFrame:v4 dataSource:self->_isFromMe fromMe:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MSMessageExtensionBalloonLiveViewController *)self setView:v5];

  v6 = [(MSMessageExtensionBalloonLiveViewController *)self view];
  [v6 setDelegate:self];

  v7 = [MSMessageExtensionBalloonLoadingView alloc];
  v8 = [(MSMessageExtensionBalloonLiveViewController *)self appIcon];
  v9 = [(MSMessageExtensionBalloonLoadingView *)v7 initWithAppIcon:v8 fromMe:self->_isFromMe];

  [(MSMessageExtensionBalloonLiveViewController *)self setLoadingView:v9];
  [(MSMessageExtensionBalloonLiveViewController *)self _initializeStaticView];
  [(MSMessageExtensionBalloonLiveViewController *)self _initializeContentSize];
  if (![(MSMessageExtensionBalloonLiveViewController *)self _hasValidSnapshot]|| [(MSMessageExtensionBalloonLiveViewController *)self _isShowingLoadingView])
  {
    [(MSMessageExtensionBalloonLiveViewController *)self setNeedsResize:1];
  }

  v10 = ms_defaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v12 = [v11 messageGUID];
    [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
    v13 = NSStringFromCGSize(v27);
    v14 = [(MSMessageExtensionBalloonLiveViewController *)self view];
    v15 = [v14 staticView];
    v16 = [NSNumber numberWithBool:[(MSMessageExtensionBalloonLiveViewController *)self _hasValidSnapshot]];
    v19 = 138413058;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "LiveBubble. Initialized with messageGUID: %@, contentSize: %@, staticView: %@, hasValidSnapshot: %@", &v19, 0x2Au);
  }

  v17 = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
  v18 = [(MSMessageExtensionBalloonLiveViewController *)self view];
  [v18 updateIconForPlugin:v17];
}

- (void)_initializeStaticView
{
  v4 = [(MSMessageExtensionBalloonLiveViewController *)self _snapshotView];
  v3 = [(MSMessageExtensionBalloonLiveViewController *)self view];
  [v3 setStaticView:v4];
}

- (BOOL)_isInShelf
{
  v2 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v3 = [v2 payloadInShelf];

  return v3;
}

- (BOOL)_isShowingLoadingView
{
  v3 = [(MSMessageExtensionBalloonLiveViewController *)self view];
  v4 = [v3 staticView];
  if (v4)
  {
    v5 = [(MSMessageExtensionBalloonLiveViewController *)self view];
    v6 = [v5 staticView];
    v7 = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_initializeContentSize
{
  v25 = [(MSMessageExtensionBalloonLiveViewController *)self view];
  v3 = [v25 staticView];
  v4 = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];

  if (v3 == v4)
  {
    v13 = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];
    v14 = [(MSMessageExtensionBalloonLiveViewController *)self view];
    [v14 bounds];
    [v13 sizeThatFits:{v15, v16}];
    v18 = v17;
    v20 = v19;

    v21 = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];
    v8 = 0.0;
    [v21 setFrame:{0.0, 0.0, v18, v20}];

    v22 = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
    LODWORD(v14) = [v22 wantsLoadingView];

    v10 = 0.0;
    if (!v14)
    {
      goto LABEL_7;
    }

    v11 = [v25 staticView];
    [v11 bounds];
    v8 = v23;
    v10 = v24;
  }

  else
  {
    v5 = [v25 staticView];
    [v5 sizeToFit];

    v6 = [v25 staticView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;

    if (![(MSMessageExtensionBalloonLiveViewController *)self _shouldUseBackwardsCompatibilityOffsets])
    {
      goto LABEL_7;
    }

    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 pluginBackwardsCompatibilityLeadingTrailingOffset];
    v8 = v8 + v12 * -2.0;
  }

LABEL_7:
  [(MSMessageExtensionBalloonLiveViewController *)self setContentSize:v8, v10];
}

+ (int64_t)_convertUserInterfaceStyle:(int64_t)a3
{
  if (a3 >= 3)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (id)_snapshotView
{
  snapshotView = self->_snapshotView;
  if (snapshotView)
  {
    goto LABEL_23;
  }

  v4 = [NSString stringWithFormat:@"%@-LiveBubbleSendAnimation", @"ShelfIdentifier"];
  v5 = [CKSnapshotUtilities _snapshotViewForGUID:v4];
  if (!v5)
  {
    v6 = [(MSMessageExtensionBalloonLiveViewController *)self snapshotIdentifier];
    v5 = [CKSnapshotUtilities _snapshotViewForGUID:v6];
  }

  v7 = [(MSMessageExtensionBalloonLiveViewController *)self snapshotIdentifier];

  v8 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v9 = [v8 chat];
  v10 = [v9 transcriptBackgroundGUID];

  if (v10)
  {
    v11 = 2;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = +[UIWindow keyWindow];
    v13 = [v12 traitCollection];
    v11 = +[MSMessageExtensionBalloonLiveViewController _convertUserInterfaceStyle:](MSMessageExtensionBalloonLiveViewController, "_convertUserInterfaceStyle:", [v13 userInterfaceStyle]);

    if (!v5)
    {
LABEL_8:
      v14 = [(MSMessageExtensionBalloonLiveViewController *)self snapshotIdentifier];
      v15 = [CKSnapshotUtilities snapshotExistsForGUID:v14 interfaceStyle:v11];

      if (!v15)
      {
        goto LABEL_19;
      }

      v16 = [CKSnapshotUtilities snapshotForGUID:v7 interfaceStyle:v11];
      v17 = [UIImageView alloc];
      v18 = [v16 image];
      v5 = [v17 initWithImage:v18];

      [v16 messageTintColor];
      v20 = v19;
      [v16 messageTintColor];
      v22 = v21;
      [v16 messageTintColor];
      v24 = v23;
      [v16 messageTintColor];
      v25 = [UIColor colorWithRed:v20 green:v22 blue:v24 alpha:?];
      [v16 messageTintColor];
      if (IMColorComponentsIsZero())
      {

        v25 = 0;
      }

      v26 = ms_defaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        [v16 messageTintColor];
        v28 = v27;
        [v16 messageTintColor];
        v30 = v29;
        [v16 messageTintColor];
        *buf = 134218496;
        v45 = v28;
        v46 = 2048;
        v47 = v30;
        v48 = 2048;
        v49 = v31;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "tint color: color %f %f %f", buf, 0x20u);
      }

      v32 = ms_defaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(MSMessageExtensionBalloonLiveViewController *)self snapshotIdentifier];
        *buf = 138412546;
        v45 = v25;
        v46 = 2112;
        v47 = v33;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "LiveBubble. Snapshot Tint color %@ for messageGUID: %@", buf, 0x16u);
      }

      if (v25)
      {
        v34 = [(MSMessageExtensionBalloonLiveViewController *)self lastKnownMessageTintColor];
        v35 = [(UIView *)v25 isEqual:v34];

        if ((v35 & 1) == 0)
        {
          [(MSMessageExtensionBalloonLiveViewController *)self setLastKnownMessageTintColor:v25];
          v36 = [(MSMessageBalloonLiveViewController *)self tintColorDelegate];
          [v36 liveViewControllerDidUpdateMessageTintColor:self];
        }
      }

      if (!v5)
      {
LABEL_19:
        v5 = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];
        v37 = [(MSMessageExtensionBalloonLiveViewController *)self view];
        [v37 setForceHideAppIcon:1];
      }
    }
  }

  v38 = ms_defaultLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v40 = [v39 messageGUID];
    *buf = 138412546;
    v45 = v5;
    v46 = 2112;
    v47 = v40;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "LiveBubble. Setting snapshotView to %@. messageGUID: %@", buf, 0x16u);
  }

  v41 = self->_snapshotView;
  self->_snapshotView = v5;

  v42 = [(MSMessageExtensionBalloonLiveViewController *)self traitCollection];
  -[MSMessageExtensionBalloonLiveViewController setSnapshotViewInterfaceStyle:](self, "setSnapshotViewInterfaceStyle:", [v42 userInterfaceStyle]);

  snapshotView = self->_snapshotView;
LABEL_23:

  return snapshotView;
}

- (UIImage)appIcon
{
  appIcon = self->_appIcon;
  if (!appIcon)
  {
    v4 = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
    v5 = [(MSMessageExtensionBalloonLiveViewController *)self traitCollection];
    v6 = [v4 __ck_browserImageForInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];

    if (!v6)
    {
      v7 = [(MSMessageExtensionBalloonLiveViewController *)self payload];
      v8 = [v7 payloadDictionary];

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1A9C4;
      v11[3] = &unk_4D470;
      v11[4] = self;
      v6 = [IMBalloonPlugin __ck_appIconFromPayloadDictionary:v8 withCompletionBlock:v11];
    }

    v9 = self->_appIcon;
    self->_appIcon = v6;

    appIcon = self->_appIcon;
  }

  return appIcon;
}

- (BOOL)_hasValidSnapshot
{
  v3 = [(MSMessageExtensionBalloonLiveViewController *)self _snapshotView];
  if (v3)
  {
    v4 = [(MSMessageExtensionBalloonLiveViewController *)self _snapshotView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (IMPluginPayload)payload
{
  v2 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v3 = [v2 pluginPayload];

  return v3;
}

- (void)_handleDynamicTextSizeChange:(id)a3
{
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v6 = [v5 messageGUID];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "LiveBubble. Handling dynamic text size change. messageGUID: %@", &v7, 0xCu);
  }

  [(MSMessageExtensionBalloonLiveViewController *)self setNeedsResize:1];
}

- (void)_handleLocaleChange:(id)a3
{
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v6 = [v5 messageGUID];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "LiveBubble. Handling locale change. messageGUID: %@", &v7, 0xCu);
  }

  [(MSMessageExtensionBalloonLiveViewController *)self setNeedsResize:1];
}

- (void)configureLiveViewForDisplay:(id)a3
{
  v4 = a3;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v7 = [v6 messageGUID];
    v8 = [NSNumber numberWithBool:[(_MSRemoteBalloonViewController *)self->_remoteViewController loadedRemoteView]];
    v9 = [NSNumber numberWithBool:[(_MSRemoteBalloonViewController *)self->_remoteViewController isReadyToDisplay]];
    v15 = 138413058;
    v16 = v4;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "LiveBubble. Configuring live view for display. LiveView: %@ | messageGUD: %@ | loadedRemoteView: %@ | isReadyForDisplay: %@", &v15, 0x2Au);
  }

  if (![(MSMessageExtensionBalloonLiveViewController *)self _isInShelf])
  {
    if ([(_MSRemoteBalloonViewController *)self->_remoteViewController loadedRemoteView]&& [(_MSRemoteBalloonViewController *)self->_remoteViewController isReadyToDisplay])
    {
      [(MSMessageExtensionBalloonLiveViewController *)self endHoldingSnapshotForReason:4];
    }

    else
    {
      v10 = [(MSMessageExtensionBalloonLiveViewController *)self traitCollection];
      v11 = [v10 userInterfaceStyle];
      v12 = [(MSMessageExtensionBalloonLiveViewController *)self snapshotViewInterfaceStyle];

      if (v11 != v12)
      {
        [(MSMessageExtensionBalloonLiveViewController *)self setSnapshotView:0];
      }

      v13 = [(MSMessageExtensionBalloonLiveViewController *)self view];
      v14 = [(MSMessageExtensionBalloonLiveViewController *)self _snapshotView];
      [v13 setStaticView:v14];
    }
  }
}

- (void)refreshConversationState
{
  v5 = [(MSMessageExtensionBalloonLiveViewController *)self conversationState];
  v3 = [(MSMessageExtensionBalloonLiveViewController *)self _remoteProxy];
  v4 = [v5 activeMessage];
  [v3 _didUpdateMessage:v4 conversationState:v5];
}

- (void)pluginPayloadDidChangeForLiveView:(id)a3
{
  v8 = a3;
  v4 = [(MSMessageExtensionBalloonLiveViewController *)self payload];
  v5 = [v8 dataSource];
  v6 = [v5 pluginPayload];

  if (v4 != v6)
  {
    v7 = [v8 dataSource];
    [(MSMessageBalloonLiveViewController *)self setDataSource:v7];

    [(MSMessageExtensionBalloonLiveViewController *)self refreshConversationState];
  }
}

- (void)viewWillMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = MSMessageExtensionBalloonLiveViewController;
  [(MSMessageExtensionBalloonLiveViewController *)&v5 viewWillMoveToWindow:?];
  if (a3)
  {
    [(MSMessageExtensionBalloonLiveViewController *)self endHoldingSnapshotForReason:1];
  }

  else
  {
    [(MSMessageExtensionBalloonLiveViewController *)self beginHoldingSnapshotForReason:1];
  }
}

- (CGSize)liveView:(id)a3 sizeThatFits:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if ([(MSMessageExtensionBalloonLiveViewController *)self needsResize])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [(MSMessageBalloonLiveViewController *)self dataSource];
        v10 = [v9 messageGUID];
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "LiveBubble. We don't have a good size as we need to resize. Returning the sizeThatFits size. messageGUID: %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
    width = v11;
    height = v12;
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_handleRemoteConnectionInterrupted:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:IMExtensionRemoteConnectionInterruptedBundleIdentifier];
  v6 = ms_defaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v8 = [v7 messageGUID];
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "LiveBubble. Handling extension interruption for bundleID %@. messageGUID: %@", &v13, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v10 = [v9 bundleID];

    if ([v10 isEqualToIgnoringCase:v5])
    {
      v11 = [(MSMessageExtensionBalloonLiveViewController *)self view];
      [(MSMessageExtensionBalloonLiveViewController *)self _initializeStaticView];
      [(_MSRemoteBalloonViewController *)self->_remoteViewController handleRemoteInterruption];
      [(_MSRemoteBalloonViewController *)self->_remoteViewController willMoveToParentViewController:0];
      [v11 setRemoteBalloonView:0];
      [(_MSRemoteBalloonViewController *)self->_remoteViewController removeFromParentViewController];
      remoteViewController = self->_remoteViewController;
      self->_remoteViewController = 0;
    }
  }
}

- (void)_handleApplicationStateResumeFromInActive:(id)a3
{
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_2D4AC();
  }

  [(MSMessageExtensionBalloonLiveViewController *)self createRemoteBalloonViewControllerIsResuming:1];
}

- (void)remoteBalloonViewControllerWillLoad:(id)a3
{
  v4 = [(_MSRemoteBalloonViewController *)self->_remoteViewController extensionContext];
  [v4 setDelegate:self];
}

- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  remoteViewController = self->_remoteViewController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1B550;
  v9[3] = &unk_4D378;
  v10 = v6;
  v8 = v6;
  [(_MSRemoteBalloonViewController *)remoteViewController fetchInternalMessageStateForDraft:v4 completion:v9];
}

- (void)didChangeBackgroundLuminance:(double)a3
{
  [(MSMessageExtensionBalloonLiveViewController *)self setBackgroundLuminance:a3];
  remoteViewController = self->_remoteViewController;
  [(MSMessageExtensionBalloonLiveViewController *)self backgroundLuminance];

  [(_MSRemoteBalloonViewController *)remoteViewController didChangeBackgroundLuminance:?];
}

- (void)remoteBalloonViewControllerDidLoad:(id)a3
{
  v4 = a3;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:[(MSMessageExtensionBalloonLiveViewController *)self needsResize]];
    v7 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v8 = [v7 messageGUID];
    v9 = [NSNumber numberWithBool:[(_MSRemoteBalloonViewController *)self->_remoteViewController isReadyToDisplay]];
    v10 = [NSNumber numberWithBool:[(MSMessageExtensionBalloonLiveViewController *)self _hasValidSnapshot]];
    *buf = 138413314;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "LiveBubble remoteBalloonViewController did load remoteBalloonViewController: %@,  needsResize: %@ messageGUID: %@ isReadyToDisplay: %@ hasValidSnapshot: %@", buf, 0x34u);
  }

  [(MSMessageExtensionBalloonLiveViewController *)self sendDidBecomeActiveMessage];
  [(MSMessageExtensionBalloonLiveViewController *)self _requestMessageTintColor];
  if (![(_MSRemoteBalloonViewController *)self->_remoteViewController isReadyToDisplay])
  {
    [(MSMessageExtensionBalloonLiveViewController *)self beginHoldingSnapshotForReason:4];
  }

  if ([(MSMessageExtensionBalloonLiveViewController *)self _isInShelf])
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:IMPayloadDidLoadContent object:0];
  }

  else if ([(MSMessageExtensionBalloonLiveViewController *)self needsResize]|| ![(MSMessageExtensionBalloonLiveViewController *)self _hasValidSnapshot])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1B81C;
    block[3] = &unk_4CE30;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)remoteBalloonViewControllerContextIdentifier:(id)a3
{
  v4 = [(MSMessageBalloonLiveViewController *)self delegate];
  v5 = [v4 liveViewControllerContextIdentifier:self];

  return v5;
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MSEntitlementChecker alloc];
  v18 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v19 = [(MSEntitlementChecker *)v17 initWithDataSource:v18 requestIdentifierProvider:self];

  if ([(MSEntitlementChecker *)v19 hasEntitlement:@"com.apple.messages.private.AllowAlertPresentation"])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1BA8C;
    v21[3] = &unk_4D6A0;
    v22 = v12;
    v23 = v13;
    v24 = v15;
    v25 = v14;
    v26 = self;
    v27 = v16;
    dispatch_async(&_dispatch_main_q, v21);

    v20 = v22;
  }

  else
  {
    v20 = ms_defaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_2D4E0();
    }
  }
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MSEntitlementChecker alloc];
  v18 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v19 = [(MSEntitlementChecker *)v17 initWithDataSource:v18 requestIdentifierProvider:self];

  if ([(MSEntitlementChecker *)v19 hasEntitlement:@"com.apple.messages.private.AllowAlertPresentation"])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1BD64;
    v21[3] = &unk_4D150;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = self;
    v27 = v16;
    v26 = v15;
    dispatch_async(&_dispatch_main_q, v21);

    v20 = v22;
  }

  else
  {
    v20 = ms_defaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_2D4E0();
    }
  }
}

- (void)_presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MSEntitlementChecker alloc];
  v18 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v19 = [(MSEntitlementChecker *)v17 initWithDataSource:v18 requestIdentifierProvider:self];

  if (![(MSEntitlementChecker *)v19 hasEntitlement:@"com.apple.messages.private.AllowAlertPresentation"])
  {
    v21 = ms_defaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_2D4E0();
    }

LABEL_6:

    goto LABEL_7;
  }

  v20 = [v14 count];
  if (v20 != [v15 count])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_7;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "LiveBubble. We don't have matching number of button titles to styles. Abort.", buf, 2u);
    }

    goto LABEL_6;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1C26C;
  v22[3] = &unk_4D6A0;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = self;
  v28 = v16;
  dispatch_async(&_dispatch_main_q, v22);

LABEL_7:
}

- (void)_presentContextMenuWithButtonTitles:(id)a3 imageNames:(id)a4 buttonFrame:(CGRect)a5 completion:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1C80C;
  v15[3] = &unk_4D768;
  v15[4] = self;
  v16 = a3;
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  v17 = a4;
  v18 = a6;
  v12 = v18;
  v13 = v17;
  v14 = v16;
  dispatch_async(&_dispatch_main_q, v15);
}

- (void)_remoteViewProvidesExplicitSizeSnapshot
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1CBE4;
  block[3] = &unk_4CE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1CD40;
  block[3] = &unk_4CE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_remoteViewDidBecomeReadyForDisplay
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1CE9C;
  block[3] = &unk_4CE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_requestResize
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1D008;
  block[3] = &unk_4CE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)_shouldUseBackwardsCompatibilityOffsets
{
  v3 = +[IMBalloonPluginManager sharedInstance];
  v4 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v5 = [v4 pluginPayload];
  v6 = [v5 pluginBundleID];
  v7 = [v3 balloonPluginForBundleID:v6];

  LOBYTE(v4) = [v7 linkedBeforeSDKVersion:@"19.0"];
  return v4;
}

- (BOOL)isInShelf
{
  v2 = [(MSMessageExtensionBalloonLiveViewController *)self payload];
  v3 = [v2 messageGUID];
  v4 = v3 == 0;

  return v4;
}

- (void)_swapOutSnapshotView
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v5 = [v4 messageGUID];
    *buf = 138412290;
    v30 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "LiveBubble swapping out snapshotView GUID: %@", buf, 0xCu);
  }

  v6 = [(MSMessageExtensionBalloonLiveViewController *)self _isShowingLoadingView];
  v7 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v8 = [v7 payloadInShelf];

  v9 = [(MSMessageExtensionBalloonLiveViewController *)self view];
  v10 = [(_MSRemoteBalloonViewController *)self->_remoteViewController view];
  v11 = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];
  if (v6)
  {
    [v10 setAlpha:0.33];
    v12 = 1.0;
    if (v8)
    {
      v12 = 0.0;
    }

    [v11 setAlpha:v12];
    v13 = [v9 iconView];
    [v13 setAlpha:0.0];

    v14 = [v11 layer];
    [v14 setValue:&off_4EAA8 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    v15 = [v10 layer];
    [v15 setValue:&off_4EAC0 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }

  [v9 setRemoteBalloonView:v10];
  [v9 setForceHideAppIcon:0];
  v16 = [(MSMessageExtensionBalloonLiveViewController *)self snapshotView];

  if (v16)
  {
    [(MSMessageExtensionBalloonLiveViewController *)self setSnapshotView:0];
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1D4F4;
  v26[3] = &unk_4CF20;
  v17 = v9;
  v27 = v17;
  v28 = self;
  v18 = objc_retainBlock(v26);
  v19 = v18;
  if (v6)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1D538;
    v22[3] = &unk_4D0B0;
    v23 = v10;
    v24 = v11;
    v25 = v17;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1D624;
    v20[3] = &unk_4D268;
    v21 = v19;
    [UIView animateWithDuration:0 delay:v22 options:v20 animations:0.25 completion:0.0];
  }

  else
  {
    (v18[2])(v18);
  }
}

- (void)createRemoteBalloonViewControllerIsResuming:(BOOL)a3
{
  if (![(MSMessageExtensionBalloonLiveViewController *)self _applicationStateIsBackground]|| a3)
  {
    if (self->_remoteViewController)
    {
      return;
    }

    v5 = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
    v8 = [(MSMessageBalloonLiveViewController *)self recipients];
    v9 = [v5 shouldShowForRecipients:v8];

    if ((v9 & 1) == 0)
    {
      v7 = ms_defaultLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v10 = [(MSMessageBalloonLiveViewController *)self dataSource];
      v11 = [v10 messageGUID];
      v26 = 138412290;
      v27 = v11;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "LiveBubble. Plugin should not be shown for specified recipients. messageGUID: %@", &v26, 0xCu);

LABEL_31:
      goto LABEL_32;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 extension];
    }

    else
    {
      v7 = 0;
    }

    v12 = ms_defaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_2D5FC(v7, v12);
    }

    v13 = [(MSMessageExtensionBalloonLiveViewController *)self payload];
    v14 = [v13 messageGUID];
    v15 = v14;
    v16 = @"_MSRemoteBalloonViewControllerShelfIdentifier";
    if (v14)
    {
      v16 = v14;
    }

    v11 = v16;

    v17 = ms_defaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_2D690();
    }

    if (v7)
    {
      v18 = [[_MSRemoteBalloonViewController alloc] initWithExtension:v7 identifier:v11];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_23;
      }

      v18 = [[_MSRemoteBalloonViewController alloc] initWithPlugin:v5 identifier:v11];
    }

    remoteViewController = self->_remoteViewController;
    self->_remoteViewController = v18;

LABEL_23:
    if (self->_remoteViewController)
    {
      if ([(MSMessageExtensionBalloonLiveViewController *)self shouldPerformSendAnimationOnAppear])
      {
        [(_MSRemoteBalloonViewController *)self->_remoteViewController setShouldPerformSendAnimationOnAppear];
      }

      v20 = self->_remoteViewController;
      [(MSMessageExtensionBalloonLiveViewController *)self backgroundLuminance];
      [(_MSRemoteBalloonViewController *)v20 didChangeBackgroundLuminance:?];
      [(MSMessageExtensionBalloonLiveViewController *)self _requestMessageTintColor];
      [(_MSRemoteBalloonViewController *)self->_remoteViewController setDelegate:self];
      [(MSMessageExtensionBalloonLiveViewController *)self addChildViewController:self->_remoteViewController];
      v21 = [(MSMessageExtensionBalloonLiveViewController *)self view];
      v22 = [v21 window];

      if (!v22)
      {
        v23 = ms_defaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_2D704(self, v23);
        }
      }

      v24 = [(_MSRemoteBalloonViewController *)self->_remoteViewController view];
      v25 = [(MSMessageExtensionBalloonLiveViewController *)self view];
      [v25 setRemoteBalloonView:v24];

      [(_MSRemoteBalloonViewController *)self->_remoteViewController didMoveToParentViewController:self];
    }

    goto LABEL_31;
  }

  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v7 = [v6 messageGUID];
    v26 = 138412290;
    v27 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "LiveBubble. ApplicationState is background and not resuming. messageGUID: %@", &v26, 0xCu);

LABEL_32:
  }
}

- (void)sendDidBecomeActiveMessage
{
  remoteViewController = self->_remoteViewController;
  v5 = [(MSMessageExtensionBalloonLiveViewController *)self conversationState];
  v4 = [(MSMessageExtensionBalloonLiveViewController *)self payload];
  -[_MSRemoteBalloonViewController becomeActiveWithConversationState:liveEditableInEntryView:](remoteViewController, "becomeActiveWithConversationState:liveEditableInEntryView:", v5, [v4 liveEditableInEntryView]);
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)lastRequestSize
{
  width = self->_lastRequestSize.width;
  height = self->_lastRequestSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)startListeningForSnapshotRemovalStatus
{
  sub_25640(&qword_570B0);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = sub_2DCD8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2DCB8();
  v7 = self;

  v8 = sub_2DCA8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;

  sub_270C0(0, 0, v4, &unk_37F38, v9);
}

@end