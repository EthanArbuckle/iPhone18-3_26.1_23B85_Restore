@interface MFNotificationViewController
+ (OS_os_log)signpostLog;
- (UIEdgeInsets)minMargins;
- (id)_configureMessageListAndPromiseForQuery:(id)a3 repository:(id)a4;
- (id)_errorLabel;
- (id)_notificationActionIdentifierForSwipeAction:(int64_t)a3;
- (id)userNotificationActionForSwipeAction:(int64_t)a3;
- (unint64_t)signpostID;
- (void)_configureMessageRequestWithSignPostID:(unint64_t)a3;
- (void)_determineMessageToDisplayForCollection:(id)a3 itemIDs:(id)a4;
- (void)_notificationPreviewFailedWithError:(id)a3 singpostID:(unint64_t)a4;
- (void)_resetMessageListAndPromise;
- (void)_setProgressUIVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5;
- (void)didReceiveNotification:(id)a3;
- (void)messageContentView:(id)a3 didFinishRenderingWithHeight:(double)a4;
- (void)messageContentView:(id)a3 viewedRemoteURLs:(id)a4;
- (void)setActionsForMessage:(id)a3;
- (void)setError:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MFNotificationViewController

+ (OS_os_log)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000188C0;
  block[3] = &unk_1000389B8;
  block[4] = a1;
  if (qword_1000425E0 != -1)
  {
    dispatch_once(&qword_1000425E0, block);
  }

  v2 = qword_1000425D8;

  return v2;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = MFNotificationViewController;
  [(MFNotificationViewController *)&v36 viewDidLoad];
  v3 = objc_alloc_init(EMDaemonInterface);
  [(MFNotificationViewController *)self setDaemonInterface:v3];

  v4 = [(MFNotificationViewController *)self daemonInterface];
  [MFWKWebViewFactory setDaemonInterface:v4 URLCacheWithMemoryCapacity:0];

  v5 = [(MFNotificationViewController *)self daemonInterface];
  v6 = [v5 vipManager];
  [VIPManager setBackingManager:v6];

  v7 = objc_alloc_init(MUICachingSVGConverter);
  v8 = [MUIBrandIndicatorProvider alloc];
  v9 = [(MFNotificationViewController *)self daemonInterface];
  v10 = [v9 messageRepository];
  v11 = [v8 initWithMessageRepository:v10 svgConverter:v7];
  [(MFNotificationViewController *)self setBrandIndicatorProvider:v11];

  v12 = objc_alloc_init(EMCachingContactStore);
  [(MFNotificationViewController *)self setContactStore:v12];

  objc_initWeak(&location, self);
  v13 = [MUIAvatarImageGenerator alloc];
  brandIndicatorProvider = self->_brandIndicatorProvider;
  v15 = [(MFNotificationViewController *)self daemonInterface];
  v16 = [v15 messageRepository];
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_100018E04;
  v33 = &unk_1000390E0;
  objc_copyWeak(&v34, &location);
  v17 = [v13 initWithBimiProvider:brandIndicatorProvider messageRepository:v16 contactsProviderHandler:&v30];
  [(MFNotificationViewController *)self setAvatarGenerator:v17, v30, v31, v32, v33];

  v18 = [(MFNotificationViewController *)self avatarGenerator];
  [v18 allowGeneratingAvatarImages];

  [(MFNotificationViewController *)self systemMinimumLayoutMargins];
  v19 = [(MFNotificationViewController *)self view];
  -[MFNotificationViewController setIsRTL:](self, "setIsRTL:", [v19 mf_prefersRightToLeftInterfaceLayout]);

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

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = MFNotificationViewController;
  [(MFNotificationViewController *)&v8 viewDidDisappear:a3];
  v4 = MSUserNotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MFNotificationViewController *)self messageList];
    v6 = [(MFNotificationViewController *)self messageReferenceURL];
    *buf = 134218242;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: canceling promise for URL %@", buf, 0x16u);
  }

  v7 = [(MFNotificationViewController *)self messageDisplayPromise];
  [v7 cancel];

  [(MFNotificationViewController *)self setIsDisplayingMessage:0];
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  if (![(MFNotificationViewController *)self isDisplayingMessage])
  {
    [(MFNotificationViewController *)self setIsDisplayingMessage:1];
    v5 = [(MFNotificationViewController *)self daemonInterface];

    if (v5)
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
      v10 = [v4 request];
      v11 = [v10 content];
      v12 = [v11 userInfo];
      v13 = [v12 objectForKeyedSubscript:MSUserNotificationContentKeyMessageReference];

      if (v13)
      {
        v14 = [NSURL URLWithString:v13];
        [(MFNotificationViewController *)self setMessageReferenceURL:v14];
      }

      else
      {
        v14 = [v10 identifier];
        v16 = [NSURL URLWithString:v14];
        [(MFNotificationViewController *)self setMessageReferenceURL:v16];
      }

      v17 = MSUserNotificationsLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(MFNotificationViewController *)self messageReferenceURL];
        *buf = 138412290;
        v28 = v18;
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

