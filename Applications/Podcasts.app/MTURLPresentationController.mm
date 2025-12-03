@interface MTURLPresentationController
- (BOOL)_canShowInApp;
- (BOOL)canShowWithPresentingViewController:(id)controller;
- (MTURLPresentationController)initWithURL:(id)l;
- (void)_showURL:(id)l presentingViewController:(id)controller;
- (void)showWithPresentingViewController:(id)controller;
@end

@implementation MTURLPresentationController

- (MTURLPresentationController)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = MTURLPresentationController;
  v6 = [(MTURLPresentationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
  }

  return v7;
}

- (BOOL)canShowWithPresentingViewController:(id)controller
{
  result = [(MTURLPresentationController *)self _canShowInApp];
  if (!controller)
  {
    return 0;
  }

  return result;
}

- (void)showWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(MTURLPresentationController *)self url];
  [(MTURLPresentationController *)self _showURL:v5 presentingViewController:controllerCopy];
}

- (BOOL)_canShowInApp
{
  v2 = [(MTURLPresentationController *)self url];
  v3 = v2;
  if (v2)
  {
    scheme = [v2 scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString isEqualToString:@"http"])
    {
      v6 = 1;
    }

    else
    {
      v6 = [lowercaseString isEqualToString:@"https"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_showURL:(id)l presentingViewController:(id)controller
{
  lCopy = l;
  controllerCopy = controller;
  _canShowInApp = [(MTURLPresentationController *)self _canShowInApp];
  if (lCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid parameter.  url can not be nil", buf, 2u);
    }

    if (controllerCopy)
    {
LABEL_3:
      if (_canShowInApp)
      {
        goto LABEL_4;
      }

LABEL_14:
      v12 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid use.  _canShowInApp is NO, so we shouldn't attempt to show in-app", v15, 2u);
      }

      goto LABEL_16;
    }
  }

  v14 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid parameter.  presentingViewController can not be nil", v16, 2u);
  }

  if ((_canShowInApp & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (lCopy)
  {
    if (controllerCopy)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v10 isEqual:@"_UIContextMenuActionsOnlyViewController"];

      if ((v11 & 1) == 0)
      {
        v12 = [[SFSafariViewController alloc] initWithURL:lCopy];
        [v12 setModalPresentationStyle:1];
        [controllerCopy presentViewController:v12 animated:1 completion:0];
LABEL_16:
      }
    }
  }
}

@end