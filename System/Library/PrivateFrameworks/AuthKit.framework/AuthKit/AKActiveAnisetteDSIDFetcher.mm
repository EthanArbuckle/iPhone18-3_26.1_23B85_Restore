@interface AKActiveAnisetteDSIDFetcher
+ (unint64_t)_activeAnisetteDSIDWithEnvironment:(unint64_t)environment;
+ (unint64_t)activeAnisettDSIDFromCurrentIDMSEnvironment;
+ (unint64_t)activeAnisettDSIDFromLastKnownIDMSEnvironment;
@end

@implementation AKActiveAnisetteDSIDFetcher

+ (unint64_t)activeAnisettDSIDFromLastKnownIDMSEnvironment
{
  v3 = [AKURLBag bagForAltDSID:0];
  lastKnownIDMSEnvironment = [v3 lastKnownIDMSEnvironment];
  _objc_release(v3);
  return [self _activeAnisetteDSIDWithEnvironment:lastKnownIDMSEnvironment];
}

+ (unint64_t)activeAnisettDSIDFromCurrentIDMSEnvironment
{
  v3 = [AKURLBag bagForAltDSID:0];
  iDMSEnvironment = [v3 IDMSEnvironment];
  _objc_release(v3);
  return [self _activeAnisetteDSIDWithEnvironment:iDMSEnvironment];
}

+ (unint64_t)_activeAnisetteDSIDWithEnvironment:(unint64_t)environment
{
  selfCopy = self;
  v15 = a2;
  environmentCopy = environment;
  if (!environment)
  {
    return -2;
  }

  if (environmentCopy == 1 || environmentCopy == 2 || environmentCopy == 3)
  {
    location = _AKTrafficLogSubsystem();
    v12 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v12;
      sub_10001CEEC(v11);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Using QA Anisette DSID.", v11, 2u);
    }

    objc_storeStrong(&location, 0);
    return -3;
  }

  else
  {
    oslog = _AKTrafficLogSubsystem();
    v9 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v4 = oslog;
      v5 = v9;
      sub_10001CEEC(v8);
      _os_log_debug_impl(&_mh_execute_header, v4, v5, "Using some other non-prod Anisette DSID.", v8, 2u);
    }

    objc_storeStrong(&oslog, 0);
    return -5;
  }
}

@end