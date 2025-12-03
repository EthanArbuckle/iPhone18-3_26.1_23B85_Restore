@interface BuddySystemTimeUpdateManager
- (void)updateSystemTime;
@end

@implementation BuddySystemTimeUpdateManager

- (void)updateSystemTime
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_status)
  {
    selfCopy->_status = 1;
    location[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = location[0];
      v3 = v8;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "SetupAssistant Updating Time Now!", buf, 2u);
    }

    objc_storeStrong(location, 0);
    v4 = &_dispatch_main_q;
    v6 = selfCopy;
    TMSetupTime();

    v5 = &_dispatch_main_q;
    TMSetupTimeZone();

    objc_storeStrong(&v6, 0);
  }
}

@end