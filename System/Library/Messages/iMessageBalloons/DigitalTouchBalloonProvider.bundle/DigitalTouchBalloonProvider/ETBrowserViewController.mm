@interface ETBrowserViewController
- (DTSCanvasViewController)canvasViewController;
- (ETBrowserViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source;
- (void)canvasViewController:(id)controller sendMessage:(id)message;
- (void)dataSource:(id)source didReceiveSessionMessage:(id)message;
- (void)dismiss;
- (void)setBalloonPluginDataSource:(id)source;
- (void)viewDidLoad;
@end

@implementation ETBrowserViewController

- (ETBrowserViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = ETBrowserViewController;
  v8 = [(ETBrowserViewController *)&v11 initWithBalloonPlugin:plugin dataSource:sourceCopy];
  v9 = v8;
  if (sourceCopy && v8)
  {
    objc_storeStrong(&v8->_dataSource, source);
  }

  return v9;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = ETBrowserViewController;
  [(ETBrowserViewController *)&v10 viewDidLoad];
  view = [(ETBrowserViewController *)self view];
  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  [(ETBrowserViewController *)self addChildViewController:canvasViewController];
  view2 = [canvasViewController view];
  [view addSubview:view2];

  [canvasViewController didMoveToParentViewController:self];
  [canvasViewController setSendDelegate:self];
  [canvasViewController setDataSource:self->_dataSource];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      dataSource = self->_dataSource;
      allPayloads = [(ETBalloonPluginDataSource *)dataSource allPayloads];
      v9 = [allPayloads count];
      *buf = 138412546;
      v12 = dataSource;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Data source: %@, incoming message count: %lu.", buf, 0x16u);
    }
  }
}

- (void)setBalloonPluginDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = ETBrowserViewController;
  [(ETBrowserViewController *)&v8 setBalloonPluginDataSource:sourceCopy];
  dataSource = self->_dataSource;
  self->_dataSource = sourceCopy;
  v6 = sourceCopy;

  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  [canvasViewController setDataSource:self->_dataSource];
}

- (void)canvasViewController:(id)controller sendMessage:(id)message
{
  controllerCopy = controller;
  messageCopy = message;
  archive = [messageCopy archive];
  v9 = objc_alloc_init(CKBrowserItemPayload);
  [v9 setData:archive];
  [v9 setShouldExpire:1];
  messageType = [messageCopy messageType];
  if (messageType != 8)
  {
LABEL_4:
    v14 = messageType != 8;
    pluginPayload = [(ETBalloonPluginDataSource *)self->_dataSource pluginPayload];
    attachments = [pluginPayload attachments];
    v17 = [attachments count];

    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = v14;
    }

    if (!v18 || ([(ETBalloonPluginDataSource *)self->_dataSource messageGUID], v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 == 0, v19, v20))
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Sending non-session message.", &v30, 2u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          allPayloads = [(ETBalloonPluginDataSource *)self->_dataSource allPayloads];
          v23 = [allPayloads count];
          messageGUID = [(ETBalloonPluginDataSource *)self->_dataSource messageGUID];
          v30 = 134218242;
          v31 = v23;
          v32 = 2112;
          v33 = messageGUID;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Sending breadbrumb with session message count: %lu, message GUID: %@)", &v30, 0x16u);
        }
      }

      [v9 setUpdate:1];
      v25 = [NSBundle bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"DT_BREADCRUMB_TEXT" value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];
      [v9 setBreadcrumbText:v26];
    }

    sendDelegate = [(ETBrowserViewController *)self sendDelegate];
    [sendDelegate commitPayload:v9];

    goto LABEL_19;
  }

  mediaURL = [messageCopy mediaURL];
  v12 = mediaURL;
  if (mediaURL)
  {
    v34 = mediaURL;
    v13 = [NSArray arrayWithObjects:&v34 count:1];
    [v9 setAttachments:v13];

    goto LABEL_4;
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Video message can't be sent because it is missing video attachment.", &v30, 2u);
    }
  }

LABEL_19:
}

- (void)dismiss
{
  sendDelegate = [(ETBrowserViewController *)self sendDelegate];
  [sendDelegate dismiss];
}

- (void)dataSource:(id)source didReceiveSessionMessage:(id)message
{
  messageCopy = message;
  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  [canvasViewController addUnplayedMessage:messageCopy];
}

- (DTSCanvasViewController)canvasViewController
{
  canvasViewController = self->_canvasViewController;
  if (!canvasViewController)
  {
    v4 = objc_alloc_init([(ETBrowserViewController *)self canvasViewControllerClass]);
    v5 = self->_canvasViewController;
    self->_canvasViewController = v4;

    canvasViewController = self->_canvasViewController;
  }

  return canvasViewController;
}

@end