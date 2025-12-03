@interface APSSystemMonitor
+ (id)sharedInstance;
- (APSSystemMonitor)init;
- (void)_deliverNotificationSelector:(SEL)selector;
- (void)_setSystemLockState:(BOOL)state;
- (void)_setSystemScreenState:(BOOL)state;
- (void)addListener:(id)listener;
- (void)dealloc;
- (void)removeListener:(id)listener;
- (void)setUsesPowerNotifications:(BOOL)notifications;
- (void)setWatchesScreenLightState:(BOOL)state;
- (void)setWatchesSystemLockState:(BOOL)state;
@end

@implementation APSSystemMonitor

+ (id)sharedInstance
{
  if (qword_1001BF948 != -1)
  {
    sub_10010D480();
  }

  v3 = qword_1001BF940;

  return v3;
}

- (APSSystemMonitor)init
{
  v6.receiver = self;
  v6.super_class = APSSystemMonitor;
  v2 = [(APSSystemMonitor *)&v6 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    listeners = v2->_listeners;
    v2->_listeners = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (dword_1001BC7A8 != -1)
  {
    notify_cancel(dword_1001BC7A8);
    dword_1001BC7A8 = -1;
  }

  if (dword_1001BC7AC != -1)
  {
    notify_cancel(dword_1001BC7AC);
    dword_1001BC7AC = -1;
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:0 object:0];

  sub_1000B79B4();
  v4.receiver = self;
  v4.super_class = APSSystemMonitor;
  [(APSSystemMonitor *)&v4 dealloc];
}

- (void)_deliverNotificationSelector:(SEL)selector
{
  if ([(APSSystemMonitor *)self isActive])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(NSHashTable *)selfCopy->_listeners count])
    {
      v6 = [(NSHashTable *)selfCopy->_listeners copy];
    }

    else
    {
      v6 = 0;
    }

    objc_sync_exit(selfCopy);

    sub_1000139F4(selector, v6);
  }
}

- (void)setWatchesSystemLockState:(BOOL)state
{
  if (self->_watchesSystemLockState != state)
  {
    state64[3] = v3;
    state64[4] = v4;
    self->_watchesSystemLockState = state;
    if (state)
    {
      if (dword_1001BC7A8 == -1)
      {
        notify_register_dispatch("com.apple.springboard.lockstate", &dword_1001BC7A8, &_dispatch_main_q, &stru_100189C78);
        state64[0] = 0;
        notify_get_state(dword_1001BC7A8, state64);
        v5 = +[APSSystemMonitor sharedInstance];
        [v5 _setSystemLockState:state64[0] != 0];
      }
    }

    else if (dword_1001BC7A8 != -1)
    {
      notify_cancel(dword_1001BC7A8);
      dword_1001BC7A8 = -1;
    }
  }
}

- (void)setWatchesScreenLightState:(BOOL)state
{
  if (self->_watchesScreenLightState != state)
  {
    state64[3] = v3;
    state64[4] = v4;
    self->_watchesScreenLightState = state;
    if (state)
    {
      if (dword_1001BC7AC == -1)
      {
        notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &dword_1001BC7AC, &_dispatch_main_q, &stru_100189C98);
        state64[0] = 0;
        notify_get_state(dword_1001BC7AC, state64);
        v5 = +[APSSystemMonitor sharedInstance];
        [v5 _setSystemScreenState:state64[0] == 0];
      }
    }

    else if (dword_1001BC7AC != -1)
    {
      notify_cancel(dword_1001BC7AC);
      dword_1001BC7AC = -1;
    }
  }
}

- (void)setUsesPowerNotifications:(BOOL)notifications
{
  if (self->_usesPowerNotifications != notifications)
  {
    if (notifications)
    {
      if (!dword_1001BF950)
      {
        dword_1001BF950 = IORegisterForSystemPower(0, &qword_1001BF958, sub_1000B81E8, dword_1001BF960);
        if (dword_1001BF950)
        {
          v3 = qword_1001BF958;

          IONotificationPortSetDispatchQueue(v3, &_dispatch_main_q);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_10010D494();
        }
      }
    }

    else
    {

      sub_1000B79B4();
    }
  }
}

- (void)_setSystemScreenState:(BOOL)state
{
  if (self->_screenLit != state)
  {
    stateCopy = state;
    self->_screenLit = state;
    v5 = self->_dateScreenLightLastChanged;
    v6 = objc_alloc_init(NSDate);
    dateScreenLightLastChanged = self->_dateScreenLightLastChanged;
    self->_dateScreenLightLastChanged = v6;

    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (stateCopy)
    {
      if (v8)
      {
        [(NSDate *)v5 timeIntervalSinceNow];
        v12 = 134217984;
        v13 = fabs(v9);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Screen did light up (Was down for %f seconds)", &v12, 0xCu);
      }

      v10 = &selRef_systemScreenDidPowerUp;
    }

    else
    {
      if (v8)
      {
        [(NSDate *)v5 timeIntervalSinceNow];
        v12 = 134217984;
        v13 = fabs(v11);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Screen did light down (Was lit for %f seconds)", &v12, 0xCu);
      }

      v10 = &selRef_systemScreenDidPowerDown;
    }

    [(APSSystemMonitor *)self _deliverNotificationSelector:*v10];
  }
}

- (void)_setSystemLockState:(BOOL)state
{
  if (self->_systemLocked != state)
  {
    stateCopy = state;
    self->_systemLocked = state;
    v5 = self->_dateSystemLockLastChanged;
    v6 = objc_alloc_init(NSDate);
    dateSystemLockLastChanged = self->_dateSystemLockLastChanged;
    self->_dateSystemLockLastChanged = v6;

    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (stateCopy)
    {
      if (v8)
      {
        [(NSDate *)v5 timeIntervalSinceNow];
        v12 = 134217984;
        v13 = fabs(v9);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Screen did lock (Was unlocked for %f seconds)", &v12, 0xCu);
      }

      v10 = &selRef_systemDidLock;
    }

    else
    {
      if (v8)
      {
        [(NSDate *)v5 timeIntervalSinceNow];
        v12 = 134217984;
        v13 = fabs(v11);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Screen did unlock (Was locked for %f seconds)", &v12, 0xCu);
      }

      v10 = &selRef_systemDidUnlock;
    }

    [(APSSystemMonitor *)self _deliverNotificationSelector:*v10];
  }
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(NSHashTable *)selfCopy->_listeners containsObject:listenerCopy])
  {
    [(NSHashTable *)selfCopy->_listeners addObject:listenerCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners removeObject:listenerCopy];
  objc_sync_exit(selfCopy);
}

@end