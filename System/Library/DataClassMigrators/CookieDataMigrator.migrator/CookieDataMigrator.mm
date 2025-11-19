uint64_t sub_E80(void *a1)
{
  v30 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:a1, 0];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v26 objects:v41 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v27;
    v25 = 1;
    *&v4 = 138412546;
    v24 = v4;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        if ([objc_msgSend(v8 pathExtension])
        {
          v9 = [a1 stringByAppendingPathComponent:v8];
          v39 = NSFileProtectionKey;
          v40 = NSFileProtectionCompleteUntilFirstUserAuthentication;
          -[NSFileManager setAttributes:ofItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "setAttributes:ofItemAtPath:error:", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v40, &v39, 1), [a1 stringByAppendingPathComponent:v8], &v30);
          if (!v30)
          {
            continue;
          }

          if ([v30 domain] == NSCocoaErrorDomain)
          {
            v14 = [v30 code];
            if ([v30 domain] == NSCocoaErrorDomain)
            {
              v10 = [v30 code];
              if (v14 == &dword_4)
              {
LABEL_20:
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  continue;
                }

                v15 = [v30 localizedDescription];
                *buf = v24;
                v32 = v9;
                v33 = 2112;
                v34 = v15;
                v13 = "File %@ deleted before protection class was changed. [Error]: %@";
LABEL_22:
                v16 = 22;
LABEL_26:
                _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, v13, buf, v16);
                continue;
              }

LABEL_23:
              if (v10 == &stru_B8.reserved2 + 1)
              {
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  continue;
                }

                v17 = [v30 domain];
                v18 = [v30 code];
                v19 = [v30 localizedDescription];
                *buf = 138413058;
                v32 = v9;
                v33 = 2112;
                v34 = v17;
                v35 = 2048;
                v36 = v18;
                v37 = 2112;
                v38 = v19;
                v13 = "File %@ could not be opened since you do not have permissions to view it [Error %@:%ld]: %@";
                v16 = 42;
                goto LABEL_26;
              }
            }

            else if (v14 == &dword_4)
            {
              goto LABEL_20;
            }
          }

          else if ([v30 domain] == NSCocoaErrorDomain)
          {
            v10 = [v30 code];
            goto LABEL_23;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v20 = [v30 domain];
            v21 = [v30 code];
            v22 = [v30 localizedDescription];
            *buf = 138413058;
            v32 = v9;
            v33 = 2112;
            v34 = v20;
            v35 = 2048;
            v36 = v21;
            v37 = 2112;
            v38 = v22;
            _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to change the data class protection of cookie file %@. [Error %@:%ld]: %@", buf, 0x2Au);
          }

          v25 = 0;
          continue;
        }

        if ([v8 containsString:@"_tmp_"])
        {
          if ([objc_msgSend(v8 "pathExtension")])
          {
            v11 = [a1 stringByAppendingPathComponent:v8];
            [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v11, &v30];
            v12 = v30;
            if (v30)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v24;
                v32 = v11;
                v33 = 2112;
                v34 = v12;
                v13 = "Unabled to delete tmp file at location %@. Error = %@";
                goto LABEL_22;
              }
            }
          }
        }
      }

      v5 = [(NSArray *)v2 countByEnumeratingWithState:&v26 objects:v41 count:16];
      if (!v5)
      {
        return v25 & 1;
      }
    }
  }

  v25 = 1;
  return v25 & 1;
}

uint64_t sub_12FC(void *a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [a1 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v13)
  {
    v12 = *v21;
    v1 = 1;
    do
    {
      v2 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(a1);
        }

        v14 = v2;
        v3 = *(*(&v20 + 1) + 8 * v2);
        v4 = -[NSFileManager contentsOfDirectoryAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "contentsOfDirectoryAtPath:error:", [v3 path], 0);
        v19 = 0;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v24 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v16;
          do
          {
            for (i = 0; i != v6; i = i + 1)
            {
              if (*v16 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = [objc_msgSend(v3 "path")];
              if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]
              {
                v1 &= sub_E80(v9);
              }
            }

            v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v24 count:16];
          }

          while (v6);
        }

        v2 = v14 + 1;
      }

      while ((v14 + 1) != v13);
      v13 = [a1 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  else
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 1;
}