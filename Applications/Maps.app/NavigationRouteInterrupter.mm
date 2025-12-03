@interface NavigationRouteInterrupter
- (NavigationRouteInterrupter)initWithSuggestionsEngine:(id)engine delegate:(id)delegate;
- (NavigationRouteInterruptingDelegate)delegate;
- (void)cancelInterruptionOnHistoryEntryRoute:(id)route completion:(id)completion;
- (void)interruptHistoryEntryRoute:(id)route withCompletion:(id)completion;
@end

@implementation NavigationRouteInterrupter

- (NavigationRouteInterruptingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancelInterruptionOnHistoryEntryRoute:(id)route completion:(id)completion
{
  routeCopy = route;
  completionCopy = completion;
  if (routeCopy)
  {
    isNavigationInterrupted = [routeCopy isNavigationInterrupted];
    v9 = sub_100035E6C();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (isNavigationInterrupted)
    {
      if (v10)
      {
        suggestionsEngine = [(NavigationRouteInterrupter *)self suggestionsEngine];
        *buf = 138412546;
        v22 = routeCopy;
        v23 = 2112;
        v24 = suggestionsEngine;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "NavigationRouteInterrupter: Will cancel route interruption on history entry: %@, hinting refresh on engine: %@.", buf, 0x16u);
      }

      suggestionsEngine2 = [(NavigationRouteInterrupter *)self suggestionsEngine];
      objc_initWeak(buf, self);
      objc_initWeak(&location, routeCopy);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100C6FBBC;
      v15[3] = &unk_10164F4F8;
      objc_copyWeak(&v18, buf);
      objc_copyWeak(&v19, &location);
      v17 = completionCopy;
      v13 = suggestionsEngine2;
      v16 = v13;
      [routeCopy setNavigationInterrupted:0 completion:v15];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);

      goto LABEL_14;
    }

    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "NavigationRouteInterrupter: Skipping interruption because the route isn't paused.", buf, 2u);
    }

    if (completionCopy)
    {
LABEL_13:
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v14 = sub_100035E6C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "NavigationRouteInterrupter: Failed to cancel interruption because history entry was nil.", buf, 2u);
    }

    if (completionCopy)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)interruptHistoryEntryRoute:(id)route withCompletion:(id)completion
{
  routeCopy = route;
  completionCopy = completion;
  v8 = sub_100035E6C();
  v9 = v8;
  if (routeCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      suggestionsEngine = [(NavigationRouteInterrupter *)self suggestionsEngine];
      *buf = 138412546;
      v20 = routeCopy;
      v21 = 2112;
      v22 = suggestionsEngine;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "NavigationRouteInterrupter: Will interrupt route with history entry: %@, hinting refresh on engine: %@.", buf, 0x16u);
    }

    suggestionsEngine2 = [(NavigationRouteInterrupter *)self suggestionsEngine];
    objc_initWeak(buf, self);
    objc_initWeak(&location, routeCopy);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100C6FF70;
    v13[3] = &unk_10164F4F8;
    objc_copyWeak(&v16, buf);
    objc_copyWeak(&v17, &location);
    v15 = completionCopy;
    v12 = suggestionsEngine2;
    v14 = v12;
    [routeCopy setNavigationInterrupted:1 completion:v13];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "NavigationRouteInterrupter: Failed to interrupt route because history entry was nil.", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (NavigationRouteInterrupter)initWithSuggestionsEngine:(id)engine delegate:(id)delegate
{
  engineCopy = engine;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = NavigationRouteInterrupter;
  v9 = [(NavigationRouteInterrupter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestionsEngine, engine);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

@end