- (void)_configureMessageRequestWithSignPostID:(unint64_t)a3
{
  v5 = [(MFNotificationViewController *)self daemonInterface];
  v6 = [v5 messageRepository];
  v7 = [(MFNotificationViewController *)self messageReferenceURL];
  v8 = [v6 messageObjectIDForURL:v7];

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
  v13[1] = a3;
  [v9 onScheduler:v10 addSuccessBlock:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001A250;
  v11[3] = &unk_1000391F8;
  v11[4] = self;
  v11[5] = a3;
  [v9 onScheduler:v10 addFailureBlock:v11];
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)_notificationPreviewFailedWithError:(id)a3 singpostID:(unint64_t)a4
{
  v6 = a3;
  [(MFNotificationViewController *)self setError:v6];
  v7 = MSUserNotificationsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MFNotificationViewController *)self messageList];
    v9 = [(MFNotificationViewController *)self messageReferenceURL];
    v10 = [v6 ef_publicDescription];
    v15 = 134218498;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: failed to display message for URL %@. Error: %lu", &v15, 0x20u);
  }

  v11 = +[MFNotificationViewController signpostLog];
  v12 = v11;
  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = [v6 code];
    v15 = 134349056;
    v16 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, a4, "MFNotificationPreview", "Failure %{public, name=errorCode}lu", &v15, 0xCu);
  }

  [(MFNotificationViewController *)self _resetMessageListAndPromise];
  context = self->_context;
  self->_context = 0;
}

- (void)setError:(id)a3
{
  v5 = a3;
  if (self->_error != v5)
  {
    objc_storeStrong(&self->_error, a3);
    v6 = [(MFNotificationViewController *)self view];
    v7 = [(MFNotificationViewController *)self _errorLabel];
    [v6 addSubview:v7];

    [(MFNotificationViewController *)self _setProgressUIVisible:0 animated:0];
    v8 = MSUserNotificationsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(NSError *)v5 userInfo];
      sub_10001D6B0(v9, v10, v8);
    }
  }
}

- (id)_errorLabel
{
  [(MFNotificationViewController *)self minMargins];
  v4 = v3;
  v5 = [(MFNotificationViewController *)self view];
  [v5 frame];
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

- (id)_configureMessageListAndPromiseForQuery:(id)a3 repository:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MFNotificationViewController *)self _resetMessageListAndPromise];
  v8 = +[EFPromise promise];
  [(MFNotificationViewController *)self setMessageDisplayPromise:v8];

  v9 = [[EMMessageList alloc] initWithQuery:v6 repository:v7];
  [(MFNotificationViewController *)self setMessageList:v9];

  v10 = [(MFNotificationViewController *)self messageList];
  [v10 beginObserving:self];

  v11 = MSUserNotificationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(MFNotificationViewController *)self messageList];
    v13 = [(MFNotificationViewController *)self messageReferenceURL];
    v16 = 134218242;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: configured message list for URL:%@", &v16, 0x16u);
  }

  v14 = [(MFNotificationViewController *)self messageDisplayPromise];

  return v14;
}

- (void)_resetMessageListAndPromise
{
  v3 = [(MFNotificationViewController *)self messageList];

  if (v3)
  {
    v6 = [(MFNotificationViewController *)self messageList];
    [v6 stopObserving:self];

    [(MFNotificationViewController *)self setMessageList:0];
  }

  v4 = [(MFNotificationViewController *)self messageDisplayPromise];

  if (v4)
  {
    v5 = [(MFNotificationViewController *)self messageDisplayPromise];
    v7 = [v5 future];

    [v7 cancel];
    [(MFNotificationViewController *)self setMessageDisplayPromise:0];
  }
}

- (void)_determineMessageToDisplayForCollection:(id)a3 itemIDs:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MFNotificationViewController *)self messageList];
  if (v7 == v11)
  {
    v8 = [v6 firstObject];
    if (v8)
    {
      [v7 stopObserving:self];
      v9 = [(MFNotificationViewController *)self messageDisplayPromise];
      v10 = [v7 messageListItemForItemID:v8];
      [v9 finishWithFuture:v10];
    }
  }
}

