@interface MFNotificationViewController
+ (OS_os_log)signpostLog;
- (UIEdgeInsets)minMargins;
- (id)_configureMessageListAndPromiseForQuery:(id)query repository:(id)repository;
- (id)_errorLabel;
- (id)_notificationActionIdentifierForSwipeAction:(int64_t)action;
- (id)userNotificationActionForSwipeAction:(int64_t)action;
- (unint64_t)signpostID;
- (void)_configureMessageRequestWithSignPostID:(unint64_t)d;
- (void)_determineMessageToDisplayForCollection:(id)collection itemIDs:(id)ds;
- (void)_notificationPreviewFailedWithError:(id)error singpostID:(unint64_t)d;
- (void)_resetMessageListAndPromise;
- (void)_setProgressUIVisible:(BOOL)visible animated:(BOOL)animated;
- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD;
- (void)didReceiveNotification:(id)notification;
- (void)messageContentView:(id)view didFinishRenderingWithHeight:(double)height;
- (void)messageContentView:(id)view viewedRemoteURLs:(id)ls;
- (void)setActionsForMessage:(id)message;
- (void)setError:(id)error;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation MFNotificationViewController

+ (OS_os_log)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000188C0;
  block[3] = &unk_1000389B8;
  block[4] = self;
  if (qword_1000425E0 != -1)
  {
    dispatch_once(&qword_1000425E0, block);
  }

  v2 = qword_1000425D8;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = MFNotificationViewController;
  [(MFNotificationViewController *)&v36 viewDidLoad];
  v3 = objc_alloc_init(EMDaemonInterface);
  [(MFNotificationViewController *)self setDaemonInterface:v3];

  daemonInterface = [(MFNotificationViewController *)self daemonInterface];
  [MFWKWebViewFactory setDaemonInterface:daemonInterface URLCacheWithMemoryCapacity:0];

  daemonInterface2 = [(MFNotificationViewController *)self daemonInterface];
  vipManager = [daemonInterface2 vipManager];
  [VIPManager setBackingManager:vipManager];

  v7 = objc_alloc_init(MUICachingSVGConverter);
  v8 = [MUIBrandIndicatorProvider alloc];
  daemonInterface3 = [(MFNotificationViewController *)self daemonInterface];
  messageRepository = [daemonInterface3 messageRepository];
  v11 = [v8 initWithMessageRepository:messageRepository svgConverter:v7];
  [(MFNotificationViewController *)self setBrandIndicatorProvider:v11];

  v12 = objc_alloc_init(EMCachingContactStore);
  [(MFNotificationViewController *)self setContactStore:v12];

  objc_initWeak(&location, self);
  v13 = [MUIAvatarImageGenerator alloc];
  brandIndicatorProvider = self->_brandIndicatorProvider;
  daemonInterface4 = [(MFNotificationViewController *)self daemonInterface];
  messageRepository2 = [daemonInterface4 messageRepository];
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_100018E04;
  v33 = &unk_1000390E0;
  objc_copyWeak(&v34, &location);
  v17 = [v13 initWithBimiProvider:brandIndicatorProvider messageRepository:messageRepository2 contactsProviderHandler:&v30];
  [(MFNotificationViewController *)self setAvatarGenerator:v17, v30, v31, v32, v33];

  avatarGenerator = [(MFNotificationViewController *)self avatarGenerator];
  [avatarGenerator allowGeneratingAvatarImages];

  [(MFNotificationViewController *)self systemMinimumLayoutMargins];
  view = [(MFNotificationViewController *)self view];
  -[MFNotificationViewController setIsRTL:](self, "setIsRTL:", [view mf_prefersRightToLeftInterfaceLayout]);

  [(MFNotificationViewController *)self isRTL];
  MFEdgeInsetsFromDirectionalEdgeInsets();
  [(MFNotificationViewController *)self setMinMargins:?];
  p_minMargins = &self->_minMargins;
  if (self->_minMargins.top == 0.0 || self->_minMargins.right == 0.0 || self->_minMargins.bottom == 0.0 || self->_minMargins.left == 0.0)
  {
    v21 = MSUserNotificationsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v38.top = p_minMargins->top;
      v38.left = self->_minMargins.left;
      v38.bottom = self->_minMargins.bottom;
      v38.right = self->_minMargins.right;
      v22 = NSStringFromUIEdgeInsets(v38);
      sub_10001D658(v22, buf, v21);
    }

    __asm { FMOV            V0.2D, #16.0 }

    *&p_minMargins->top = _Q0;
    *&self->_minMargins.bottom = _Q0;
  }

  v28 = +[UIScreen mainScreen];
  [v28 bounds];
  [(MFNotificationViewController *)self setScreenHeight:v29];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = MFNotificationViewController;
  [(MFNotificationViewController *)&v8 viewDidDisappear:disappear];
  v4 = MSUserNotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    messageList = [(MFNotificationViewController *)self messageList];
    messageReferenceURL = [(MFNotificationViewController *)self messageReferenceURL];
    *buf = 134218242;
    v10 = messageList;
    v11 = 2112;
    v12 = messageReferenceURL;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: canceling promise for URL %@", buf, 0x16u);
  }

  messageDisplayPromise = [(MFNotificationViewController *)self messageDisplayPromise];
  [messageDisplayPromise cancel];

  [(MFNotificationViewController *)self setIsDisplayingMessage:0];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  if (![(MFNotificationViewController *)self isDisplayingMessage])
  {
    [(MFNotificationViewController *)self setIsDisplayingMessage:1];
    daemonInterface = [(MFNotificationViewController *)self daemonInterface];

    if (daemonInterface)
    {
      v6 = +[MFNotificationViewController signpostLog];
      v7 = os_signpost_id_generate(v6);

      v8 = +[MFNotificationViewController signpostLog];
      v9 = v8;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MFNotificationPreview", "Starting message preview", buf, 2u);
      }

      [(MFNotificationViewController *)self _setProgressUIVisible:1 animated:0];
      request = [notificationCopy request];
      content = [request content];
      userInfo = [content userInfo];
      v13 = [userInfo objectForKeyedSubscript:MSUserNotificationContentKeyMessageReference];

      if (v13)
      {
        identifier = [NSURL URLWithString:v13];
        [(MFNotificationViewController *)self setMessageReferenceURL:identifier];
      }

      else
      {
        identifier = [request identifier];
        v16 = [NSURL URLWithString:identifier];
        [(MFNotificationViewController *)self setMessageReferenceURL:v16];
      }

      v17 = MSUserNotificationsLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        messageReferenceURL = [(MFNotificationViewController *)self messageReferenceURL];
        *buf = 138412290;
        v28 = messageReferenceURL;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "NotificationPreview: handle longlook for message with URL %@", buf, 0xCu);
      }

      v19 = objc_alloc_init(LAContext);
      context = self->_context;
      self->_context = v19;

      v25[0] = &off_100039E08;
      v25[1] = &off_100039E20;
      v26[0] = &__kCFBooleanTrue;
      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"AUTHENTICATION_PROCESS_MAIL" value:&stru_1000392E0 table:@"Main"];
      v26[1] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];

      v24 = v23;
      EFPerformSyncWithProtectedDataAvailability();
    }

    else
    {
      v15 = [NSError errorWithDomain:@"NotificationExtensionErrorDomain" code:3 userInfo:0];
      [(MFNotificationViewController *)self setError:v15];
    }
  }
}

