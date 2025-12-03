@interface MSMessageExtensionBalloonLiveViewController
+ (int64_t)_convertUserInterfaceStyle:(int64_t)style;
- (BOOL)_hasValidSnapshot;
- (BOOL)_isInShelf;
- (BOOL)_isShowingLoadingView;
- (BOOL)_shouldUseBackwardsCompatibilityOffsets;
- (BOOL)isInShelf;
- (CGSize)contentSize;
- (CGSize)lastRequestSize;
- (CGSize)liveView:(id)view sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (IMPluginPayload)payload;
- (MSMessageExtensionBalloonLiveViewController)initWithDataSource:(id)source fromMe:(BOOL)me conversationID:(id)d recipients:(id)recipients;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIImage)appIcon;
- (id)_snapshotView;
- (id)conversationState;
- (id)messageTintColor;
- (id)remoteBalloonViewControllerContextIdentifier:(id)identifier;
- (id)snapshotIdentifier;
- (void)_handleApplicationStateResumeFromInActive:(id)active;
- (void)_handleDynamicTextSizeChange:(id)change;
- (void)_handleLocaleChange:(id)change;
- (void)_handleRemoteConnectionInterrupted:(id)interrupted;
- (void)_handleUpdatedMessageTintColor:(id)color;
- (void)_initializeContentSize;
- (void)_initializeStaticView;
- (void)_presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion;
- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion;
- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion;
- (void)_presentContextMenuWithButtonTitles:(id)titles imageNames:(id)names buttonFrame:(CGRect)frame completion:(id)completion;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color;
- (void)_remoteViewNeedsSizeMatchBeforeSnapshotSwap;
- (void)_remoteViewProvidesExplicitSizeSnapshot;
- (void)_requestMessageTintColor;
- (void)_requestResize;
- (void)_swapOutSnapshotView;
- (void)clearShelfPayload;
- (void)configureLiveViewForDisplay:(id)display;
- (void)createRemoteBalloonViewControllerIsResuming:(BOOL)resuming;
- (void)createRemoveViewController;
- (void)dealloc;
- (void)didChangeBackgroundLuminance:(double)luminance;
- (void)didMoveToParentViewController:(id)controller;
- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion;
- (void)loadView;
- (void)pluginPayloadDidChangeForLiveView:(id)view;
- (void)refreshConversationState;
- (void)reloadRemoteViewIsResuming:(BOOL)resuming;
- (void)remoteBalloonViewControllerDidLoad:(id)load;
- (void)remoteBalloonViewControllerWillLoad:(id)load;
- (void)requestSizeThatFits:(CGSize)fits presentationStyle:(unint64_t)style completionHandler:(id)handler;
- (void)requestSnapshot;
- (void)sendDidBecomeActiveMessage;
- (void)setHasLiveViewSize:(BOOL)size;
- (void)setNeedsResize:(BOOL)resize;
- (void)startListeningForSnapshotRemovalStatus;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillMoveToWindow:(id)window;
@end

@implementation MSMessageExtensionBalloonLiveViewController

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = MSMessageExtensionBalloonLiveViewController;
  [(MSMessageExtensionBalloonLiveViewController *)&v5 didMoveToParentViewController:?];
  if (!controller)
  {
    [(_MSRemoteBalloonViewController *)self->_remoteViewController purgeRemoteViewController];
  }
}

