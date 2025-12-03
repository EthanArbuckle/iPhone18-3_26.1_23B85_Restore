@interface ServiceStorePageViewController
- (id)_storePageViewController;
- (void)dealloc;
- (void)loadPageWithURL:(id)l;
- (void)loadPageWithURLBagKey:(id)key;
- (void)loadView;
- (void)storePage:(id)page showProductPageForItem:(id)item;
- (void)storePage:(id)page showStorePageForURL:(id)l;
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
  _storePageViewController = [(ServiceStorePageViewController *)self _storePageViewController];
  view = [_storePageViewController view];

  [view setAutoresizingMask:18];
  [v5 bounds];
  [view setFrame:?];
  [v5 addSubview:view];
  [(ServiceStorePageViewController *)self setView:v5];
}

- (void)loadPageWithURLBagKey:(id)key
{
  keyCopy = key;
  if (!self->_isEntitled)
  {
    v11 = +[SSLogConfig sharedConfig];
    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

        _clientViewControllerProxy = [(ServiceStorePageViewController *)self _clientViewControllerProxy];
        v10 = SSError();
        [_clientViewControllerProxy didFinishWithResult:&__kCFBooleanFalse error:v10];
        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v16 encoding:4, v20, v17];
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
  _clientViewControllerProxy = v7;
  [(SSURLBag *)v8 loadValueForKey:keyCopy completionBlock:v18];
  v10 = v19;
LABEL_16:
}

- (void)loadPageWithURL:(id)l
{
  lCopy = l;
  if (!self->_isEntitled)
  {
    v9 = +[SSLogConfig sharedConfig];
    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

        _clientViewControllerProxy = [(ServiceStorePageViewController *)self _clientViewControllerProxy];
        v8 = SSError();
        [_clientViewControllerProxy didFinishWithResult:&__kCFBooleanFalse error:v8];
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v14 encoding:4, v18, v15];
      free(v14);
      SSFileLog();
    }

    goto LABEL_13;
  }

  v5 = [SSWeakReference weakReferenceWithObject:self];
  _storePageViewController = [(ServiceStorePageViewController *)self _storePageViewController];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000269A4;
  v16[3] = &unk_100051E30;
  v17 = v5;
  _clientViewControllerProxy = v5;
  [_storePageViewController loadURL:lCopy withCompletionBlock:v16];

  v8 = v17;
LABEL_14:
}

- (void)storePage:(id)page showProductPageForItem:(id)item
{
  itemCopy = item;
  _clientViewControllerProxy = [(ServiceStorePageViewController *)self _clientViewControllerProxy];
  itemIdentifier = [itemCopy itemIdentifier];

  v7 = [NSNumber numberWithLongLong:itemIdentifier];
  [_clientViewControllerProxy showProductPageWithItemIdentifier:v7];
}

- (void)storePage:(id)page showStorePageForURL:(id)l
{
  lCopy = l;
  v5 = +[UIApplication sharedApplication];
  [v5 openURL:lCopy];
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