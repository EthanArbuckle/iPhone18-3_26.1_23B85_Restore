@interface MusicUIServiceScreenManager
- (MusicUIServiceScreenManager)init;
- (void)_screenDidConnect:(id)a3;
- (void)_screenDidDisconnect:(id)a3;
- (void)dealloc;
@end

@implementation MusicUIServiceScreenManager

- (MusicUIServiceScreenManager)init
{
  v5.receiver = self;
  v5.super_class = MusicUIServiceScreenManager;
  v2 = [(MusicUIServiceScreenManager *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_screenDidConnect:" name:UIScreenDidConnectNotification object:0];
    [v3 addObserver:v2 selector:"_screenDidDisconnect:" name:UIScreenDidDisconnectNotification object:0];
    MRMediaRemotePostBrowsableContentNotification();
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MusicUIServiceScreenManager;
  [(MusicUIServiceScreenManager *)&v4 dealloc];
}

- (void)_screenDidConnect:(id)a3
{
  v4 = [a3 object];
  if ([v4 _isCarScreen])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Car screen did connect.", v5, 2u);
    }

    objc_storeStrong(&self->_carScreen, v4);
    MRMediaRemotePostBrowsableContentNotification();
  }
}

- (void)_screenDidDisconnect:(id)a3
{
  v4 = [a3 object];
  if (v4 == self->_carScreen)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Car screen did disconnect.", v6, 2u);
    }

    carScreen = self->_carScreen;
    self->_carScreen = 0;

    MRMediaRemotePostBrowsableContentNotification();
  }
}

@end