- (void)_configureMessageRequestWithSignPostID:(unint64_t)d
{
  daemonInterface = [(MFNotificationViewController *)self daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  messageReferenceURL = [(MFNotificationViewController *)self messageReferenceURL];
  v8 = [messageRepository messageObjectIDForURL:messageReferenceURL];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100019A80;
  v15[3] = &unk_1000391A8;
  v15[4] = self;
  v9 = [v8 then:v15];
  v10 = +[EFScheduler mainThreadScheduler];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100019BBC;
  v12[3] = &unk_1000391D0;
  objc_copyWeak(v13, &location);
  v13[1] = d;
  [v9 onScheduler:v10 addSuccessBlock:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001A250;
  v11[3] = &unk_1000391F8;
  v11[4] = self;
  v11[5] = d;
  [v9 onScheduler:v10 addFailureBlock:v11];
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)_notificationPreviewFailedWithError:(id)error singpostID:(unint64_t)d
{
  errorCopy = error;
  [(MFNotificationViewController *)self setError:errorCopy];
  v7 = MSUserNotificationsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    messageList = [(MFNotificationViewController *)self messageList];
    messageReferenceURL = [(MFNotificationViewController *)self messageReferenceURL];
    ef_publicDescription = [errorCopy ef_publicDescription];
    v15 = 134218498;
    v16 = messageList;
    v17 = 2112;
    v18 = messageReferenceURL;
    v19 = 2048;
    v20 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: failed to display message for URL %@. Error: %lu", &v15, 0x20u);
  }

  v11 = +[MFNotificationViewController signpostLog];
  v12 = v11;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    code = [errorCopy code];
    v15 = 134349056;
    v16 = code;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, d, "MFNotificationPreview", "Failure %{public, name=errorCode}lu", &v15, 0xCu);
  }

  [(MFNotificationViewController *)self _resetMessageListAndPromise];
  context = self->_context;
  self->_context = 0;
}

