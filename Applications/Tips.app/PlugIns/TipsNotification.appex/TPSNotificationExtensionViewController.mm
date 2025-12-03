@interface TPSNotificationExtensionViewController
- (_TPSXPCConnection)xpcConnection;
- (id)exportedInterface;
- (void)_destroyXPCConnection;
- (void)clearNotificationIgnoreCount;
- (void)dealloc;
- (void)didReceiveNotification:(id)notification;
- (void)markTipViewed:(id)viewed;
- (void)viewDidLoad;
@end

@implementation TPSNotificationExtensionViewController

- (void)dealloc
{
  [(TPSNotificationExtensionViewController *)self _destroyXPCConnection];
  v3.receiver = self;
  v3.super_class = TPSNotificationExtensionViewController;
  [(TPSNotificationExtensionViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = TPSNotificationExtensionViewController;
  [(TPSNotificationExtensionViewController *)&v27 viewDidLoad];
  v3 = +[TPSURLSessionHandler sharedInstance];
  v4 = +[TPSURLSessionManager defaultManager];
  [v4 setDefaultSessionDelegate:v3];

  v5 = +[TPSCommonDefines sharedInstance];
  if (!self->_singleTipViewController)
  {
    v6 = +[TPSUIAppController sharedInstance];
    v7 = [[TPSSingleTipViewController alloc] initWithAppController:v6];
    singleTipViewController = self->_singleTipViewController;
    self->_singleTipViewController = v7;

    [(TPSSingleTipViewController *)self->_singleTipViewController setDelegate:self];
    view = [(TPSSingleTipViewController *)self->_singleTipViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TPSNotificationExtensionViewController *)self addChildViewController:self->_singleTipViewController];
    view2 = [(TPSNotificationExtensionViewController *)self view];
    [view2 addSubview:view];

    topAnchor = [view topAnchor];
    view3 = [(TPSNotificationExtensionViewController *)self view];
    topAnchor2 = [view3 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v14 setActive:1];

    bottomAnchor = [view bottomAnchor];
    view4 = [(TPSNotificationExtensionViewController *)self view];
    bottomAnchor2 = [view4 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v18 setActive:1];

    leadingAnchor = [view leadingAnchor];
    view5 = [(TPSNotificationExtensionViewController *)self view];
    leadingAnchor2 = [view5 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v22 setActive:1];

    trailingAnchor = [view trailingAnchor];
    view6 = [(TPSNotificationExtensionViewController *)self view];
    trailingAnchor2 = [view6 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v26 setActive:1];

    [(TPSSingleTipViewController *)self->_singleTipViewController didMoveToParentViewController:self];
  }

  [(TPSNotificationExtensionViewController *)self clearNotificationIgnoreCount];
}

- (void)didReceiveNotification:(id)notification
{
  request = [notification request];
  content = [request content];

  categoryIdentifier = [content categoryIdentifier];
  v6 = [categoryIdentifier isEqualToString:@"tip-notification-extension"];

  v7 = content;
  if (v6)
  {
    userInfo = [content userInfo];
    v9 = [userInfo TPSSafeDictionaryForKey:TPSDocumentDocumentRootKey];
    v10 = [userInfo TPSSafeDictionaryForKey:TPSMetadataRootKey];
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v14 = [[TPSMetadata alloc] initWithDictionary:v10];
      v15 = [TPSTip alloc];
      v16 = [v15 initWithDictionary:v9 metadata:v14 identifierKey:TPSTipDocumentIdKey];
      v13 = v16;
      if (v16)
      {
        assetSizes = [v14 assetSizes];
        [(TPSSingleTipViewController *)self->_singleTipViewController setAssetSizes:assetSizes];

        [(TPSSingleTipViewController *)self->_singleTipViewController setTip:v13];
        v18 = [userInfo TPSSafeStringForKey:@"collectionId"];
        [(TPSSingleTipViewController *)self->_singleTipViewController setCollectionID:v18];
      }
    }

    identifier = [v13 identifier];
    v20 = [userInfo TPSSafeStringForKey:@"collectionId"];
    correlationID = [v13 correlationID];
    v22 = [TPSAnalyticsEventAppLaunched eventWithContentID:identifier collectionID:v20 correlationID:correlationID launchType:TPSAnalyticsLaunchTypeNotification];
    [v22 log];

    v7 = content;
  }
}

- (_TPSXPCConnection)xpcConnection
{
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [_TPSXPCConnection alloc];
    v5 = [v4 initWithMachServiceName:@"com.apple.tipsd" options:_TPSDefaultXPCConnectionOptions];
    v6 = self->_xpcConnection;
    self->_xpcConnection = v5;

    [(_TPSXPCConnection *)self->_xpcConnection setExportedObject:self];
    [(_TPSXPCConnection *)self->_xpcConnection resume];
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

- (void)_destroyXPCConnection
{
  [(_TPSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

- (id)exportedInterface
{
  v2 = objc_alloc_init(NSXPCInterface);

  return v2;
}

- (void)clearNotificationIgnoreCount
{
  xpcConnection = [(TPSNotificationExtensionViewController *)self xpcConnection];
  v3 = [xpcConnection remoteObjectProxyWithErrorHandler:&stru_10000C388];

  if (v3)
  {
    [v3 tipNotificationInteractedByUser];
  }
}

- (void)markTipViewed:(id)viewed
{
  viewedCopy = viewed;
  if (viewedCopy)
  {
    xpcConnection = [(TPSNotificationExtensionViewController *)self xpcConnection];
    v6 = [xpcConnection remoteObjectProxyWithErrorHandler:&stru_10000C3A8];

    if (v6)
    {
      identifier = [viewedCopy identifier];
      [v6 contentViewedForIdentifier:identifier];
    }
  }
}

@end