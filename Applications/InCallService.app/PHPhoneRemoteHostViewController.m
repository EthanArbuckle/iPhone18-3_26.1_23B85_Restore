@interface PHPhoneRemoteHostViewController
+ (Class)remoteViewControllerClass;
+ (void)requestViewControllerWithCompletionHandler:(id)a3;
- (PHPhoneRemoteHostViewControllerDelegate)delegate;
- (void)setUpRemoteViewController:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PHPhoneRemoteHostViewController

+ (void)requestViewControllerWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[PHPhoneRemoteHostViewController remoteViewControllerClass];
  if (v4)
  {
    v5 = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000A2DF0;
    v8[3] = &unk_100358570;
    v9 = v3;
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

    (*(v3 + 2))(v3, 0, 0);
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

- (void)setUpRemoteViewController:(id)a3
{
  v19 = a3;
  [(PHPhoneRemoteHostViewController *)self addChildViewController:v19];
  v4 = [(PHPhoneRemoteHostViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v19 view];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(PHPhoneRemoteHostViewController *)self view];
  v15 = [v14 autoresizingMask];
  v16 = [v19 view];
  [v16 setAutoresizingMask:v15];

  v17 = [(PHPhoneRemoteHostViewController *)self view];
  v18 = [v19 view];
  [v17 addSubview:v18];

  [v19 didMoveToParentViewController:self];
  [(PHPhoneRemoteHostViewController *)self setRemoteViewController:v19];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHPhoneRemoteHostViewController;
  [(PHPhoneRemoteHostViewController *)&v5 viewDidDisappear:a3];
  v4 = [(PHPhoneRemoteHostViewController *)self delegate];
  [v4 phoneRemoteHostViewControllerDidDismiss];
}

- (PHPhoneRemoteHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end