- (void)setError:(id)error
{
  errorCopy = error;
  if (self->_error != errorCopy)
  {
    objc_storeStrong(&self->_error, error);
    view = [(MFNotificationViewController *)self view];
    _errorLabel = [(MFNotificationViewController *)self _errorLabel];
    [view addSubview:_errorLabel];

    [(MFNotificationViewController *)self _setProgressUIVisible:0 animated:0];
    v8 = MSUserNotificationsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      userInfo = [(NSError *)errorCopy userInfo];
      sub_10001D6B0(userInfo, v10, v8);
    }
  }
}

- (id)_errorLabel
{
  [(MFNotificationViewController *)self minMargins];
  v4 = v3;
  view = [(MFNotificationViewController *)self view];
  [view frame];
  v18 = CGRectInset(v17, v4, v4);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;

  v10 = [[UILabel alloc] initWithFrame:{x, y, width, height}];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"MESSAGE_CAUSED_PROBLEM" value:&stru_1000392E0 table:@"Main"];
  [v10 setText:v12];

  v13 = +[UIColor grayColor];
  [v10 setTextColor:v13];

  v14 = [UIFont systemFontOfSize:18.0];
  [v10 setFont:v14];

  [v10 setNumberOfLines:3];
  [v10 setTextAlignment:1];

  return v10;
}

- (id)_configureMessageListAndPromiseForQuery:(id)query repository:(id)repository
{
  queryCopy = query;
  repositoryCopy = repository;
  [(MFNotificationViewController *)self _resetMessageListAndPromise];
  v8 = +[EFPromise promise];
  [(MFNotificationViewController *)self setMessageDisplayPromise:v8];

  v9 = [[EMMessageList alloc] initWithQuery:queryCopy repository:repositoryCopy];
  [(MFNotificationViewController *)self setMessageList:v9];

  messageList = [(MFNotificationViewController *)self messageList];
  [messageList beginObserving:self];

  v11 = MSUserNotificationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    messageList2 = [(MFNotificationViewController *)self messageList];
    messageReferenceURL = [(MFNotificationViewController *)self messageReferenceURL];
    v16 = 134218242;
    v17 = messageList2;
    v18 = 2112;
    v19 = messageReferenceURL;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: configured message list for URL:%@", &v16, 0x16u);
  }

  messageDisplayPromise = [(MFNotificationViewController *)self messageDisplayPromise];

  return messageDisplayPromise;
}

- (void)_resetMessageListAndPromise
{
  messageList = [(MFNotificationViewController *)self messageList];

  if (messageList)
  {
    messageList2 = [(MFNotificationViewController *)self messageList];
    [messageList2 stopObserving:self];

    [(MFNotificationViewController *)self setMessageList:0];
  }

  messageDisplayPromise = [(MFNotificationViewController *)self messageDisplayPromise];

  if (messageDisplayPromise)
  {
    messageDisplayPromise2 = [(MFNotificationViewController *)self messageDisplayPromise];
    future = [messageDisplayPromise2 future];

    [future cancel];
    [(MFNotificationViewController *)self setMessageDisplayPromise:0];
  }
}

