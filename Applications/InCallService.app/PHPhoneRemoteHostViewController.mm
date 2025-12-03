@interface PHPhoneRemoteHostViewController
+ (Class)remoteViewControllerClass;
+ (void)requestViewControllerWithCompletionHandler:(id)handler;
- (PHPhoneRemoteHostViewControllerDelegate)delegate;
- (void)setUpRemoteViewController:(id)controller;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PHPhoneRemoteHostViewController

+ (void)requestViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[PHPhoneRemoteHostViewController remoteViewControllerClass];
  if (v4)
  {
    v5 = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000A2DF0;
    v8[3] = &unk_100358570;
    v9 = handlerCopy;
    v10 = v5;
    v6 = [(objc_class *)v5 requestViewControllerWithConnectionHandler:v8];
  }

  else
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] No PHPhoneRemoteViewController subclasses are supported, so unable to show remote view controller", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

+ (Class)remoteViewControllerClass
{
  if (+[PHMobilePhoneRemoteViewController isSupported](PHMobilePhoneRemoteViewController, "isSupported") || +[(PHPhoneRemoteViewController *)PHFaceTimeRemoteViewController])
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setUpRemoteViewController:(id)controller
{
  controllerCopy = controller;
  [(PHPhoneRemoteHostViewController *)self addChildViewController:controllerCopy];
  view = [(PHPhoneRemoteHostViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view2 = [controllerCopy view];
  [view2 setFrame:{v6, v8, v10, v12}];

  view3 = [(PHPhoneRemoteHostViewController *)self view];
  autoresizingMask = [view3 autoresizingMask];
  view4 = [controllerCopy view];
  [view4 setAutoresizingMask:autoresizingMask];

  view5 = [(PHPhoneRemoteHostViewController *)self view];
  view6 = [controllerCopy view];
  [view5 addSubview:view6];

  [controllerCopy didMoveToParentViewController:self];
  [(PHPhoneRemoteHostViewController *)self setRemoteViewController:controllerCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHPhoneRemoteHostViewController;
  [(PHPhoneRemoteHostViewController *)&v5 viewDidDisappear:disappear];
  delegate = [(PHPhoneRemoteHostViewController *)self delegate];
  [delegate phoneRemoteHostViewControllerDidDismiss];
}

- (PHPhoneRemoteHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end