- (void)dealloc
{
  sizeUpdater = [(MSMessageExtensionBalloonLiveViewController *)self sizeUpdater];
  [sizeUpdater invalidate];

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

- (void)viewWillAppear:(BOOL)appear
{
  v25.receiver = self;
  v25.super_class = MSMessageExtensionBalloonLiveViewController;
  [(MSMessageExtensionBalloonLiveViewController *)&v25 viewWillAppear:appear];
  balloonPlugin = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
  wantsLoadingView = [balloonPlugin wantsLoadingView];

  if ((wantsLoadingView & 1) == 0)
  {
    [(MSMessageExtensionBalloonLiveViewController *)self createRemoveViewController];
  }

  view = [(MSMessageExtensionBalloonLiveViewController *)self view];
  [view bounds];
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
      view2 = [(MSMessageExtensionBalloonLiveViewController *)self view];
      [view2 bounds];
      v32.width = v18;
      v32.height = v19;
      v20 = NSStringFromCGSize(v32);
      [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
      v21 = NSStringFromCGSize(v33);
      dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
      messageGUID = [dataSource messageGUID];
      *buf = 138412802;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = messageGUID;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "LiveBubble. NeedResize because current view size %@ != contentSize %@ for messageGUID: %@", buf, 0x20u);
    }

    dataSource2 = [(MSMessageBalloonLiveViewController *)self dataSource];
    [dataSource2 needsResize];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MSMessageExtensionBalloonLiveViewController;
  [(MSMessageExtensionBalloonLiveViewController *)&v7 viewDidAppear:appear];
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_2D3BC();
  }

  balloonPlugin = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
  wantsLoadingView = [balloonPlugin wantsLoadingView];

  if (wantsLoadingView)
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

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  *absolute = 1;
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
  _remoteProxy = [(MSMessageExtensionBalloonLiveViewController *)self _remoteProxy];
  if (_remoteProxy)
  {
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1805C;
    v5[3] = &unk_4D588;
    objc_copyWeak(&v6, &location);
    [_remoteProxy _requestMessageTintColor:v5];
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

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color
{
  colorCopy = color;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18230;
  block[3] = &unk_4D560;
  objc_copyWeak(&v8, &location);
  v7 = colorCopy;
  v5 = colorCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_handleUpdatedMessageTintColor:(id)color
{
  self->_haveUpToDateMessageTintColor = 1;
  objc_storeStrong(&self->_lastKnownMessageTintColor, color);
  tintColorDelegate = [(MSMessageBalloonLiveViewController *)self tintColorDelegate];
  [tintColorDelegate liveViewControllerDidUpdateMessageTintColor:self];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_18450;
  v10[3] = &unk_4D5B0;
  v10[4] = self;
  [(MSMessageExtensionBalloonLiveViewController *)self requestSizeThatFits:2 presentationStyle:v10 completionHandler:fits.width, fits.height];
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
    v5 = NSStringFromCGSize(v15);
    dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
    messageGUID = [dataSource messageGUID];
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = messageGUID;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "LiveBubble. Returning contentSize: %@ | messageGUID: %@", buf, 0x16u);
  }

  [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setNeedsResize:(BOOL)resize
{
  if (self->_needsResize != resize)
  {
    self->_needsResize = resize;
    if (resize)
    {
      [(MSMessageExtensionBalloonLiveViewController *)self beginHoldingSnapshotForReason:3];
      height = CGSizeZero.height;

      [(MSMessageExtensionBalloonLiveViewController *)self setLastRequestSize:CGSizeZero.width, height];
    }
  }
}

- (void)setHasLiveViewSize:(BOOL)size
{
  if (self->_hasLiveViewSize != size)
  {
    self->_hasLiveViewSize = size;
    if (size)
    {
      [(MSMessageExtensionBalloonLiveViewController *)self endHoldingSnapshotForReason:0];
    }

    else
    {
      [(MSMessageExtensionBalloonLiveViewController *)self beginHoldingSnapshotForReason:0];
    }
  }
}

- (void)requestSizeThatFits:(CGSize)fits presentationStyle:(unint64_t)style completionHandler:(id)handler
{
  height = fits.height;
  width = fits.width;
  handlerCopy = handler;
  if ([(MSMessageExtensionBalloonLiveViewController *)self needsResize])
  {
    _remoteProxy = [(MSMessageExtensionBalloonLiveViewController *)self _remoteProxy];
    v11 = _remoteProxy == 0;

    v12 = ms_defaultLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
        messageGUID = [dataSource messageGUID];
        remoteViewController = self->_remoteViewController;
        *buf = 138412546;
        v49 = messageGUID;
        v50 = 2112;
        v51 = remoteViewController;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "LiveBubble. Early returning size request for messageGUID: %@. Reason: remoteProxy is nil, remoteViewController %@", buf, 0x16u);
      }

      [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      if (v13)
      {
        dataSource2 = [(MSMessageBalloonLiveViewController *)self dataSource];
        messageGUID2 = [dataSource2 messageGUID];
        *buf = 138412290;
        v49 = messageGUID2;
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
        sizeUpdater = [(MSMessageExtensionBalloonLiveViewController *)self sizeUpdater];
        [sizeUpdater invalidate];

        [(MSMessageExtensionBalloonLiveViewController *)self setSizeUpdater:0];
        v38 = +[UIApplication sharedApplication];
        LOBYTE(sizeUpdater) = [v38 isRunningTest];

        objc_initWeak(buf, self);
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_18AA4;
        v44[3] = &unk_4D628;
        v46[1] = *&width;
        v46[2] = *&height;
        v46[3] = style;
        objc_copyWeak(v46, buf);
        v44[4] = self;
        v45 = handlerCopy;
        v47 = sizeUpdater;
        v39 = objc_retainBlock(v44);
        balloonPlugin = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
        LODWORD(v38) = [balloonPlugin wantsLoadingView];

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
          dataSource3 = [(MSMessageBalloonLiveViewController *)self dataSource];
          messageGUID3 = [dataSource3 messageGUID];
          v30 = [NSNumber numberWithBool:v22];
          v31 = [NSNumber numberWithBool:v20];
          [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
          v32 = NSStringFromCGSize(v58);
          v33 = [NSNumber numberWithBool:[(MSMessageExtensionBalloonLiveViewController *)self needsResize]];
          *buf = 138413314;
          v49 = messageGUID3;
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
        handlerCopy[2](handlerCopy, 0);
      }
    }
  }

  else
  {
    [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)requestSnapshot
{
  _shouldUseBackwardsCompatibilityOffsets = [(MSMessageExtensionBalloonLiveViewController *)self _shouldUseBackwardsCompatibilityOffsets];
  view = [(MSMessageExtensionBalloonLiveViewController *)self view];
  staticView = [view staticView];
  if (staticView)
  {

LABEL_7:
    v16 = ms_defaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
      messageGUID = [dataSource messageGUID];
      view2 = [(MSMessageExtensionBalloonLiveViewController *)self view];
      staticView2 = [view2 staticView];
      view3 = [(MSMessageExtensionBalloonLiveViewController *)self view];
      [view3 bounds];
      v45.width = v22;
      v45.height = v23;
      v24 = NSStringFromCGSize(v45);
      [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
      v25 = NSStringFromCGSize(v46);
      *buf = 138413058;
      v38 = messageGUID;
      v39 = 2112;
      v40 = staticView2;
      v41 = 2112;
      v42 = v24;
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "LiveBubble. Not taking snapshot for messageGUID: %@. staticView %@ != nil or current view size %@ != contentSize %@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  view4 = [(MSMessageExtensionBalloonLiveViewController *)self view];
  [view4 bounds];
  v8 = v7;
  v10 = v9;
  [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
  v12 = vabdd_f64(v8, v11);
  v14 = vabdd_f64(v10, v13);

  if (v12 >= 0.00000011920929 || v14 >= 0.00000011920929)
  {
    goto LABEL_7;
  }

  _isInShelf = [(MSMessageExtensionBalloonLiveViewController *)self _isInShelf];
  v27 = ms_defaultLog();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (_isInShelf)
  {
    if (v28)
    {
      dataSource2 = [(MSMessageBalloonLiveViewController *)self dataSource];
      messageGUID2 = [dataSource2 messageGUID];
      *buf = 138412290;
      v38 = messageGUID2;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "LiveBubble. Took snapshot for shelf message. messageGUID: %@ ", buf, 0xCu);
    }

    view5 = [(MSMessageExtensionBalloonLiveViewController *)self view];
    v16 = [view5 snapshotViewAfterScreenUpdates:0];

    [(MSMessageExtensionBalloonLiveViewController *)self setSnapshotView:v16];
  }

  else
  {
    if (v28)
    {
      payload = [(MSMessageExtensionBalloonLiveViewController *)self payload];
      messageGUID3 = [payload messageGUID];
      *buf = 138412290;
      v38 = messageGUID3;
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

    _remoteProxy = [(MSMessageExtensionBalloonLiveViewController *)self _remoteProxy];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_194F8;
    v35[3] = &unk_4D678;
    v35[4] = self;
    v36 = _shouldUseBackwardsCompatibilityOffsets;
    [_remoteProxy _requestSnapshotThatFits:v16 completion:v35];
  }

LABEL_9:
}

- (id)snapshotIdentifier
{
  if ([(MSMessageExtensionBalloonLiveViewController *)self _isInShelf])
  {
    dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
    chat = [dataSource chat];
    guid = [chat guid];
    messageGUID = [NSString stringWithFormat:@"%@-ShelfIdentifier", guid];
  }

  else
  {
    dataSource = [(MSMessageExtensionBalloonLiveViewController *)self payload];
    messageGUID = [dataSource messageGUID];
  }

  return messageGUID;
}

- (void)clearShelfPayload
{
  if ([(MSMessageExtensionBalloonLiveViewController *)self _isInShelf])
  {
    requestUUID = [(_MSRemoteBalloonViewController *)self->_remoteViewController requestUUID];
    if (requestUUID)
    {
      v10 = requestUUID;
      v4 = +[IMBalloonPluginManager sharedInstance];
      dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
      pluginPayload = [dataSource pluginPayload];
      pluginBundleID = [pluginPayload pluginBundleID];
      v8 = [v4 balloonPluginForBundleID:pluginBundleID];

      extension = [v8 extension];
      [extension cancelExtensionRequestWithIdentifier:v10];

      requestUUID = v10;
    }
  }
}

- (void)reloadRemoteViewIsResuming:(BOOL)resuming
{
  resumingCopy = resuming;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2D444();
  }

  [(MSMessageExtensionBalloonLiveViewController *)self createRemoteBalloonViewControllerIsResuming:resumingCopy];
}

- (id)conversationState
{
  conversationStateFactory = [(MSMessageBalloonLiveViewController *)self conversationStateFactory];
  conversationState = [conversationStateFactory conversationState];

  return conversationState;
}

- (MSMessageExtensionBalloonLiveViewController)initWithDataSource:(id)source fromMe:(BOOL)me conversationID:(id)d recipients:(id)recipients
{
  v12.receiver = self;
  v12.super_class = MSMessageExtensionBalloonLiveViewController;
  v6 = [(MSMessageBalloonLiveViewController *)&v12 initWithDataSource:source fromMe:me conversationID:d recipients:recipients];
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
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  v5 = [(MSMessageExtensionBalloonLiveView *)v3 initWithFrame:dataSource dataSource:self->_isFromMe fromMe:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MSMessageExtensionBalloonLiveViewController *)self setView:v5];

  view = [(MSMessageExtensionBalloonLiveViewController *)self view];
  [view setDelegate:self];

  v7 = [MSMessageExtensionBalloonLoadingView alloc];
  appIcon = [(MSMessageExtensionBalloonLiveViewController *)self appIcon];
  v9 = [(MSMessageExtensionBalloonLoadingView *)v7 initWithAppIcon:appIcon fromMe:self->_isFromMe];

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
    dataSource2 = [(MSMessageBalloonLiveViewController *)self dataSource];
    messageGUID = [dataSource2 messageGUID];
    [(MSMessageExtensionBalloonLiveViewController *)self contentSize];
    v13 = NSStringFromCGSize(v27);
    view2 = [(MSMessageExtensionBalloonLiveViewController *)self view];
    staticView = [view2 staticView];
    v16 = [NSNumber numberWithBool:[(MSMessageExtensionBalloonLiveViewController *)self _hasValidSnapshot]];
    v19 = 138413058;
    v20 = messageGUID;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = staticView;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "LiveBubble. Initialized with messageGUID: %@, contentSize: %@, staticView: %@, hasValidSnapshot: %@", &v19, 0x2Au);
  }

  balloonPlugin = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
  view3 = [(MSMessageExtensionBalloonLiveViewController *)self view];
  [view3 updateIconForPlugin:balloonPlugin];
}

- (void)_initializeStaticView
{
  _snapshotView = [(MSMessageExtensionBalloonLiveViewController *)self _snapshotView];
  view = [(MSMessageExtensionBalloonLiveViewController *)self view];
  [view setStaticView:_snapshotView];
}

- (BOOL)_isInShelf
{
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  payloadInShelf = [dataSource payloadInShelf];

  return payloadInShelf;
}

- (BOOL)_isShowingLoadingView
{
  view = [(MSMessageExtensionBalloonLiveViewController *)self view];
  staticView = [view staticView];
  if (staticView)
  {
    view2 = [(MSMessageExtensionBalloonLiveViewController *)self view];
    staticView2 = [view2 staticView];
    loadingView = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];
    v8 = staticView2 == loadingView;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_initializeContentSize
{
  view = [(MSMessageExtensionBalloonLiveViewController *)self view];
  staticView = [view staticView];
  loadingView = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];

  if (staticView == loadingView)
  {
    loadingView2 = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];
    view2 = [(MSMessageExtensionBalloonLiveViewController *)self view];
    [view2 bounds];
    [loadingView2 sizeThatFits:{v15, v16}];
    v18 = v17;
    v20 = v19;

    loadingView3 = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];
    v8 = 0.0;
    [loadingView3 setFrame:{0.0, 0.0, v18, v20}];

    balloonPlugin = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
    LODWORD(view2) = [balloonPlugin wantsLoadingView];

    v10 = 0.0;
    if (!view2)
    {
      goto LABEL_7;
    }

    staticView2 = [view staticView];
    [staticView2 bounds];
    v8 = v23;
    v10 = v24;
  }

  else
  {
    staticView3 = [view staticView];
    [staticView3 sizeToFit];

    staticView4 = [view staticView];
    [staticView4 bounds];
    v8 = v7;
    v10 = v9;

    if (![(MSMessageExtensionBalloonLiveViewController *)self _shouldUseBackwardsCompatibilityOffsets])
    {
      goto LABEL_7;
    }

    staticView2 = +[CKUIBehavior sharedBehaviors];
    [staticView2 pluginBackwardsCompatibilityLeadingTrailingOffset];
    v8 = v8 + v12 * -2.0;
  }

LABEL_7:
  [(MSMessageExtensionBalloonLiveViewController *)self setContentSize:v8, v10];
}

