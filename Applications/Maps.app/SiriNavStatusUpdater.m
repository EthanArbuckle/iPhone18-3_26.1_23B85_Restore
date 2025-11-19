@interface SiriNavStatusUpdater
- (SiriNavStatusUpdater)initWithNavigationService:(id)a3;
- (void)_updateSiriNavStatusForNewNavigationServiceState:(unint64_t)a3;
@end

@implementation SiriNavStatusUpdater

- (void)_updateSiriNavStatusForNewNavigationServiceState:(unint64_t)a3
{
  if (a3 - 4 >= 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3 - 3;
  }

  if (self->_lastSentValue != v3)
  {
    self->_lastSentValue = v3;
    v4 = sub_100035E6C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending to Siri navigation state: %lu", &v6, 0xCu);
    }

    v5 = +[AFPreferences sharedPreferences];
    [v5 setCurrentNavigationState:v3];
  }
}

- (SiriNavStatusUpdater)initWithNavigationService:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_storeStrong(&self->_navigationService, a3);
    v6 = [(SiriNavStatusUpdater *)self _currentStateFromService];
    self->_lastSentValue = 4;
    v7 = sub_100035E6C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Starting Siri updater with navigation state: %lu", &v9, 0xCu);
    }

    [(SiriNavStatusUpdater *)self _updateSiriNavStatusForNewNavigationServiceState:v6];
    [(MNNavigationService *)self->_navigationService registerObserver:self];
  }

  return self;
}

@end