- (void)_setProgressUIVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (pthread_main_np() != 1)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"MFNotificationViewController.m" lineNumber:332 description:@"Current thread must be main"];
  }

  v7 = MSUserNotificationsLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      v9 = [(MFNotificationViewController *)self messageList];
      v10 = [(MFNotificationViewController *)self messageReferenceURL];
      v27 = 134218242;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: showing loading spinner for message URL:%@", &v27, 0x16u);
    }

    v11 = [(MFNotificationViewController *)self loadingView];
    v12 = v11 == 0;

    if (v12)
    {
      v13 = [MFMessageContentLoadingView alloc];
      v14 = [(MFNotificationViewController *)self view];
      [v14 frame];
      v15 = [v13 initWithFrame:?];
      [(MFNotificationViewController *)self setLoadingView:v15];

      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"LOADING_ALL_CAPS" value:&stru_1000392E0 table:@"Main"];
      v18 = [(MFNotificationViewController *)self loadingView];
      [v18 setLoadingTitle:v17];

      v19 = [(MFNotificationViewController *)self view];
      v20 = [(MFNotificationViewController *)self loadingView];
      [v19 addSubview:v20];
    }

    v21 = [(MFNotificationViewController *)self loadingView];
    [v21 setLoadingIndicatorVisible:1];

    v22 = [(MFNotificationViewController *)self loadingView];
    [v22 setAutoresizingMask:18];
  }

  else
  {
    if (v8)
    {
      v23 = [(MFNotificationViewController *)self messageList];
      v24 = [(MFNotificationViewController *)self messageReferenceURL];
      v27 = 134218242;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: hiding loading spinner for message URL:%@", &v27, 0x16u);
    }

    v25 = [(MFNotificationViewController *)self loadingView];
    [v25 setLoadingIndicatorVisible:0];

    v22 = [(MFNotificationViewController *)self loadingView];
    [v22 removeFromSuperview];
  }
}

- (void)messageContentView:(id)a3 didFinishRenderingWithHeight:(double)a4
{
  v6 = a3;
  [(MFNotificationViewController *)self _setProgressUIVisible:0 animated:0];
  [(MFNotificationViewController *)self screenHeight];
  v8 = v7;
  v9 = [(MFNotificationViewController *)self view];
  [v9 frame];
  if (v8 + v8 <= a4)
  {
    v11 = v8 + v8;
  }

  else
  {
    v11 = a4;
  }

  [(MFNotificationViewController *)self setPreferredContentSize:v10, v11];

  v12 = MSUserNotificationsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(MFNotificationViewController *)self messageReferenceURL];
    [(MFNotificationViewController *)self preferredContentSize];
    v14 = NSStringFromSize(v23);
    v15 = 134218754;
    v16 = v6;
    v17 = 2048;
    v18 = a4;
    v19 = 2112;
    v20 = v13;
    v21 = 2114;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: messageHeight is %f for message URL:%@ preferredHeight:%{public}@", &v15, 0x2Au);
  }
}

- (void)messageContentView:(id)a3 viewedRemoteURLs:(id)a4
{
  v7 = a4;
  v5 = [(MFNotificationViewController *)self daemonInterface];
  v6 = [v5 messageRepository];
  [v6 noteViewOfRemoteContentLinks:v7];
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MSUserNotificationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = [v9 count];
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NotificationPreview: adding %lu items after %{public}@", &v12, 0x16u);
  }

  [(MFNotificationViewController *)self _determineMessageToDisplayForCollection:v8 itemIDs:v9];
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MSUserNotificationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = [v9 count];
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NotificationPreview: adding %lu items before %{public}@", &v12, 0x16u);
  }

  [(MFNotificationViewController *)self _determineMessageToDisplayForCollection:v8 itemIDs:v9];
}

- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MSUserNotificationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NotificationPreview: item id changed from %{public}@ to %{public}@", buf, 0x16u);
  }

  if (v10)
  {
    v13 = v10;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [(MFNotificationViewController *)self _determineMessageToDisplayForCollection:v8 itemIDs:v12];
  }
}

- (void)setActionsForMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 mailboxes];
  v6 = [v5 firstObject];
  v7 = [v6 account];

  if ([v7 shouldArchiveByDefault])
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
    if ([v7 shouldArchiveByDefault])
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
  v14 = [(MFNotificationViewController *)self extensionContext];
  [v14 setNotificationActions:v13];
}

- (id)userNotificationActionForSwipeAction:(int64_t)a3
{
  v5 = qword_1000425E8;
  if (!qword_1000425E8)
  {
    qword_1000425E8 = &off_100039F60;

    v5 = &off_100039F60;
  }

  v6 = [NSNumber numberWithInteger:a3];
  v7 = [v5 containsObject:v6];

  if (!v7)
  {
    a3 = 2;
  }

  v8 = a3 - 6;
  if ((a3 - 6) >= 4)
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

  v14 = [(MFNotificationViewController *)self _notificationActionIdentifierForSwipeAction:a3];
  if ([MFTriageActionUtilities isActionDestructive:a3])
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

- (id)_notificationActionIdentifierForSwipeAction:(int64_t)a3
{
  v3 = MSMailNotificationActionIdentifierPrefix;
  v4 = [MFTriageActionUtilities actionKeyForTriageAction:a3];
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