+ (int64_t)_convertUserInterfaceStyle:(int64_t)style
{
  if (style >= 3)
  {
    return 1;
  }

  else
  {
    return style;
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
  loadingView = [CKSnapshotUtilities _snapshotViewForGUID:v4];
  if (!loadingView)
  {
    snapshotIdentifier = [(MSMessageExtensionBalloonLiveViewController *)self snapshotIdentifier];
    loadingView = [CKSnapshotUtilities _snapshotViewForGUID:snapshotIdentifier];
  }

  snapshotIdentifier2 = [(MSMessageExtensionBalloonLiveViewController *)self snapshotIdentifier];

  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  chat = [dataSource chat];
  transcriptBackgroundGUID = [chat transcriptBackgroundGUID];

  if (transcriptBackgroundGUID)
  {
    v11 = 2;
    if (!loadingView)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = +[UIWindow keyWindow];
    traitCollection = [v12 traitCollection];
    v11 = +[MSMessageExtensionBalloonLiveViewController _convertUserInterfaceStyle:](MSMessageExtensionBalloonLiveViewController, "_convertUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

    if (!loadingView)
    {
LABEL_8:
      snapshotIdentifier3 = [(MSMessageExtensionBalloonLiveViewController *)self snapshotIdentifier];
      v15 = [CKSnapshotUtilities snapshotExistsForGUID:snapshotIdentifier3 interfaceStyle:v11];

      if (!v15)
      {
        goto LABEL_19;
      }

      v16 = [CKSnapshotUtilities snapshotForGUID:snapshotIdentifier2 interfaceStyle:v11];
      v17 = [UIImageView alloc];
      image = [v16 image];
      loadingView = [v17 initWithImage:image];

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
        snapshotIdentifier4 = [(MSMessageExtensionBalloonLiveViewController *)self snapshotIdentifier];
        *buf = 138412546;
        v45 = v25;
        v46 = 2112;
        v47 = snapshotIdentifier4;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "LiveBubble. Snapshot Tint color %@ for messageGUID: %@", buf, 0x16u);
      }

      if (v25)
      {
        lastKnownMessageTintColor = [(MSMessageExtensionBalloonLiveViewController *)self lastKnownMessageTintColor];
        v35 = [(UIView *)v25 isEqual:lastKnownMessageTintColor];

        if ((v35 & 1) == 0)
        {
          [(MSMessageExtensionBalloonLiveViewController *)self setLastKnownMessageTintColor:v25];
          tintColorDelegate = [(MSMessageBalloonLiveViewController *)self tintColorDelegate];
          [tintColorDelegate liveViewControllerDidUpdateMessageTintColor:self];
        }
      }

      if (!loadingView)
      {
LABEL_19:
        loadingView = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];
        view = [(MSMessageExtensionBalloonLiveViewController *)self view];
        [view setForceHideAppIcon:1];
      }
    }
  }

  v38 = ms_defaultLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    dataSource2 = [(MSMessageBalloonLiveViewController *)self dataSource];
    messageGUID = [dataSource2 messageGUID];
    *buf = 138412546;
    v45 = loadingView;
    v46 = 2112;
    v47 = messageGUID;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "LiveBubble. Setting snapshotView to %@. messageGUID: %@", buf, 0x16u);
  }

  v41 = self->_snapshotView;
  self->_snapshotView = loadingView;

  traitCollection2 = [(MSMessageExtensionBalloonLiveViewController *)self traitCollection];
  -[MSMessageExtensionBalloonLiveViewController setSnapshotViewInterfaceStyle:](self, "setSnapshotViewInterfaceStyle:", [traitCollection2 userInterfaceStyle]);

  snapshotView = self->_snapshotView;