- (void)_determineMessageToDisplayForCollection:(id)collection itemIDs:(id)ds
{
  collectionCopy = collection;
  dsCopy = ds;
  messageList = [(MFNotificationViewController *)self messageList];
  if (messageList == collectionCopy)
  {
    firstObject = [dsCopy firstObject];
    if (firstObject)
    {
      [messageList stopObserving:self];
      messageDisplayPromise = [(MFNotificationViewController *)self messageDisplayPromise];
      v10 = [messageList messageListItemForItemID:firstObject];
      [messageDisplayPromise finishWithFuture:v10];
    }
  }
}

- (void)_setProgressUIVisible:(BOOL)visible animated:(BOOL)animated
{
  visibleCopy = visible;
  if (pthread_main_np() != 1)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"MFNotificationViewController.m" lineNumber:332 description:@"Current thread must be main"];
  }

  v7 = MSUserNotificationsLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (visibleCopy)
  {
    if (v8)
    {
      messageList = [(MFNotificationViewController *)self messageList];
      messageReferenceURL = [(MFNotificationViewController *)self messageReferenceURL];
      v27 = 134218242;
      v28 = messageList;
      v29 = 2112;
      v30 = messageReferenceURL;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: showing loading spinner for message URL:%@", &v27, 0x16u);
    }

    loadingView = [(MFNotificationViewController *)self loadingView];
    v12 = loadingView == 0;

    if (v12)
    {
      v13 = [MFMessageContentLoadingView alloc];
      view = [(MFNotificationViewController *)self view];
      [view frame];
      v15 = [v13 initWithFrame:?];
      [(MFNotificationViewController *)self setLoadingView:v15];

      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"LOADING_ALL_CAPS" value:&stru_1000392E0 table:@"Main"];
      loadingView2 = [(MFNotificationViewController *)self loadingView];
      [loadingView2 setLoadingTitle:v17];

      view2 = [(MFNotificationViewController *)self view];
      loadingView3 = [(MFNotificationViewController *)self loadingView];
      [view2 addSubview:loadingView3];
    }

    loadingView4 = [(MFNotificationViewController *)self loadingView];
    [loadingView4 setLoadingIndicatorVisible:1];

    loadingView5 = [(MFNotificationViewController *)self loadingView];
    [loadingView5 setAutoresizingMask:18];
  }

  else
  {
    if (v8)
    {
      messageList2 = [(MFNotificationViewController *)self messageList];
      messageReferenceURL2 = [(MFNotificationViewController *)self messageReferenceURL];
      v27 = 134218242;
      v28 = messageList2;
      v29 = 2112;
      v30 = messageReferenceURL2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: hiding loading spinner for message URL:%@", &v27, 0x16u);
    }

    loadingView6 = [(MFNotificationViewController *)self loadingView];
    [loadingView6 setLoadingIndicatorVisible:0];

    loadingView5 = [(MFNotificationViewController *)self loadingView];
    [loadingView5 removeFromSuperview];
  }
}

- (void)messageContentView:(id)view didFinishRenderingWithHeight:(double)height
{
  viewCopy = view;
  [(MFNotificationViewController *)self _setProgressUIVisible:0 animated:0];
  [(MFNotificationViewController *)self screenHeight];
  v8 = v7;
  view = [(MFNotificationViewController *)self view];
  [view frame];
  if (v8 + v8 <= height)
  {
    heightCopy = v8 + v8;
  }

  else
  {
    heightCopy = height;
  }

  [(MFNotificationViewController *)self setPreferredContentSize:v10, heightCopy];

  v12 = MSUserNotificationsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    messageReferenceURL = [(MFNotificationViewController *)self messageReferenceURL];
    [(MFNotificationViewController *)self preferredContentSize];
    v14 = NSStringFromSize(v23);
    v15 = 134218754;
    v16 = viewCopy;
    v17 = 2048;
    heightCopy2 = height;
    v19 = 2112;
    v20 = messageReferenceURL;
    v21 = 2114;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: messageHeight is %f for message URL:%@ preferredHeight:%{public}@", &v15, 0x2Au);
  }
}

