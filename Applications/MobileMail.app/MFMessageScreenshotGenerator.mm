@interface MFMessageScreenshotGenerator
+ (OS_os_log)log;
- (MFMessageContentView)contentView;
- (MFMessageScreenshotGenerator)initWithScene:(id)a3;
- (MailScene)scene;
- (void)_generateScreenshotImageForMessage:(id)a3 completion:(id)a4;
- (void)_setUpAndAddContentViewForMessage:(id)a3 configuration:(id)a4;
- (void)generateScreenshotImageForMessage:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)generateScreenshotViewForMessage:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)messageContentView:(id)a3 viewedRemoteURLs:(id)a4;
- (void)messageContentViewDidFinishLoadingMessage:(id)a3;
@end

@implementation MFMessageScreenshotGenerator

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2E40;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD5C0 != -1)
  {
    dispatch_once(&qword_1006DD5C0, block);
  }

  v2 = qword_1006DD5B8;

  return v2;
}

- (MFMessageScreenshotGenerator)initWithScene:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFMessageScreenshotGenerator;
  v5 = [(MFMessageScreenshotGenerator *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.mobilemail.screenshotgenerator", 0);
    generationQueue = v5->_generationQueue;
    v5->_generationQueue = v6;

    objc_storeWeak(&v5->_scene, v4);
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

- (void)generateScreenshotViewForMessage:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F3090;
  v9[3] = &unk_10064D8D8;
  v10 = a5;
  v8 = v10;
  [(MFMessageScreenshotGenerator *)self generateScreenshotImageForMessage:a3 configuration:a4 completion:v9];
}

- (void)generateScreenshotImageForMessage:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001F3284;
  v10[3] = &unk_1006509D8;
  v10[4] = self;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v7 = v13;
  v8 = v12;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)_generateScreenshotImageForMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  generationQueue = self->_generationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F338C;
  block[3] = &unk_10064E320;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(generationQueue, block);
}

- (void)_setUpAndAddContentViewForMessage:(id)a3 configuration:(id)a4
{
  v60 = a3;
  v7 = a4;
  if (pthread_main_np() != 1)
  {
    v56 = +[NSAssertionHandler currentHandler];
    [v56 handleFailureInMethod:a2 object:self file:@"MFMessageScreenshotGenerator.m" lineNumber:94 description:@"Current thread must be main"];
  }

  v8 = [v60 objectID];
  v57 = [v8 description];

  [v7 size];
  v58 = v10;
  v59 = v9;
  [v7 margins];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v7 showSourceMailbox];
  v19 = [v7 showBanners];
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
    v23 = [v7 traitCollection];
    v24 = [v23 description];
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
  v32 = [(MFConversationItemHeaderBlock *)v28 initWithFrame:v27 contactStore:CGRectZero.origin.x, y, width, height];
  [(MFConversationItemHeaderBlock *)v32 setDisplayOptions:12];
  v33 = [[MessageHeaderSubjectBlock alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  v61[0] = v32;
  v61[1] = v33;
  v34 = [NSArray arrayWithObjects:v61 count:2];
  v35 = [(MFMessageScreenshotGenerator *)self contentView];
  v36 = [v35 headerView];
  [v36 setHeaderBlocks:v34];

  v37 = [(MFMessageScreenshotGenerator *)self contentView];
  [v37 setShowsBanners:v19];

  v38 = [(MFMessageScreenshotGenerator *)self scene];
  v39 = [v7 traitCollection];
  v40 = [(MFMessageScreenshotGenerator *)self contentView];
  [v40 safeAreaInsets];
  v45 = +[MFMessageDisplayMetrics displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:](MFMessageDisplayMetrics, "displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:", v39, [v38 interfaceOrientation], v12, v14, v16, v18, v41, v42, v43, v44);

  v46 = [(MFMessageScreenshotGenerator *)self contentView];
  [v46 setFrame:{0.0, 0.0, v59, v58}];

  v47 = [(MFMessageScreenshotGenerator *)self contentView];
  [v47 setDisplayMetrics:v45];

  v48 = [(MFMessageScreenshotGenerator *)self contentView];
  [v48 setLayoutMargins:{v12, v14, v16, v18}];

  v49 = [(MFMessageScreenshotGenerator *)self contentView];
  [v49 setAlpha:0.0];

  v50 = [v38 mf_window];
  v51 = [(MFMessageScreenshotGenerator *)self contentView];
  [v50 addSubview:v51];

  kdebug_trace();
  kdebug_trace();
  v52 = [[MessageContentRepresentationRequest alloc] initWithMessage:v60];
  v53 = [(MFMessageScreenshotGenerator *)self contentView];
  [v53 setContentRequest:v52];

  [v52 start];
  v54 = [(MFMessageScreenshotGenerator *)self contentView];
  v55 = [v54 headerView];
  [v55 layoutIfNeeded];
}

- (void)messageContentViewDidFinishLoadingMessage:(id)a3
{
  v4 = a3;
  v5 = +[MFMessageScreenshotGenerator log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 contentRequest];
    v7 = [v6 message];
    v8 = [v7 objectID];
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "message content view finished loading libraryid=%{public}@", &v10, 0xCu);
  }

  messageFinishedLoadingSemaphore = self->_messageFinishedLoadingSemaphore;
  if (messageFinishedLoadingSemaphore)
  {
    dispatch_semaphore_signal(messageFinishedLoadingSemaphore);
  }
}

- (void)messageContentView:(id)a3 viewedRemoteURLs:(id)a4
{
  v8 = a4;
  v5 = [(MFMessageScreenshotGenerator *)self scene];
  v6 = [v5 daemonInterface];
  v7 = [v6 messageRepository];
  [v7 noteViewOfRemoteContentLinks:v8];
}

- (MailScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end