@interface NFTagAppProcessorAMSAccessory
- (id)processNDEFMesssage:(id)a3 outputMessage:(id *)a4 tag:(id)a5 stopProcessing:(BOOL *)a6;
@end

@implementation NFTagAppProcessorAMSAccessory

- (id)processNDEFMesssage:(id)a3 outputMessage:(id *)a4 tag:(id)a5 stopProcessing:(BOOL *)a6
{
  *a6 = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [a3 records];
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = v7;
  v9 = *v44;
  v42 = v6;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v44 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v43 + 1) + 8 * v10);
      if ([v11 isURIRecord])
      {
        v12 = [v11 decode];
        v13 = [NSURLComponents componentsWithString:v12];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 scheme];
          v16 = [v15 lowercaseString];
          if ([v16 isEqualToString:@"https"])
          {
            v17 = [v14 host];
            v18 = [v17 lowercaseString];
            if ([v18 isEqualToString:@"ams.apple.com"])
            {
              v19 = [v14 user];
              if (!v19)
              {
                v20 = [v14 password];
                if (!v20)
                {
                  v21 = [v14 port];
                  if (!v21)
                  {
                    v22 = [v14 fragment];

                    v6 = v42;
                    if (!v22)
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

                        v6 = v42;
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
                      [v36 postNotificationName:@"com.apple.nfcd.ams.accessory" object:v12 userInfo:0 options:3];

                      *a6 = 1;
                      goto LABEL_24;
                    }

                    goto LABEL_18;
                  }

                  v20 = 0;
                }
              }
            }

            v6 = v42;
          }
        }

LABEL_18:
      }

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v23 = [v6 countByEnumeratingWithState:&v43 objects:v57 count:16];
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