LABEL_23:

  return snapshotView;
}

- (UIImage)appIcon
{
  appIcon = self->_appIcon;
  if (!appIcon)
  {
    balloonPlugin = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
    traitCollection = [(MSMessageExtensionBalloonLiveViewController *)self traitCollection];
    v6 = [balloonPlugin __ck_browserImageForInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    if (!v6)
    {
      payload = [(MSMessageExtensionBalloonLiveViewController *)self payload];
      payloadDictionary = [payload payloadDictionary];

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1A9C4;
      v11[3] = &unk_4D470;
      v11[4] = self;
      v6 = [IMBalloonPlugin __ck_appIconFromPayloadDictionary:payloadDictionary withCompletionBlock:v11];
    }

    v9 = self->_appIcon;
    self->_appIcon = v6;

    appIcon = self->_appIcon;
  }

  return appIcon;
}

- (BOOL)_hasValidSnapshot
{
  _snapshotView = [(MSMessageExtensionBalloonLiveViewController *)self _snapshotView];
  if (_snapshotView)
  {
    _snapshotView2 = [(MSMessageExtensionBalloonLiveViewController *)self _snapshotView];
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
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  pluginPayload = [dataSource pluginPayload];

  return pluginPayload;
}

- (void)_handleDynamicTextSizeChange:(id)change
{
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
    messageGUID = [dataSource messageGUID];
    v7 = 138412290;
    v8 = messageGUID;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "LiveBubble. Handling dynamic text size change. messageGUID: %@", &v7, 0xCu);
  }

  [(MSMessageExtensionBalloonLiveViewController *)self setNeedsResize:1];
}

