@interface RPVideoEditorExtensionViewController
- (void)doAction:(id)action;
- (void)inputItemsFromClientWithCompletionHandler:(id)handler;
- (void)setupChildViewControllers;
- (void)setupVideoEditorController;
- (void)tearDownChildViewControllers;
- (void)videoEditor:(id)editor didFinishWithActivityTypes:(id)types;
- (void)viewDidLoad;
@end

@implementation RPVideoEditorExtensionViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = RPVideoEditorExtensionViewController;
  [(RPVideoEditorExtensionViewController *)&v5 viewDidLoad];
  v3 = dispatch_queue_create("com.apple.ReplayKit.RPVideoEditorExtension.replyQueue", 0);
  replyQueue = self->_replyQueue;
  self->_replyQueue = v3;

  [(RPVideoEditorExtensionViewController *)self setupChildViewControllers];
}

- (void)setupChildViewControllers
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPVideoEditorExtensionViewController -setupChildViewControllers", buf, 2u);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009B9C;
  v3[3] = &unk_1000187A8;
  v3[4] = self;
  [(RPVideoEditorExtensionViewController *)self inputItemsFromClientWithCompletionHandler:v3];
}

- (void)setupVideoEditorController
{
  v3 = [RPVideoEditorViewController alloc];
  bundleIdentifier = self->_bundleIdentifier;
  movieURL = self->_movieURL;
  appName = self->_appName;
  overrideTintColor = self->_overrideTintColor;
  view = [(RPVideoEditorExtensionViewController *)self view];
  [view bounds];
  v9 = [(RPVideoEditorViewController *)v3 initWithBundleIdentifier:bundleIdentifier URL:movieURL applicationName:appName overrideTintColor:overrideTintColor size:?];
  [(RPVideoEditorExtensionViewController *)self setVideoEditorViewController:v9];

  [(RPVideoEditorViewController *)self->_videoEditorViewController setFileAttachmentURL:self->_fileAttachmentURL];
  [(RPVideoEditorViewController *)self->_videoEditorViewController setOverrideShareMessage:self->_overrideShareMessage];
  [(RPVideoEditorViewController *)self->_videoEditorViewController setDelegate:self];
  [(RPVideoEditorExtensionViewController *)self addChildViewController:self->_videoEditorViewController];
  view2 = [(RPVideoEditorExtensionViewController *)self view];
  view3 = [(RPVideoEditorViewController *)self->_videoEditorViewController view];
  [view2 addSubview:view3];

  videoEditorViewController = self->_videoEditorViewController;

  [(RPVideoEditorViewController *)videoEditorViewController didMoveToParentViewController:self];
}

- (void)tearDownChildViewControllers
{
  [(RPVideoEditorViewController *)self->_videoEditorViewController willMoveToParentViewController:0];
  view = [(RPVideoEditorViewController *)self->_videoEditorViewController view];
  [view removeFromSuperview];

  [(RPVideoEditorViewController *)self->_videoEditorViewController removeFromParentViewController];

  [(RPVideoEditorExtensionViewController *)self setVideoEditorViewController:0];
}

- (void)inputItemsFromClientWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPVideoEditorExtensionViewController -inputItemsFromClientWithCompletionHandler:", buf, 2u);
  }

  v5 = kUTTypeData;
  *buf = 0;
  v41 = buf;
  v42 = 0x3032000000;
  v43 = sub_10000A3EC;
  v44 = sub_10000A3FC;
  v45 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_10000A3EC;
  v38[4] = sub_10000A3FC;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_10000A3EC;
  v36[4] = sub_10000A3FC;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_10000A3EC;
  v34[4] = sub_10000A3FC;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_10000A3EC;
  v32[4] = sub_10000A3FC;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_10000A3EC;
  v30[4] = sub_10000A3FC;
  v31 = 0;
  v6 = dispatch_group_create();
  extensionContext = [(RPVideoEditorExtensionViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000A404;
  v21[3] = &unk_1000187F8;
  v9 = v5;
  v22 = v9;
  v10 = v6;
  v23 = v10;
  v24 = buf;
  v25 = v38;
  v26 = v36;
  v27 = v34;
  v28 = v32;
  v29 = v30;
  [inputItems enumerateObjectsUsingBlock:v21];

  replyQueue = [(RPVideoEditorExtensionViewController *)self replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A798;
  block[3] = &unk_100018820;
  v14 = handlerCopy;
  v15 = v36;
  v16 = buf;
  v17 = v38;
  v18 = v34;
  v19 = v32;
  v20 = v30;
  v12 = handlerCopy;
  dispatch_group_notify(v10, replyQueue, block);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(buf, 8);
}

- (void)videoEditor:(id)editor didFinishWithActivityTypes:(id)types
{
  typesCopy = types;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPVideoEditorExtensionViewController -videoEditorViewDidFinishWithActivityTypes:", v8, 2u);
  }

  extensionContext = [(RPVideoEditorExtensionViewController *)self extensionContext];
  extensionObjectProxy = [extensionContext extensionObjectProxy];
  [extensionObjectProxy extensionDidFinishWithActivityTypes:typesCopy];
}

- (void)doAction:(id)action
{
  actionCopy = action;
  if ([(RPVideoEditorExtensionViewController *)self isInternalTestMode])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[RPVideoEditorExtensionViewController doAction:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
    }

    [(RPVideoEditorViewController *)self->_videoEditorViewController performSelector:NSSelectorFromString(actionCopy)];
  }
}

@end