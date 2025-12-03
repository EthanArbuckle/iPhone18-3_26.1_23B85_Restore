@interface BuddyLanguageChangeObserver
- (BuddyLanguageChangeObserverDelegate)delegate;
- (void)dealloc;
- (void)languageDidChange;
- (void)localeDidChange;
- (void)localeTimerFired:(id)fired;
- (void)startLocaleTimer;
- (void)startObservingLanguageChanges;
- (void)stopObservingLanguageChanges;
@end

@implementation BuddyLanguageChangeObserver

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(BuddyLanguageChangeObserver *)self stopObservingLanguageChanges];
  v2.receiver = selfCopy;
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
    localeTimer = [(BuddyLanguageChangeObserver *)self localeTimer];
    [(NSTimer *)localeTimer invalidate];

    [(BuddyLanguageChangeObserver *)self setLocaleTimer:0];
    [(BuddyLanguageChangeObserver *)self setObserving:0];
  }
}

- (void)languageDidChange
{
  selfCopy = self;
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
    [(BuddyLanguageChangeObserver *)selfCopy startLocaleTimer];
  }
}

- (void)startLocaleTimer
{
  selfCopy = self;
  oslog[1] = a2;
  localeTimer = [(BuddyLanguageChangeObserver *)self localeTimer];

  if (localeTimer)
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
    localeTimer2 = [(BuddyLanguageChangeObserver *)selfCopy localeTimer];
    [(NSTimer *)localeTimer2 invalidate];

    [(BuddyLanguageChangeObserver *)selfCopy setLocaleTimer:0];
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

  v8 = [NSTimer scheduledTimerWithTimeInterval:selfCopy target:"localeTimerFired:" selector:0 userInfo:0 repeats:8.0];
  [(BuddyLanguageChangeObserver *)selfCopy setLocaleTimer:v8];
}

- (void)localeTimerFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
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
  localeTimer = [(BuddyLanguageChangeObserver *)selfCopy localeTimer];
  [(NSTimer *)localeTimer invalidate];

  [(BuddyLanguageChangeObserver *)selfCopy setLocaleTimer:0];
  delegate = [(BuddyLanguageChangeObserver *)selfCopy delegate];
  [(BuddyLanguageChangeObserverDelegate *)delegate observer:selfCopy didObserveLanguageChange:1 localeChange:0];

  objc_storeStrong(location, 0);
}

- (void)localeDidChange
{
  selfCopy = self;
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
    localeTimer = [(BuddyLanguageChangeObserver *)selfCopy localeTimer];
    v8 = localeTimer != 0;

    v11 = v8;
    localeTimer2 = [(BuddyLanguageChangeObserver *)selfCopy localeTimer];
    [(NSTimer *)localeTimer2 invalidate];

    [(BuddyLanguageChangeObserver *)selfCopy setLocaleTimer:0];
    delegate = [(BuddyLanguageChangeObserver *)selfCopy delegate];
    [(BuddyLanguageChangeObserverDelegate *)delegate observer:selfCopy didObserveLanguageChange:v11 localeChange:1];
  }
}

- (BuddyLanguageChangeObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end