- (void)_handleLocaleChange:(id)change
{
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
    messageGUID = [dataSource messageGUID];
    v7 = 138412290;
    v8 = messageGUID;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "LiveBubble. Handling locale change. messageGUID: %@", &v7, 0xCu);
  }

  [(MSMessageExtensionBalloonLiveViewController *)self setNeedsResize:1];
}

- (void)configureLiveViewForDisplay:(id)display
{
  displayCopy = display;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
    messageGUID = [dataSource messageGUID];
    v8 = [NSNumber numberWithBool:[(_MSRemoteBalloonViewController *)self->_remoteViewController loadedRemoteView]];
    v9 = [NSNumber numberWithBool:[(_MSRemoteBalloonViewController *)self->_remoteViewController isReadyToDisplay]];
    v15 = 138413058;
    v16 = displayCopy;
    v17 = 2112;
    v18 = messageGUID;
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
      traitCollection = [(MSMessageExtensionBalloonLiveViewController *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
      snapshotViewInterfaceStyle = [(MSMessageExtensionBalloonLiveViewController *)self snapshotViewInterfaceStyle];

      if (userInterfaceStyle != snapshotViewInterfaceStyle)
      {
        [(MSMessageExtensionBalloonLiveViewController *)self setSnapshotView:0];
      }

      view = [(MSMessageExtensionBalloonLiveViewController *)self view];
      _snapshotView = [(MSMessageExtensionBalloonLiveViewController *)self _snapshotView];
      [view setStaticView:_snapshotView];
    }
  }
}

