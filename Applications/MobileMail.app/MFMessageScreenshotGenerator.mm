@interface MFMessageScreenshotGenerator
+ (OS_os_log)log;
- (MFMessageContentView)contentView;
- (MFMessageScreenshotGenerator)initWithScene:(id)scene;
- (MailScene)scene;
- (void)_generateScreenshotImageForMessage:(id)message completion:(id)completion;
- (void)_setUpAndAddContentViewForMessage:(id)message configuration:(id)configuration;
- (void)generateScreenshotImageForMessage:(id)message configuration:(id)configuration completion:(id)completion;
- (void)generateScreenshotViewForMessage:(id)message configuration:(id)configuration completion:(id)completion;
- (void)messageContentView:(id)view viewedRemoteURLs:(id)ls;
- (void)messageContentViewDidFinishLoadingMessage:(id)message;
@end

@implementation MFMessageScreenshotGenerator

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2E40;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD5C0 != -1)
  {
    dispatch_once(&qword_1006DD5C0, block);
  }

  v2 = qword_1006DD5B8;

  return v2;
}

- (MFMessageScreenshotGenerator)initWithScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = MFMessageScreenshotGenerator;
  v5 = [(MFMessageScreenshotGenerator *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.mobilemail.screenshotgenerator", 0);
    generationQueue = v5->_generationQueue;
    v5->_generationQueue = v6;

    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v5;
}

- (MFMessageContentView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = [[MFMessageContentView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_contentView;
    self->_contentView = v4;

    [(MFMessageContentView *)self->_contentView setDelegate:self];
    contentView = self->_contentView;
  }

  return contentView;
}

- (void)generateScreenshotViewForMessage:(id)message configuration:(id)configuration completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F3090;
  v9[3] = &unk_10064D8D8;
  completionCopy = completion;
  v8 = completionCopy;
  [(MFMessageScreenshotGenerator *)self generateScreenshotImageForMessage:message configuration:configuration completion:v9];
}

- (void)generateScreenshotImageForMessage:(id)message configuration:(id)configuration completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001F3284;
  v10[3] = &unk_1006509D8;
  v10[4] = self;
  messageCopy = message;
  configurationCopy = configuration;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = configurationCopy;
  v9 = messageCopy;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)_generateScreenshotImageForMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  generationQueue = self->_generationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F338C;
  block[3] = &unk_10064E320;
  v12 = messageCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = messageCopy;
  dispatch_async(generationQueue, block);
}

- (void)_setUpAndAddContentViewForMessage:(id)message configuration:(id)configuration
{
  messageCopy = message;
  configurationCopy = configuration;
  if (pthread_main_np() != 1)
  {
    v56 = +[NSAssertionHandler currentHandler];
    [v56 handleFailureInMethod:a2 object:self file:@"MFMessageScreenshotGenerator.m" lineNumber:94 description:@"Current thread must be main"];
  }

  objectID = [messageCopy objectID];
  v57 = [objectID description];

  [configurationCopy size];
  v58 = v10;
  v59 = v9;
  [configurationCopy margins];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [configurationCopy showSourceMailbox];
  showBanners = [configurationCopy showBanners];
  v20 = +[MFMessageScreenshotGenerator log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v74.height = v58;
    v74.width = v59;
    v21 = NSStringFromCGSize(v74);
    v75.top = v12;
    v75.left = v14;
    v75.bottom = v16;
    v75.right = v18;
    v22 = NSStringFromUIEdgeInsets(v75);
    traitCollection = [configurationCopy traitCollection];
    v24 = [traitCollection description];
    v25 = NSStringFromBOOL();
    v26 = NSStringFromBOOL();
    *buf = 138544642;
    v63 = v57;
    v64 = 2114;
    v65 = v21;
    v66 = 2114;
    v67 = v22;
    v68 = 2114;
    v69 = v24;
    v70 = 2114;
    v71 = v25;
    v72 = 2114;
    v73 = v26;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Starting setup of content view for message - libraryid=%{public}@, size=%{public}@, margins=%{public}@, %{public}@, mailboxSource=%{public}@, banners=%{public}@", buf, 0x3Eu);
  }

  kdebug_trace();
  v27 = objc_alloc_init(CNContactStore);
  v28 = [MFConversationItemHeaderBlock alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(MFConversationItemHeaderBlock *)v28 initWithFrame:v27 contactStore:CGRectZero.origin.x, y, width, height];
  [(MFConversationItemHeaderBlock *)height setDisplayOptions:12];
  height2 = [[MessageHeaderSubjectBlock alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  v61[0] = height;
  v61[1] = height2;
  v34 = [NSArray arrayWithObjects:v61 count:2];
  contentView = [(MFMessageScreenshotGenerator *)self contentView];
  headerView = [contentView headerView];
  [headerView setHeaderBlocks:v34];

  contentView2 = [(MFMessageScreenshotGenerator *)self contentView];
  [contentView2 setShowsBanners:showBanners];

  scene = [(MFMessageScreenshotGenerator *)self scene];
  traitCollection2 = [configurationCopy traitCollection];
  contentView3 = [(MFMessageScreenshotGenerator *)self contentView];
  [contentView3 safeAreaInsets];
  v45 = +[MFMessageDisplayMetrics displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:](MFMessageDisplayMetrics, "displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:", traitCollection2, [scene interfaceOrientation], v12, v14, v16, v18, v41, v42, v43, v44);

  contentView4 = [(MFMessageScreenshotGenerator *)self contentView];
  [contentView4 setFrame:{0.0, 0.0, v59, v58}];

  contentView5 = [(MFMessageScreenshotGenerator *)self contentView];
  [contentView5 setDisplayMetrics:v45];

  contentView6 = [(MFMessageScreenshotGenerator *)self contentView];
  [contentView6 setLayoutMargins:{v12, v14, v16, v18}];

  contentView7 = [(MFMessageScreenshotGenerator *)self contentView];
  [contentView7 setAlpha:0.0];

  mf_window = [scene mf_window];
  contentView8 = [(MFMessageScreenshotGenerator *)self contentView];
  [mf_window addSubview:contentView8];

  kdebug_trace();
  kdebug_trace();
  v52 = [[MessageContentRepresentationRequest alloc] initWithMessage:messageCopy];
  contentView9 = [(MFMessageScreenshotGenerator *)self contentView];
  [contentView9 setContentRequest:v52];

  [v52 start];
  contentView10 = [(MFMessageScreenshotGenerator *)self contentView];
  headerView2 = [contentView10 headerView];
  [headerView2 layoutIfNeeded];
}

- (void)messageContentViewDidFinishLoadingMessage:(id)message
{
  messageCopy = message;
  v5 = +[MFMessageScreenshotGenerator log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    contentRequest = [messageCopy contentRequest];
    message = [contentRequest message];
    objectID = [message objectID];
    v10 = 138543362;
    v11 = objectID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "message content view finished loading libraryid=%{public}@", &v10, 0xCu);
  }

  messageFinishedLoadingSemaphore = self->_messageFinishedLoadingSemaphore;
  if (messageFinishedLoadingSemaphore)
  {
    dispatch_semaphore_signal(messageFinishedLoadingSemaphore);
  }
}

- (void)messageContentView:(id)view viewedRemoteURLs:(id)ls
{
  lsCopy = ls;
  scene = [(MFMessageScreenshotGenerator *)self scene];
  daemonInterface = [scene daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  [messageRepository noteViewOfRemoteContentLinks:lsCopy];
}

- (MailScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end