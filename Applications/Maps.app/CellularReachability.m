@interface CellularReachability
+ (unint64_t)cellularStatus;
@end

@implementation CellularReachability

+ (unint64_t)cellularStatus
{
  if ((+[PSCellularDataSettingsDetail deviceSupportsCellularData]& 1) != 0)
  {
    v2 = +[PSCellularDataSettingsDetail isEnabled];
    v3 = sub_100799314();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (v2)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Fetching cellular data policy from CT...", buf, 2u);
      }

      if (qword_10195E798)
      {
        goto LABEL_16;
      }

      v7 = sub_100799314();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Creating CT server connection for cellular data request...", buf, 2u);
      }

      qword_10195E798 = _CTServerConnectionCreateOnTargetQueue();
      if (qword_10195E798)
      {
LABEL_16:
        v8 = +[NSBundle mainBundle];
        [v8 bundleIdentifier];
        v9 = _CTServerConnectionCopyCellularUsagePolicy();

        v10 = v9;
        v11 = v9 >> 32;
      }

      else
      {
        v12 = sub_100799314();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No CT server connection; cannot fetch cellular data policy.", buf, 2u);
        }

        v10 = 0;
        v11 = 0;
      }

      v13 = sub_100799314();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v15 = v10;
        v16 = 2048;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not fetch a cellular data usage policy from CT (domain: %lu, error: %lu)", buf, 0x16u);
      }

      return 2;
    }

    else
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Global cellular data setting is disabled", buf, 2u);
      }

      return 1;
    }
  }

  else
  {
    v5 = sub_100799314();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Device does not support cellular data", buf, 2u);
    }

    return 0;
  }
}

@end