- (void)refreshConversationState
{
  conversationState = [(MSMessageExtensionBalloonLiveViewController *)self conversationState];
  _remoteProxy = [(MSMessageExtensionBalloonLiveViewController *)self _remoteProxy];
  activeMessage = [conversationState activeMessage];
  [_remoteProxy _didUpdateMessage:activeMessage conversationState:conversationState];
}

- (void)pluginPayloadDidChangeForLiveView:(id)view
{
  viewCopy = view;
  payload = [(MSMessageExtensionBalloonLiveViewController *)self payload];
  dataSource = [viewCopy dataSource];
  pluginPayload = [dataSource pluginPayload];

  if (payload != pluginPayload)
  {
    dataSource2 = [viewCopy dataSource];
    [(MSMessageBalloonLiveViewController *)self setDataSource:dataSource2];

    [(MSMessageExtensionBalloonLiveViewController *)self refreshConversationState];
  }
}

- (void)viewWillMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = MSMessageExtensionBalloonLiveViewController;
  [(MSMessageExtensionBalloonLiveViewController *)&v5 viewWillMoveToWindow:?];
  if (window)
  {
    [(MSMessageExtensionBalloonLiveViewController *)self endHoldingSnapshotForReason:1];
  }

  else
  {
    [(MSMessageExtensionBalloonLiveViewController *)self beginHoldingSnapshotForReason:1];
  }
}

- (CGSize)liveView:(id)view sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  viewCopy = view;
  if ([(MSMessageExtensionBalloonLiveViewController *)self needsResize])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
        messageGUID = [dataSource messageGUID];
        v15 = 138412290;
        v16 = messageGUID;
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

- (void)_handleRemoteConnectionInterrupted:(id)interrupted
{
  userInfo = [interrupted userInfo];
  v5 = [userInfo objectForKey:IMExtensionRemoteConnectionInterruptedBundleIdentifier];
  v6 = ms_defaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
    messageGUID = [dataSource messageGUID];
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = messageGUID;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "LiveBubble. Handling extension interruption for bundleID %@. messageGUID: %@", &v13, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataSource2 = [(MSMessageBalloonLiveViewController *)self dataSource];
    bundleID = [dataSource2 bundleID];

    if ([bundleID isEqualToIgnoringCase:v5])
    {
      view = [(MSMessageExtensionBalloonLiveViewController *)self view];
      [(MSMessageExtensionBalloonLiveViewController *)self _initializeStaticView];
      [(_MSRemoteBalloonViewController *)self->_remoteViewController handleRemoteInterruption];
      [(_MSRemoteBalloonViewController *)self->_remoteViewController willMoveToParentViewController:0];
      [view setRemoteBalloonView:0];
      [(_MSRemoteBalloonViewController *)self->_remoteViewController removeFromParentViewController];
      remoteViewController = self->_remoteViewController;
      self->_remoteViewController = 0;
    }
  }
}

- (void)_handleApplicationStateResumeFromInActive:(id)active
{
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_2D4AC();
  }

  [(MSMessageExtensionBalloonLiveViewController *)self createRemoteBalloonViewControllerIsResuming:1];
}

- (void)remoteBalloonViewControllerWillLoad:(id)load
{
  extensionContext = [(_MSRemoteBalloonViewController *)self->_remoteViewController extensionContext];
  [extensionContext setDelegate:self];
}

- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
  remoteViewController = self->_remoteViewController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1B550;
  v9[3] = &unk_4D378;
  v10 = completionCopy;
  v8 = completionCopy;
  [(_MSRemoteBalloonViewController *)remoteViewController fetchInternalMessageStateForDraft:draftCopy completion:v9];
}

