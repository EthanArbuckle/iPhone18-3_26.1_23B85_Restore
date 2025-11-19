@interface BuddyPowerLog
+ (BOOL)removeLog;
@end

@implementation BuddyPowerLog

+ (BOOL)removeLog
{
  v38 = a1;
  v37 = a2;
  v36 = 1;
  v35 = container_system_group_path_for_identifier();
  v34 = [NSString stringWithUTF8String:v35];
  v33 = 0;
  v2 = +[NSFileManager defaultManager];
  v31 = 0;
  v3 = [(NSFileManager *)v2 contentsOfDirectoryAtPath:v34 error:&v31];
  objc_storeStrong(&v33, v31);
  v32 = v3;

  if (v33)
  {
    v30 = _BYLoggingFacility();
    v29 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v27 = 0;
      v25 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = v33;
      }

      else if (v33)
      {
        v28 = [v33 domain];
        v27 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v28, [v33 code]);
        v26 = v4;
        v25 = 1;
      }

      else
      {
        v4 = 0;
      }

      sub_100071CBC(v42, v4);
      _os_log_error_impl(&_mh_execute_header, v30, v29, "Failed to find contents of power log path: %{public}@", v42, 0xCu);
      if (v25)
      {
      }

      if (v27)
      {
      }
    }

    objc_storeStrong(&v30, 0);
    v39 = 0;
    v24 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    v5 = v32;
    v6 = [v5 countByEnumeratingWithState:__b objects:v41 count:16];
    if (v6)
    {
      v7 = *__b[2];
      do
      {
        for (i = 0; i < v6; ++i)
        {
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(v5);
          }

          v23 = *(__b[1] + 8 * i);
          v21 = [v34 stringByAppendingPathComponent:v23];
          v9 = +[NSFileManager defaultManager];
          obj = v33;
          v10 = [(NSFileManager *)v9 removeItemAtPath:v21 error:&obj];
          objc_storeStrong(&v33, obj);

          if ((v10 ^ 1))
          {
            oslog = _BYLoggingFacility();
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              v11 = oslog;
              v12 = v21;
              v17 = 0;
              v15 = 0;
              if (_BYIsInternalInstall())
              {
                v13 = v33;
              }

              else if (v33)
              {
                v18 = [v33 domain];
                v17 = 1;
                v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v18, [v33 code]);
                v16 = v13;
                v15 = 1;
              }

              else
              {
                v13 = 0;
              }

              sub_10010DD40(v40, v12, v13);
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to remove power log item at path %@: %{public}@", v40, 0x16u);
              if (v15)
              {
              }

              if (v17)
              {
              }
            }

            objc_storeStrong(&oslog, 0);
          }

          objc_storeStrong(&v21, 0);
        }

        v6 = [v5 countByEnumeratingWithState:__b objects:v41 count:16];
      }

      while (v6);
    }

    v39 = 1;
    v24 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  return v39 & 1;
}

@end