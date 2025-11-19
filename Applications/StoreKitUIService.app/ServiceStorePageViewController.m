@interface ServiceStorePageViewController
- (id)_storePageViewController;
- (void)dealloc;
- (void)loadPageWithURL:(id)a3;
- (void)loadPageWithURLBagKey:(id)a3;
- (void)loadView;
- (void)storePage:(id)a3 showProductPageForItem:(id)a4;
- (void)storePage:(id)a3 showStorePageForURL:(id)a4;
@end

@implementation ServiceStorePageViewController

- (void)dealloc
{
  [(SKUIStorePageViewController *)self->_storePageViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = ServiceStorePageViewController;
  [(ServiceStorePageViewController *)&v3 dealloc];
}

- (void)loadView
{
  v5 = objc_alloc_init(UIView);
  v3 = [(ServiceStorePageViewController *)self _storePageViewController];
  v4 = [v3 view];

  [v4 setAutoresizingMask:18];
  [v5 bounds];
  [v4 setFrame:?];
  [v5 addSubview:v4];
  [(ServiceStorePageViewController *)self setView:v5];
}

- (void)loadPageWithURLBagKey:(id)a3
{
  v4 = a3;
  if (!self->_isEntitled)
  {
    v11 = +[SSLogConfig sharedConfig];
    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    if (v15)
    {
      v20[0] = 0;
      LODWORD(v17) = 2;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_15:

        v9 = [(ServiceStorePageViewController *)self _clientViewControllerProxy];
        v10 = SSError();
        [v9 didFinishWithResult:&__kCFBooleanFalse error:v10];
        goto LABEL_16;
      }

      v14 = [NSString stringWithCString:v16 encoding:4, v20, v17];
      free(v16);
      SSFileLog();
    }

    goto LABEL_15;
  }

  if (!self->_urlBag)
  {
    v5 = objc_alloc_init(SSURLBag);
    urlBag = self->_urlBag;
    self->_urlBag = v5;
  }

  v7 = [SSWeakReference weakReferenceWithObject:self];
  v8 = self->_urlBag;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002660C;
  v18[3] = &unk_100051898;
  v19 = v7;
  v9 = v7;
  [(SSURLBag *)v8 loadValueForKey:v4 completionBlock:v18];
  v10 = v19;
LABEL_16:
}

- (void)loadPageWithURL:(id)a3
{
  v4 = a3;
  if (!self->_isEntitled)
  {
    v9 = +[SSLogConfig sharedConfig];
    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v18[0] = 0;
      LODWORD(v15) = 2;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_13:

        v7 = [(ServiceStorePageViewController *)self _clientViewControllerProxy];
        v8 = SSError();
        [v7 didFinishWithResult:&__kCFBooleanFalse error:v8];
        goto LABEL_14;
      }

      v12 = [NSString stringWithCString:v14 encoding:4, v18, v15];
      free(v14);
      SSFileLog();
    }

    goto LABEL_13;
  }

  v5 = [SSWeakReference weakReferenceWithObject:self];
  v6 = [(ServiceStorePageViewController *)self _storePageViewController];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000269A4;
  v16[3] = &unk_100051E30;
  v17 = v5;
  v7 = v5;
  [v6 loadURL:v4 withCompletionBlock:v16];

  v8 = v17;
LABEL_14:
}

- (void)storePage:(id)a3 showProductPageForItem:(id)a4
{
  v5 = a4;
  v8 = [(ServiceStorePageViewController *)self _clientViewControllerProxy];
  v6 = [v5 itemIdentifier];

  v7 = [NSNumber numberWithLongLong:v6];
  [v8 showProductPageWithItemIdentifier:v7];
}

- (void)storePage:(id)a3 showStorePageForURL:(id)a4
{
  v4 = a4;
  v5 = +[UIApplication sharedApplication];
  [v5 openURL:v4];
}

- (id)_storePageViewController
{
  if (!self->_clientContext)
  {
    v3 = +[SKUIClientContext defaultContext];
    clientContext = self->_clientContext;
    self->_clientContext = v3;
  }

  storePageViewController = self->_storePageViewController;
  if (!storePageViewController)
  {
    v6 = objc_alloc_init(SKUIStorePageViewController);
    v7 = self->_storePageViewController;
    self->_storePageViewController = v6;

    [(SKUIStorePageViewController *)self->_storePageViewController setClientContext:self->_clientContext];
    [(SKUIStorePageViewController *)self->_storePageViewController setDelegate:self];
    [(ServiceStorePageViewController *)self addChildViewController:self->_storePageViewController];
    storePageViewController = self->_storePageViewController;
  }

  return storePageViewController;
}

@end