- (void)didChangeBackgroundLuminance:(double)luminance
{
  [(MSMessageExtensionBalloonLiveViewController *)self setBackgroundLuminance:luminance];
  remoteViewController = self->_remoteViewController;
  [(MSMessageExtensionBalloonLiveViewController *)self backgroundLuminance];

  [(_MSRemoteBalloonViewController *)remoteViewController didChangeBackgroundLuminance:?];
}

- (void)remoteBalloonViewControllerDidLoad:(id)load
{
  loadCopy = load;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:[(MSMessageExtensionBalloonLiveViewController *)self needsResize]];
    dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
    messageGUID = [dataSource messageGUID];
    v9 = [NSNumber numberWithBool:[(_MSRemoteBalloonViewController *)self->_remoteViewController isReadyToDisplay]];
    v10 = [NSNumber numberWithBool:[(MSMessageExtensionBalloonLiveViewController *)self _hasValidSnapshot]];
    *buf = 138413314;
    v14 = loadCopy;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = messageGUID;
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

- (id)remoteBalloonViewControllerContextIdentifier:(id)identifier
{
  delegate = [(MSMessageBalloonLiveViewController *)self delegate];
  v5 = [delegate liveViewControllerContextIdentifier:self];

  return v5;
}

- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  imageCopy = image;
  completionCopy = completion;
  v17 = [MSEntitlementChecker alloc];
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  v19 = [(MSEntitlementChecker *)v17 initWithDataSource:dataSource requestIdentifierProvider:self];

  if ([(MSEntitlementChecker *)v19 hasEntitlement:@"com.apple.messages.private.AllowAlertPresentation"])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1BA8C;
    v21[3] = &unk_4D6A0;
    v22 = titleCopy;
    v23 = messageCopy;
    v24 = imageCopy;
    v25 = buttonTitleCopy;
    selfCopy = self;
    v27 = completionCopy;
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

- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  destructiveButtonTitleCopy = destructiveButtonTitle;
  completionCopy = completion;
  v17 = [MSEntitlementChecker alloc];
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  v19 = [(MSEntitlementChecker *)v17 initWithDataSource:dataSource requestIdentifierProvider:self];

  if ([(MSEntitlementChecker *)v19 hasEntitlement:@"com.apple.messages.private.AllowAlertPresentation"])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1BD64;
    v21[3] = &unk_4D150;
    v22 = titleCopy;
    v23 = messageCopy;
    v24 = buttonTitleCopy;
    selfCopy = self;
    v27 = completionCopy;
    v26 = destructiveButtonTitleCopy;
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

- (void)_presentAlertSheetWithTitle:(id)title message:(id)message buttonTitles:(id)titles styles:(id)styles completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  titlesCopy = titles;
  stylesCopy = styles;
  completionCopy = completion;
  v17 = [MSEntitlementChecker alloc];
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  v19 = [(MSEntitlementChecker *)v17 initWithDataSource:dataSource requestIdentifierProvider:self];

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

  v20 = [titlesCopy count];
  if (v20 != [stylesCopy count])
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
  v23 = titleCopy;
  v24 = messageCopy;
  v25 = titlesCopy;
  v26 = stylesCopy;
  selfCopy = self;
  v28 = completionCopy;
  dispatch_async(&_dispatch_main_q, v22);

LABEL_7:
}

- (void)_presentContextMenuWithButtonTitles:(id)titles imageNames:(id)names buttonFrame:(CGRect)frame completion:(id)completion
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1C80C;
  v15[3] = &unk_4D768;
  v15[4] = self;
  titlesCopy = titles;
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  namesCopy = names;
  completionCopy = completion;
  v12 = completionCopy;
  v13 = namesCopy;
  v14 = titlesCopy;
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
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  pluginPayload = [dataSource pluginPayload];
  pluginBundleID = [pluginPayload pluginBundleID];
  v7 = [v3 balloonPluginForBundleID:pluginBundleID];

  LOBYTE(dataSource) = [v7 linkedBeforeSDKVersion:@"19.0"];
  return dataSource;
}

- (BOOL)isInShelf
{
  payload = [(MSMessageExtensionBalloonLiveViewController *)self payload];
  messageGUID = [payload messageGUID];
  v4 = messageGUID == 0;

  return v4;
}

