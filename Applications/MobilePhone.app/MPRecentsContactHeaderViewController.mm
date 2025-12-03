@interface MPRecentsContactHeaderViewController
- (MPRecentsContactHeaderViewController)init;
- (id)generateDetailsView;
- (id)rttConversationForUUID:(id)d;
- (int64_t)recentCallTTYType;
- (void)loadLayoutConstraints;
- (void)loadRTTConversations;
- (void)loadView;
- (void)presentConversationForUUID:(id)d;
@end

@implementation MPRecentsContactHeaderViewController

- (MPRecentsContactHeaderViewController)init
{
  v7.receiver = self;
  v7.super_class = MPRecentsContactHeaderViewController;
  v2 = [(MPRecentsContactHeaderViewController *)&v7 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.mobilephone.rttConversations", v3);
    rttConversationsQueue = v2->_rttConversationsQueue;
    v2->_rttConversationsQueue = v4;
  }

  return v2;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = MPRecentsContactHeaderViewController;
  [(MPRecentsContactHeaderViewController *)&v5 loadView];
  [(MPRecentsContactHeaderViewController *)self loadRTTConversations];
  view = [(MPRecentsContactHeaderViewController *)self view];
  generateDetailsView = [(MPRecentsContactHeaderViewController *)self generateDetailsView];
  [generateDetailsView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:generateDetailsView];
  [(MPRecentsContactHeaderViewController *)self setDetailsView:generateDetailsView];
  [(MPRecentsContactHeaderViewController *)self loadLayoutConstraints];
}

- (void)loadLayoutConstraints
{
  detailsView = [(MPRecentsContactHeaderViewController *)self detailsView];
  view = [(MPRecentsContactHeaderViewController *)self view];
  widthAnchor = [detailsView widthAnchor];
  widthAnchor2 = [view widthAnchor];
  v6 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v6 setActive:1];

  topAnchor = [detailsView topAnchor];
  topAnchor2 = [view topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  bottomAnchor = [detailsView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v12 setActive:1];
}

- (id)generateDetailsView
{
  v3 = [[PHRecentCallDetailsView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(PHRecentCallDetailsView *)v3 setDelegate:self];
  recentCall = [(MPRecentsContactHeaderViewController *)self recentCall];
  [(PHRecentCallDetailsView *)v3 setRecentCall:recentCall];

  return v3;
}

- (void)loadRTTConversations
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting loadRTTConversations", buf, 2u);
  }

  v4 = RTTUIUtilitiesClass();
  if (v4)
  {
    v5 = v4;
    objc_initWeak(buf, self);
    rttConversationsQueue = self->_rttConversationsQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __60__MPRecentsContactHeaderViewController_loadRTTConversations__block_invoke;
    v8[3] = &unk_100285198;
    objc_copyWeak(v9, buf);
    v9[1] = v5;
    dispatch_async(rttConversationsQueue, v8);
    objc_destroyWeak(v9);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stopped loadRTTConversations because we could not find RTTUIUtilities", buf, 2u);
    }
  }
}

void __60__MPRecentsContactHeaderViewController_loadRTTConversations__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  v2 = v1 == 0;

  if (v2)
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopped loadRTTConversations because MPRecentsContactHeaderViewController was deallocated before starting", buf, 2u);
    }
  }

  else
  {
    v16 = +[NSMutableDictionary dictionary];
    v3 = objc_loadWeakRetained(&to);
    v4 = [v3 recentCall];
    v5 = [v4 callOccurrences];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v7)
    {
      v8 = *v22;
      v9 = kCHCallOccurrenceUniqueIdKey;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v21 + 1) + 8 * v10) objectForKeyedSubscript:{v9, v16}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            v13 = [*(a1 + 40) sharedUtilityProvider];
            v14 = [v13 conversationForCallUID:v12];

            if (v14)
            {
              [v16 setObject:v14 forKeyedSubscript:v12];
            }
          }

          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v7);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __60__MPRecentsContactHeaderViewController_loadRTTConversations__block_invoke_63;
    block[3] = &unk_100285170;
    objc_copyWeak(&v20, (a1 + 32));
    v19 = v16;
    v15 = v16;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v20);
  }

  objc_destroyWeak(&to);
}

void __60__MPRecentsContactHeaderViewController_loadRTTConversations__block_invoke_63(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setRttConversations:*(a1 + 32)];
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully finished loadRTTConversations", buf, 2u);
    }

    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading conversation list", v8, 2u);
    }

    v6 = [v3 detailsView];
    [v6 reloadCallOccurences];
  }

  else
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopped loadRTTConversations because MPRecentsContactHeaderViewController was deallocated when trying to write rttConversations", v7, 2u);
    }
  }
}

- (int64_t)recentCallTTYType
{
  recentCall = [(MPRecentsContactHeaderViewController *)self recentCall];
  ttyType = [recentCall ttyType];

  return ttyType;
}

- (id)rttConversationForUUID:(id)d
{
  dCopy = d;
  rttConversations = [(MPRecentsContactHeaderViewController *)self rttConversations];
  v6 = [rttConversations objectForKey:dCopy];

  return v6;
}

- (void)presentConversationForUUID:(id)d
{
  dCopy = d;
  v5 = RTTUIConversationViewControllerClass();
  if (v5)
  {
    v6 = v5;
    v7 = [(MPRecentsContactHeaderViewController *)self rttConversationForUUID:dCopy];
    if (v7)
    {
      v8 = [v6 viewControllerForConversation:v7];
      navigationController = [(MPRecentsContactHeaderViewController *)self navigationController];
      [navigationController pushViewController:v8 animated:1];
    }

    else
    {
      v10 = PHDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [MPRecentsContactHeaderViewController presentConversationForUUID:v10];
      }
    }
  }
}

@end