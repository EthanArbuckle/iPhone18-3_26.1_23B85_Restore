@interface NFTagAppProcessorAMSAccessory
- (id)processNDEFMesssage:(id)messsage outputMessage:(id *)message tag:(id)tag stopProcessing:(BOOL *)processing;
@end

@implementation NFTagAppProcessorAMSAccessory

- (id)processNDEFMesssage:(id)messsage outputMessage:(id *)message tag:(id)tag stopProcessing:(BOOL *)processing
{
  *processing = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  records = [messsage records];
  v7 = [records countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = v7;
  v9 = *v44;
  v42 = records;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v44 != v9)
      {
        objc_enumerationMutation(records);
      }

      v11 = *(*(&v43 + 1) + 8 * v10);
      if ([v11 isURIRecord])
      {
        decode = [v11 decode];
        v13 = [NSURLComponents componentsWithString:decode];
        v14 = v13;
        if (v13)
        {
          scheme = [v13 scheme];
          lowercaseString = [scheme lowercaseString];
          if ([lowercaseString isEqualToString:@"https"])
          {
            host = [v14 host];
            lowercaseString2 = [host lowercaseString];
            if ([lowercaseString2 isEqualToString:@"ams.apple.com"])
            {
              user = [v14 user];
              if (!user)
              {
                password = [v14 password];
                if (!password)
                {
                  port = [v14 port];
                  if (!port)
                  {
                    fragment = [v14 fragment];

                    records = v42;
                    if (!fragment)
                    {
                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      Logger = NFLogGetLogger();
                      if (Logger)
                      {
                        v26 = Logger;
                        Class = object_getClass(self);
                        isMetaClass = class_isMetaClass(Class);
                        ClassName = object_getClassName(self);
                        Name = sel_getName(a2);
                        v29 = 45;
                        if (isMetaClass)
                        {
                          v29 = 43;
                        }

                        records = v42;
                        v26(6, "%c[%{public}s %{public}s]:%i Found AMS Accessory: %{public}@", v29, ClassName, Name, 40, v14);
                      }

                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v30 = NFSharedLogGetLogger();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                      {
                        v31 = object_getClass(self);
                        if (class_isMetaClass(v31))
                        {
                          v32 = 43;
                        }

                        else
                        {
                          v32 = 45;
                        }

                        v33 = object_getClassName(self);
                        v34 = sel_getName(a2);
                        *buf = 67110146;
                        v48 = v32;
                        v49 = 2082;
                        v50 = v33;
                        v51 = 2082;
                        v52 = v34;
                        v53 = 1024;
                        v54 = 40;
                        v55 = 2114;
                        v56 = v14;
                        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found AMS Accessory: %{public}@", buf, 0x2Cu);
                      }

                      v35 = NFSharedSignpostLog();
                      if (os_signpost_enabled(v35))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TagAppProcessed", "", buf, 2u);
                      }

                      v36 = +[NSDistributedNotificationCenter defaultCenter];
                      [v36 postNotificationName:@"com.apple.nfcd.ams.accessory" object:decode userInfo:0 options:3];

                      *processing = 1;
                      goto LABEL_24;
                    }

                    goto LABEL_18;
                  }

                  password = 0;
                }
              }
            }

            records = v42;
          }
        }

LABEL_18:
      }

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v23 = [records countByEnumeratingWithState:&v43 objects:v57 count:16];
    v8 = v23;
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_24:

  return 0;
}

@end