- (void)_swapOutSnapshotView
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
    messageGUID = [dataSource messageGUID];
    *buf = 138412290;
    v30 = messageGUID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "LiveBubble swapping out snapshotView GUID: %@", buf, 0xCu);
  }

  _isShowingLoadingView = [(MSMessageExtensionBalloonLiveViewController *)self _isShowingLoadingView];
  dataSource2 = [(MSMessageBalloonLiveViewController *)self dataSource];
  payloadInShelf = [dataSource2 payloadInShelf];

  view = [(MSMessageExtensionBalloonLiveViewController *)self view];
  view2 = [(_MSRemoteBalloonViewController *)self->_remoteViewController view];
  loadingView = [(MSMessageExtensionBalloonLiveViewController *)self loadingView];
  if (_isShowingLoadingView)
  {
    [view2 setAlpha:0.33];
    v12 = 1.0;
    if (payloadInShelf)
    {
      v12 = 0.0;
    }

    [loadingView setAlpha:v12];
    iconView = [view iconView];
    [iconView setAlpha:0.0];

    layer = [loadingView layer];
    [layer setValue:&off_4EAA8 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    layer2 = [view2 layer];
    [layer2 setValue:&off_4EAC0 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }

  [view setRemoteBalloonView:view2];
  [view setForceHideAppIcon:0];
  snapshotView = [(MSMessageExtensionBalloonLiveViewController *)self snapshotView];

  if (snapshotView)
  {
    [(MSMessageExtensionBalloonLiveViewController *)self setSnapshotView:0];
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1D4F4;
  v26[3] = &unk_4CF20;
  v17 = view;
  v27 = v17;
  selfCopy = self;
  v18 = objc_retainBlock(v26);
  v19 = v18;
  if (_isShowingLoadingView)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1D538;
    v22[3] = &unk_4D0B0;
    v23 = view2;
    v24 = loadingView;
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

- (void)createRemoteBalloonViewControllerIsResuming:(BOOL)resuming
{
  if (![(MSMessageExtensionBalloonLiveViewController *)self _applicationStateIsBackground]|| resuming)
  {
    if (self->_remoteViewController)
    {
      return;
    }

    balloonPlugin = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
    recipients = [(MSMessageBalloonLiveViewController *)self recipients];
    v9 = [balloonPlugin shouldShowForRecipients:recipients];

    if ((v9 & 1) == 0)
    {
      extension = ms_defaultLog();
      if (!os_log_type_enabled(extension, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
      messageGUID = [dataSource messageGUID];
      v26 = 138412290;
      v27 = messageGUID;
      _os_log_impl(&dword_0, extension, OS_LOG_TYPE_DEFAULT, "LiveBubble. Plugin should not be shown for specified recipients. messageGUID: %@", &v26, 0xCu);

LABEL_31:
      goto LABEL_32;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      extension = [balloonPlugin extension];
    }

    else
    {
      extension = 0;
    }

    v12 = ms_defaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_2D5FC(extension, v12);
    }

    payload = [(MSMessageExtensionBalloonLiveViewController *)self payload];
    messageGUID2 = [payload messageGUID];
    v15 = messageGUID2;
    v16 = @"_MSRemoteBalloonViewControllerShelfIdentifier";
    if (messageGUID2)
    {
      v16 = messageGUID2;
    }

    messageGUID = v16;

    v17 = ms_defaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_2D690();
    }

    if (extension)
    {
      v18 = [[_MSRemoteBalloonViewController alloc] initWithExtension:extension identifier:messageGUID];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_23;
      }

      v18 = [[_MSRemoteBalloonViewController alloc] initWithPlugin:balloonPlugin identifier:messageGUID];
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
      view = [(MSMessageExtensionBalloonLiveViewController *)self view];
      window = [view window];

      if (!window)
      {
        v23 = ms_defaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_2D704(self, v23);
        }
      }

      view2 = [(_MSRemoteBalloonViewController *)self->_remoteViewController view];
      view3 = [(MSMessageExtensionBalloonLiveViewController *)self view];
      [view3 setRemoteBalloonView:view2];

      [(_MSRemoteBalloonViewController *)self->_remoteViewController didMoveToParentViewController:self];
    }

    goto LABEL_31;
  }

  balloonPlugin = ms_defaultLog();
  if (os_log_type_enabled(balloonPlugin, OS_LOG_TYPE_DEFAULT))
  {
    dataSource2 = [(MSMessageBalloonLiveViewController *)self dataSource];
    extension = [dataSource2 messageGUID];
    v26 = 138412290;
    v27 = extension;
    _os_log_impl(&dword_0, balloonPlugin, OS_LOG_TYPE_DEFAULT, "LiveBubble. ApplicationState is background and not resuming. messageGUID: %@", &v26, 0xCu);

LABEL_32:
  }
}

- (void)sendDidBecomeActiveMessage
{
  remoteViewController = self->_remoteViewController;
  conversationState = [(MSMessageExtensionBalloonLiveViewController *)self conversationState];
  payload = [(MSMessageExtensionBalloonLiveViewController *)self payload];
  -[_MSRemoteBalloonViewController becomeActiveWithConversationState:liveEditableInEntryView:](remoteViewController, "becomeActiveWithConversationState:liveEditableInEntryView:", conversationState, [payload liveEditableInEntryView]);
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
  selfCopy = self;

  v8 = sub_2DCA8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;

  sub_270C0(0, 0, v4, &unk_37F38, v9);
}

@end