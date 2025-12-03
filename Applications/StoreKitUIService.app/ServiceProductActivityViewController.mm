@interface ServiceProductActivityViewController
- (CGRect)popoverSourceRect;
- (ServiceProductActivityViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_productIDFromParameters:(id)parameters;
- (void)_loadClientContextWithCompletionBlock:(id)block;
- (void)_loadDidFailWithError:(id)error;
- (void)_lookupItemWithIdentifier:(id)identifier success:(id)success failure:(id)failure;
- (void)_presentActivityViewControllerWithItem:(id)item;
- (void)dealloc;
- (void)finishImmediately:(id)immediately;
- (void)setupProductWithParameters:(id)parameters;
@end

@implementation ServiceProductActivityViewController

- (ServiceProductActivityViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v20.receiver = self;
  v20.super_class = ServiceProductActivityViewController;
  v4 = [(ServiceProductActivityViewController *)&v20 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[NSUUID UUID];
    uUIDString = [v5 UUIDString];
    v7 = [uUIDString componentsSeparatedByString:@"-"];
    firstObject = [v7 firstObject];
    logKey = v4->_logKey;
    v4->_logKey = firstObject;

    v10 = +[SSLogConfig sharedConfig];
    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v15 = v4->_logKey;
      v21 = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v15;
      v16 = v14;
      LODWORD(v19) = 22;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_11:

        return v4;
      }

      oSLogObject = [NSString stringWithCString:v17 encoding:4, &v21, v19];
      free(v17);
      SSFileLog();
    }

    goto LABEL_11;
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[SSLogConfig sharedConfig];
  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = objc_opt_class();
  logKey = self->_logKey;
  v13 = 138543618;
  v14 = v7;
  v15 = 2114;
  v16 = logKey;
  v9 = v7;
  LODWORD(v11) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    oSLogObject = [NSString stringWithCString:v10 encoding:4, &v13, v11];
    free(v10);
    SSFileLog();
LABEL_9:
  }

  v12.receiver = self;
  v12.super_class = ServiceProductActivityViewController;
  [(ServiceProductActivityViewController *)&v12 dealloc];
}

- (void)setupProductWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [(ServiceProductActivityViewController *)self _productIDFromParameters:parametersCopy];
  if (v5)
  {
    v6 = [parametersCopy valueForKey:SKStoreProductParameterPopoverSourceRect];
    v27 = CGRectFromString(v6);
    [(ServiceProductActivityViewController *)self setPopoverSourceRect:v27.origin.x, v27.origin.y, v27.size.width, v27.size.height];

    objc_initWeak(location, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10002433C;
    v21[3] = &unk_100051E58;
    objc_copyWeak(&v23, location);
    v7 = v5;
    v22 = v7;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000243BC;
    v18[3] = &unk_100051E80;
    objc_copyWeak(&v20, location);
    v18[4] = self;
    v19 = v7;
    [(ServiceProductActivityViewController *)self _lookupItemWithIdentifier:v19 success:v21 failure:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = +[SSLogConfig sharedConfig];
    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      logKey = self->_logKey;
      *location = 138543618;
      *&location[4] = v12;
      v25 = 2114;
      v26 = logKey;
      v14 = v12;
      LODWORD(v17) = 22;
      v15 = _os_log_send_and_compose_impl();

      if (v15)
      {
        v16 = [NSString stringWithCString:v15 encoding:4, location, v17];
        free(v15);
        SSFileLog();
      }
    }

    else
    {
    }

    [(ServiceProductActivityViewController *)self _loadDidFailWithError:0];
  }
}

- (void)finishImmediately:(id)immediately
{
  immediatelyCopy = immediately;
  presentedViewController = [(ServiceProductActivityViewController *)self presentedViewController];

  if (presentedViewController)
  {
    v6 = [(NSString *)self->_logKey copy];
    bOOLValue = [immediatelyCopy BOOLValue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002471C;
    v9[3] = &unk_100051510;
    v9[4] = self;
    v10 = v6;
    v8 = v6;
    [(ServiceProductActivityViewController *)self dismissViewControllerAnimated:bOOLValue completion:v9];
  }
}

- (void)_loadClientContextWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = +[SKUIClientContext defaultContext];
  if (v4)
  {
    blockCopy[2](blockCopy, v4);
  }

  else
  {
    v5 = objc_alloc_init(SKUIReloadConfigurationOperation);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000249B4;
    v7[3] = &unk_100051EA8;
    v8 = blockCopy;
    [v5 setOutputBlock:v7];
    v6 = objc_alloc_init(NSOperationQueue);
    [v6 addOperation:v5];
  }
}

- (void)_presentActivityViewControllerWithItem:(id)item
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100024B60;
  v5[3] = &unk_100051EF8;
  itemCopy = item;
  selfCopy = self;
  v4 = itemCopy;
  [(ServiceProductActivityViewController *)self _loadClientContextWithCompletionBlock:v5];
}

