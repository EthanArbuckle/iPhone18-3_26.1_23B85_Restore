@interface MPRecentsContactHeaderViewController
- (MPRecentsContactHeaderViewController)init;
- (id)generateDetailsView;
- (id)rttConversationForUUID:(id)a3;
- (int64_t)recentCallTTYType;
- (void)loadLayoutConstraints;
- (void)loadRTTConversations;
- (void)loadView;
- (void)presentConversationForUUID:(id)a3;
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
  v3 = [(MPRecentsContactHeaderViewController *)self view];
  v4 = [(MPRecentsContactHeaderViewController *)self generateDetailsView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v4];
  [(MPRecentsContactHeaderViewController *)self setDetailsView:v4];
  [(MPRecentsContactHeaderViewController *)self loadLayoutConstraints];
}

- (void)loadLayoutConstraints
{
  v13 = [(MPRecentsContactHeaderViewController *)self detailsView];
  v3 = [(MPRecentsContactHeaderViewController *)self view];
  v4 = [v13 widthAnchor];
  v5 = [v3 widthAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  v7 = [v13 topAnchor];
  v8 = [v3 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [v13 bottomAnchor];
  v11 = [v3 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];
}

- (id)generateDetailsView
{
  v3 = [[PHRecentCallDetailsView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(PHRecentCallDetailsView *)v3 setDelegate:self];
  v4 = [(MPRecentsContactHeaderViewController *)self recentCall];
  [(PHRecentCallDetailsView *)v3 setRecentCall:v4];

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
  v2 = [(MPRecentsContactHeaderViewController *)self recentCall];
  v3 = [v2 ttyType];

  return v3;
}

- (id)rttConversationForUUID:(id)a3
{
  v4 = a3;
  v5 = [(MPRecentsContactHeaderViewController *)self rttConversations];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)presentConversationForUUID:(id)a3
{
  v4 = a3;
  v5 = RTTUIConversationViewControllerClass();
  if (v5)
  {
    v6 = v5;
    v7 = [(MPRecentsContactHeaderViewController *)self rttConversationForUUID:v4];
    if (v7)
    {
      v8 = [v6 viewControllerForConversation:v7];
      v9 = [(MPRecentsContactHeaderViewController *)self navigationController];
      [v9 pushViewController:v8 animated:1];
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