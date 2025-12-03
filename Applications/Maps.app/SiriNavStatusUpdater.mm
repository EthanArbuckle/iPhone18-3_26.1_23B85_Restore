@interface SiriNavStatusUpdater
- (SiriNavStatusUpdater)initWithNavigationService:(id)service;
- (void)_updateSiriNavStatusForNewNavigationServiceState:(unint64_t)state;
@end

@implementation SiriNavStatusUpdater

- (void)_updateSiriNavStatusForNewNavigationServiceState:(unint64_t)state
{
  if (state - 4 >= 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = state - 3;
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

- (SiriNavStatusUpdater)initWithNavigationService:(id)service
{
  serviceCopy = service;
  if (self)
  {
    objc_storeStrong(&self->_navigationService, service);
    _currentStateFromService = [(SiriNavStatusUpdater *)self _currentStateFromService];
    self->_lastSentValue = 4;
    v7 = sub_100035E6C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = _currentStateFromService;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Starting Siri updater with navigation state: %lu", &v9, 0xCu);
    }

    [(SiriNavStatusUpdater *)self _updateSiriNavStatusForNewNavigationServiceState:_currentStateFromService];
    [(MNNavigationService *)self->_navigationService registerObserver:self];
  }

  return self;
}

@end