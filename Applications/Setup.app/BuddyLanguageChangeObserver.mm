@interface BuddyLanguageChangeObserver
- (BuddyLanguageChangeObserverDelegate)delegate;
- (void)dealloc;
- (void)languageDidChange;
- (void)localeDidChange;
- (void)localeTimerFired:(id)a3;
- (void)startLocaleTimer;
- (void)startObservingLanguageChanges;
- (void)stopObservingLanguageChanges;
@end

@implementation BuddyLanguageChangeObserver

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(BuddyLanguageChangeObserver *)self stopObservingLanguageChanges];
  v2.receiver = v4;
  v2.super_class = BuddyLanguageChangeObserver;
  [(BuddyLanguageChangeObserver *)&v2 dealloc];
}

- (void)startObservingLanguageChanges
{
  if (![(BuddyLanguageChangeObserver *)self isObserving])
  {
    [(BuddyLanguageChangeObserver *)self subscribeToLanguageChangeNotification];
    [(BuddyLanguageChangeObserver *)self subscribeToLocaleChangeNotification];
    [(BuddyLanguageChangeObserver *)self setObserving:1];
  }
}

- (void)stopObservingLanguageChanges
{
  if ([(BuddyLanguageChangeObserver *)self isObserving])
  {
    [(BuddyLanguageChangeObserver *)self unsubscribeFromLanguageChangeNotification];
    [(BuddyLanguageChangeObserver *)self unsubscribeFromLocaleChangeNotification];
    v2 = [(BuddyLanguageChangeObserver *)self localeTimer];
    [(NSTimer *)v2 invalidate];

    [(BuddyLanguageChangeObserver *)self setLocaleTimer:0];
    [(BuddyLanguageChangeObserver *)self setObserving:0];
  }
}

- (void)languageDidChange
{
  v12 = self;
  v11 = a2;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [(NSUserDefaults *)v2 objectForKey:@"LockdownSetLanguage"];
  v4 = v3 != 0;

  v10 = v4;
  if (v4)
  {
    oslog = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v5, v6, "Language observer: Lockdown changed the language", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyLanguageChangeObserver *)v12 startLocaleTimer];
  }
}

- (void)startLocaleTimer
{
  v15 = self;
  oslog[1] = a2;
  v2 = [(BuddyLanguageChangeObserver *)self localeTimer];

  if (v2)
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v13;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Language observer: Restarting locale timer", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v5 = [(BuddyLanguageChangeObserver *)v15 localeTimer];
    [(NSTimer *)v5 invalidate];

    [(BuddyLanguageChangeObserver *)v15 setLocaleTimer:0];
  }

  else
  {
    v11 = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v11;
      v7 = v10;
      sub_10006AA68(v9);
      _os_log_impl(&_mh_execute_header, v6, v7, "Language observer: Starting locale timer", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
  }

  v8 = [NSTimer scheduledTimerWithTimeInterval:v15 target:"localeTimerFired:" selector:0 userInfo:0 repeats:8.0];
  [(BuddyLanguageChangeObserver *)v15 setLocaleTimer:v8];
}

- (void)localeTimerFired:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "Language observer: Locale didn't change in time, reporting only a language change to our delegate", v7, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(BuddyLanguageChangeObserver *)v11 localeTimer];
  [(NSTimer *)v5 invalidate];

  [(BuddyLanguageChangeObserver *)v11 setLocaleTimer:0];
  v6 = [(BuddyLanguageChangeObserver *)v11 delegate];
  [(BuddyLanguageChangeObserverDelegate *)v6 observer:v11 didObserveLanguageChange:1 localeChange:0];

  objc_storeStrong(location, 0);
}

- (void)localeDidChange
{
  v17 = self;
  v16 = a2;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [(NSUserDefaults *)v2 objectForKey:@"LockdownSetLocale"];
  v4 = v3 != 0;

  v15 = v4;
  if (v4)
  {
    oslog = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v13;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Language observer: Lockdown changed the locale", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v7 = [(BuddyLanguageChangeObserver *)v17 localeTimer];
    v8 = v7 != 0;

    v11 = v8;
    v9 = [(BuddyLanguageChangeObserver *)v17 localeTimer];
    [(NSTimer *)v9 invalidate];

    [(BuddyLanguageChangeObserver *)v17 setLocaleTimer:0];
    v10 = [(BuddyLanguageChangeObserver *)v17 delegate];
    [(BuddyLanguageChangeObserverDelegate *)v10 observer:v17 didObserveLanguageChange:v11 localeChange:1];
  }
}

- (BuddyLanguageChangeObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end