- (void)_loadDidFailWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    v28 = NSLocalizedDescriptionKey;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_100052318 table:0];
    v29 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    errorCopy = [NSError errorWithDomain:SKErrorDomain code:5 userInfo:v7];
  }

  v8 = +[SSLogConfig sharedConfig];
  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v12 = objc_opt_class();
    logKey = self->_logKey;
    v22 = 138543874;
    v23 = v12;
    v24 = 2114;
    v25 = logKey;
    v26 = 2114;
    v27 = errorCopy;
    v14 = v12;
    LODWORD(v19) = 32;
    v15 = _os_log_send_and_compose_impl();

    if (!v15)
    {
      goto LABEL_12;
    }

    oSLogObject = [NSString stringWithCString:v15 encoding:4, &v22, v19];
    free(v15);
    SSFileLog();
  }

LABEL_12:
  v16 = [SKUIErrorHelper errorWithSafeUserInfo:errorCopy];
  presentedViewController = [(ServiceProductActivityViewController *)self presentedViewController];

  if (presentedViewController)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000253A4;
    v20[3] = &unk_100051510;
    v20[4] = self;
    v21 = v16;
    [(ServiceProductActivityViewController *)self dismissViewControllerAnimated:1 completion:v20];
  }

  else
  {
    _clientViewControllerProxy = [(ServiceProductActivityViewController *)self _clientViewControllerProxy];
    [_clientViewControllerProxy didFinishWithResult:&off_100055000 error:v16];
  }
}

- (id)_productIDFromParameters:(id)parameters
{
  v4 = [parameters objectForKeyedSubscript:SKStoreProductParameterITunesItemIdentifier];
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v4 length] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !objc_msgSend(v4, "integerValue"))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002CB68(self);
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 stringValue], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002CAE0(self);
    }

LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (void)_lookupItemWithIdentifier:(id)identifier success:(id)success failure:(id)failure
{
  identifierCopy = identifier;
  successCopy = success;
  failureCopy = failure;
  if (identifierCopy)
  {
    v10 = [AMSBag bagForProfile:@"appstored" profileVersion:@"1"];
    v36 = [[AMSProcessInfo alloc] initWithBundleIdentifier:@"com.apple.storekitd"];
    v48 = identifierCopy;
    v11 = [NSArray arrayWithObjects:&v48 count:1];
    v12 = +[SSLogConfig sharedConfig];
    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v17 = objc_opt_class();
      logKey = self->_logKey;
      *location = 138543874;
      *&location[4] = v17;
      v44 = 2114;
      v45 = logKey;
      v46 = 2114;
      v47 = identifierCopy;
      v19 = v17;
      LODWORD(v35) = 32;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_12:

        v21 = [[AMSMediaTask alloc] initWithType:0 clientIdentifier:@"com.storekit.shareactivity" clientVersion:@"1" bag:v10];
        [v21 setClientInfo:v36];
        [v21 setLogKey:self->_logKey];
        [v21 setItemIdentifiers:v11];
        v22 = [(NSString *)self->_logKey copy];
        objc_initWeak(location, self);
        perform = [v21 perform];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100025A3C;
        v38[3] = &unk_100051F20;
        objc_copyWeak(&v42, location);
        v24 = v22;
        v39 = v24;
        v40 = successCopy;
        v41 = failureCopy;
        [perform addFinishBlock:v38];

        objc_destroyWeak(&v42);
        objc_destroyWeak(location);

        goto LABEL_24;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4, location, v35];
      free(v20);
      SSFileLog();
    }

    goto LABEL_12;
  }

  v25 = +[SSLogConfig sharedConfig];
  shouldLog2 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = shouldLog2 | 2;
  }

  else
  {
    v27 = shouldLog2;
  }

  oSLogObject2 = [v25 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v29 = v27;
  }

  else
  {
    v29 = v27 & 2;
  }

  if (v29)
  {
    v30 = objc_opt_class();
    v31 = self->_logKey;
    *location = 138543618;
    *&location[4] = v30;
    v44 = 2114;
    v45 = v31;
    v32 = v30;
    LODWORD(v35) = 22;
    v33 = _os_log_send_and_compose_impl();

    if (v33)
    {
      v34 = [NSString stringWithCString:v33 encoding:4, location, v35];
      free(v33);
      SSFileLog();
    }
  }

  else
  {
  }

  v10 = [[NSError alloc] initWithDomain:SKErrorDomain code:5 userInfo:0];
  (*(failureCopy + 2))(failureCopy, v10);
LABEL_24:
}

- (CGRect)popoverSourceRect
{
  x = self->_popoverSourceRect.origin.x;
  y = self->_popoverSourceRect.origin.y;
  width = self->_popoverSourceRect.size.width;
  height = self->_popoverSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end