- (void)messageContentView:(id)view viewedRemoteURLs:(id)ls
{
  lsCopy = ls;
  daemonInterface = [(MFNotificationViewController *)self daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  [messageRepository noteViewOfRemoteContentLinks:lsCopy];
}

- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after
{
  collectionCopy = collection;
  dsCopy = ds;
  afterCopy = after;
  v11 = MSUserNotificationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = [dsCopy count];
    v14 = 2114;
    v15 = afterCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NotificationPreview: adding %lu items after %{public}@", &v12, 0x16u);
  }

  [(MFNotificationViewController *)self _determineMessageToDisplayForCollection:collectionCopy itemIDs:dsCopy];
}

- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before
{
  collectionCopy = collection;
  dsCopy = ds;
  beforeCopy = before;
  v11 = MSUserNotificationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = [dsCopy count];
    v14 = 2114;
    v15 = beforeCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NotificationPreview: adding %lu items before %{public}@", &v12, 0x16u);
  }

  [(MFNotificationViewController *)self _determineMessageToDisplayForCollection:collectionCopy itemIDs:dsCopy];
}

- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD
{
  collectionCopy = collection;
  dCopy = d;
  iDCopy = iD;
  v11 = MSUserNotificationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = dCopy;
    v16 = 2114;
    v17 = iDCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NotificationPreview: item id changed from %{public}@ to %{public}@", buf, 0x16u);
  }

  if (iDCopy)
  {
    v13 = iDCopy;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [(MFNotificationViewController *)self _determineMessageToDisplayForCollection:collectionCopy itemIDs:v12];
  }
}

- (void)setActionsForMessage:(id)message
{
  messageCopy = message;
  mailboxes = [messageCopy mailboxes];
  firstObject = [mailboxes firstObject];
  account = [firstObject account];

  if ([account shouldArchiveByDefault])
  {
    v8 = 9;
  }

  else
  {
    v8 = 8;
  }

  v9 = [(MFNotificationViewController *)self userNotificationActionForSwipeAction:v8];
  v10 = rightSwipeSetting(1);
  v11 = [MFTriageActionUtilities triageActionForActionKey:v10];

  if (v11 == 16)
  {
    if ([account shouldArchiveByDefault])
    {
      v11 = 8;
    }

    else
    {
      v11 = 9;
    }
  }

  v12 = [(MFNotificationViewController *)self userNotificationActionForSwipeAction:v11];
  v15[0] = v9;
  v15[1] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:2];
  extensionContext = [(MFNotificationViewController *)self extensionContext];
  [extensionContext setNotificationActions:v13];
}

- (id)userNotificationActionForSwipeAction:(int64_t)action
{
  v5 = qword_1000425E8;
  if (!qword_1000425E8)
  {
    qword_1000425E8 = &off_100039F60;

    v5 = &off_100039F60;
  }

  v6 = [NSNumber numberWithInteger:action];
  v7 = [v5 containsObject:v6];

  if (!v7)
  {
    action = 2;
  }

  v8 = action - 6;
  if ((action - 6) >= 4)
  {
    v10 = @"NOTIFICATION_READ";
    v9 = &MFImageGlyphRead;
  }

  else
  {
    v9 = *(&off_100039218 + v8);
    v10 = *(&off_100039238 + v8);
  }

  v11 = [UNNotificationActionIcon iconWithSystemImageName:*v9];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:v10 value:&stru_1000392E0 table:@"Main"];

  v14 = [(MFNotificationViewController *)self _notificationActionIdentifierForSwipeAction:action];
  if ([MFTriageActionUtilities isActionDestructive:action])
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  v16 = [UNNotificationAction actionWithIdentifier:v14 title:v13 options:v15 icon:v11];

  return v16;
}

- (id)_notificationActionIdentifierForSwipeAction:(int64_t)action
{
  v3 = MSMailNotificationActionIdentifierPrefix;
  v4 = [MFTriageActionUtilities actionKeyForTriageAction:action];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

- (UIEdgeInsets)minMargins
{
  top = self->_minMargins.top;
  left = self->_minMargins.left;
  bottom = self->_minMargins.bottom;
  right = self->_minMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end