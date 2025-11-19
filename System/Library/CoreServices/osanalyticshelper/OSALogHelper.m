@interface OSALogHelper
+ (BOOL)createForSubmissionWithXPCRequest:(id)a3 fromConnection:(id)a4 forReply:(id)a5;
+ (BOOL)handleLogCleanupRequest:(id)a3 fromConnection:(id)a4 forReply:(id)a5;
+ (BOOL)overrideMountPathWithXPCRequest:(id)a3 fromConnection:(id)a4;
+ (void)instantiate;
+ (void)moveLogsFrom:(id)a3 to:(id)a4;
+ (void)triggerUrgentSubmission;
@end

@implementation OSALogHelper

+ (void)instantiate
{
  if (qword_10002A438 != -1)
  {
    sub_100015D70();
  }
}

+ (BOOL)createForSubmissionWithXPCRequest:(id)a3 fromConnection:(id)a4 forReply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v25 = 0u;
  v26 = 0u;
  xpc_connection_get_audit_token();
  v9 = xpc_copy_entitlement_for_token();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v10 = qword_10002A440;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E120;
  block[3] = &unk_1000252C8;
  v16 = v8;
  v17 = v7;
  v18 = v9;
  v19 = &v21;
  v20 = a1;
  v11 = v9;
  v12 = v7;
  v13 = v8;
  dispatch_sync(v10, block);
  LOBYTE(v10) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return v10;
}

+ (void)triggerUrgentSubmission
{
  if (qword_10002A450 != -1)
  {
    sub_100015E0C();
  }

  v3 = qword_10002A448;
  if (qword_10002A448)
  {

    dispatch_async(v3, &stru_100025308);
  }
}

+ (BOOL)handleLogCleanupRequest:(id)a3 fromConnection:(id)a4 forReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = xpc_connection_copy_entitlement_value();
  v11 = v10;
  if (v10 && xpc_get_type(v10) == &_xpc_type_BOOL && xpc_BOOL_get_value(v11))
  {
    v12 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", xpc_dictionary_get_string(v7, [kOSALogMetadataBugType UTF8String]));
    if ([v12 length])
    {
      if ([&off_100027430 containsObject:v12])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v52 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cleaning up logs with bug type %@", buf, 0xCu);
        }

        v36 = [NSDate dateWithTimeIntervalSince1970:xpc_dictionary_get_double(v7, "filterByLogAge")];
        if (v36)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v52 = v36;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Applying filter: only cleaning up logs created before %@", buf, 0xCu);
          }
        }

        else
        {
          v36 = 0;
        }

        v14 = xpc_dictionary_get_value(v7, "filterByHeaders");
        v32 = v8;
        v33 = v7;
        v35 = v12;
        v31 = v14;
        if (v14)
        {
          v14 = xpc2ns();
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v47;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v47 != v18)
              {
                objc_enumerationMutation(v15);
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v20 = *(*(&v46 + 1) + 8 * i);
                v21 = [v15 objectForKeyedSubscript:v20];
                *buf = 138412546;
                v52 = v20;
                v53 = 2112;
                v54 = v21;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Applying filter: only cleaning up logs that contain header %@=%@", buf, 0x16u);
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v17);
        }

        [OSASubmitter submissionPathsWithHomeDirectory:0 withProxies:1];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        obj = v45 = 0u;
        v22 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v43;
          do
          {
            for (j = 0; j != v23; j = j + 1)
            {
              if (*v43 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v42 + 1) + 8 * j);
              v27 = +[NSFileManager defaultManager];
              v37[0] = _NSConcreteStackBlock;
              v37[1] = 3221225472;
              v37[2] = sub_10000F8D0;
              v37[3] = &unk_100025330;
              v38 = v35;
              v39 = v36;
              v40 = v27;
              v41 = v15;
              v28 = v27;
              [OSALog purgeLogs:v26 withReason:"clear-logs-request" includeRetired:1 deleteOnRetire:1 usingPredicate:v37];
            }

            v23 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v23);
        }

        v13 = 0;
        v8 = v32;
        v7 = v33;
        v12 = v35;
