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
  v5 = sub_10000F848();
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
      v10 = sub_100003B9C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000C44C8(v10);
      }
    }
  }
}

@end