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
  v3 = sub_100003B9C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting loadRTTConversations", buf, 2u);
  }

  v4 = sub_10000F914();
  if (v4)
  {
    v5 = v4;
    objc_initWeak(buf, self);
    rttConversationsQueue = self->_rttConversationsQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001E11C;
    v8[3] = &unk_10010AFE0;
    objc_copyWeak(v9, buf);
    v9[1] = v5;
    dispatch_async(rttConversationsQueue, v8);
    objc_destroyWeak(v9);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = sub_100003B9C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stopped loadRTTConversations because we could not find RTTUIUtilities", buf, 2u);
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
  v5 = sub_10000F848();
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
      v10 = sub_100003B9C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000C44C8(v10);
      }
    }
  }
}

@end