LABEL_38:

        if (!v13)
        {
          goto LABEL_39;
        }

        goto LABEL_12;
      }

      [NSString stringWithFormat:@"Illegal log cleanup request (%d): bug type %@ is not supported", xpc_connection_get_pid(v8), v12];
    }

    else
    {
      [NSString stringWithFormat:@"Illegal log cleanup request (%d): missing bug type", xpc_connection_get_pid(v8), v30];
    }
    v13 = ;
    goto LABEL_38;
  }

  v13 = [NSString stringWithFormat:@"Client (%d) is not entitled to clean up logs.", xpc_connection_get_pid(v8)];
  if (!v13)
  {
LABEL_39:
    xpc_dictionary_set_BOOL(v9, "result", 1);
    goto LABEL_40;
  }

LABEL_12:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100015E20();
  }

  xpc_dictionary_set_BOOL(v9, "result", 0);
  xpc_dictionary_set_string(v9, "error_desc", [v13 UTF8String]);
LABEL_40:

  return v13 == 0;
}

+ (BOOL)overrideMountPathWithXPCRequest:(id)a3 fromConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = xpc_connection_copy_entitlement_value();
  v8 = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_BOOL && xpc_BOOL_get_value(v8))
  {
    v9 = xpc_dictionary_get_value(v5, "dre_overrideMountPath");
    if (v9)
    {
      v10 = objc_opt_new();
      [v10 beginReadingFromXPCObject:v9];
      v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"dre_overrideMountPath"];
      v12 = v11;
      if (v11)
      {
        v13 = qword_10002A440;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10000FD48;
        v18[3] = &unk_100025358;
        v20 = &v21;
        v19 = v11;
        dispatch_sync(v13, v18);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100015E9C();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100015EE0();
    }
  }

  else
  {
    v9 = &_os_log_default;
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      pid = xpc_connection_get_pid(v6);
      sub_100015F24(buf, pid);
    }
  }

  v16 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v16 & 1;
}

+ (void)moveLogsFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Moving logs from tempfs submissions paths to mounted submissions paths", buf, 2u);
    }

    v8 = [v5 count];
    if (v8 == [v7 count])
    {
      v9 = +[NSFileManager defaultManager];
      if ([v5 count])
      {
        v10 = 0;
        v24 = v7;
        v25 = v5;
        do
        {
          v11 = [v5 objectAtIndexedSubscript:v10];
          v26 = v10;
          v28 = [v7 objectAtIndexedSubscript:v10];
          v12 = +[NSFileManager defaultManager];
          v13 = [v12 enumeratorAtPath:v11];

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          obj = v13;
          v14 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v31;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v31 != v16)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v30 + 1) + 8 * i);
                v19 = [NSArray arrayWithObjects:v11, v18, 0];
                v20 = [NSString pathWithComponents:v19];

                v21 = [NSArray arrayWithObjects:v28, v18, 0];
                v22 = [NSString pathWithComponents:v21];

                if ([v9 fileExistsAtPath:v22])
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v35 = v20;
                    v36 = 2112;
                    v37 = v22;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to move %@ to %@: file already exists", buf, 0x16u);
                  }
                }

                else
                {
                  v29 = 0;
                  [v9 moveItemAtPath:v20 toPath:v22 error:&v29];
                  v23 = v29;
                  if (v23)
                  {
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412802;
                      v35 = v20;
                      v36 = 2112;
                      v37 = v22;
                      v38 = 2112;
                      v39 = v23;
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to move %@ to %@: %@", buf, 0x20u);
                    }
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v35 = v20;
                    v36 = 2112;
                    v37 = v22;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Moved %@ to %@", buf, 0x16u);
                  }
                }
              }

              v15 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
            }

            while (v15);
          }

          v5 = v25;
          v10 = v26 + 1;
          v7 = v24;
        }

        while ([v25 count] > v26 + 1);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100015FB4();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100015F70();
  }
}

@end